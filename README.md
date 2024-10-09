## Aquila MP Project

**Overview**  

This project focuses on the verification and simplification of the coherence circuit design in a dual-core system, which has been extended from a RISC-V 5-stage pipelined processor developed by the Embedded Intelligent Systems Lab. The primary objective is to expand this architecture from a dual-core setup to a more complex quad-core system. 

Additionally, the project includes real-time testing and validation of the design using the Arty-A7 100T FPGA board, which provides a hardware platform for observing the system's behavior under realistic conditions. The extended architecture will undergo rigorous verification to ensure proper synchronization between the cores, efficient memory management, and overall system stability. Through this approach, the project aims to provide a scalable, robust, and validated quad-core system suitable for more complex applications while maintaining compatibility with the RISC-V architecture.

**Source Code**  

Aquila's source code is available on GitHub: [Aquila GitHub Repository](https://github.com/eisl-nctu/aquila)

**Development Background**  

A master's program senior initially extended the system to a dual-core setup. The current work concentrates on refining cache coherence and boosting overall system efficiency.

---

### Current Work

**1. UART boot code modification**  
   - Modify the uartboot code to run on the Arty A7-100T FPGA board.
   - Fix the issue where the original boot code fails to correctly load the ELF file onto the Arty A7-100T FPGA board.


**2. Verification on coherence unit**  
   - Analyzing the hardware code to ensure that the system architecture and cache coherence mechanisms are implemented correctly and efficiently.
   - Running the CoreMark benchmark to evaluate the system's performance, particularly focusing on the processing speed and efficiency of the multi-core design.
   - Tracing waveforms during execution to verify the correctness of the cache coherence system design, identifying any potential issues or mismatches in data handling between cores.
   - Executing these shared memory tests to verify the correct functionality of memory transactions, ensuring that data consistency is maintained when both cores interact with shared memory.


---

### Future Work

**1. Simplification on dual core aquila**
- Simplifying the datapath and optimizing the signal flow to improve system efficiency and reduce complexity.
- Conducting thorough testing to confirm that the revised system operates reliably and maintains proper communication between components under the new design.

**2. Rewrite FSM and timing diagram**
- Redraw the FSM and timing digram

**3. Expand to quad-core**
- Modifying the cache coherence protocol to support the increased number of cores, ensuring consistent data sharing and synchronization across all four cores.
- Validating the performance and functionality of the quad-core system through testing and benchmarking, ensuring scalability and stability under real-world workloads.





---

### Folder and File Descriptions

**aquila_mp**
- dual core sorce code

**aquila_mp_sw**
- **elibc/** – Minimal C header library for basic functionality  
- **ocr_1core/** – Handwriting recognition evaluation code for single-core processing  
- **ocr_2core/** – Parallel evaluation code for dual-core handwriting recognition  
- **test/** – Test cases for shared memory operations  
- **uartboot/** – Includes both the original and updated UART boot code for the Arty A7-100T FPGA board

**aquila_mp_sw_recover**
- **coremark_2core/** – fix the uartboot code to evaaluat dual-core performance using the CoreMark benchmark  

**test**
- test the function of the cache unitTest cases for shared memory operations and verifying the functionality of the cache unit