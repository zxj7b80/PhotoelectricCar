///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      28/Oct/2013  20:06:03 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\s /
//                    rc\Sources\C\Component_C\delay.c                        /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    src\Sources\C\Component_C\delay.c" -D IAR -D            /
//                    TWR_K60N512 -lCN "D:\FREESCALE智能车竞赛\freescale(九)\ /
//                    PhotoelectricCar\bin\Ram\List\" -lB                     /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    bin\Ram\List\" -o "D:\FREESCALE智能车竞赛\freescale(九) /
//                    \PhotoelectricCar\bin\Ram\Obj\" --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    E:\IAREW6.3\arm\INC\c\DLib_Config_Normal.h -I           /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    src\Sources\H\" -I "D:\FREESCALE智能车竞赛\freescale(九 /
//                    )\PhotoelectricCar\src\Sources\H\Component_H\" -I       /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    src\Sources\H\Frame_H\" -Ol --use_c++_inline            /
//    List file    =  D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\b /
//                    in\Ram\List\delay.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME delay

        #define SHT_PROGBITS 0x1

        PUBLIC delay
        PUBLIC delay_ms

// D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\src\Sources\C\Component_C\delay.c
//    1 #include"delay.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void delay(uint32 a) 
//    4 {
//    5   uint32 i;
//    6   for(i=0;i<a;i++);
delay:
        MOVS     R1,#+0
        B.N      ??delay_0
??delay_1:
        ADDS     R1,R1,#+1
??delay_0:
        CMP      R1,R0
        BCC.N    ??delay_1
//    7 }
        BX       LR               ;; return
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void delay_ms(uint32 count_val)
//   10 {
//   11   /* Make sure the clock to the LPTMR is enabled */
//   12   SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK; 
delay_ms:
        LDR.N    R1,??DataTable0  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable0  ;; 0x40048038
        STR      R1,[R2, #+0]
//   13   
//   14   /* Set the compare value to the number of ms to delay */
//   15   LPTMR0_CMR = count_val; 
        LDR.N    R1,??DataTable0_1  ;; 0x40040008
        STR      R0,[R1, #+0]
//   16   
//   17   /* Set up LPTMR to use 1kHz LPO with no prescaler as its clock source */
//   18   LPTMR0_PSR = LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK; 
        LDR.N    R0,??DataTable0_2  ;; 0x40040004
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
//   19   
//   20   /* Start the timer */
//   21   LPTMR0_CSR |= LPTMR_CSR_TEN_MASK; 
        LDR.N    R0,??DataTable0_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable0_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   22 
//   23   /* Wait for counter to reach compare value */
//   24   while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK));
??delay_ms_0:
        LDR.N    R0,??DataTable0_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??delay_ms_0
//   25   
//   26   /* Clear Timer Compare Flag */
//   27   LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable0_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable0_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   28   
//   29   return;
        BX       LR               ;; return
//   30 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     0x40040000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 84 bytes in section .text
// 
// 84 bytes of CODE memory
//
//Errors: none
//Warnings: none
