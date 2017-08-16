///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      22/Aug/2014  06:00:01 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0       /
//                    2014.08.20 tiaoshi\src\Sources\C\isr.c                  /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\src\Sources\C\isr.c" -D IAR -D       /
//                    TWR_K60N512 -lCN "D:\FREESCALE智能车竞赛\freescale(九)\ /
//                    程序\PE V2.0 2014.08.20 tiaoshi\bin\Flash\List\" -lB    /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\bin\Flash\List\" -o                  /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\bin\Flash\Obj\" --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "E:\Program Files                         /
//                    (x86)\IAREW6.3\arm\INC\c\DLib_Config_Normal.h" -I       /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\src\Sources\H\" -I                   /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\src\Sources\H\Component_H\" -I       /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\src\Sources\H\Frame_H\" -Ol          /
//                    --use_c++_inline                                        /
//    List file    =  D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0       /
//                    2014.08.20 tiaoshi\bin\Flash\List\isr.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME isr

        #define SHT_PROGBITS 0x1

        EXTERN Abs
        EXTERN CalculateIntegrationTimeFront
        EXTERN HONGWAI_L
        EXTERN HONGWAI_R
        EXTERN HWPO
        EXTERN ImageCapture_F
        EXTERN IntegrationTime_Front
        EXTERN Motor_Lock
        EXTERN StartIntegrationFront
        EXTERN enable_pit_interrupt
        EXTERN get_ad
        EXTERN hongwai_l
        EXTERN hongwai_l_count
        EXTERN hongwai_r
        EXTERN hongwai_r_count
        EXTERN hw_l_fg
        EXTERN hw_r_fg
        EXTERN stop_flag

        PUBLIC CAR_GO
        PUBLIC Pixel_F
        PUBLIC Pixel_Z
        PUBLIC QPX
        PUBLIC QPX_SET
        PUBLIC TIME1flag_20ms
        PUBLIC TIME1flag_20ms_Z
        PUBLIC TimerCnt20ms
        PUBLIC TimerCnt20ms_Z
        PUBLIC ceshi
        PUBLIC ceshi_fg
        PUBLIC g_n1msEventCount
        PUBLIC g_nSpeedControlCount
        PUBLIC hw_l_CT
        PUBLIC hw_r_CT
        PUBLIC integration_piont_Front
        PUBLIC integration_piont_Zong
        PUBLIC pit0_isr
        PUBLIC qpx_delay
        PUBLIC qpx_en
        PUBLIC speedflag

// D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0 2014.08.20 tiaoshi\src\Sources\C\isr.c
//    1 //-------------------------------------------------------------------------*
//    2 // 文件名: isr.c                                                           *
//    3 // 说  明: 中断处理程序                                                    *
//    4 //-------------------------------------------------------------------------*
//    5 
//    6 #include "includes.h"
//    7 extern uint8  IntegrationTime_Front,IntegrationTime_Zong;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8        uint8  integration_piont_Front,integration_piont_Zong;
integration_piont_Front:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
integration_piont_Zong:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9        uint8  Pixel_F[128]={0},Pixel_Z[128]={0};
Pixel_F:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Pixel_Z:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10        uint8  TimerCnt20ms =0,TimerCnt20ms_Z =0;
TimerCnt20ms:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
TimerCnt20ms_Z:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11        uint8  TIME1flag_20ms=0,TIME1flag_20ms_Z=0;
TIME1flag_20ms:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
TIME1flag_20ms_Z:
        DS8 1
//   12        

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13        uint8  g_n1msEventCount =0;
g_n1msEventCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14        uint8  g_nSpeedControlCount =0;       
g_nSpeedControlCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   15        int16  speedflag=0;
speedflag:
        DS8 2
//   16 
//   17 extern int16  Motor_Lock;
//   18 extern int16  Servo_Lock;
//   19 extern int16  servo_duty;
//   20 extern int16  speed_pwm;
//   21 extern int16  speed_H;
//   22 extern int16  speed_L;
//   23 extern int32  pulse_count;
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25        int32  qpx_delay=0;
qpx_delay:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   26        int16  QPX=0,QPX_SET=12;
QPX:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
QPX_SET:
        DATA
        DC16 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   27        uint8  qpx_en=0,CAR_GO=0;
qpx_en:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
CAR_GO:
        DS8 1
//   28        
//   29 extern int16  stop_count,stop_flag;   
//   30 
//   31 extern int16  hongwai_l,hongwai_r;
//   32 extern int16  HONGWAI_L,HONGWAI_R;
//   33 extern int16  hongwai_l_count,hongwai_r_count;
//   34 extern uint8  hw_l_fg,hw_r_fg;
//   35 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   36        int16  hw_l_CT=0,hw_r_CT=0;
hw_l_CT:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
hw_r_CT:
        DS8 2
//   37 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   38        int16  ceshi=0;
ceshi:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   39        uint8  ceshi_fg=0;
ceshi_fg:
        DS8 1
//   40 extern uint8  HWPO;
//   41 
//   42 
//   43 //该中断函数执行时间是多少?

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   44 void pit0_isr(void)                      //定时器1ms中断函数
//   45 {
pit0_isr:
        PUSH     {R7,LR}
//   46          DisableInterrupts;              //关总中断
        CPSID i         
//   47          //-----------------
//   48          if(ceshi++>1000)
        LDR.N    R0,??pit0_isr_0
        LDRSH    R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??pit0_isr_0
        STRH     R1,[R2, #+0]
        MOVW     R1,#+1001
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.N    ??pit0_isr_1
//   49          {
//   50            ceshi=0;
        LDR.N    R0,??pit0_isr_0
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   51            ceshi_fg=1;
        LDR.N    R0,??pit0_isr_0+0x4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   52          }
//   53          //-------------------------------------------
//   54          if(CAR_GO==1)
??pit0_isr_1:
        LDR.N    R0,??pit0_isr_0+0x8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_2
//   55          {
//   56            qpx_delay++;
        LDR.N    R0,??pit0_isr_0+0xC
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0xC
        STR      R0,[R1, #+0]
//   57            if(qpx_delay==1000) 
        LDR.N    R0,??pit0_isr_0+0xC
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        CMP      R0,R1
        BNE.N    ??pit0_isr_3
//   58            {
//   59              qpx_delay=0;
        LDR.N    R0,??pit0_isr_0+0xC
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   60              QPX++;
        LDR.N    R0,??pit0_isr_0+0x10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x10
        STRH     R0,[R1, #+0]
//   61            }
//   62            if(QPX>=QPX_SET) qpx_en=1;
??pit0_isr_3:
        LDR.N    R0,??pit0_isr_0+0x10
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x14
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??pit0_isr_2
        LDR.N    R0,??pit0_isr_0+0x18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   63          }
//   64          if(qpx_en==1&&HWPO==0)
??pit0_isr_2:
        LDR.N    R0,??pit0_isr_0+0x18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_4
        LDR.N    R0,??pit0_isr_0+0x1C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_4
//   65          {
//   66            //-----------------
//   67            get_ad();  
        BL       get_ad
//   68            //---------------------------------------
//   69            //起跑线
//   70            if(hongwai_l<HONGWAI_L-800)  hw_l_fg=1;
        LDR.N    R0,??pit0_isr_0+0x20
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x24
        LDRSH    R1,[R1, #+0]
        SUBS     R1,R1,#+800
        CMP      R0,R1
        BGE.N    ??pit0_isr_5
        LDR.N    R0,??pit0_isr_0+0x28
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   71            if(hongwai_r<HONGWAI_R-800)  hw_r_fg=1;
??pit0_isr_5:
        LDR.N    R0,??pit0_isr_0+0x2C
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x30
        LDRSH    R1,[R1, #+0]
        SUBS     R1,R1,#+800
        CMP      R0,R1
        BGE.N    ??pit0_isr_6
        LDR.N    R0,??pit0_isr_0+0x34
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   72            
//   73            if(stop_flag==0)
??pit0_isr_6:
        LDR.N    R0,??pit0_isr_0+0x38
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_7
//   74            {
//   75              if(hw_l_fg==1)
        LDR.N    R0,??pit0_isr_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_8
//   76              {
//   77                hongwai_l_count++;
        LDR.N    R0,??pit0_isr_0+0x3C
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x3C
        STRH     R0,[R1, #+0]
//   78                if(hongwai_l_count>15) hw_l_fg=0;//定时保持
        LDR.N    R0,??pit0_isr_0+0x3C
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??pit0_isr_9
        LDR.N    R0,??pit0_isr_0+0x28
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??pit0_isr_9
//   79              }
//   80              else  hongwai_l_count=0;
??pit0_isr_8:
        LDR.N    R0,??pit0_isr_0+0x3C
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   81              
//   82              if(hw_r_fg==1)
??pit0_isr_9:
        LDR.N    R0,??pit0_isr_0+0x34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_10
//   83              {
//   84                hongwai_r_count++;
        LDR.N    R0,??pit0_isr_0+0x40
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x40
        STRH     R0,[R1, #+0]
//   85                if(hongwai_r_count>15) hw_r_fg=0;
        LDR.N    R0,??pit0_isr_0+0x40
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??pit0_isr_7
        LDR.N    R0,??pit0_isr_0+0x34
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??pit0_isr_7
//   86              }
//   87              else  hongwai_r_count=0;
??pit0_isr_10:
        LDR.N    R0,??pit0_isr_0+0x40
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   88            }
//   89            
//   90            if((hw_l_fg==1&&hw_r_fg==1)&&Abs(hongwai_l_count-hongwai_r_count)<10)
??pit0_isr_7:
        LDR.N    R0,??pit0_isr_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_4
        LDR.N    R0,??pit0_isr_0+0x34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit0_isr_4
        LDR.N    R0,??pit0_isr_0+0x3C
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x40
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R0,#+10
        BGE.N    ??pit0_isr_4
//   91              stop_flag=1;
        LDR.N    R0,??pit0_isr_0+0x38
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//   92          }
//   93          
//   94          //-------------------------------------------
//   95          integration_piont_Front = 20 - IntegrationTime_Front;
??pit0_isr_4:
        LDR.N    R0,??pit0_isr_0+0x44
        LDRB     R0,[R0, #+0]
        RSBS     R0,R0,#+20
        LDR.N    R1,??pit0_isr_0+0x48
        STRB     R0,[R1, #+0]
//   96          if(integration_piont_Front >= 2)//曝光点小于2不进行曝光
        LDR.N    R0,??pit0_isr_0+0x48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCC.N    ??pit0_isr_11
//   97          {
//   98            if(integration_piont_Front == TimerCnt20ms)
        LDR.N    R0,??pit0_isr_0+0x48
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??pit0_isr_0+0x4C
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??pit0_isr_11
//   99              StartIntegrationFront();
        BL       StartIntegrationFront
//  100          }
//  101          /*
//  102          integration_piont_Zong = 3 - IntegrationTime_Zong;
//  103          if(integration_piont_Zong >= 1)//曝光点小于2不进行曝光
//  104          {
//  105            if(integration_piont_Zong == TimerCnt20ms)
//  106              StartIntegrationZong();
//  107          }*/
//  108          
//  109          TimerCnt20ms++;
??pit0_isr_11:
        LDR.N    R0,??pit0_isr_0+0x4C
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x4C
        STRB     R0,[R1, #+0]
//  110          if(TimerCnt20ms>=20)
        LDR.N    R0,??pit0_isr_0+0x4C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BCC.N    ??pit0_isr_12
//  111          {
//  112            TimerCnt20ms=0;
        LDR.N    R0,??pit0_isr_0+0x4C
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  113            ImageCapture_F(Pixel_F);//！！！买J-link,用定时器，研究程序执行时间，或许可以放到主循环中
        LDR.N    R0,??pit0_isr_0+0x50
        BL       ImageCapture_F
//  114            CalculateIntegrationTimeFront();
        BL       CalculateIntegrationTimeFront
//  115            TIME1flag_20ms=1;
        LDR.N    R0,??pit0_isr_0+0x54
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  116          }
//  117          /*
//  118          TimerCnt20ms_Z++;
//  119          if(TimerCnt20ms_Z>=3)
//  120          {
//  121            TimerCnt20ms_Z=0;
//  122            ImageCapture_Z(Pixel_Z);
//  123            CalculateIntegrationTimeZong();
//  124            TIME1flag_20ms_Z=1;
//  125          }*/
//  126 
//  127          g_n1msEventCount++;
??pit0_isr_12:
        LDR.N    R0,??pit0_isr_0+0x58
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit0_isr_0+0x58
        STRB     R0,[R1, #+0]
//  128          switch(g_n1msEventCount)
        LDR.N    R0,??pit0_isr_0+0x58
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??pit0_isr_13
        BCC.N    ??pit0_isr_14
        CMP      R0,#+3
        BEQ.N    ??pit0_isr_15
        BCC.N    ??pit0_isr_16
        CMP      R0,#+5
        BEQ.N    ??pit0_isr_17
        BCC.N    ??pit0_isr_18
        B.N      ??pit0_isr_14
//  129          {
//  130            case 1:
//  131              if(Motor_Lock == 0)
??pit0_isr_13:
        LDR.N    R0,??pit0_isr_0+0x5C
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit0_isr_19
//  132              {  
//  133                speedflag=1;
        LDR.N    R0,??pit0_isr_0+0x60
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  134              }
//  135              break;
??pit0_isr_19:
        B.N      ??pit0_isr_14
//  136            case 2:
//  137              break;
??pit0_isr_16:
        B.N      ??pit0_isr_14
//  138            case 3: 
//  139              break;  
??pit0_isr_15:
        B.N      ??pit0_isr_14
//  140            case 4:      
//  141              break;
??pit0_isr_18:
        B.N      ??pit0_isr_14
//  142            case 5:
//  143              g_n1msEventCount = 0;
??pit0_isr_17:
        LDR.N    R0,??pit0_isr_0+0x58
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  144              break;
//  145          }
//  146 
//  147          PIT_TFLG(0)|=PIT_TFLG_TIF_MASK;          //清中断标志位
??pit0_isr_14:
        LDR.N    R0,??pit0_isr_0+0x64  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??pit0_isr_0+0x64  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  148          enable_pit_interrupt(0);                 //使能PIT中断
        MOVS     R0,#+0
        BL       enable_pit_interrupt
//  149          EnableInterrupts;                        //开总中断
        CPSIE i         
//  150 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??pit0_isr_0:
        DC32     ceshi
        DC32     ceshi_fg
        DC32     CAR_GO
        DC32     qpx_delay
        DC32     QPX
        DC32     QPX_SET
        DC32     qpx_en
        DC32     HWPO
        DC32     hongwai_l
        DC32     HONGWAI_L
        DC32     hw_l_fg
        DC32     hongwai_r
        DC32     HONGWAI_R
        DC32     hw_r_fg
        DC32     stop_flag
        DC32     hongwai_l_count
        DC32     hongwai_r_count
        DC32     IntegrationTime_Front
        DC32     integration_piont_Front
        DC32     TimerCnt20ms
        DC32     Pixel_F
        DC32     TIME1flag_20ms
        DC32     g_n1msEventCount
        DC32     Motor_Lock
        DC32     speedflag
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
// 281 bytes in section .bss
//   2 bytes in section .data
// 584 bytes in section .text
// 
// 584 bytes of CODE memory
// 283 bytes of DATA memory
//
//Errors: none
//Warnings: none
