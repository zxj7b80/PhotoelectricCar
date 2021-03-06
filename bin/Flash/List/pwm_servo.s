///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      16/Nov/2013  13:10:32 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\s /
//                    rc\Sources\C\Component_C\pwm_servo.c                    /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    src\Sources\C\Component_C\pwm_servo.c" -D IAR -D        /
//                    TWR_K60N512 -lCN "D:\FREESCALE智能车竞赛\freescale(九)\ /
//                    PhotoelectricCar\bin\Flash\List\" -lB                   /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    bin\Flash\List\" -o "D:\FREESCALE智能车竞赛\freescale(� /
//                    �)\PhotoelectricCar\bin\Flash\Obj\" --no_cse            /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config E:\IAREW6.3\arm\INC\c\DLib_Config_Normal. /
//                    h -I "D:\FREESCALE智能车竞赛\freescale(九)\Photoelectri /
//                    cCar\src\Sources\H\" -I "D:\FREESCALE智能车竞赛\freesca /
//                    le(九)\PhotoelectricCar\src\Sources\H\Component_H\" -I  /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\ /
//                    src\Sources\H\Frame_H\" -Ol --use_c++_inline            /
//    List file    =  D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\b /
//                    in\Flash\List\pwm_servo.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pwm_servo

        #define SHT_PROGBITS 0x1

        EXTERN periph_clk_khz

        PUBLIC FTM_MOD0
        PUBLIC FTM_MOD1
        PUBLIC FTM_MOD2
        PUBLIC FTM_PWM_ChangeDuty
        PUBLIC FTM_PWM_Init
        PUBLIC FTM_PWM_Open
        PUBLIC cv
        PUBLIC ps

// D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\src\Sources\C\Component_C\pwm_servo.c
//    1 #include<pwm.h>
//    2 #include<gpio.h>
//    3 
//    4 #define DIR_B  gpio_init(PORTB,2, 1,0)    
//    5 #define DIR_F  gpio_init(PORTB,2, 1,1)    
//    6 
//    7 extern int periph_clk_khz;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 uint32 FTM_MOD0=0;
FTM_MOD0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 uint32 FTM_MOD1=0;
FTM_MOD1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 uint32 FTM_MOD2=0;
FTM_MOD2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8  ps=0;
ps:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 uint32 cv;
cv:
        DS8 4
//   13 /***************************************************************
//   14 *函数名：uint8 FTM_PWM_Init(uint8 FTMx,uint32 freq)
//   15 *功能：  将特定的FTMx初始化为pwm输出，并且设置频率
//   16 *入口参数：(1)FTMx : 0
//   17                      1
//   18                      2
//   19            
//   20           (2)fre  :  Hz
//   21 *出口参数：无
//   22 *说明：无
//   23 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 uint8 FTM_PWM_Init(uint8 FTMx,uint32 freq)
//   25 {
FTM_PWM_Init:
        PUSH     {R4,R5}
//   26   uint32 bus_clk_hz;
//   27   uint32 mod;
//   28   //uint8  ps=0;
//   29   bus_clk_hz = periph_clk_khz*1000;             //设置模块的时钟（总线）为系统的总线时钟，千赫兹化为赫兹要乘以一千，即 X hz=X khz*1000
        LDR.W    R2,??DataTable2
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
//   30     
//   31   if(freq>bus_clk_hz) return 0;                 //如果频率比总线时钟的还要大，返回零（报错）
        CMP      R2,R1
        BCS.N    ??FTM_PWM_Init_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
//   32                                 //D0到D15位     //假设预分频因子为x，PWM周期T1=1/freq，分频后FTM模块周期T=1/(bus/x)=x/bus,所以mod=T1/T=bus/(freq*x)。T1>>T
//   33   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)     //如果要分频128，即 /128，预分频因子为128               
??FTM_PWM_Init_0:
        MOVS     R3,#+128
        MUL      R3,R3,R1
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.W    ??FTM_PWM_Init_2
//   34   {                                             //通过设定PWM频率freq及八个预分频因子的if选择语句来轮流判断mod是否符合条件，并且找到一个更接近0xFFFFu的mod值，再赋mod和ps的值
//   35     ps = 7;                                     //ps赋为7，111，对应预分频因子128  
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+7
        STRB     R5,[R4, #+0]
//   36     if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_3
//   37     {
//   38       FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//   39     }
//   40     else if(FTMx==1)                            //三个FTM模块的if选择语句，把模数值赋给三个FTM的模数值变量，下同
//   41     {
//   42       FTM_MOD1=mod;
//   43     }
//   44     else if(FTMx==2)                           
//   45     {
//   46       FTM_MOD2=mod;  
//   47     }
//   48     else
//   49       return 0;
//   50     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)     //如果要分频64，即 /64，预分频因子为64
??FTM_PWM_Init_4:
        MOVS     R3,#+64
        MUL      R3,R3,R1
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??FTM_PWM_Init_5
//   51     {
//   52       ps = 6;                                    //ps赋为6，110，对应预分频因子64     
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+6
        STRB     R5,[R4, #+0]
//   53       if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_6
//   54       {
//   55         FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//   56       }
//   57       else if(FTMx==1)
//   58       {
//   59         FTM_MOD1=mod;
//   60       }
//   61       else if(FTMx==2)
//   62       {
//   63         FTM_MOD2=mod;  
//   64       }
//   65     else
//   66       return 0;
//   67       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)     //如果要分频32，即 /32，预分频因子为32
??FTM_PWM_Init_7:
        LSLS     R3,R1,#+5
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??FTM_PWM_Init_5
//   68       {
//   69         ps = 5;                                    //ps赋为5，101，对应预分频因子32  
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+5
        STRB     R5,[R4, #+0]
//   70         if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_8
//   71         {
//   72           FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//   73         }
//   74         else if(FTMx==1)
//   75         {
//   76           FTM_MOD1=mod;
//   77         }
//   78         else if(FTMx==2)
//   79         {
//   80           FTM_MOD2=mod;  
//   81         }
//   82         else
//   83           return 0;
//   84         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)     //如果要分频16，即 /16，预分频因子为16
??FTM_PWM_Init_9:
        LSLS     R3,R1,#+4
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??FTM_PWM_Init_5
//   85         {
//   86           ps = 4;                                    //ps赋为4，100，对应预分频因子16  
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+4
        STRB     R5,[R4, #+0]
//   87           if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_10
//   88           {
//   89             FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//   90           }
//   91           else if(FTMx==1)
//   92           {
//   93             FTM_MOD1=mod;
//   94           }
//   95           else if(FTMx==2)
//   96           {
//   97             FTM_MOD2=mod;  
//   98           }
//   99           else
//  100             return 0;
//  101           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)     //如果要分频8，即 /8，预分频因子为8
??FTM_PWM_Init_11:
        LSLS     R3,R1,#+3
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??FTM_PWM_Init_5
//  102           {
//  103             ps = 3;                                   //ps赋为3，011，对应预分频因子8  
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+3
        STRB     R5,[R4, #+0]
//  104             if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_12
//  105             {
//  106               FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//  107             }
//  108             else if(FTMx==1)
//  109             {
//  110               FTM_MOD1=mod;
//  111             }
//  112             else if(FTMx==2)
//  113             {
//  114               FTM_MOD2=mod;  
//  115             }
//  116             else
//  117               return 0;
//  118             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)     //如果要分频4，即 /4，预分频因子为4
??FTM_PWM_Init_13:
        LSLS     R3,R1,#+2
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??FTM_PWM_Init_5
//  119             {
//  120               ps = 2;                                   //ps赋为2，010，对应预分频因子2  
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+2
        STRB     R5,[R4, #+0]
//  121               if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_14
//  122               {
//  123                 FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//  124               }
//  125               else if(FTMx==1)
//  126               {
//  127                 FTM_MOD1=mod;
//  128               }
//  129               else if(FTMx==2)
//  130               {
//  131                 FTM_MOD2=mod;  
//  132               }
//  133               else
//  134                 return 0;
//  135               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)     //如果要分频2，即 /2，预分频因子为2
??FTM_PWM_Init_15:
        LSLS     R3,R1,#+1
        UDIV     R3,R2,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??FTM_PWM_Init_5
//  136               {
//  137                 ps = 1;                                   //ps赋为1，001，对应预分频因子1 
        LDR.W    R4,??DataTable2_1
        MOVS     R5,#+1
        STRB     R5,[R4, #+0]
//  138                 if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_16
//  139                 {
//  140                   FTM_MOD0= mod;
        LDR.W    R4,??DataTable2_2
        STR      R3,[R4, #+0]
//  141                 }
//  142                 else if(FTMx==1)
//  143                 {
//  144                   FTM_MOD1=mod;
//  145                 }
//  146                 else if(FTMx==2)
//  147                 {
//  148                   FTM_MOD2=mod;  
//  149                 }
//  150                 else
//  151                   return 0;
//  152                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)     //如果要分频1，即 /1，不变。预分频因子为1
??FTM_PWM_Init_17:
        UDIV     R3,R2,R1
        MOVW     R1,#+65535
        CMP      R3,R1
        BCS.N    ??FTM_PWM_Init_5
//  153                 {
//  154                   ps = 0;                                   //ps赋为0，000，对应预分频因子0  
        LDR.W    R1,??DataTable2_1
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  155                   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_18
//  156                   {
//  157                     FTM_MOD0= mod;
        LDR.W    R1,??DataTable2_2
        STR      R3,[R1, #+0]
//  158                   }
//  159                   else if(FTMx==1)
//  160                   {
//  161                     FTM_MOD1=mod;
//  162                   }
//  163                   else if(FTMx==2)
//  164                   {
//  165                     FTM_MOD2=mod;  
//  166                   }
//  167                   else
//  168                     return 0;
//  169                 }
//  170               }
//  171             }
//  172           }
//  173         }  
//  174       }
//  175     }
//  176   }
//  177   else
//  178   {
//  179     return 0;
//  180   }
//  181   
//  182   if(FTMx==0)
??FTM_PWM_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??FTM_PWM_Init_19
//  183     {
//  184       // 使能FTM时钟模块
//  185       SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable2_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable2_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  186   
//  187       // 配置FTM控制寄存器
//  188       // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  189       // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  190       FTM0_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);            //总线时钟由系统时钟分频得到，所以时钟源选择系统时钟
        LDR.W    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable2_4  ;; 0x40038000
        STR      R0,[R1, #+0]
//  191   
//  192       // 设置PWM周期及占空比
//  193       // PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  194       // 配置FTM计数初始值
//  195       FTM0_CNT = 0;
        LDR.W    R0,??DataTable2_5  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  196       FTM0_CNTIN = 0;
        LDR.W    R0,??DataTable2_6  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  197       
//  198       // 配置FTM计数MOD值
//  199       FTM0_MOD = FTM_MOD0;
        LDR.W    R0,??DataTable2_7  ;; 0x40038008
        LDR.W    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  200     }
//  201   else if(FTMx==1)
//  202     {
//  203       // 使能FTM时钟模块
//  204       SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
//  205   
//  206       // 配置FTM控制寄存器
//  207       // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  208       // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz 
//  209       FTM1_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
//  210   
//  211       // 设置PWM周期及占空比
//  212       // PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  213       // 配置FTM计数初始值
//  214       FTM1_CNT = 0;
//  215       FTM1_CNTIN = 0;
//  216       
//  217       // 配置FTM计数MOD值
//  218       FTM1_MOD = FTM_MOD1;
//  219     } 
//  220   else if(FTMx==2)
//  221     {
//  222       // 使能FTM时钟模块
//  223       SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
//  224   
//  225       // 配置FTM控制寄存器
//  226       // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  227       // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  228       FTM2_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
//  229   
//  230       // 设置PWM周期及占空比
//  231       // PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  232       // 配置FTM计数初始值
//  233       FTM2_CNT = 0;
//  234       FTM2_CNTIN = 0;
//  235       
//  236       // 配置FTM计数MOD值
//  237       FTM2_MOD = FTM_MOD2;
//  238     }  
//  239   else
//  240     return 0;
//  241 
//  242   return 1;
??FTM_PWM_Init_20:
        MOVS     R0,#+1
??FTM_PWM_Init_1:
        POP      {R4,R5}
        BX       LR               ;; return
??FTM_PWM_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_21
        LDR.W    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_4
??FTM_PWM_Init_21:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_22
        LDR.W    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_4
??FTM_PWM_Init_22:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_23
        LDR.W    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_7
??FTM_PWM_Init_23:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_24
        LDR.W    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_7
??FTM_PWM_Init_24:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_25
        LDR.W    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_9
??FTM_PWM_Init_25:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_26
        LDR.W    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_9
??FTM_PWM_Init_26:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_27
        LDR.W    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_11
??FTM_PWM_Init_27:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_28
        LDR.W    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_11
??FTM_PWM_Init_28:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_29
        LDR.W    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_13
??FTM_PWM_Init_29:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_30
        LDR.W    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_13
??FTM_PWM_Init_30:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_31
        LDR.N    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_15
??FTM_PWM_Init_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_32
        LDR.N    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_15
??FTM_PWM_Init_32:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_33
        LDR.N    R4,??DataTable2_8
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_17
??FTM_PWM_Init_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_34
        LDR.N    R4,??DataTable2_9
        STR      R3,[R4, #+0]
        B.N      ??FTM_PWM_Init_17
??FTM_PWM_Init_34:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
??FTM_PWM_Init_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Init_35
        LDR.N    R1,??DataTable2_8
        STR      R3,[R1, #+0]
        B.N      ??FTM_PWM_Init_5
??FTM_PWM_Init_35:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_36
        LDR.N    R1,??DataTable2_9
        STR      R3,[R1, #+0]
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
        LDR.N    R0,??DataTable2_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable2_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable2_10  ;; 0x40039000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_11  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_12  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_13  ;; 0x40039008
        LDR.N    R1,??DataTable2_8
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??FTM_PWM_Init_20
??FTM_PWM_Init_37:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Init_38
        LDR.N    R0,??DataTable2_14  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable2_14  ;; 0x40048030
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable2_15  ;; 0x400b8000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_16  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_17  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_18  ;; 0x400b8008
        LDR.N    R1,??DataTable2_9
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??FTM_PWM_Init_20
??FTM_PWM_Init_38:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_1
//  243 }
//  244 
//  245 
//  246 /***************************************************************
//  247 *函数名：uint8 FTM_PWM_Open(uint8 FTMx,uint8 channel, uint32 duty)
//  248 *功能：  打开PWM通道，设置占空比
//  249 *入口参数：(1)FTMx : 0
//  250                      1
//  251                      2
//  252            
//  253           (2)channel  通道号 
//  254 
//  255           (3)duty     占空比
//  256 *出口参数：无
//  257 *说明：无
//  258 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 uint8 FTM_PWM_Open(uint8 FTMx,uint8 channel, uint32 duty)
//  260 {
FTM_PWM_Open:
        PUSH     {R3,R4}
//  261   //uint32 cv;
//  262   volatile uint32 mod;               //设定一个32位不优化，无符号整型数mod
//  263   
//  264   if(duty>10000) return 0;           //设置占空比的值最大为10000
        MOVW     R3,#+10001
        CMP      R2,R3
        BCC.N    ??FTM_PWM_Open_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Open_1
//  265                                      //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  266   if(FTMx==0)
??FTM_PWM_Open_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Open_2
//  267   {
//  268     mod = FTM_MOD0;                  //对应模块号，把相应模数值变量的值赋给mod
        LDR.N    R3,??DataTable2_2
        LDR      R3,[R3, #+0]
        STR      R3,[SP, #+0]
//  269   }
//  270   else if(FTMx==1)
//  271   {
//  272     mod==FTM_MOD1;
//  273   }
//  274   else if(FTMx==2)
//  275   {
//  276     mod==FTM_MOD2;
//  277   }
//  278   else
//  279     return 0;
//  280                                                                                                                    
//  281   cv = (duty*(mod-0+1)+0)/10000;              //由 duty = CV/(MOD-CNTIN+1),cv为高电平持续时间所对应的数值，10000是为了提高精度
??FTM_PWM_Open_3:
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
        LDR.N    R3,??DataTable2_19
        STR      R2,[R3, #+0]
//  282                                               //原公式duty=cv/(mod+1),占空比duty赋值范围<1,而如果duty=cv*10000/(mod+1),赋值范围<10000,故提高精度
//  283   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Open_4
//  284   {
//  285     //选择并开启通道
//  286     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        CMP      R2,#+0
        CMP      R2,#+2
        BLS.N    ??FTM_PWM_Open_5
        SUBS     R2,R2,#+3
        BEQ.N    ??FTM_PWM_Open_6
        SUBS     R2,R2,#+1
        CMP      R2,#+3
        BLS.N    ??FTM_PWM_Open_7
        B.N      ??FTM_PWM_Open_8
//  287       {
//  288         case 0:
//  289         case 1:
//  290         case 2:
//  291           SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;                                    
??FTM_PWM_Open_5:
        LDR.N    R2,??DataTable2_20  ;; 0x40048038
        LDR      R2,[R2, #+0]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        LDR.N    R3,??DataTable2_20  ;; 0x40048038
        STR      R2,[R3, #+0]
//  292           PORT_PCR_REG(PORTA_BASE_PTR, channel+3) = PORT_PCR_MUX(3);   //设置A5引脚为FTM0_CH2功能
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+299008
        MOV      R3,#+768
        STR      R3,[R2, #+12]
//  293           break;
//  294         case 3:
//  295           SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  296           PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);   //设置C4引脚为FTM0_CH3功能
//  297           break;
//  298         case 4:
//  299         case 5:
//  300         case 6:
//  301         case 7:
//  302           SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  303           PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);     //设置D7引脚为FTM0_CH7功能
//  304           break;
//  305         default:
//  306           return 0;
//  307       }  
//  308   
//  309     // 配置FTM通道控制寄存器 
//  310     // 通道模式 MSB:MSA-1X, 通道边缘选择 ELSB:ELSA-10  (FTM_CnSC_ELSA未设置。默认为0)                                    
//  311     FTM_CnSC_REG(FTM0_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK; //选择边沿对齐PWM，正极性 
??FTM_PWM_Open_9:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_21  ;; 0x4003800c
        MOVS     R3,#+40
        STR      R3,[R2, R1, LSL #+3]
//  312     // 配置FTM通道值
//  313     FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv; //把CV（高电平对应的数值）赋给FTM0对应通道值
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_21  ;; 0x4003800c
        ADDS     R2,R2,R1, LSL #+3
        LDR.N    R3,??DataTable2_19
        LDR      R3,[R3, #+0]
        STR      R3,[R2, #+4]
//  314   } 
//  315   
//  316   if(FTMx==1)
??FTM_PWM_Open_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_Open_10
//  317   {
//  318     //选择并开启通道
//  319     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FTM_PWM_Open_11
//  320       {
//  321         case 0:
//  322               SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;                                   
        LDR.N    R2,??DataTable2_20  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.N    R3,??DataTable2_20  ;; 0x40048038
        STR      R2,[R3, #+0]
//  323               PORT_PCR_REG(PORTB_BASE_PTR, channel) = PORT_PCR_MUX(3);     //设置引脚B0为FTM1_CH0功能
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_22  ;; 0x4004a000
        MOV      R3,#+768
        STR      R3,[R2, R1, LSL #+2]
//  324                //SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  325                //PORTB_PCR0= PORT_PCR_MUX(0x3)| PORT_PCR_DSE_MASK;
//  326                break;
//  327         case 1:
//  328         case 2:
//  329         case 3:
//  330         case 4:
//  331         case 5:
//  332         case 6:
//  333         case 7:
//  334         default:
//  335           return 0;
//  336       }  
//  337   
//  338     // 配置FTM通道控制寄存器 
//  339     // 通道模式 MSB:MSA-1X, 通道边缘选择 ELSB:ELSA-10
//  340     FTM_CnSC_REG(FTM1_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_23  ;; 0x4003900c
        MOVS     R3,#+40
        STR      R3,[R2, R1, LSL #+3]
//  341     // 配置FTM通道值
//  342     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_23  ;; 0x4003900c
        ADDS     R2,R2,R1, LSL #+3
        LDR.N    R3,??DataTable2_19
        LDR      R3,[R3, #+0]
        STR      R3,[R2, #+4]
//  343   } 
//  344   
//  345   if(FTMx==2)
??FTM_PWM_Open_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_Open_12
//  346   {
//  347     //选择并开启通道
//  348     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??FTM_PWM_Open_13
//  349       {
//  350         case 0:
//  351           break;
//  352         case 1:
//  353         case 2:
//  354         case 3:
//  355         case 4:
//  356         case 5:
//  357         case 6:
//  358         case 7:
//  359         default:
//  360           return 0;
//  361       }  
//  362   
//  363     // 配置FTM通道控制寄存器 
//  364     // 通道模式 MSB:MSA-1X, 通道边缘选择 ELSB:ELSA-10
//  365     FTM_CnSC_REG(FTM2_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_24  ;; 0x400b800c
        MOVS     R2,#+40
        STR      R2,[R0, R1, LSL #+3]
//  366     // 配置FTM通道值
//  367     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_24  ;; 0x400b800c
        ADDS     R0,R0,R1, LSL #+3
        LDR.N    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
//  368   } 
//  369   return 1;
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
        LDR.N    R4,??DataTable2_8
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
        LDR.N    R4,??DataTable2_9
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
        LDR.N    R2,??DataTable2_20  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.N    R3,??DataTable2_20  ;; 0x40048038
        STR      R2,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+307200
        MOV      R3,#+1024
        STR      R3,[R2, #+4]
        B.N      ??FTM_PWM_Open_9
??FTM_PWM_Open_7:
        LDR.N    R2,??DataTable2_20  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.N    R3,??DataTable2_20  ;; 0x40048038
        STR      R2,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_25  ;; 0x4004c000
        MOV      R3,#+1024
        STR      R3,[R2, R1, LSL #+2]
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
//  370 }
//  371 
//  372 /***************************************************************
//  373 *函数名：uint8 FTM_PWM_ChangeDuty(uint8 FTMx,uint8 channel, uint32 duty)
//  374 *功能：  PWM通道已打开，改变占空比
//  375 *入口参数：(1)FTMx : 0
//  376                      1
//  377                      2
//  378            
//  379           (2)channel  通道号 
//  380 
//  381           (3)duty     占空比
//  382 *出口参数：无
//  383 *说明：无
//  384 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  385 uint8 FTM_PWM_ChangeDuty(uint8 FTMx,uint8 channel, uint32 duty)
//  386 {
FTM_PWM_ChangeDuty:
        PUSH     {R3,R4}
//  387   //uint32 cv;
//  388   volatile uint32 mod;
//  389   
//  390   if(duty>10000) return 0;
        MOVW     R3,#+10001
        CMP      R2,R3
        BCC.N    ??FTM_PWM_ChangeDuty_0
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
//  391   //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  392   if(FTMx==0)
??FTM_PWM_ChangeDuty_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_ChangeDuty_2
//  393   {
//  394     mod =FTM_MOD0;
        LDR.N    R3,??DataTable2_2
        LDR      R3,[R3, #+0]
        STR      R3,[SP, #+0]
//  395   }
//  396   else if(FTMx==1)
//  397   {
//  398     mod==FTM_MOD1;
//  399   }
//  400   else if(FTMx==2)
//  401   {
//  402     mod==FTM_MOD2;
//  403   }
//  404   else
//  405     return 0;
//  406   
//  407   cv = (duty*(mod-0+1)+0)/10000;
??FTM_PWM_ChangeDuty_3:
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
        LDR.N    R3,??DataTable2_19
        STR      R2,[R3, #+0]
//  408   
//  409   if(FTMx==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_ChangeDuty_4
//  410   {
//  411     // 配置FTM通道值
//  412     FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_21  ;; 0x4003800c
        ADDS     R0,R0,R1, LSL #+3
        LDR.N    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
//  413   }
//  414   else if(FTMx==1)
//  415   {
//  416     // 配置FTM通道值
//  417     FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
//  418   }
//  419   else if(FTMx==2)
//  420   {
//  421     // 配置FTM通道值
//  422     FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
//  423   }
//  424   else
//  425     return 0;
//  426   return 1;
??FTM_PWM_ChangeDuty_5:
        MOVS     R0,#+1
??FTM_PWM_ChangeDuty_1:
        POP      {R1,R4}
        BX       LR               ;; return
??FTM_PWM_ChangeDuty_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_ChangeDuty_6
        LDR      R3,[SP, #+0]
        LDR.N    R4,??DataTable2_8
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BNE.N    ??FTM_PWM_ChangeDuty_7
        MOVS     R3,#+1
        B.N      ??FTM_PWM_ChangeDuty_8
??FTM_PWM_ChangeDuty_7:
        MOVS     R3,#+0
??FTM_PWM_ChangeDuty_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        B.N      ??FTM_PWM_ChangeDuty_3
??FTM_PWM_ChangeDuty_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_ChangeDuty_9
        LDR      R3,[SP, #+0]
        LDR.N    R4,??DataTable2_9
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BNE.N    ??FTM_PWM_ChangeDuty_10
        MOVS     R3,#+1
        B.N      ??FTM_PWM_ChangeDuty_11
??FTM_PWM_ChangeDuty_10:
        MOVS     R3,#+0
??FTM_PWM_ChangeDuty_11:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        B.N      ??FTM_PWM_ChangeDuty_3
??FTM_PWM_ChangeDuty_9:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
??FTM_PWM_ChangeDuty_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??FTM_PWM_ChangeDuty_12
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_23  ;; 0x4003900c
        ADDS     R0,R0,R1, LSL #+3
        LDR.N    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
        B.N      ??FTM_PWM_ChangeDuty_5
??FTM_PWM_ChangeDuty_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??FTM_PWM_ChangeDuty_13
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_24  ;; 0x400b800c
        ADDS     R0,R0,R1, LSL #+3
        LDR.N    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
        B.N      ??FTM_PWM_ChangeDuty_5
??FTM_PWM_ChangeDuty_13:
        MOVS     R0,#+0
        B.N      ??FTM_PWM_ChangeDuty_1
//  427 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ps

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     FTM_MOD0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     FTM_MOD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     FTM_MOD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     cv

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     0x4003800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     0x400b800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     0x4004c000

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
//    17 bytes in section .bss
// 1 394 bytes in section .text
// 
// 1 394 bytes of CODE memory
//    17 bytes of DATA memory
//
//Errors: none
//Warnings: 2
