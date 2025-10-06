// =============================================================================
//  Program : rtos_run.c
//  Author  : Ye Chen
//  Date    : Sept/17/2025
// =============================================================================
//  This program implements parallel computation of a 2-layer multilayer perceptron (MLP) 
//  neural network using FreeRTOS SMP. The input data is processed in parallel by 
//  multiple threads running on different cores, where each thread is responsible 
//  for a portion of the MLP calculation. 
// -----------------------------------------------------------------------------
//  Revision information:
//
//  None.
// -----------------------------------------------------------------------------
//  License information:
//
//  This software is released under the BSD-3-Clause Licence,
//  see https://opensource.org/licenses/BSD-3-Clause for details.
//  In the following license statements, "software" refers to the
//  "source code" of the complete hardware/software system.
//
//  Copyright 2025,
//                    Embedded Intelligent Systems Lab (EISL)
//                    Deparment of Computer Science
//                    National Yang Ming Chiao Tung University
//                    Hsinchu, Taiwan.
//
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//
//  3. Neither the name of the copyright holder nor the names of its contributors
//     may be used to endorse or promote products derived from this software
//     without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.
// =============================================================================
#include "FreeRTOS.h"
#include "task.h"
#include <stdint.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "file_read.h"
#include "neuronet.h"

#define TASK_STACK_SIZE         (configMINIMAL_STACK_SIZE * 2)
#define TASK_PRIORITY           (tskIDLE_PRIORITY + 1)
#define COORDINATOR_CORE        0 

volatile uint32_t FinishFlag = 0;


volatile uint32_t done_memcpy[100] = {0};
volatile uint32_t done_eval[100] = {0};
volatile uint32_t done_calc[100] = {0};
volatile uint32_t done_layer_calc1[100] = {0};
volatile uint32_t done_layer_calc2[100] = {0};

extern void freertos_risc_v_trap_handler(void);
extern void xPortStartSchedulerOncore(void);

void lock_print() {
    uint32_t ulHartId = rtos_core_id_get() + 1;
    uint32_t ulPrevVal;
    do {
        __asm__ volatile("amoswap.w.aqrl %0, %2, %1" : "=r"(ulPrevVal), "+A"(*PRINT_LOCK_ADDR) : "r"(ulHartId) : "memory");
    } while (ulPrevVal != 0);
}

void unlock_print() {
    __asm__ volatile("amoswap.w.rl zero, zero, %0" : : "A"(*PRINT_LOCK_ADDR) : "memory");
}

void atomic_or(volatile uint32_t *addr, int val) {
    __asm__ volatile("amoor.w.aqrl zero, %1, %0" : "+A"(*addr) : "r"(val) : "memory");
}

void atomic_and(volatile uint32_t *addr, int val) {
    __asm__ volatile("amoand.w.aqrl zero, %1, %0"
                     : "+A"(*addr)
                     : "r"(val)
                     : "memory");
}


void vWorkerTask(void *pvParameters) {
    
    // get worker_id and task_name for atomic or
    int worker_id = *((int *)pvParameters);
    const char *task_name = pcTaskGetName(NULL);
    
    lock_print();
    printf("[%s] (id=%d) started on Core %ld\n", task_name, worker_id, rtos_core_id_get());
    unlock_print();

    for(int idx = 0; idx < 100; idx++){
        
        int class_id;
        class_id = neuronet_eval(&nn, images[idx], worker_id, idx);    
        if(worker_id == 0){
            lock_print();
            // printf("Picture label = %d, class_id = %d\n",labels[idx], class_id);
            unlock_print();
            if ((int) labels[idx] == class_id) {
                
                ++correct_count;
            }
        }
    }

    if(worker_id == 0){
        FinishFlag = 1;
    }
    
    vTaskDelete(NULL);
    // for(;;){}
}

void vCoordinatorTask() {

 

    lock_print();
    printf("[Coordinator] (2) Perform the hand-written digits recognition test.\n");
    printf("[Coordinator] Here, we use a %d-layer %d-%d-%d MLP neural network model.\n",
            n_layers, n_neurons[0], n_neurons[1], n_neurons[2]);
    printf("[Coordinator] Begin computing ...\n");
    unlock_print();
    

    tick = clock();
    while (FinishFlag == 0);
    tick = (clock() - tick) / ticks_per_msec;


    printf("[Coordinator] Tested %d images. The accuracy is %.2f%%\n\n", 
               n_images, 100.0f * (float) correct_count / n_images);
    printf("It took %ld msec to perform the test.\n\n", tick);

    

    lock_print();
    printf("[Coordinator] ALL vWorkerTask finished. Exit.\n");
    unlock_print();

    exit(0);
    for(;;){}
}

int main(void) {
    int core_id = rtos_core_id_get();
    #ifdef TEST_1_CORE
    if(core_id >= 1) {
        while(1);
    }
    #else
    if(core_id >= configNUMBER_OF_CORES) {
        while(1);
    }
    #endif
    if (core_id == COORDINATOR_CORE) {
        *(volatile uint32_t *)PRINT_LOCK_ADDR = 0u;
        *(volatile uint32_t *)MALLOC_LOCK_ADDR = 0u;

        // try to read files from sd card on core 0
        lock_print();
        printf("\n(1) Reading the test images, labels, and neural weights.\n");
        release  ();
        initialize();
        // // Core 0 讀取 SD 卡
        tick = clock();

        // // 讀取測試影像和真實標籤
        images  = read_images("test-images.dat", &n_images, &n_rows, &n_cols);
        labels  = read_labels("test-labels.dat");
        weights = read_weights("weights.dat", &n_layers, n_neurons);

        tick = (clock() - tick) / ticks_per_msec;
        printf("It took %ld msec to read files from the SD card.\n\n", tick);
        unlock_print();

        neuronet_init(&nn, n_layers, n_neurons);
        neuronet_load(&nn, weights);
        
        lock_print();
        printf("Core 0: Initializing...\n");
        unlock_print();
        
        
        
        
        

        xTaskCreateAffinitySet(vCoordinatorTask, NULL, TASK_STACK_SIZE, NULL, TASK_PRIORITY, (1 << COORDINATOR_CORE), NULL);
        UBaseType_t mask = (1 << configNUMBER_OF_CORES) - 1; 
        for (int i = 0; i < THREAD; i++) {
            char name[20];
            sprintf(name, "Level1_Worker_%d", i);
            int *id = pvPortMalloc(sizeof(int));  
            *id = i;
            #ifdef AFFINITY_SPECIFIC_CORE
            xTaskCreateAffinitySet(vWorkerTask, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, 1 << i, NULL);
            #else
            xTaskCreateAffinitySet(vWorkerTask, name, TASK_STACK_SIZE, (void *)id, TASK_PRIORITY, mask, NULL);
            #endif
        }
        
        vTaskStartScheduler();
    } else {
        xPortStartSchedulerOncore();
    }

    for (;;);
    return 0;
}

void vApplicationMallocFailedHook(void) {
    lock_print();
    printf("Malloc failed!\n");
    unlock_print();
    for(;;);
}
void vApplicationStackOverflowHook(TaskHandle_t pxTask, char *pcTaskName) { 
    (void)pxTask;
    lock_print();
    printf("Stack overflow in %s\n", pcTaskName);
    unlock_print();
    for(;;);
}

void vApplicationIdleHook(void) {}
void vApplicationTickHook(void) {}