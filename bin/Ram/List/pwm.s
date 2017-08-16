///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      28/Feb/2014  18:56:16 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectric /
//                    Car V1.1\src\Sources\C\Component_C\pwm.c                /
//    Command line =  "D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectri /
//                    cCar V1.1\src\Sources\C\Component_C\pwm.c" -D IAR -D    /
//                    TWR_K60N512 -lCN "D:\FREESCALE���ܳ�����\freescale(��)\ /
//                    ����\PhotoelectricCar V1.1\bin\Ram\List\" -lB           /
//                    "D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectri /
//                    cCar V1.1\bin\Ram\List\" -o                             /
//                    "D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectri /
//                    cCar V1.1\bin\Ram\Obj\" --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    E:\IAREW6.3\arm\INC\c\DLib_Config_Normal.h -I           /
//                    "D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectri /
//                    cCar V1.1\src\Sources\H\" -I                            /
//                    "D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectri /
//                    cCar V1.1\src\Sources\H\Component_H\" -I                /
//                    "D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectri /
//                    cCar V1.1\src\Sources\H\Frame_H\" -Ol --use_c++_inline  /
//    List file    =  D:\FREESCALE���ܳ�����\freescale(��)\����\Photoelectric /
//                    Car V1.1\bin\Ram\List\pwm.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pwm

        #define SHT_PROGBITS 0x1

        EXTERN gpio_init
        EXTERN periph_clk_khz

        PUBLIC FTM_MOD0
        PUBLIC FTM_MOD1
        PUBLIC FTM_MOD2
        PUBLIC FTM_PWM_ChangeDuty
        PUBLIC FTM_PWM_Init
        PUBLIC FTM_PWM_Open
        PUBLIC Motor_init

// D:\FREESCALE���ܳ�����\freescale(��)\����\PhotoelectricCar V1.1\src\Sources\C\Component_C\pwm.c
//    1 #include<pwm.h>
//    2 #include<gpio.h>    
//    3 
//    4 extern int periph_clk_khz;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 uint32 FTM_MOD0=0;
FTM_MOD0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 uint32 FTM_MOD1=0;
FTM_MOD1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 uint32 FTM_MOD2=0;
FTM_MOD2:
        DS8 4
//    8  
//    9 
//   10 /***************************************************************
//   11 *��������uint8 FTM_PWM_Init(uint8 FTMx,uint32 freq)
//   12 *���ܣ�  ���ض���FTMx��ʼ��Ϊpwm�������������Ƶ��
//   13 *��ڲ�����(1)FTMx : 0
//   14                      1
//   15                      2
//   16            
//   17           (2)fre  :  Hz
//   18 *���ڲ�������
//   19 *˵������
//   20 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 uint8 FTM_PWM_Init(uint8 FTMx,uint32 freq)
//   22 {
FTM_PWM_Init:
        PUSH     {R4,R5}
//   23   uint32 bus_clk_hz;
//   24   uint32 mod;
//   25   uint8  ps=0;
        MOVS     R3,#+0
//   26   bus_clk_hz = periph_clk_khz*1000;
        LDR.W    R2,??DataTable3
        LDR      R2,[R2, #+0]
        MOV      R4,#+1000
        MULS     R2,R4,R2
//   27     
//   28   if(freq>bus_clk_hz) return 0;
        CMP      R2,R1
        BCS.N    ??FTM_PWM_Init_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
//   29   
//   30   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??FTM_PWM_Init_0:
        MOVS     R3,#+128
        MUL      R3,R3,R1
        UDIV     R4,R2,R3
        MOVW     R3,#+65535
        CMP      R4,R3
        BCS.W    ??FTM_PWM_Init_2
//   31   {
//   32     ps = 7;
        MOVS     R3,#+7
//   33     if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_3
//   34     {
//   35       FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//   36     }
//   37     else if(FTMx==1)
//   38     {
//   39       FTM_MOD1=mod;
//   40     }
//   41     else if(FTMx==2)
//   42     {
//   43       FTM_MOD2=mod;  
//   44     }
//   45     else
//   46       return 0;
//   47     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
??FTM_PWM_Init_4:
        MOVS     R4,#+64
        MUL      R4,R4,R1
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   48     {
//   49       ps = 6;   
        MOVS     R3,#+6
//   50       if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_6
//   51       {
//   52         FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//   53       }
//   54       else if(FTMx==1)
//   55       {
//   56         FTM_MOD1=mod;
//   57       }
//   58       else if(FTMx==2)
//   59       {
//   60         FTM_MOD2=mod;  
//   61       }
//   62     else
//   63       return 0;
//   64       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
??FTM_PWM_Init_7:
        LSLS     R4,R1,#+5
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   65       {
//   66         ps = 5; 
        MOVS     R3,#+5
//   67         if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_8
//   68         {
//   69           FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//   70         }
//   71         else if(FTMx==1)
//   72         {
//   73           FTM_MOD1=mod;
//   74         }
//   75         else if(FTMx==2)
//   76         {
//   77           FTM_MOD2=mod;  
//   78         }
//   79         else
//   80           return 0;
//   81         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
??FTM_PWM_Init_9:
        LSLS     R4,R1,#+4
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   82         {
//   83           ps = 4;  
        MOVS     R3,#+4
//   84           if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_10
//   85           {
//   86             FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//   87           }
//   88           else if(FTMx==1)
//   89           {
//   90             FTM_MOD1=mod;
//   91           }
//   92           else if(FTMx==2)
//   93           {
//   94             FTM_MOD2=mod;  
//   95           }
//   96           else
//   97             return 0;
//   98           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
??FTM_PWM_Init_11:
        LSLS     R4,R1,#+3
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   99           {
//  100             ps = 3;
        MOVS     R3,#+3
//  101             if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_12
//  102             {
//  103               FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//  104             }
//  105             else if(FTMx==1)
//  106             {
//  107               FTM_MOD1=mod;
//  108             }
//  109             else if(FTMx==2)
//  110             {
//  111               FTM_MOD2=mod;  
//  112             }
//  113             else
//  114               return 0;
//  115             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
??FTM_PWM_Init_13:
        LSLS     R4,R1,#+2
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//  116             {
//  117               ps = 2;
        MOVS     R3,#+2
//  118               if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_14
//  119               {
//  120                 FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//  121               }
//  122               else if(FTMx==1)
//  123               {
//  124                 FTM_MOD1=mod;
//  125               }
//  126               else if(FTMx==2)
//  127               {
//  128                 FTM_MOD2=mod;  
//  129               }
//  130               else
//  131                 return 0;
//  132               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
??FTM_PWM_Init_15:
        LSLS     R4,R1,#+1
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//  133               {
//  134                 ps = 1;
        MOVS     R3,#+1
//  135                 if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_16
//  136                 {
//  137                   FTM_MOD0= mod;
        LDR.W    R5,??DataTable3_1
        STR      R4,[R5, #+0]
//  138                 }
//  139                 else if(FTMx==1)
//  140                 {
//  141                   FTM_MOD1=mod;
//  142                 }
//  143                 else if(FTMx==2)
//  144                 {
//  145                   FTM_MOD2=mod;  
//  146                 }
//  147                 else
//  148                   return 0;
//  149                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
??FTM_PWM_Init_17:
        UDIV     R4,R2,R1
        MOVW     R1,#+65535
        CMP      R4,R1
        BCS.N    ??FTM_PWM_Init_5
//  150                 {
//  151                   ps = 0;
        MOVS     R3,#+0
//  152                   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_18
//  153                   {
//  154                     FTM_MOD0= mod;
        LDR.W    R1,??DataTable3_1
        STR      R4,[R1, #+0]
//  155                   }
//  156                   else if(FTMx==1)
//  157                   {
//  158                     FTM_MOD1=mod;
//  159                   }
//  160                   else if(FTMx==2)
//  161                   {
//  162                     FTM_MOD2=mod;  
//  163                   }
//  164                   else
//  165                     return 0;
//  166                 }
//  167               }
//  168             }
//  169           }
//  170         }  
//  171       }
//  172     }
//  173   }
//  174   else
//  175   {
//  176     return 0;
//  177   }
//  178   
//  179   if(FTMx==0)
??FTM_PWM_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_19
//  180     {
//  181       // ʹ��FTMʱ��ģ��
//  182       SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable3_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable3_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  183   
//  184       // ����FTM���ƼĴ���
//  185       // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  186       // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  187       FTM0_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable3_3  ;; 0x40038000
        STR      R0,[R1, #+0]
//  188   
//  189       // ����PWM���ڼ�ռ�ձ�
//  190       // PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  191       // ����FTM������ʼֵ
//  192       FTM0_CNT = 0;
        LDR.W    R0,??DataTable3_4  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  193       FTM0_CNTIN = 0;
        LDR.W    R0,??DataTable3_5  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  194       
//  195       // ����FTM����MODֵ
//  196       FTM0_MOD = FTM_MOD0;
        LDR.W    R0,??DataTable3_6  ;; 0x40038008
        LDR.W    R1,??DataTable3_1
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  197     }
//  198   else if(FTMx==1)
//  199     {
//  200       // ʹ��FTMʱ��ģ��
//  201       SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
//  202   
//  203       // ����FTM���ƼĴ���
//  204       // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  205       // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  206       FTM1_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
//  207   
//  208       // ����PWM���ڼ�ռ�ձ�
//  209       // PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  210       // ����FTM������ʼֵ
//  211       FTM1_CNT = 0;
//  212       FTM1_CNTIN = 0;
//  213       
//  214       // ����FTM����MODֵ
//  215       FTM1_MOD = FTM_MOD1;
//  216     } 
//  217   else if(FTMx==2)
//  218     {
//  219       // ʹ��FTMʱ��ģ��
//  220       SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
//  221   
//  222       // ����FTM���ƼĴ���
//  223       // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  224       // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  225       FTM2_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
//  226   
//  227       // ����PWM���ڼ�ռ�ձ�
//  228       // PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  229       // ����FTM������ʼֵ
//  230       FTM2_CNT = 0;
//  231       FTM2_CNTIN = 0;
//  232       
//  233       // ����FTM����MODֵ
//  234       FTM2_MOD = FTM_MOD2;
//  235     }  
//  236   else
//  237     return 0;
//  238 
//  239   return 1;
??FTM_PWM_Init_20:
        MOVS     R0,#+1
??FTM_PWM_Init_1:
        POP      {R4,R5}
        BX       LR               ;; return
??FTM_PWM_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_21
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_4
??FTM_PWM_Init_21:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_22
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_4
??FTM_PWM_Init_22:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_23
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_7
??FTM_PWM_Init_23:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_24
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_7
??FTM_PWM_Init_24:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_25
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_9
??FTM_PWM_Init_25:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_26
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_9
??FTM_PWM_Init_26:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_27
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_11
??FTM_PWM_Init_27:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_28
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_11
??FTM_PWM_Init_28:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_29
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_13
??FTM_PWM_Init_29:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_30
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_13
??FTM_PWM_Init_30:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_31
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_15
??FTM_PWM_Init_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_32
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_15
??FTM_PWM_Init_32:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_33
        LDR.W    R5,??DataTable3_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_17
??FTM_PWM_Init_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_34
        LDR.W    R5,??DataTable3_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_17
??FTM_PWM_Init_34:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_35
        LDR.W    R1,??DataTable3_7
        STR      R4,[R1, #+0]
        B.N      ??FTM_PWM_Init_5
??FTM_PWM_Init_35:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_36
        LDR.W    R1,??DataTable3_8
        STR      R4,[R1, #+0]
        B.N      ??FTM_PWM_Init_5
??FTM_PWM_Init_36:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_2:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_19:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_37
        LDR.W    R0,??DataTable3_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable3_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable3_9  ;; 0x40039000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable3_10  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_11  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_12  ;; 0x40039008
        LDR.W    R1,??DataTable3_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??FTM_PWM_Init_20
??FTM_PWM_Init_37:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_38
        LDR.W    R0,??DataTable3_13  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable3_13  ;; 0x40048030
        STR      R0,[R1, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable3_14  ;; 0x400b8000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable3_15  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_16  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_17  ;; 0x400b8008
        LDR.W    R1,??DataTable3_8
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??FTM_PWM_Init_20
??FTM_PWM_Init_38:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
//  240 }
//  241 
//  242 
//  243 /***************************************************************
//  244 *��������uint8 FTM_PWM_Open(uint8 FTMx,uint8 channel, uint32 duty)
//  245 *���ܣ�  ��PWMͨ��������ռ�ձ�
//  246 *��ڲ�����(1)FTMx : 0
//  247                      1
//  248                      2
//  249            
//  250           (2)channel  ͨ���� 
//  251 
//  252           (3)duty     ռ�ձ�
//  253 *���ڲ�������
//  254 *˵������
//  255 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 uint8 FTM_PWM_Open(uint8 FTMx,uint8 channel, uint32 duty)
//  257 {
FTM_PWM_Open:
        PUSH     {R3,R4}
//  258   uint32 cv;
//  259   volatile uint32 mod;
//  260   
//  261   if(duty>10000) return 0;
        MOVW     R3,#+10001
        CMP      R2,R3
        BCC.N    ??FTM_PWM_Open_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
//  262   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  263   if(FTMx==0)
??FTM_PWM_Open_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Open_2
//  264   {
//  265     mod = FTM_MOD0;
        LDR.N    R3,??DataTable3_1
        LDR      R3,[R3, #+0]
        STR      R3,[SP, #+0]
//  266   }
//  267   else if(FTMx==1)
//  268   {
//  269     mod==FTM_MOD1;
//  270   }
//  271   else if(FTMx==2)
//  272   {
//  273     mod==FTM_MOD2;
//  274   }
//  275   else
//  276     return 0;
//  277   
//  278   cv = (duty*(mod-0+1)+0)/10000;
??FTM_PWM_Open_3:
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
//  279   
//  280   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Open_4
//  281   {
//  282     //ѡ�񲢿���ͨ��
//  283     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,R1
        CMP      R3,#+0
        CMP      R3,#+2
        BLS.N    ??FTM_PWM_Open_5
        SUBS     R3,R3,#+3
        BEQ.N    ??FTM_PWM_Open_6
        SUBS     R3,R3,#+1
        CMP      R3,#+3
        BLS.N    ??FTM_PWM_Open_7
        B.N      ??FTM_PWM_Open_8
//  284       {
//  285         case 0:
//  286         case 1:
//  287         case 2:
//  288           SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??FTM_PWM_Open_5:
        LDR.N    R3,??DataTable3_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        MOV      R4,#+512
        ORRS     R3,R4,R3
        LDR.N    R4,??DataTable3_18  ;; 0x40048038
        STR      R3,[R4, #+0]
//  289           PORT_PCR_REG(PORTA_BASE_PTR, channel+3) = PORT_PCR_MUX(3);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+299008
        MOV      R4,#+768
        STR      R4,[R3, #+12]
//  290           break;
//  291         case 3:
//  292           SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  293           PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);
//  294           break;
//  295         case 4:
//  296         case 5:
//  297         case 6:
//  298         case 7:
//  299           SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  300           PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);
//  301           break;
//  302         default:
//  303           return 0;
//  304       }  
//  305   
//  306     // ����FTMͨ�����ƼĴ��� 
//  307     // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
//  308     FTM_CnSC_REG(FTM0_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
??FTM_PWM_Open_9:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable3_19  ;; 0x4003800c
        MOVS     R4,#+40
        STR      R4,[R3, R1, LSL #+3]
//  309     // ����FTMͨ��ֵ
//  310     FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable3_19  ;; 0x4003800c
        ADDS     R3,R3,R1, LSL #+3
        STR      R2,[R3, #+4]
//  311   } 
//  312   
//  313   if(FTMx==1)
??FTM_PWM_Open_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Open_10
//  314   {
//  315     //ѡ�񲢿���ͨ��
//  316     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FTM_PWM_Open_11
//  317       {
//  318         case 0:
//  319               SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.N    R3,??DataTable3_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400
        LDR.N    R4,??DataTable3_18  ;; 0x40048038
        STR      R3,[R4, #+0]
//  320               PORT_PCR_REG(PORTB_BASE_PTR, channel) = PORT_PCR_MUX(3);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable3_20  ;; 0x4004a000
        MOV      R4,#+768
        STR      R4,[R3, R1, LSL #+2]
//  321                //SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  322                //PORTB_PCR0= PORT_PCR_MUX(0x3)| PORT_PCR_DSE_MASK;
//  323                break;
//  324         case 1:
//  325         case 2:
//  326         case 3:
//  327         case 4:
//  328         case 5:
//  329         case 6:
//  330         case 7:
//  331         default:
//  332           return 0;
//  333       }  
//  334   
//  335     // ����FTMͨ�����ƼĴ��� 
//  336     // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
//  337     FTM_CnSC_REG(FTM1_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable3_21  ;; 0x4003900c
        MOVS     R4,#+40
        STR      R4,[R3, R1, LSL #+3]
//  338     // ����FTMͨ��ֵ
//  339     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable3_21  ;; 0x4003900c
        ADDS     R3,R3,R1, LSL #+3
        STR      R2,[R3, #+4]
//  340   } 
//  341   
//  342   if(FTMx==2)
??FTM_PWM_Open_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Open_12
//  343   {
//  344     //ѡ�񲢿���ͨ��
//  345     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FTM_PWM_Open_13
//  346       {
//  347         case 0:
//  348           break;
//  349         case 1:
//  350         case 2:
//  351         case 3:
//  352         case 4:
//  353         case 5:
//  354         case 6:
//  355         case 7:
//  356         default:
//  357           return 0;
//  358       }  
//  359   
//  360     // ����FTMͨ�����ƼĴ��� 
//  361     // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
//  362     FTM_CnSC_REG(FTM2_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3_22  ;; 0x400b800c
        MOVS     R3,#+40
        STR      R3,[R0, R1, LSL #+3]
//  363     // ����FTMͨ��ֵ
//  364     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3_22  ;; 0x400b800c
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+4]
//  365   } 
//  366   return 1;
??FTM_PWM_Open_12:
        MOVS     R0,#+1
??FTM_PWM_Open_1:
        POP      {R1,R4}
        BX       LR               ;; return
??FTM_PWM_Open_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Open_14
        LDR      R3,[SP, #+0]
        LDR.N    R4,??DataTable3_7
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BNE.N    ??FTM_PWM_Open_15
        MOVS     R3,#+1
        B.N      ??FTM_PWM_Open_16
??FTM_PWM_Open_15:
        MOVS     R3,#+0
??FTM_PWM_Open_16:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        B.N      ??FTM_PWM_Open_3
??FTM_PWM_Open_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Open_17
        LDR      R3,[SP, #+0]
        LDR.N    R4,??DataTable3_8
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BNE.N    ??FTM_PWM_Open_18
        MOVS     R3,#+1
        B.N      ??FTM_PWM_Open_19
??FTM_PWM_Open_18:
        MOVS     R3,#+0
??FTM_PWM_Open_19:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        B.N      ??FTM_PWM_Open_3
??FTM_PWM_Open_17:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
??FTM_PWM_Open_6:
        LDR.N    R3,??DataTable3_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.N    R4,??DataTable3_18  ;; 0x40048038
        STR      R3,[R4, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+307200
        MOV      R4,#+1024
        STR      R4,[R3, #+4]
        B.N      ??FTM_PWM_Open_9
??FTM_PWM_Open_7:
        LDR.N    R3,??DataTable3_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.N    R4,??DataTable3_18  ;; 0x40048038
        STR      R3,[R4, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable3_23  ;; 0x4004c000
        MOV      R4,#+1024
        STR      R4,[R3, R1, LSL #+2]
        B.N      ??FTM_PWM_Open_9
??FTM_PWM_Open_8:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
??FTM_PWM_Open_11:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
??FTM_PWM_Open_13:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
//  367 }
//  368 
//  369 
//  370 /***************************************************************
//  371 *��������uint8 FTM_PWM_ChangeDuty(uint8 FTMx,uint8 channel, uint32 duty)
//  372 *���ܣ�  ��PWMͨ��������ռ�ձ�
//  373 *��ڲ�����(1)FTMx : 0
//  374                      1
//  375                      2
//  376            
//  377           (2)channel  ͨ���� 
//  378 
//  379           (3)duty     ռ�ձ�
//  380 *���ڲ�������
//  381 *˵������
//  382 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 uint8 FTM_PWM_ChangeDuty(uint8 FTMx,uint8 channel, uint32 duty)
//  384 {
FTM_PWM_ChangeDuty:
        PUSH     {R3,R4}
//  385   uint32 cv;
//  386   volatile uint32 mod;
//  387   
//  388   if(duty>10000) return 0;
        MOVW     R3,#+10001
        CMP      R2,R3
        BCC.N    ??FTM_PWM_ChangeDuty_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
//  389   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  390   if(FTMx==0)
??FTM_PWM_ChangeDuty_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_ChangeDuty_2
//  391   {
//  392     mod =FTM_MOD0;
        LDR.N    R3,??DataTable3_1
        LDR      R3,[R3, #+0]
        STR      R3,[SP, #+0]
//  393   }
//  394   else if(FTMx==1)
//  395   {
//  396     mod==FTM_MOD1;
//  397   }
//  398   else if(FTMx==2)
//  399   {
//  400     mod==FTM_MOD2;
//  401   }
//  402   else
//  403     return 0;
//  404   
//  405   cv = (duty*(mod-0+1)+0)/10000;
??FTM_PWM_ChangeDuty_3:
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
//  406   
//  407   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_ChangeDuty_4
//  408   {
//  409     switch(channel)// ����FTMͨ��ֵ
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FTM_PWM_ChangeDuty_5
        CMP      R1,#+2
        BEQ.N    ??FTM_PWM_ChangeDuty_6
        BCC.N    ??FTM_PWM_ChangeDuty_7
        B.N      ??FTM_PWM_ChangeDuty_8
//  410     {  
//  411       case 0:
//  412          FTM_CnV_REG(FTM0_BASE_PTR, 0) = cv;
??FTM_PWM_ChangeDuty_5:
        LDR.N    R0,??DataTable3_24  ;; 0x40038010
        STR      R2,[R0, #+0]
//  413          break;
//  414       case 1:
//  415          FTM_CnV_REG(FTM0_BASE_PTR, 1) = cv;
//  416          break;
//  417       case 2:
//  418          FTM_CnV_REG(FTM0_BASE_PTR, 2) = cv;
//  419          break;
//  420       default:
//  421       return 0;
//  422     }
//  423   }
//  424   else if(FTMx==1)
//  425   {
//  426     // ����FTMͨ��ֵ
//  427     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
//  428   }
//  429   else if(FTMx==2)
//  430   {
//  431     // ����FTMͨ��ֵ
//  432     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
//  433   }
//  434   else
//  435     return 0;
//  436   return 1;
??FTM_PWM_ChangeDuty_9:
        MOVS     R0,#+1
??FTM_PWM_ChangeDuty_1:
        POP      {R1,R4}
        BX       LR               ;; return
??FTM_PWM_ChangeDuty_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_ChangeDuty_10
        LDR      R3,[SP, #+0]
        LDR.N    R4,??DataTable3_7
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BNE.N    ??FTM_PWM_ChangeDuty_11
        MOVS     R3,#+1
        B.N      ??FTM_PWM_ChangeDuty_12
??FTM_PWM_ChangeDuty_11:
        MOVS     R3,#+0
??FTM_PWM_ChangeDuty_12:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        B.N      ??FTM_PWM_ChangeDuty_3
??FTM_PWM_ChangeDuty_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_ChangeDuty_13
        LDR      R3,[SP, #+0]
        LDR.N    R4,??DataTable3_8
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BNE.N    ??FTM_PWM_ChangeDuty_14
        MOVS     R3,#+1
        B.N      ??FTM_PWM_ChangeDuty_15
??FTM_PWM_ChangeDuty_14:
        MOVS     R3,#+0
??FTM_PWM_ChangeDuty_15:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        B.N      ??FTM_PWM_ChangeDuty_3
??FTM_PWM_ChangeDuty_13:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
??FTM_PWM_ChangeDuty_7:
        LDR.N    R0,??DataTable3_25  ;; 0x40038018
        STR      R2,[R0, #+0]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_6:
        LDR.N    R0,??DataTable3_26  ;; 0x40038020
        STR      R2,[R0, #+0]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_8:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
??FTM_PWM_ChangeDuty_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_ChangeDuty_16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3_21  ;; 0x4003900c
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+4]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_ChangeDuty_17
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3_22  ;; 0x400b800c
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+4]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_17:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
//  437 }
//  438 //---------------------------------
//  439 /*
//  440 uint8 FTM_PWM_ChangeDuty_0(uint8 FTMx,uint8 channel, uint32 duty)
//  441 {
//  442   //uint32 cv;
//  443   volatile uint32 mod;
//  444   
//  445   if(duty>10000) return 0;
//  446   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  447   if(FTMx==0)
//  448   {
//  449     mod =FTM_MOD0;
//  450   }
//  451   else if(FTMx==1)
//  452   {
//  453     mod==FTM_MOD1;
//  454   }
//  455   else if(FTMx==2)
//  456   {
//  457     mod==FTM_MOD2;
//  458   }
//  459   else
//  460     return 0;
//  461   
//  462   cv = (duty*(mod-0+1)+0)/10000;
//  463   
//  464   if(FTMx==0)
//  465   {
//  466     // ����FTMͨ��ֵ
//  467     FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
//  468   }
//  469   else if(FTMx==1)
//  470   {
//  471     // ����FTMͨ��ֵ
//  472     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
//  473   }
//  474   else if(FTMx==2)
//  475   {
//  476     // ����FTMͨ��ֵ
//  477     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
//  478   }
//  479   else
//  480     return 0;
//  481   return 1;
//  482 }
//  483 */
//  484 /***************************************************************
//  485 *��������void Motor_init(void)   
//  486 *���ܣ�  ֱ�����PWM�������ų�ʼ��,��FTM1ģ��
//  487 *��ڲ�������
//  488 *���ڲ�������
//  489 *˵������
//  490 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  491 void Motor_init(void)    //ֱ�����
//  492     {      	   
Motor_init:
        PUSH     {R7,LR}
//  493       DIR_B;                     //�ҵ��B10  ��ת
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable3_27  ;; 0x400ff040
        BL       gpio_init
//  494       DIL_B;                     //����B9   ��ת
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.N    R0,??DataTable3_27  ;; 0x400ff040
        BL       gpio_init
//  495       
//  496       /* Turn on all port clocks */
//  497       SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
        LDR.N    R0,??DataTable3_18  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable3_18  ;; 0x40048038
        STR      R0,[R1, #+0]
//  498       
//  499       /*��ǰΪ˫������������˿�
//  500       PORTC_PCR1= PORT_PCR_MUX(0x4)| PORT_PCR_DSE_MASK; // FTM is alt3 function for this pin 
//  501       PORTC_PCR2= PORT_PCR_MUX(0x4)| PORT_PCR_DSE_MASK; // FTM is alt3 function for this pin
//  502       */
//  503        PORTB_PCR0= PORT_PCR_MUX(0x3)| PORT_PCR_DSE_MASK; // FTM is alt3 function for this pin PTB0
        LDR.N    R0,??DataTable3_20  ;; 0x4004a000
        MOV      R1,#+832
        STR      R1,[R0, #+0]
//  504       
//  505       SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;         //ʹ��FTM1ʱ��      
        LDR.N    R0,??DataTable3_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable3_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  506       
//  507       //change MSnB = 1  
//  508       FTM1_C0SC |= FTM_CnSC_ELSB_MASK;
        LDR.N    R0,??DataTable3_21  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_21  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  509       FTM1_C0SC &= ~FTM_CnSC_ELSA_MASK;
        LDR.N    R0,??DataTable3_21  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_21  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  510       FTM1_C0SC |= FTM_CnSC_MSB_MASK;    
        LDR.N    R0,??DataTable3_21  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable3_21  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  511       /*Ϊ��һ�����
//  512       FTM1_C1SC |= FTM_CnSC_ELSB_MASK;
//  513       FTM1_C1SC &= ~FTM_CnSC_ELSA_MASK;
//  514       FTM1_C1SC |= FTM_CnSC_MSB_MASK;   
//  515       */
//  516       
//  517       FTM1_SC = 0x29; //not enable the interrupt mask    0010 1001
        LDR.N    R0,??DataTable3_9  ;; 0x40039000
        MOVS     R1,#+41
        STR      R1,[R0, #+0]
//  518       //FTM1_SC=0X1F;       //BIT5  0 FTM counter operates in up counting mode.
//  519                             //1 FTM counter operates in up-down counting mode.      
//  520       //BIT43 FTM1_SC|=FTM1_SC_CLKS_MASK;
//  521                             //00 No clock selected (This in effect disables the FTM counter.)
//  522                             //01 System clock
//  523                             //10 Fixed frequency clock
//  524                             //11 External clock
//  525       //BIT210 FTM1_SC|=FTM1_SC_PS_MASK; 
//  526                             //100M          MOD=2000;    
//  527                             //000 Divide by 1---12KHZ     
//  528                             //001 Divide by 2--- 6KHZ
//  529                             //010 Divide by 4--- 3K
//  530                             //011 Divide by 8--- 1.5K
//  531                             //100 Divide by 16---750
//  532                             //101 Divide by 32---375
//  533                             //110 Divide by 64---187.5HZ
//  534                             //111 Divide by 128--93.75hz             
//  535       
//  536       FTM1_MODE |= FTM_MODE_WPDIS_MASK;      
        LDR.N    R0,??DataTable3_28  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_28  ;; 0x40039054
        STR      R0,[R1, #+0]
//  537        //BIT1   Initialize the Channels Output
//  538       //FTMEN is bit 0, need to set to zero so DECAPEN can be set to 0
//  539       FTM1_MODE &= ~1;
        LDR.N    R0,??DataTable3_28  ;; 0x40039054
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable3_28  ;; 0x40039054
        STR      R0,[R1, #+0]
//  540        //BIT0   FTM Enable
//  541        //0 Only the TPM-compatible registers (first set of registers) can be used without any restriction. Do not use the FTM-specific registers.
//  542        //1 All registers including the FTM-specific registers (second set of registers) are available for use with no restrictions.
//  543       
//  544       FTM1_OUTMASK=0XFC;   //0 Channel output is not masked. It continues to operate normally.
        LDR.N    R0,??DataTable3_29  ;; 0x40039060
        MOVS     R1,#+252
        STR      R1,[R0, #+0]
//  545                            //1 Channel output is masked. It is forced to its inactive state.
//  546       
//  547       FTM1_COMBINE=0;      //Function for Linked Channels (FTMx_COMBINE)
        LDR.N    R0,??DataTable3_30  ;; 0x40039064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  548       FTM1_OUTINIT=0;
        LDR.N    R0,??DataTable3_31  ;; 0x4003905c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  549       FTM1_EXTTRIG=0;      //FTM aExternl Trigger (FTMx_EXTTRIG)
        LDR.N    R0,??DataTable3_32  ;; 0x4003906c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  550       FTM1_POL=0;          //Channels Polarity (FTMx_POL)
        LDR.N    R0,??DataTable3_33  ;; 0x40039070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  551                            //0 The channel polarity is active high.
//  552                            //1 The channel polarity is active low.     
//  553       //Set Edge Aligned PWM
//  554       FTM1_QDCTRL &=~FTM_QDCTRL_QUADEN_MASK;
        LDR.N    R0,??DataTable3_34  ;; 0x40039080
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable3_34  ;; 0x40039080
        STR      R0,[R1, #+0]
//  555       //QUADEN is Bit 1, Set Quadrature Decoder Mode (QUADEN) Enable to 0,   (disabled)
//  556       //FTM0_SC = 0x16; //Center Aligned PWM Select = 0, sets FTM Counter to operate in up counting mode,
//  557       //it is field 5 of FTMx_SC (status control) - also setting the pre-scale bits here
//  558       
//  559       FTM1_INVCTRL=0;      //��ת����
        LDR.N    R0,??DataTable3_35  ;; 0x40039090
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  560       FTM1_SWOCTRL=0;      //����������F TM Software Output Control (FTMx_SWOCTRL)
        LDR.N    R0,??DataTable3_36  ;; 0x40039094
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  561       FTM1_PWMLOAD=0;      //FTM PWM Load
        LDR.N    R0,??DataTable3_37  ;; 0x40039098
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  562                            //BIT9: 0 Loading updated values is disabled.
//  563                            //1 Loading updated values is enabled.
//  564       FTM1_CNTIN=0;        //Counter Initial Value      
        LDR.N    R0,??DataTable3_11  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  565       FTM1_MOD=1250;       //Modulo value,The EPWM period is determined by (MOD - CNTIN + 0x0001) 
        LDR.N    R0,??DataTable3_12  ;; 0x40039008
        MOVW     R1,#+1250
        STR      R1,[R0, #+0]
//  566                            //PMWƵ��=ϵͳƵ��/4/(2^FTM1_SC_PS)/FTM1_MOD   10000=180000000/4/2/2250   
//  567       FTM1_C0V=0;          //���� the pulse width(duty cycle) is determined by (CnV - CNTIN).  �ߵ�ƽ��ʱ��
        LDR.N    R0,??DataTable3_38  ;; 0x40039010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  568       //FTM1_C1V=0;          //���� the pulse width(duty cycle) is determined by (CnV - CNTIN).  �ߵ�ƽ��ʱ��
//  569       FTM1_CNT=0;          //ֻ�е�16λ����,�Ĵ����ĳ�ֵ
        LDR.N    R0,??DataTable3_10  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  570 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     FTM_MOD0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     FTM_MOD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     FTM_MOD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x4003800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     0x400b800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x40038010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0x40038018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0x40038020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x40039060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     0x40039064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     0x4003905c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0x4003906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     0x40039070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     0x40039090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     0x40039094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     0x40039098

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     0x40039010

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
//    12 bytes in section .bss
// 1 636 bytes in section .text
// 
// 1 636 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
