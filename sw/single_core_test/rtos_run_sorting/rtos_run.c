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


#define N                       16 
#define FIRST_LEVEL_SORTING     16
void vApplicationMallocFailedHook(void);
void vApplicationIdleHook(void);
void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName);
void vApplicationTickHook(void);
#define TASK_STACK_SIZE         (configMINIMAL_STACK_SIZE * 2)
#define TASK_PRIORITY           (tskIDLE_PRIORITY + 1)
#define COORDINATOR_CORE        0 

unsigned int *A, *B, *C, *ans;
unsigned int *sorting_array;
// unsigned int *answer_array;
clock_t  tick, ticks_per_msec;
clock_t tick1;
volatile uint32_t g_ulStartRunFlag = 0;

volatile uint32_t g_DoneMaskLevel1 = 0;
volatile uint32_t g_DoneMaskLevel2 = 0;
volatile uint32_t g_DoneMaskLevel3 = 0;
volatile uint32_t g_DoneMaskLevel4 = 0;
volatile uint32_t g_DoneMaskLevel5 = 0;
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

// Mask to track which cores have reported profiling data

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


int cmpfunc(const void *a, const void *b) {
    return (*(int*)a - *(int*)b);
}
void vWorkerTask_level2(void *pvParameters);
void vWorkerTask_level3(void *pvParameters);
void vWorkerTask_level4(void *pvParameters);
void vWorkerTask_level5(void *pvParameters);
void sort_segment(int start, int end) {
    for (int i = start; i < end; i++) {
        for (int j = start; j < end - (i - start); j++) {
            if (sorting_array[j] > sorting_array[j + 1]) {
                int tmp = sorting_array[j];
                sorting_array[j] = sorting_array[j + 1];
                sorting_array[j + 1] = tmp;
            }
        }
    }
}
void vWorkerTask_level1(void *pvParameters) {
    
    while(g_ulStartRunFlag != 1);
    // get worker_id and task_name for atomic or
    int worker_id = *((int *)pvParameters);
    const char *task_name = pcTaskGetName(NULL);
    
    lock_print();
    printf("[%s] (id=%d) started on Core %ld\n", task_name, worker_id, rtos_core_id_get());
    unlock_print();
    // worker id = 1 --> (0, 19)
    // worker id = 2 --> (20, 39)

    int start_index = (worker_id - 1) * ARRAY_SIZE / FIRST_LEVEL_SORTING;
    int end_index = (worker_id * ARRAY_SIZE / FIRST_LEVEL_SORTING) - 1;
    int size = end_index - start_index + 1;
    // qsort(&sorting_array[start_index], size, sizeof(unsigned int), cmpfunc);
    sort_segment(start_index, end_index);

    atomic_or(&g_DoneMaskLevel1, (1 << worker_id));
    const uint32_t ulExpectedMask = ((1 << (FIRST_LEVEL_SORTING + 1)) - 2);
    while (g_DoneMaskLevel1 != ulExpectedMask) {
        __asm__ volatile("fence");  // 確保記憶體一致性
    }
    if(worker_id == 1){
        for (int i = 1; i <= (FIRST_LEVEL_SORTING / 2); i++) {
            char name[16];
            sprintf(name, "Level2_Worker_%d", i);
            int *id = pvPortMalloc(sizeof(int));  
            *id = i;
            xTaskCreate(vWorkerTask_level2, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
        }
    }
    vTaskDelete(NULL);
    // for(;;){}
}

void merge_sorted_halves_inplace(unsigned int *arr, int size) {
    int mid = size / 2;
    int i = 0;       // 左半起始
    int j = mid;     // 右半起始
    int k = 0;       // temp index

    unsigned int *temp = pvPortMalloc(size * sizeof(unsigned int));
    if (!temp) {
        lock_print();
        printf("Malloc failed in merge!\n");
        unlock_print();
        return;
    }

    // 合併兩半
    while (i < mid && j < size) {
        if (arr[i] <= arr[j]) {
            temp[k++] = arr[i++];
        } else {
            temp[k++] = arr[j++];
        }
    }

    // 把剩下的補上
    while (i < mid) {
        temp[k++] = arr[i++];
    }
    while (j < size) {
        temp[k++] = arr[j++];
    }

    // 把結果 copy 回 sorting_array
    memcpy(arr, temp, size * sizeof(unsigned int));
    vPortFree(temp);
}

void vWorkerTask_level2(void *pvParameters) {
    
    // const uint32_t ulExpectedMask = ((1 << (FIRST_LEVEL_SORTING + 1)) - 2);

    // get worker_id and task_name for atomic or
    int worker_id = *((int *)pvParameters);
    const char *task_name = pcTaskGetName(NULL);

    // while (g_DoneMaskLevel1 != ulExpectedMask) {
    //     __asm__ volatile("fence");  // 確保記憶體一致性
    // }

    lock_print();
    printf("[%s] (id=%d) started on Core %ld\n", task_name, worker_id, rtos_core_id_get());
    unlock_print();
    // worker id = 1 --> (0, 19)
    // worker id = 2 --> (20, 39)

    int start_index = (worker_id - 1) * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 2);
    int end_index = (worker_id * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 2)) - 1;
    int size = end_index - start_index + 1;
    merge_sorted_halves_inplace(&sorting_array[start_index], size);

    atomic_or(&g_DoneMaskLevel2, (1 << worker_id));
    const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 2) + 1)) - 2);
    while (g_DoneMaskLevel2 != ulExpectedMask) {
        __asm__ volatile("fence");  // 確保記憶體一致性
    }
    if(worker_id == 1){
        for (int i = 1; i <= (FIRST_LEVEL_SORTING / 4); i++) {
            char name[16];
            sprintf(name, "Level3_Worker_%d", i);
            int *id = pvPortMalloc(sizeof(int));  
            *id = i;
            xTaskCreate(vWorkerTask_level3, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
        }
    }
    vTaskDelete(NULL);
    // for(;;){}
}

void vWorkerTask_level3(void *pvParameters) {
    
    // const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 2) + 1)) - 2);

    // get worker_id and task_name for atomic or
    int worker_id = *((int *)pvParameters);
    const char *task_name = pcTaskGetName(NULL);

    // while (g_DoneMaskLevel2 != ulExpectedMask) {
    //     __asm__ volatile("fence");  // 確保記憶體一致性
    // }

    lock_print();
    printf("[%s] (id=%d) started on Core %ld\n", task_name, worker_id, rtos_core_id_get());
    unlock_print();

    // worker id = 1 --> (0, 19)
    // worker id = 2 --> (20, 39)
    int start_index = (worker_id - 1) * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 4);
    int end_index = (worker_id * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 4)) - 1;
    int size = end_index - start_index + 1;
    merge_sorted_halves_inplace(&sorting_array[start_index], size);

    atomic_or(&g_DoneMaskLevel3, (1 << worker_id));
    const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 4) + 1)) - 2);
    while (g_DoneMaskLevel3 != ulExpectedMask) {
        __asm__ volatile("fence");  // 確保記憶體一致性
    }
    if(worker_id == 1){
        for (int i = 1; i <= (FIRST_LEVEL_SORTING / 8); i++) {
            char name[16];
            sprintf(name, "Level4_Worker_%d", i);
            int *id = pvPortMalloc(sizeof(int));  
            *id = i;
            xTaskCreate(vWorkerTask_level4, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
        }
    }
    vTaskDelete(NULL);
    // for(;;){}
}

void vWorkerTask_level4(void *pvParameters) {
    
    // const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 4) + 1)) - 2);

    // get worker_id and task_name for atomic or
    int worker_id = *((int *)pvParameters);
    const char *task_name = pcTaskGetName(NULL);

    // while (g_DoneMaskLevel3 != ulExpectedMask) {
    //     __asm__ volatile("fence");  // 確保記憶體一致性
    // }

    lock_print();
    printf("[%s] (id=%d) started on Core %ld\n", task_name, worker_id, rtos_core_id_get());
    unlock_print();

    // worker id = 1 --> (0, 19)
    // worker id = 2 --> (20, 39)
    int start_index = (worker_id - 1) * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 8);
    int end_index = (worker_id * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 8)) - 1;
    int size = end_index - start_index + 1;
    merge_sorted_halves_inplace(&sorting_array[start_index], size);

    atomic_or(&g_DoneMaskLevel4, (1 << worker_id));
    const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 8) + 1)) - 2);
    while (g_DoneMaskLevel4 != ulExpectedMask) {
        __asm__ volatile("fence");  // 確保記憶體一致性
    }
    if(worker_id == 1){
        for (int i = 1; i <= (FIRST_LEVEL_SORTING / 16); i++) {
            char name[16];
            sprintf(name, "Level5_Worker_%d", i);
            int *id = pvPortMalloc(sizeof(int));  
            *id = i;
            xTaskCreate(vWorkerTask_level5, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
        }
    }
    vTaskDelete(NULL);
    // for(;;){}
}

void vWorkerTask_level5(void *pvParameters) {
    
    // const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 8) + 1)) - 2);

    // get worker_id and task_name for atomic or
    int worker_id = *((int *)pvParameters);
    const char *task_name = pcTaskGetName(NULL);

    // while (g_DoneMaskLevel4 != ulExpectedMask) {
    //     __asm__ volatile("fence");  // 確保記憶體一致性
    // }

    lock_print();
    printf("[%s] (id=%d) started on Core %ld\n", task_name, worker_id, rtos_core_id_get());
    unlock_print();

    // worker id = 1 --> (0, 19)
    // worker id = 2 --> (20, 39)
    int start_index = (worker_id - 1) * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 16);
    int end_index = (worker_id * ARRAY_SIZE / (FIRST_LEVEL_SORTING / 16)) - 1;
    int size = end_index - start_index + 1;
    merge_sorted_halves_inplace(&sorting_array[start_index], size);

    atomic_or(&g_DoneMaskLevel5, (1 << worker_id));
    vTaskDelete(NULL);
    // for(;;){}
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

void vCoordinatorTask() {

    const uint32_t ulExpectedMask = ((1 << ((FIRST_LEVEL_SORTING / 16) + 1)) - 2);
    

    lock_print();
    printf("[Coordinator] Task started on Core 0. Starting run.\n");
    unlock_print();

    
    lock_print();
    tick = clock();
    tick = clock();
    ticks_per_msec = CLOCKS_PER_SEC / 1000;

    printf("start sorting the array\n");
    printf("tick = %ld.\n\n", tick);
    printf("ticks_per_msec = %ld.\n\n", ticks_per_msec);
    unlock_print();
    
    g_ulStartRunFlag = 1;
    
    

    
    while (g_DoneMaskLevel5 != ulExpectedMask) {
        taskYIELD();
    }

    lock_print();
    
    tick1 = clock();
    tick = (tick1- tick) / ticks_per_msec;
    printf("tick1 = %ld.\n\n", tick1);
    printf("tick = %ld.\n\n", tick);
    unlock_print();
    

    lock_print();

    for (int i = 0; i < ARRAY_SIZE; i++) {
        if(sorting_array[i] == i + 1){
            continue;
        }
        else{
            printf("[Coordinator] Task failed.\n");
            break;
        }
    }

    printf("[Coordinator] It took %ld msec to sort the array of size %d.\n\n", tick, ARRAY_SIZE);
    printf("[Coordinator] ALL vWorkerTask finished. Exit.\n");
    
    unlock_print();
    #ifdef PROFILE_LOG
    for(int i = 0;i < configNUMBER_OF_CORES;i++){
        xTaskCreate(vProfile_Task, NULL, TASK_STACK_SIZE, NULL,TASK_PRIORITY,NULL);
    }
    start_print_profile = 1;
    vTaskDelete(NULL);
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

    lock_print();
    printf("Core 0: Initializing...\n");
    unlock_print();
    sorting_array = (unsigned int *)pvPortMalloc(ARRAY_SIZE * sizeof(unsigned int));
    for (int i = 0; i < ARRAY_SIZE; i++) {
        sorting_array[i] = i + 1;
    }

    for (int i = ARRAY_SIZE - 1; i > 0; i--) {
        int j = rand() % (i + 1);   
        int temp = sorting_array[i];
        sorting_array[i] = sorting_array[j];
        sorting_array[j] = temp;
    }
    lock_print();
    printf("Core 0: Creating tasks for a single run...\n");
    unlock_print();
    xTaskCreate(vCoordinatorTask, NULL, TASK_STACK_SIZE, NULL, TASK_PRIORITY, NULL);
    for (int i = 1; i <= FIRST_LEVEL_SORTING; i++) {
        char name[16];
        sprintf(name, "Level1_Worker_%d", i);
        int *id = pvPortMalloc(sizeof(int));  
        *id = i;
        xTaskCreate(vWorkerTask_level1, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
    }
    // for (int i = 1; i <= (FIRST_LEVEL_SORTING / 2); i++) {
    //     char name[16];
    //     sprintf(name, "Level2_Worker_%d", i);
    //     int *id = pvPortMalloc(sizeof(int));  
    //     *id = i;
    //     xTaskCreate(vWorkerTask_level2, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
    // }
    // for (int i = 1; i <= (FIRST_LEVEL_SORTING / 4); i++) {
    //     char name[16];
    //     sprintf(name, "Level3_Worker_%d", i);
    //     int *id = pvPortMalloc(sizeof(int));  
    //     *id = i;
    //     xTaskCreate(vWorkerTask_level3, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
    // }
    // for (int i = 1; i <= (FIRST_LEVEL_SORTING / 8); i++) {
    //     char name[16];
    //     sprintf(name, "Level4_Worker_%d", i);
    //     int *id = pvPortMalloc(sizeof(int));  
    //     *id = i;
    //     xTaskCreate(vWorkerTask_level4, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
    // }
    // for (int i = 1; i <= (FIRST_LEVEL_SORTING / 16); i++) {
    //     char name[16];
    //     sprintf(name, "Level5_Worker_%d", i);
    //     int *id = pvPortMalloc(sizeof(int));  
    //     *id = i;
    //     xTaskCreate(vWorkerTask_level5, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, NULL);
    // }
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

