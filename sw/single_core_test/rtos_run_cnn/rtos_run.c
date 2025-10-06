// =============================================================================
//  Program : rtos_run.c
//  Author  : Chun-Jen Tsai
//  Date    : Dec/11/2021
// -----------------------------------------------------------------------------
//  Description:
//  This is a multi-thread program to demo the usage of FreeRTOS and shared
//  resource protection using a mutex.
//
//  This program is designed as one of the homework project for the course:
//  Microprocessor Systems: Principles and Implementation
//  Dept. of CS, NYCU (aka NCTU), Hsinchu, Taiwan.
// -----------------------------------------------------------------------------
//  Revision information:
//
//  Nov/14/2023, by Chun-Jen Tsai:
//    Add a random number generating task to the second thread to balance
//    the load.
// =============================================================================

/* Standard includes. */
#include "FreeRTOS.h"
#include "task.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <FreeRTOSConfig.h>

#include "file_read.h"
#include "lenet.h"

void vApplicationMallocFailedHook(void);
void vApplicationIdleHook(void);
void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName);
void vApplicationTickHook(void);
#define TASK_STACK_SIZE         (configMINIMAL_STACK_SIZE * 2)
#define TASK_PRIORITY           (tskIDLE_PRIORITY + 1)
#define COORDINATOR_CORE        0 

volatile uint32_t FinishFlag = 0;

volatile uint32_t done_memcpy[100] = {0};
volatile uint32_t done_eval[100] = {0};
volatile uint32_t done_calc[100] = {0};
volatile uint32_t done_layer_calc1[100] = {0};
volatile uint32_t done_layer_calc2[100] = {0};
volatile uint32_t g_ulRunCounter = 0;
volatile uint32_t start_print_profile = 0;
// Mask to track which cores have reported profiling data
volatile uint32_t g_profile_done_mask = 0;
// Per-core profiling data arrays
volatile int g_I2M_counter[configNUMBER_OF_CORES];
volatile int g_I2E_counter[configNUMBER_OF_CORES];
volatile int g_I2S_counter[configNUMBER_OF_CORES];
volatile int g_S2M_counter[configNUMBER_OF_CORES];
volatile int g_M2Replaced_counter[configNUMBER_OF_CORES];
volatile int g_E2Replaced_counter[configNUMBER_OF_CORES];

volatile uint64_t g_I2M_latency[configNUMBER_OF_CORES];
volatile uint64_t g_I2E_latency[configNUMBER_OF_CORES];
volatile uint64_t g_I2S_latency[configNUMBER_OF_CORES];
volatile uint64_t g_S2M_latency[configNUMBER_OF_CORES];
volatile uint64_t g_M2Replaced_latency[configNUMBER_OF_CORES];
volatile uint64_t g_E2Replaced_latency[configNUMBER_OF_CORES];

volatile int g_I2M_avg_latency[configNUMBER_OF_CORES];
volatile int g_I2E_avg_latency[configNUMBER_OF_CORES];
volatile int g_I2S_avg_latency[configNUMBER_OF_CORES];
volatile int g_S2M_avg_latency[configNUMBER_OF_CORES];
volatile int g_M2Replaced_avg_latency[configNUMBER_OF_CORES];
volatile int g_E2Replaced_avg_latency[configNUMBER_OF_CORES];

typedef struct {
    LeNet5 *net;
    image *images;
    uint8_t *labels;
    Feature *feature;
    int total;
    int worker_id;
} TaskParam;

static TaskParam workerParams[1];

BaseType_t rtos_core_id_get(void)
{
    int xCoreID;

    __asm volatile("csrr %0, mhartid" : "=r"(xCoreID));

    return xCoreID;
}
static int ipow10(int n) {
    int result = 1;
    while (n-- > 0) {
        result *= 10;
    }
    return result;
}
void double_to_string(double value, char *buffer, int precision)
{
    if (precision > 9) precision = 9; // 避免太長
    int int_part = (int)value;
    double frac = value - (double)int_part;
    if (frac < 0) frac = -frac;

    int scale = ipow10(precision);
    int frac_part = (int)(frac * scale + 0.5);

    sprintf(buffer, "%d.%0*d", int_part, precision, frac_part);
}


void print_double(double val)
{
    char buf[64];
    double_to_string(val, buf, 6); // 保留 6 位小數
    printf("%s", buf);
}

static inline void lock_print() {
    uint32_t ulHartId = rtos_core_id_get() + 1;
    uint32_t ulPrevVal;
    do {
        __asm__ volatile("amoswap.w.aqrl %0, %2, %1" : "=r"(ulPrevVal), "+A"(*PRINT_LOCK_ADDR) : "r"(ulHartId) : "memory");
    } while (ulPrevVal != 0);
}

static inline void unlock_print() {
    __asm__ volatile("amoswap.w.rl zero, zero, %0" : : "A"(*PRINT_LOCK_ADDR) : "memory");
}

static void atomic_or(volatile uint32_t *addr, int val) {
    __asm__ volatile("amoor.w.aqrl zero, %1, %0" : "+A"(*addr) : "r"(val) : "memory");
}

#ifdef PROFILE_LOG
void vProfile_Task(void *pvParameters) {
    while (start_print_profile == 0) {;}

    int core_id = rtos_core_id_get();

    // 硬體基底位址
    volatile uint32_t *prof_base = (volatile uint32_t *)0xF0010000;

    // --- Counters (32-bit) ---
    g_I2M_counter[core_id]        = prof_base[0x0000 >> 2];
    g_I2E_counter[core_id]        = prof_base[0x0004 >> 2];
    g_I2S_counter[core_id]        = prof_base[0x0008 >> 2];
    g_S2M_counter[core_id]        = prof_base[0x000C >> 2];
    g_M2Replaced_counter[core_id] = prof_base[0x0010 >> 2];
    g_E2Replaced_counter[core_id] = prof_base[0x0014 >> 2];

    // --- Latency (64-bit counters) ---
    #define READ_LAT64(offset) ({                   \
        uint32_t hi1, lo, hi2;                      \
        do {                                        \
            hi1 = prof_base[(offset) >> 2];         \
            lo  = prof_base[((offset)+4) >> 2];     \
            hi2 = prof_base[(offset) >> 2];         \
        } while (hi1 != hi2);                       \
        ((uint64_t)hi1 << 32) | lo;                 \
    })

    g_I2M_latency[core_id]        = READ_LAT64(0x0018);
    g_I2E_latency[core_id]        = READ_LAT64(0x0020);
    g_I2S_latency[core_id]        = READ_LAT64(0x0028);
    g_S2M_latency[core_id]        = READ_LAT64(0x0030);
    g_M2Replaced_latency[core_id] = READ_LAT64(0x0038);
    g_E2Replaced_latency[core_id] = READ_LAT64(0x0040);

    // --- Average Latency (32-bit) ---
    g_I2M_avg_latency[core_id]        = (int)(g_I2M_latency[core_id] / (g_I2M_counter[core_id] ?: 1));
    g_I2E_avg_latency[core_id]        = (int)(g_I2E_latency[core_id] / (g_I2E_counter[core_id] ?: 1));
    g_I2S_avg_latency[core_id]        = (int)(g_I2S_latency[core_id] / (g_I2S_counter[core_id] ?: 1));
    g_S2M_avg_latency[core_id]        = (int)(g_S2M_latency[core_id] / (g_S2M_counter[core_id] ?: 1));
    g_M2Replaced_avg_latency[core_id] = (int)(g_M2Replaced_latency[core_id] / (g_M2Replaced_counter[core_id] ?: 1));
    g_E2Replaced_avg_latency[core_id] = (int)(g_E2Replaced_latency[core_id] / (g_E2Replaced_counter[core_id] ?: 1));

    // 標記完成
    atomic_or(&g_profile_done_mask, (1u << core_id));

    // --- Core 0 收集結果 ---
    if (core_id == 0) {
        uint32_t expect = (1u << configNUMBER_OF_CORES) - 1u;
        while (g_profile_done_mask != expect) {;}

        // 彙總
        uint64_t sum_lat[6] = {0};
        uint64_t sum_cnt[6] = {0};

        for (int c = 0; c < configNUMBER_OF_CORES; ++c) {
            sum_cnt[0] += g_I2M_counter[c];
            sum_cnt[1] += g_I2E_counter[c];
            sum_cnt[2] += g_I2S_counter[c];
            sum_cnt[3] += g_S2M_counter[c];
            sum_cnt[4] += g_M2Replaced_counter[c];
            sum_cnt[5] += g_E2Replaced_counter[c];

            sum_lat[0] += g_I2M_latency[c];
            sum_lat[1] += g_I2E_latency[c];
            sum_lat[2] += g_I2S_latency[c];
            sum_lat[3] += g_S2M_latency[c];
            sum_lat[4] += g_M2Replaced_latency[c];
            sum_lat[5] += g_E2Replaced_latency[c];
        }

        // Core 0 統計後輸出
        lock_print();
        printf("\n================= Profile Summary (All Cores) =================\n");

        /* 每核心 Counter */
        printf(">>> Per-Core Counter\n");
        printf("Core |    I2M    I2E    I2S    S2M    M2R    E2R\n");
        printf("-----+---------------------------------------------\n");
        for (int c = 0; c < configNUMBER_OF_CORES; ++c) {
            printf(" %3d | %7u %7u %7u %7u %7u %7u\n",
                c,
                (unsigned)g_I2M_counter[c], (unsigned)g_I2E_counter[c], (unsigned)g_I2S_counter[c],
                (unsigned)g_S2M_counter[c], (unsigned)g_M2Replaced_counter[c], (unsigned)g_E2Replaced_counter[c]);
        }
        printf("==============================================================\n\n");

        /* 每核心 Weighted Average Latency (cycles) */
        printf(">>> Per-Core Weighted Average Latency (cycles)\n");
        printf("Core |     I2M           I2E           I2S           S2M           M2R           E2R\n");
        printf("-----+---------------------------------------------------------------------------------\n");
        for (int c = 0; c < configNUMBER_OF_CORES; ++c) {
            double l_I2M = g_I2M_counter[c] ? (double)g_I2M_latency[c] / (double)g_I2M_counter[c] : 0.0;
            double l_I2E = g_I2E_counter[c] ? (double)g_I2E_latency[c] / (double)g_I2E_counter[c] : 0.0;
            double l_I2S = g_I2S_counter[c] ? (double)g_I2S_latency[c] / (double)g_I2S_counter[c] : 0.0;
            double l_S2M = g_S2M_counter[c] ? (double)g_S2M_latency[c] / (double)g_S2M_counter[c] : 0.0;
            double l_M2R = g_M2Replaced_counter[c] ? (double)g_M2Replaced_latency[c] / (double)g_M2Replaced_counter[c] : 0.0;
            double l_E2R = g_E2Replaced_counter[c] ? (double)g_E2Replaced_latency[c] / (double)g_E2Replaced_counter[c] : 0.0;

            printf(" %3d | ", c);
            print_double(l_I2M); printf(" ");
            print_double(l_I2E); printf(" ");
            print_double(l_I2S); printf(" ");
            print_double(l_S2M); printf(" ");
            print_double(l_M2R); printf(" ");
            print_double(l_E2R); printf("\n");
        }
        printf("=================================================================================\n\n");

        /* 所有核心總和與整體 Weighted Avg (cycles) */
        printf(">>> Counter Sum (All Cores)\n");
        printf("      I2M      I2E      I2S      S2M      M2R      E2R\n");
        printf("------------------------------------------------------------\n");
        printf("Sum | %7u %7u %7u %7u %7u %7u\n\n",
            (unsigned)sum_cnt[0], (unsigned)sum_cnt[1], (unsigned)sum_cnt[2],
            (unsigned)sum_cnt[3], (unsigned)sum_cnt[4], (unsigned)sum_cnt[5]);

        printf(">>> Weighted Average Latency (All Cores)\n");
        printf("      I2M           I2E           I2S           S2M           M2R           E2R\n");
        printf("------------------------------------------------------------\n");
        printf("Avg | ");
        print_double(sum_cnt[0] ? (double)sum_lat[0] / (double)sum_cnt[0] : 0.0); printf(" ");
        print_double(sum_cnt[1] ? (double)sum_lat[1] / (double)sum_cnt[1] : 0.0); printf(" ");
        print_double(sum_cnt[2] ? (double)sum_lat[2] / (double)sum_cnt[2] : 0.0); printf(" ");
        print_double(sum_cnt[3] ? (double)sum_lat[3] / (double)sum_cnt[3] : 0.0); printf(" ");
        print_double(sum_cnt[4] ? (double)sum_lat[4] / (double)sum_cnt[4] : 0.0); printf(" ");
        print_double(sum_cnt[5] ? (double)sum_lat[5] / (double)sum_cnt[5] : 0.0); printf("\n");

        printf("=================================================================================\n\n");

        unlock_print();

        

        exit(0);
    }

    vTaskDelete(NULL); // worker 結束
}
#endif

void vCoordinatorTask(void *pvParameters) {

    lock_print();
    printf("[Coordinator] (2) Perform the hand-written digits recognition test.\n");
    printf("[Coordinator] Begin computing ...\n");
    unlock_print();

    TaskParam *param = (TaskParam *)pvParameters; 
    clock_t  tick, ticks_per_msec;
    int correct = 0;

    ticks_per_msec = CLOCKS_PER_SEC/1000;
    tick = clock();
    // int answer = testing(param->net, param->images, param->labels, 10, param->feature);
   
    for (int i = 0; i < 10; ++i)
	{
		printf("Start calculating picture number %d\n", i);
		int predict_result = Predict(param->net,  param->images[i], 10, param->feature);
	}

    tick = (clock() - tick) / ticks_per_msec;
    
    lock_print();
    // printf("correct = %d\n", correct);
    printf("It took %ld msec to read files from the SD card.\n\n", tick);
    unlock_print();

    #ifdef PROFILE_LOG
        for (int i = 0; i < configNUMBER_OF_CORES; i++)
        {
            xTaskCreate(vProfile_Task, NULL, TASK_STACK_SIZE, NULL, TASK_PRIORITY, NULL);
        }
        start_print_profile = 1;
    #else
        exit(0);
    #endif
    for(;;){}
}

int main(void)
{
    int core_id = rtos_core_id_get();
    if(core_id >= 1) {
        while(1);
    }

    *(volatile uint32_t *)PRINT_LOCK_ADDR = 0u;
    *(volatile uint32_t *)MALLOC_LOCK_ADDR = 0u;
    // try to read files from sd card on core 0
    lock_print();
    printf("\n(1) Reading the test images, labels, and neural weights.\n");
    unlock_print();



    lock_print();
    printf("Core 0: Initializing...\n");
    unlock_print();
    int n_labels;
    int n_images, n_rows, n_cols;
    
    uint8_t *cnn_labels = random_labels(10);
    image *cnn_images = random_images( 10, 28, 28);
    LeNet5 *net = random_lenet5();
    // uint8_t *cnn_labels = read_labels("t10k-labels-idx1-ubyte", &n_labels);
    // image *cnn_images = read_images("t10k-images-idx3-ubyte", &n_images, &n_rows, &n_cols);
    // LeNet5 *net = read_lenet5("model.dat");
    Feature *feature = pvPortMalloc(sizeof(Feature));
    memset(feature, 0, sizeof(Feature));

    for(int i = 0;i<1;i++){
        workerParams[i].net = net;
        workerParams[i].images = cnn_images;
        workerParams[i].labels = cnn_labels;
        workerParams[i].feature = feature;  
        workerParams[i].total = 10;
        workerParams[i].worker_id = i;
    }
    xTaskCreate(vCoordinatorTask, "Coordinator", TASK_STACK_SIZE, (void *)&workerParams[0], TASK_PRIORITY, NULL);
   

    vTaskStartScheduler();
    return 0;
}

void vApplicationMallocFailedHook(void)
{
    /* vApplicationMallocFailedHook() will only be called if
       configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
       function that will get called if a call to pvPortMalloc() fails.
       pvPortMalloc() is called internally by the kernel whenever a task, queue,
       timer or semaphore is created.  It is also called by various parts of the
       demo application.  If heap_1.c or heap_2.c are used, then the size of the
       heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
       FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
       to query the size of free heap space that remains (although it does not
       provide information on how the remaining heap might be fragmented). */
    taskDISABLE_INTERRUPTS();
    for (;;);
}

void vApplicationIdleHook(void)
{
    /* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
       to 1 in FreeRTOSConfig.h.  It will be called on each iteration of the idle
       task.  It is essential that code added to this hook function never attempts
       to block in any way (for example, call xQueueReceive() with a block time
       specified, or call vTaskDelay()).  If the application makes use of the
       vTaskDelete() API function (as this demo application does) then it is also
       important that vApplicationIdleHook() is permitted to return to its calling
       function, because it is the responsibility of the idle task to clean up
       memory allocated by the kernel to any task that has since been deleted. */
}

void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName)
{
    (void) pcTaskName;
    (void) pxTask;

    /* Run time stack overflow checking is performed if
       configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
       function is called if a stack overflow is detected. */
    taskDISABLE_INTERRUPTS();
    printf("Stack overflow error.\n");
    for (;;);
}

void vApplicationTickHook(void)
{
    /* vApplicationTickHook */
}

void vAssertCalled(void)
{
    taskDISABLE_INTERRUPTS();
    while (1)
    {
        __asm volatile ("NOP");
    }
}

void vExternalISR( uint32_t cause )
{
}

