///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      01/Jun/2014  12:01:21 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4       /
//                    2014.05.29 renzi\src\Sources\C\Component_C\pwm.c        /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4      /
//                    2014.05.29 renzi\src\Sources\C\Component_C\pwm.c" -D    /
//                    IAR -D TWR_K60N512 -lCN "D:\FREESCALE智能车竞赛\freesca /
//                    le(九)\程序\PE V1.4 2014.05.29 renzi\bin\Flash\List\"   /
//                    -lB "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4  /
//                    2014.05.29 renzi\bin\Flash\List\" -o                    /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4      /
//                    2014.05.29 renzi\bin\Flash\Obj\" --no_cse --no_unroll   /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAREW6.3\arm\INC\c\DLib_Config_ /
//                    Normal.h" -I "D:\FREESCALE智能车竞赛\freescale(九)\程序 /
//                    \PE V1.4 2014.05.29 renzi\src\Sources\H\" -I            /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4      /
//                    2014.05.29 renzi\src\Sources\H\Component_H\" -I         /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4      /
//                    2014.05.29 renzi\src\Sources\H\Frame_H\" -Ol            /
//                    --use_c++_inline                                        /
//    List file    =  D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4       /
//                    2014.05.29 renzi\bin\Flash\List\pwm.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pwm

        #define SHT_PROGBITS 0x1

        EXTERN gpio_init
        EXTERN periph_clk_khz

        PUBLIC FTM2_QUAD_Iint
        PUBLIC FTM_MOD0
        PUBLIC FTM_MOD1
        PUBLIC FTM_MOD2
        PUBLIC FTM_PWM_ChangeDuty
        PUBLIC FTM_PWM_Init
        PUBLIC FTM_PWM_Open
        PUBLIC Motor_init

// D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V1.4 2014.05.29 renzi\src\Sources\C\Component_C\pwm.c
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
//   11 *函数名：uint8 FTM_PWM_Init(uint8 FTMx,uint32 freq)
//   12 *功能：  将特定的FTMx初始化为pwm输出，并且设置频率
//   13 *入口参数：(1)FTMx : 0
//   14                      1
//   15                      2
//   16            
//   17           (2)fre  :  Hz
//   18 *出口参数：无
//   19 *说明：无
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
        LDR.W    R2,??DataTable4
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
//   35       FTM_MOD0=mod;
        LDR.W    R5,??DataTable4_1
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
//   47     
//   48     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
??FTM_PWM_Init_4:
        MOVS     R4,#+64
        MUL      R4,R4,R1
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   49     {
//   50       ps = 6;   
        MOVS     R3,#+6
//   51       if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_6
//   52       {
//   53         FTM_MOD0= mod;
        LDR.W    R5,??DataTable4_1
        STR      R4,[R5, #+0]
//   54       }
//   55       else if(FTMx==1)
//   56       {
//   57         FTM_MOD1=mod;
//   58       }
//   59       else if(FTMx==2)
//   60       {
//   61         FTM_MOD2=mod;  
//   62       }
//   63     else
//   64       return 0;
//   65       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
??FTM_PWM_Init_7:
        LSLS     R4,R1,#+5
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   66       {
//   67         ps = 5; 
        MOVS     R3,#+5
//   68         if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_8
//   69         {
//   70           FTM_MOD0= mod;
        LDR.W    R5,??DataTable4_1
        STR      R4,[R5, #+0]
//   71         }
//   72         else if(FTMx==1)
//   73         {
//   74           FTM_MOD1=mod;
//   75         }
//   76         else if(FTMx==2)
//   77         {
//   78           FTM_MOD2=mod;  
//   79         }
//   80         else
//   81           return 0;
//   82         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
??FTM_PWM_Init_9:
        LSLS     R4,R1,#+4
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//   83         {
//   84           ps = 4;  
        MOVS     R3,#+4
//   85           if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_10
//   86           {
//   87             FTM_MOD0= mod;
        LDR.W    R5,??DataTable4_1
        STR      R4,[R5, #+0]
//   88           }
//   89           else if(FTMx==1)
//   90           {
//   91             FTM_MOD1=mod;
//   92           }
//   93           else if(FTMx==2)
//   94           {
//   95             FTM_MOD2=mod;  
//   96           }
//   97           else
//   98             return 0;
//   99           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
??FTM_PWM_Init_11:
        LSLS     R4,R1,#+3
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//  100           {
//  101             ps = 3;
        MOVS     R3,#+3
//  102             if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_12
//  103             {
//  104               FTM_MOD0= mod;
        LDR.W    R5,??DataTable4_1
        STR      R4,[R5, #+0]
//  105             }
//  106             else if(FTMx==1)
//  107             {
//  108               FTM_MOD1=mod;
//  109             }
//  110             else if(FTMx==2)
//  111             {
//  112               FTM_MOD2=mod;  
//  113             }
//  114             else
//  115               return 0;
//  116             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
??FTM_PWM_Init_13:
        LSLS     R4,R1,#+2
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//  117             {
//  118               ps = 2;
        MOVS     R3,#+2
//  119               if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_14
//  120               {
//  121                 FTM_MOD0= mod;
        LDR.W    R5,??DataTable4_1
        STR      R4,[R5, #+0]
//  122               }
//  123               else if(FTMx==1)
//  124               {
//  125                 FTM_MOD1=mod;
//  126               }
//  127               else if(FTMx==2)
//  128               {
//  129                 FTM_MOD2=mod;  
//  130               }
//  131               else
//  132                 return 0;
//  133               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
??FTM_PWM_Init_15:
        LSLS     R4,R1,#+1
        UDIV     R4,R2,R4
        MOVW     R5,#+65535
        CMP      R4,R5
        BCS.N    ??FTM_PWM_Init_5
//  134               {
//  135                 ps = 1;
        MOVS     R3,#+1
//  136                 if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_16
//  137                 {
//  138                   FTM_MOD0= mod;
        LDR.W    R5,??DataTable4_1
        STR      R4,[R5, #+0]
//  139                 }
//  140                 else if(FTMx==1)
//  141                 {
//  142                   FTM_MOD1=mod;
//  143                 }
//  144                 else if(FTMx==2)
//  145                 {
//  146                   FTM_MOD2=mod;  
//  147                 }
//  148                 else
//  149                   return 0;
//  150                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
??FTM_PWM_Init_17:
        UDIV     R4,R2,R1
        MOVW     R1,#+65535
        CMP      R4,R1
        BCS.N    ??FTM_PWM_Init_5
//  151                 {
//  152                   ps = 0;
        MOVS     R3,#+0
//  153                   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_18
//  154                   {
//  155                     FTM_MOD0= mod;
        LDR.W    R1,??DataTable4_1
        STR      R4,[R1, #+0]
//  156                   }
//  157                   else if(FTMx==1)
//  158                   {
//  159                     FTM_MOD1=mod;
//  160                   }
//  161                   else if(FTMx==2)
//  162                   {
//  163                     FTM_MOD2=mod;  
//  164                   }
//  165                   else
//  166                     return 0;
//  167                 }
//  168               }
//  169             }
//  170           }
//  171         }  
//  172       }
//  173     }
//  174   }
//  175   else
//  176   {
//  177     return 0;
//  178   }
//  179   
//  180   if(FTMx==0)
??FTM_PWM_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_19
//  181     {
//  182       // 使能FTM时钟模块
//  183       SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable4_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable4_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  184   
//  185       // 配置FTM控制寄存器
//  186       // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  187       // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  188       FTM0_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable4_3  ;; 0x40038000
        STR      R0,[R1, #+0]
//  189   
//  190       // 设置PWM周期及占空比
//  191       // PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  192       // 配置FTM计数初始值
//  193       FTM0_CNT = 0;
        LDR.W    R0,??DataTable4_4  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  194       FTM0_CNTIN = 0;
        LDR.W    R0,??DataTable4_5  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  195       
//  196       // 配置FTM计数MOD值
//  197       FTM0_MOD = FTM_MOD0;
        LDR.W    R0,??DataTable4_6  ;; 0x40038008
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  198     }
//  199   else if(FTMx==1)
//  200     {
//  201       // 使能FTM时钟模块
//  202       SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
//  203   
//  204       // 配置FTM控制寄存器
//  205       // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  206       // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  207       FTM1_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
//  208   
//  209       // 设置PWM周期及占空比
//  210       // PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  211       // 配置FTM计数初始值
//  212       FTM1_CNT = 0;
//  213       FTM1_CNTIN = 0;
//  214       
//  215       // 配置FTM计数MOD值
//  216       FTM1_MOD = FTM_MOD1;
//  217     } 
//  218   else if(FTMx==2)
//  219     {
//  220       // 使能FTM时钟模块
//  221       SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
//  222   
//  223       // 配置FTM控制寄存器
//  224       // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  225       // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  226       FTM2_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
//  227   
//  228       // 设置PWM周期及占空比
//  229       // PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  230       // 配置FTM计数初始值
//  231       FTM2_CNT = 0;
//  232       FTM2_CNTIN = 0;
//  233       
//  234       // 配置FTM计数MOD值
//  235       FTM2_MOD = FTM_MOD2;
//  236     }  
//  237   else
//  238     return 0;
//  239 
//  240   return 1;
??FTM_PWM_Init_20:
        MOVS     R0,#+1
??FTM_PWM_Init_1:
        POP      {R4,R5}
        BX       LR               ;; return
??FTM_PWM_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_21
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_4
??FTM_PWM_Init_21:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_22
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_4
??FTM_PWM_Init_22:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_23
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_7
??FTM_PWM_Init_23:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_24
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_7
??FTM_PWM_Init_24:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_25
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_9
??FTM_PWM_Init_25:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_26
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_9
??FTM_PWM_Init_26:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_27
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_11
??FTM_PWM_Init_27:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_28
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_11
??FTM_PWM_Init_28:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_29
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_13
??FTM_PWM_Init_29:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_30
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_13
??FTM_PWM_Init_30:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_31
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_15
??FTM_PWM_Init_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_32
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_15
??FTM_PWM_Init_32:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_33
        LDR.W    R5,??DataTable4_7
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_17
??FTM_PWM_Init_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_34
        LDR.W    R5,??DataTable4_8
        STR      R4,[R5, #+0]
        B.N      ??FTM_PWM_Init_17
??FTM_PWM_Init_34:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_35
        LDR.W    R1,??DataTable4_7
        STR      R4,[R1, #+0]
        B.N      ??FTM_PWM_Init_5
??FTM_PWM_Init_35:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_36
        LDR.W    R1,??DataTable4_8
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
        LDR.W    R0,??DataTable4_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable4_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable4_9  ;; 0x40039000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable4_10  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_11  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_12  ;; 0x40039008
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??FTM_PWM_Init_20
??FTM_PWM_Init_37:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_38
        LDR.W    R0,??DataTable4_13  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable4_13  ;; 0x40048030
        STR      R0,[R1, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable4_14  ;; 0x400b8000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable4_15  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_16  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_17  ;; 0x400b8008
        LDR.W    R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??FTM_PWM_Init_20
??FTM_PWM_Init_38:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
//  241 }
//  242 
//  243 
//  244 /***************************************************************
//  245 *函数名：uint8 FTM_PWM_Open(uint8 FTMx,uint8 channel, uint32 duty)
//  246 *功能：  打开PWM通道，设置占空比
//  247 *入口参数：(1)FTMx : 0
//  248                      1
//  249                      2
//  250            
//  251           (2)channel  通道号 
//  252 
//  253           (3)duty     占空比
//  254 *出口参数：无
//  255 *说明：无
//  256 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 uint8 FTM_PWM_Open(uint8 FTMx,uint8 channel, uint32 duty)
//  258 {
FTM_PWM_Open:
        PUSH     {R3,R4}
//  259   uint32 cv;
//  260   volatile uint32 mod;
//  261   
//  262   if(duty>10000) return 0;
        MOVW     R3,#+10001
        CMP      R2,R3
        BCC.N    ??FTM_PWM_Open_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
//  263   //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  264   if(FTMx==0)
??FTM_PWM_Open_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Open_2
//  265   {
//  266     mod = FTM_MOD0;
        LDR.W    R3,??DataTable4_1
        LDR      R3,[R3, #+0]
        STR      R3,[SP, #+0]
//  267   }
//  268   else if(FTMx==1)
//  269   {
//  270     mod==FTM_MOD1;
//  271   }
//  272   else if(FTMx==2)
//  273   {
//  274     mod==FTM_MOD2;
//  275   }
//  276   else
//  277     return 0;
//  278   
//  279   cv = (duty*(mod-0+1)+0)/10000;
??FTM_PWM_Open_3:
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
//  280   
//  281   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Open_4
//  282   {
//  283     //选择并开启通道
//  284     switch(channel)
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
//  285       {
//  286         case 0:
//  287         case 1:
//  288         case 2:
//  289           SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??FTM_PWM_Open_5:
        LDR.W    R3,??DataTable4_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        MOV      R4,#+512
        ORRS     R3,R4,R3
        LDR.W    R4,??DataTable4_18  ;; 0x40048038
        STR      R3,[R4, #+0]
//  290           PORT_PCR_REG(PORTA_BASE_PTR, channel+3) = PORT_PCR_MUX(3);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+299008
        MOV      R4,#+768
        STR      R4,[R3, #+12]
//  291           break;
//  292         case 3:
//  293           SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  294           PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);
//  295           break;
//  296         case 4:
//  297         case 5:
//  298         case 6:
//  299         case 7:
//  300           SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  301           PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);
//  302           break;
//  303         default:
//  304           return 0;
//  305       }  
//  306   
//  307     // 配置FTM通道控制寄存器 
//  308     // 通道模式 MSB:MSA-1X, 通道边缘选择 ELSB:ELSA-10
//  309     FTM_CnSC_REG(FTM0_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
??FTM_PWM_Open_9:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable4_19  ;; 0x4003800c
        MOVS     R4,#+40
        STR      R4,[R3, R1, LSL #+3]
//  310     // 配置FTM通道值
//  311     FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable4_19  ;; 0x4003800c
        ADDS     R3,R3,R1, LSL #+3
        STR      R2,[R3, #+4]
//  312   } 
//  313   
//  314   if(FTMx==1)
??FTM_PWM_Open_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Open_10
//  315   {
//  316     //选择并开启通道
//  317     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FTM_PWM_Open_11
//  318       {
//  319         case 0:
//  320               SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.N    R3,??DataTable4_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400
        LDR.N    R4,??DataTable4_18  ;; 0x40048038
        STR      R3,[R4, #+0]
//  321               PORT_PCR_REG(PORTB_BASE_PTR, channel) = PORT_PCR_MUX(3);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable4_20  ;; 0x4004a000
        MOV      R4,#+768
        STR      R4,[R3, R1, LSL #+2]
//  322                //SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  323                //PORTB_PCR0= PORT_PCR_MUX(0x3)| PORT_PCR_DSE_MASK;
//  324                break;
//  325         case 1:
//  326         case 2:
//  327         case 3:
//  328         case 4:
//  329         case 5:
//  330         case 6:
//  331         case 7:
//  332         default:
//  333           return 0;
//  334       }  
//  335   
//  336     // 配置FTM通道控制寄存器 
//  337     // 通道模式 MSB:MSA-1X, 通道边缘选择 ELSB:ELSA-10
//  338     FTM_CnSC_REG(FTM1_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable4_21  ;; 0x4003900c
        MOVS     R4,#+40
        STR      R4,[R3, R1, LSL #+3]
//  339     // 配置FTM通道值
//  340     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable4_21  ;; 0x4003900c
        ADDS     R3,R3,R1, LSL #+3
        STR      R2,[R3, #+4]
//  341   } 
//  342   
//  343   if(FTMx==2)
??FTM_PWM_Open_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Open_12
//  344   {
//  345     //选择并开启通道
//  346     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FTM_PWM_Open_13
//  347       {
//  348         case 0:
//  349           break;
//  350         case 1:
//  351         case 2:
//  352         case 3:
//  353         case 4:
//  354         case 5:
//  355         case 6:
//  356         case 7:
//  357         default:
//  358           return 0;
//  359       }  
//  360   
//  361     // 配置FTM通道控制寄存器 
//  362     // 通道模式 MSB:MSA-1X, 通道边缘选择 ELSB:ELSA-10
//  363     FTM_CnSC_REG(FTM2_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_22  ;; 0x400b800c
        MOVS     R3,#+40
        STR      R3,[R0, R1, LSL #+3]
//  364     // 配置FTM通道值
//  365     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_22  ;; 0x400b800c
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+4]
//  366   } 
//  367   return 1;
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
        LDR.N    R4,??DataTable4_7
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
        LDR.N    R4,??DataTable4_8
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
        LDR.N    R3,??DataTable4_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.N    R4,??DataTable4_18  ;; 0x40048038
        STR      R3,[R4, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+307200
        MOV      R4,#+1024
        STR      R4,[R3, #+4]
        B.N      ??FTM_PWM_Open_9
??FTM_PWM_Open_7:
        LDR.N    R3,??DataTable4_18  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.N    R4,??DataTable4_18  ;; 0x40048038
        STR      R3,[R4, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable4_23  ;; 0x4004c000
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
//  368 }
//  369 
//  370 
//  371 /***************************************************************
//  372 *函数名：uint8 FTM_PWM_ChangeDuty(uint8 FTMx,uint8 channel, uint32 duty)
//  373 *功能：  打开PWM通道，设置占空比
//  374 *入口参数：(1)FTMx : 0
//  375                      1
//  376                      2
//  377            
//  378           (2)channel  通道号 
//  379 
//  380           (3)duty     占空比
//  381 *出口参数：无
//  382 *说明：无
//  383 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  384 uint8 FTM_PWM_ChangeDuty(uint8 FTMx,uint8 channel, uint32 duty)
//  385 {
FTM_PWM_ChangeDuty:
        PUSH     {R3,R4}
//  386   uint32 cv;
//  387   volatile uint32 mod;
//  388   
//  389   if(duty>10000) return 0;
        MOVW     R3,#+10001
        CMP      R2,R3
        BCC.N    ??FTM_PWM_ChangeDuty_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
//  390   //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  391   if(FTMx==0)
??FTM_PWM_ChangeDuty_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_ChangeDuty_2
//  392   {
//  393     mod =FTM_MOD0;
        LDR.N    R3,??DataTable4_1
        LDR      R3,[R3, #+0]
        STR      R3,[SP, #+0]
//  394   }
//  395   else if(FTMx==1)
//  396   {
//  397     mod==FTM_MOD1;
//  398   }
//  399   else if(FTMx==2)
//  400   {
//  401     mod==FTM_MOD2;
//  402   }
//  403   else
//  404     return 0;
//  405   
//  406   cv = (duty*(mod-0+1)+0)/10000;
??FTM_PWM_ChangeDuty_3:
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
//  407   
//  408   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_ChangeDuty_4
//  409   {
//  410     switch(channel)// 配置FTM通道值
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FTM_PWM_ChangeDuty_5
        CMP      R1,#+2
        BEQ.N    ??FTM_PWM_ChangeDuty_6
        BCC.N    ??FTM_PWM_ChangeDuty_7
        B.N      ??FTM_PWM_ChangeDuty_8
//  411     {  
//  412       case 0:
//  413          FTM_CnV_REG(FTM0_BASE_PTR, 0) = cv;
??FTM_PWM_ChangeDuty_5:
        LDR.N    R0,??DataTable4_24  ;; 0x40038010
        STR      R2,[R0, #+0]
//  414          break;
//  415       case 1:
//  416          FTM_CnV_REG(FTM0_BASE_PTR, 1) = cv;
//  417          break;
//  418       case 2:
//  419          FTM_CnV_REG(FTM0_BASE_PTR, 2) = cv;
//  420          break;
//  421       default:
//  422       return 0;
//  423     }
//  424   }
//  425   else if(FTMx==1)
//  426   {
//  427     // 配置FTM通道值
//  428     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
//  429   }
//  430   else if(FTMx==2)
//  431   {
//  432     // 配置FTM通道值
//  433     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
//  434   }
//  435   else
//  436     return 0;
//  437   return 1;
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
        LDR.N    R4,??DataTable4_7
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
        LDR.N    R4,??DataTable4_8
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
        LDR.N    R0,??DataTable4_25  ;; 0x40038018
        STR      R2,[R0, #+0]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_6:
        LDR.N    R0,??DataTable4_26  ;; 0x40038020
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
        LDR.N    R0,??DataTable4_21  ;; 0x4003900c
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+4]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_ChangeDuty_17
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_22  ;; 0x400b800c
        ADDS     R0,R0,R1, LSL #+3
        STR      R2,[R0, #+4]
        B.N      ??FTM_PWM_ChangeDuty_9
??FTM_PWM_ChangeDuty_17:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
//  438 }
//  439 //---------------------------------
//  440 /*
//  441 uint8 FTM_PWM_ChangeDuty_0(uint8 FTMx,uint8 channel, uint32 duty)
//  442 {
//  443   //uint32 cv;
//  444   volatile uint32 mod;
//  445   
//  446   if(duty>10000) return 0;
//  447   //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  448   if(FTMx==0)
//  449   {
//  450     mod =FTM_MOD0;
//  451   }
//  452   else if(FTMx==1)
//  453   {
//  454     mod==FTM_MOD1;
//  455   }
//  456   else if(FTMx==2)
//  457   {
//  458     mod==FTM_MOD2;
//  459   }
//  460   else
//  461     return 0;
//  462   
//  463   cv = (duty*(mod-0+1)+0)/10000;
//  464   
//  465   if(FTMx==0)
//  466   {
//  467     // 配置FTM通道值
//  468     FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
//  469   }
//  470   else if(FTMx==1)
//  471   {
//  472     // 配置FTM通道值
//  473     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
//  474   }
//  475   else if(FTMx==2)
//  476   {
//  477     // 配置FTM通道值
//  478     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
//  479   }
//  480   else
//  481     return 0;
//  482   return 1;
//  483 }
//  484 */
//  485 /***************************************************************
//  486 *函数名：void Motor_init(void)   
//  487 *功能：  直流电机PWM调速引脚初始化,用FTM1模块
//  488 *入口参数：无
//  489 *出口参数：无
//  490 *说明：无
//  491 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  492 void Motor_init(void)    //直流电机
//  493     {      	   
Motor_init:
        PUSH     {R7,LR}
//  494      // DIR_B;                     //右电机B10  正转
//  495       DIL_B;                     //左电机B9   反转
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.N    R0,??DataTable4_27  ;; 0x400ff040
        BL       gpio_init
//  496       
//  497       /* Turn on all port clocks */
//  498       SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
        LDR.N    R0,??DataTable4_18  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable4_18  ;; 0x40048038
        STR      R0,[R1, #+0]
//  499       
//  500       /*以前为双电机开的两个端口
//  501       PORTC_PCR1= PORT_PCR_MUX(0x4)| PORT_PCR_DSE_MASK; // FTM is alt3 function for this pin 
//  502       PORTC_PCR2= PORT_PCR_MUX(0x4)| PORT_PCR_DSE_MASK; // FTM is alt3 function for this pin
//  503       */
//  504        PORTB_PCR0= PORT_PCR_MUX(0x3)| PORT_PCR_DSE_MASK; // FTM is alt3 function for this pin PTB0
        LDR.N    R0,??DataTable4_20  ;; 0x4004a000
        MOV      R1,#+832
        STR      R1,[R0, #+0]
//  505       
//  506       SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;         //使能FTM1时钟      
        LDR.N    R0,??DataTable4_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable4_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  507       
//  508       //change MSnB = 1  
//  509       FTM1_C0SC |= FTM_CnSC_ELSB_MASK;
        LDR.N    R0,??DataTable4_21  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_21  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  510       FTM1_C0SC &= ~FTM_CnSC_ELSA_MASK;
        LDR.N    R0,??DataTable4_21  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_21  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  511       FTM1_C0SC |= FTM_CnSC_MSB_MASK;    
        LDR.N    R0,??DataTable4_21  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_21  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  512       /*为另一个电机
//  513       FTM1_C1SC |= FTM_CnSC_ELSB_MASK;
//  514       FTM1_C1SC &= ~FTM_CnSC_ELSA_MASK;
//  515       FTM1_C1SC |= FTM_CnSC_MSB_MASK;   
//  516       */
//  517       
//  518       FTM1_SC = 0x29; //not enable the interrupt mask    0010 1001
        LDR.N    R0,??DataTable4_9  ;; 0x40039000
        MOVS     R1,#+41
        STR      R1,[R0, #+0]
//  519       //FTM1_SC=0X1F;       //BIT5  0 FTM counter operates in up counting mode.
//  520                             //1 FTM counter operates in up-down counting mode.      
//  521       //BIT43 FTM1_SC|=FTM1_SC_CLKS_MASK;
//  522                             //00 No clock selected (This in effect disables the FTM counter.)
//  523                             //01 System clock
//  524                             //10 Fixed frequency clock
//  525                             //11 External clock
//  526       //BIT210 FTM1_SC|=FTM1_SC_PS_MASK; 
//  527                             //100M          MOD=2000;    
//  528                             //000 Divide by 1---12KHZ     
//  529                             //001 Divide by 2--- 6KHZ
//  530                             //010 Divide by 4--- 3K
//  531                             //011 Divide by 8--- 1.5K
//  532                             //100 Divide by 16---750
//  533                             //101 Divide by 32---375
//  534                             //110 Divide by 64---187.5HZ
//  535                             //111 Divide by 128--93.75hz             
//  536       
//  537       FTM1_MODE |= FTM_MODE_WPDIS_MASK;      
        LDR.N    R0,??DataTable4_28  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_28  ;; 0x40039054
        STR      R0,[R1, #+0]
//  538        //BIT1   Initialize the Channels Output
//  539       //FTMEN is bit 0, need to set to zero so DECAPEN can be set to 0
//  540       FTM1_MODE &= ~1;
        LDR.N    R0,??DataTable4_28  ;; 0x40039054
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_28  ;; 0x40039054
        STR      R0,[R1, #+0]
//  541        //BIT0   FTM Enable
//  542        //0 Only the TPM-compatible registers (first set of registers) can be used without any restriction. Do not use the FTM-specific registers.
//  543        //1 All registers including the FTM-specific registers (second set of registers) are available for use with no restrictions.
//  544       
//  545       FTM1_OUTMASK=0XFE;   //0 Channel output is not masked. It continues to operate normally.
        LDR.N    R0,??DataTable4_29  ;; 0x40039060
        MOVS     R1,#+254
        STR      R1,[R0, #+0]
//  546                            //1 Channel output is masked. It is forced to its inactive state.
//  547       
//  548       FTM1_COMBINE=0;      //Function for Linked Channels (FTMx_COMBINE)
        LDR.N    R0,??DataTable4_30  ;; 0x40039064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  549       FTM1_OUTINIT=0;
        LDR.N    R0,??DataTable4_31  ;; 0x4003905c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  550       FTM1_EXTTRIG=0;      //FTM aExternl Trigger (FTMx_EXTTRIG)
        LDR.N    R0,??DataTable4_32  ;; 0x4003906c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  551       FTM1_POL=0;          //Channels Polarity (FTMx_POL)
        LDR.N    R0,??DataTable4_33  ;; 0x40039070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  552                            //0 The channel polarity is active high.
//  553                            //1 The channel polarity is active low.     
//  554       //Set Edge Aligned PWM
//  555       FTM1_QDCTRL &=~FTM_QDCTRL_QUADEN_MASK;
        LDR.N    R0,??DataTable4_34  ;; 0x40039080
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_34  ;; 0x40039080
        STR      R0,[R1, #+0]
//  556       //QUADEN is Bit 1, Set Quadrature Decoder Mode (QUADEN) Enable to 0,   (disabled)
//  557       //FTM0_SC = 0x16; //Center Aligned PWM Select = 0, sets FTM Counter to operate in up counting mode,
//  558       //it is field 5 of FTMx_SC (status control) - also setting the pre-scale bits here
//  559       
//  560       FTM1_INVCTRL=0;      //反转控制
        LDR.N    R0,??DataTable4_35  ;; 0x40039090
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  561       FTM1_SWOCTRL=0;      //软件输出控制F TM Software Output Control (FTMx_SWOCTRL)
        LDR.N    R0,??DataTable4_36  ;; 0x40039094
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  562       FTM1_PWMLOAD=0;      //FTM PWM Load
        LDR.N    R0,??DataTable4_37  ;; 0x40039098
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  563                            //BIT9: 0 Loading updated values is disabled.
//  564                            //1 Loading updated values is enabled.
//  565       FTM1_CNTIN=0;        //Counter Initial Value      
        LDR.N    R0,??DataTable4_11  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  566       FTM1_MOD=1250;       //Modulo value,The EPWM period is determined by (MOD - CNTIN + 0x0001) 
        LDR.N    R0,??DataTable4_12  ;; 0x40039008
        MOVW     R1,#+1250
        STR      R1,[R0, #+0]
//  567                            //PMW频率=系统频率/4/(2^FTM1_SC_PS)/FTM1_MOD   10000=180000000/4/2/2250   
//  568       FTM1_C0V=0;          //设置 the pulse width(duty cycle) is determined by (CnV - CNTIN).  高电平的时间
        LDR.N    R0,??DataTable4_38  ;; 0x40039010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  569       //FTM1_C1V=0;          //设置 the pulse width(duty cycle) is determined by (CnV - CNTIN).  高电平的时间
//  570       FTM1_CNT=0;          //只有低16位可用,寄存器的初值
        LDR.N    R0,??DataTable4_10  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  571 }
        POP      {R0,PC}          ;; return
//  572 
//  573 
//  574 //================================================================
//  575 //E6A2-CW3C光电编码器引脚：
//  576 //         蓝色：GND
//  577 //         棕色：VCC
//  578 //         黑色：A相
//  579 //         白色：B相
//  580 
//  581 //函数名：void FTM2_QUAD_Iint(void)
//  582 //功能：   输入脉冲捕捉
//  583 //入口参数：无
//  584 //出口参数：无
//  585 //说明：    无
//  586 //================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  587 void FTM2_QUAD_Iint(void)  
//  588 { 
//  589   SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;//使能FTM2时钟  
FTM2_QUAD_Iint:
        LDR.N    R0,??DataTable4_13  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable4_13  ;; 0x40048030
        STR      R0,[R1, #+0]
//  590   //SIM_SCGC5|= SIM_SCGC5_PORTB_MASK; //Turn on PORTB clock
//  591   
//  592   PORTB_PCR18= PORT_PCR_MUX(6); // 设置引脚B18引脚为FTM2_PHA功
        LDR.N    R0,??DataTable4_39  ;; 0x4004a048
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//  593   PORTB_PCR19= PORT_PCR_MUX(6); // 设置引脚B19引脚为FTM2_PHB功能  
        LDR.N    R0,??DataTable4_40  ;; 0x4004a04c
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//  594  
//  595   FTM2_MODE |= FTM_MODE_WPDIS_MASK;//写保护禁止  
        LDR.N    R0,??DataTable4_41  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_41  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  596   FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB相同时确定方向和计数值  
        LDR.N    R0,??DataTable4_42  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_42  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  597   
//  598   //FTM2_FILTER|=(10<<FTM_FILTER_CH3FVAL_SHIFT);//设置输入的滤波 
//  599   
//  600   FTM2_CNTIN=0;//FTM0计数器初始值为0  
        LDR.N    R0,??DataTable4_16  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  601   FTM2_MOD=65535;//结束值  
        LDR.N    R0,??DataTable4_17  ;; 0x400b8008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//  602 	
//  603   FTM2_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//启用FTM2正交解码模式  
        LDR.N    R0,??DataTable4_42  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_42  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  604   FTM2_MODE |= FTM_MODE_FTMEN_MASK;//FTM2EN=1    
        LDR.N    R0,??DataTable4_41  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_41  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  605   FTM2_CNT=0;  
        LDR.N    R0,??DataTable4_15  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  606 }  
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     FTM_MOD0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     FTM_MOD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     FTM_MOD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x4003800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x400b800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0x40038010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     0x40038018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     0x40038020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     0x40039060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     0x40039064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     0x4003905c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     0x4003906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     0x40039070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     0x40039090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     0x40039094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     0x40039098

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_38:
        DC32     0x40039010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_39:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_40:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_41:
        DC32     0x400b8054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_42:
        DC32     0x400b8080

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
// 1 748 bytes in section .text
// 
// 1 748 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
