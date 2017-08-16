///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      02/Mar/2014  21:19:23 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectric /
//                    Car V1.1\src\Sources\C\isr.c                            /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\src\Sources\C\isr.c" -D IAR -D TWR_K60N512    /
//                    -lCN "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoel /
//                    ectricCar V1.1\bin\Ram\List\" -lB                       /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\bin\Ram\List\" -o                             /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\bin\Ram\Obj\" --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    E:\IAREW6.3\arm\INC\c\DLib_Config_Normal.h -I           /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\src\Sources\H\" -I                            /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\src\Sources\H\Component_H\" -I                /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\src\Sources\H\Frame_H\" -Ol --use_c++_inline  /
//    List file    =  D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectric /
//                    Car V1.1\bin\Ram\List\isr.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME isr

        #define SHT_PROGBITS 0x1

        EXTERN CalculateIntegrationTimeBack
        EXTERN CalculateIntegrationTimeFront
        EXTERN ImageCapture_B
        EXTERN ImageCapture_F
        EXTERN IntegrationTime_Back
        EXTERN IntegrationTime_Front
        EXTERN Motor_Lock
        EXTERN SetMotorVoltage
        EXTERN SetServoVoltage
        EXTERN StartIntegrationBack
        EXTERN StartIntegrationFront
        EXTERN enable_pit_interrupt
        EXTERN integration_piont_Back
        EXTERN integration_piont_Front

        PUBLIC Pixel_B
        PUBLIC Pixel_F
        PUBLIC TIME1flag_20ms
        PUBLIC g_n1msEventCount
        PUBLIC g_nDirectionControlCount
        PUBLIC g_nSpeedControlCount
        PUBLIC i
        PUBLIC pit0_isr
        PUBLIC speedflag

// D:\FREESCALE智能车竞赛\freescale(九)\程序\PhotoelectricCar V1.1\src\Sources\C\isr.c
//    1 //-------------------------------------------------------------------------*
//    2 // 文件名: isr.c                                                           *
//    3 // 说  明: 中断处理程序                                                    *
//    4 //-------------------------------------------------------------------------*
//    5 
//    6 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8        g_n1msEventCount =0;
g_n1msEventCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 static uint8 TimerCnt20ms =0;
TimerCnt20ms:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8        g_nSpeedControlCount =0;
g_nSpeedControlCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 uint8        g_nDirectionControlCount =0;
g_nDirectionControlCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 uint8        Pixel_F[128]={0};
Pixel_F:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 uint8        Pixel_B[128]={0};
Pixel_B:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8        TIME1flag_20ms=0;
TIME1flag_20ms:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   14 int16        speedflag=0;
speedflag:
        DS8 2
//   15 extern uint8 g_nSpeedControlPeriod;
//   16 extern uint8 g_nDirectionControlPeriod;
//   17 extern uint8 IntegrationTime_Front;
//   18 extern uint8 IntegrationTime_Back;
//   19 extern uint8 integration_piont_Front;
//   20 extern uint8 integration_piont_Back;
//   21 extern int16 Motor_Lock;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   22 int16        i=0;
i:
        DS8 2
//   23 
//   24 //该中断函数的执行时间是多少？

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   25 void pit0_isr(void)                    //定时器1ms中断函数
//   26 {
pit0_isr:
        PUSH     {R7,LR}
//   27          DisableInterrupts;            //关总中断
        CPSID i         
//   28 
//   29          integration_piont_Front = 20 - IntegrationTime_Front;
        LDR.N    R0,??pit0_isr_0
        LDRB     R0,[R0, #+0]
        RSBS     R0,R0,#+20
        LDR.N    R1,??pit0_isr_0+0x4
        STRB     R0,[R1, #+0]
//   30          if(integration_piont_Front >= 2)//曝光点小于2不进行再曝光
        LDR.N    R0,??pit0_isr_0+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCC.N    ??pit0_isr_1
//   31          {
//   32             if(integration_piont_Front == TimerCnt20ms)
        LDR.N    R0,??pit0_isr_0+0x4
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x8
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??pit0_isr_1
//   33               StartIntegrationFront();
        BL       StartIntegrationFront
//   34          }
//   35 
//   36          integration_piont_Back = 20 - IntegrationTime_Back;
??pit0_isr_1:
        LDR.N    R0,??pit0_isr_0+0xC
        LDRB     R0,[R0, #+0]
        RSBS     R0,R0,#+20
        LDR.N    R1,??pit0_isr_0+0x10
        STRB     R0,[R1, #+0]
//   37          if(integration_piont_Back >= 2)//曝光点小于2不进行再曝光
        LDR.N    R0,??pit0_isr_0+0x10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCC.N    ??pit0_isr_2
//   38          {
//   39             if(integration_piont_Back == TimerCnt20ms)
        LDR.N    R0,??pit0_isr_0+0x10
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x8
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??pit0_isr_2
//   40               StartIntegrationBack();
        BL       StartIntegrationBack
//   41          }
//   42 
//   43          TimerCnt20ms++;
??pit0_isr_2:
        LDR.N    R0,??pit0_isr_0+0x8
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x8
        STRB     R0,[R1, #+0]
//   44          if(TimerCnt20ms>=20)
        LDR.N    R0,??pit0_isr_0+0x8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BCC.N    ??pit0_isr_3
//   45          {
//   46             TimerCnt20ms=0;
        LDR.N    R0,??pit0_isr_0+0x8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   47             ImageCapture_F(Pixel_F);
        LDR.N    R0,??pit0_isr_0+0x14
        BL       ImageCapture_F
//   48             CalculateIntegrationTimeFront();
        BL       CalculateIntegrationTimeFront
//   49             ImageCapture_B(Pixel_B);
        LDR.N    R0,??pit0_isr_0+0x18
        BL       ImageCapture_B
//   50             CalculateIntegrationTimeBack();
        BL       CalculateIntegrationTimeBack
//   51             TIME1flag_20ms=1;
        LDR.N    R0,??pit0_isr_0+0x1C
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   52          }
//   53          //--------------------------------------------------------------------------
//   54 
//   55          //g_nSpeedControlPeriod ++;
//   56          //SpeedControlOutput();
//   57 
//   58          //g_nDirectionControlPeriod ++;
//   59          //SpeedControlOutput();
//   60 
//   61          g_n1msEventCount ++;
??pit0_isr_3:
        LDR.N    R0,??pit0_isr_0+0x20
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x20
        STRB     R0,[R1, #+0]
//   62          switch(g_n1msEventCount)
        LDR.N    R0,??pit0_isr_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_4
        BCC.N    ??pit0_isr_5
        CMP      R0,#+3
        BEQ.N    ??pit0_isr_6
        BCC.N    ??pit0_isr_7
        CMP      R0,#+5
        BEQ.N    ??pit0_isr_8
        BCC.N    ??pit0_isr_9
        B.N      ??pit0_isr_5
//   63          {
//   64          case 1:
//   65               break;
??pit0_isr_4:
        B.N      ??pit0_isr_5
//   66          case 2:
//   67               //MotorOutput();
//   68               break;
??pit0_isr_7:
        B.N      ??pit0_isr_5
//   69          case 3:
//   70               if(Motor_Lock==1)
??pit0_isr_6:
        LDR.N    R0,??pit0_isr_0+0x24
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_10
//   71               {
//   72                 SetMotorVoltage(0.25);
        MOVS     R0,#+1048576000
        BL       SetMotorVoltage
//   73                 /*
//   74                 g_nSpeedControlCount ++;
//   75   	        if(g_nSpeedControlCount >= 20)
//   76   	        {
//   77                    speedflag++;
//   78   	           SpeedControl();
//   79   		   g_nSpeedControlCount = 0;
//   80   		   g_nSpeedControlPeriod = 0; 			
//   81   	        }
//   82                 */
//   83               }
//   84               
//   85               break;
??pit0_isr_10:
        B.N      ??pit0_isr_5
//   86          case 4:
//   87               /*
//   88               g_nDirectionControlCount ++;
//   89               if(g_nDirectionControlCount >= 4)
//   90   	      {
//   91                  SetServoVoltage();
//   92                  delay_ms(10);
//   93   		 g_nDirectionControlCount = 0;
//   94   		 g_nDirectionControlPeriod = 0;
//   95               }
//   96               */
//   97               SetServoVoltage();
??pit0_isr_9:
        BL       SetServoVoltage
//   98               break;
        B.N      ??pit0_isr_5
//   99          case 5:
//  100               g_n1msEventCount = 0;
??pit0_isr_8:
        LDR.N    R0,??pit0_isr_0+0x20
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  101               //GetMotorPulse();
//  102               break;
//  103          }
//  104 
//  105          PIT_TFLG(0)|=PIT_TFLG_TIF_MASK;          //清中断标志位
??pit0_isr_5:
        LDR.N    R0,??pit0_isr_0+0x28  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??pit0_isr_0+0x28  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  106          enable_pit_interrupt(0);                 //使能PIT中断
        MOVS     R0,#+0
        BL       enable_pit_interrupt
//  107          EnableInterrupts;                        //开总中断
        CPSIE i         
//  108 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??pit0_isr_0:
        DC32     IntegrationTime_Front
        DC32     integration_piont_Front
        DC32     TimerCnt20ms
        DC32     IntegrationTime_Back
        DC32     integration_piont_Back
        DC32     Pixel_F
        DC32     Pixel_B
        DC32     TIME1flag_20ms
        DC32     g_n1msEventCount
        DC32     Motor_Lock
        DC32     0x4003710c

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
// 265 bytes in section .bss
// 264 bytes in section .text
// 
// 264 bytes of CODE memory
// 265 bytes of DATA memory
//
//Errors: none
//Warnings: none
