///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      29/Oct/2013  22:19:00 /
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
//                    in\Ram\List\pwm_servo.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pwm_servo

        #define SHT_PROGBITS 0x1

        PUBLIC delay1
        PUBLIC delay2
        PUBLIC hw_FTM1_init
        PUBLIC pllinit100M
        PUBLIC pllinit125M
        PUBLIC pllinit1375M
        PUBLIC pllinit144M
        PUBLIC pllinit150M
        PUBLIC pllinit168d75M
        PUBLIC pllinit180M
        PUBLIC pllinit207M
        PUBLIC pllinit211M
        PUBLIC pllinit225M
        PUBLIC pllinit60M
        PUBLIC pllinit80M

// D:\FREESCALE智能车竞赛\freescale(九)\PhotoelectricCar\src\Sources\C\Component_C\pwm_servo.c
//    1 /********************************************************
//    2 【平    台】龙丘CORTEX-M4开发板/系统板
//    3 【编    写】龙丘
//    4 【Designed】by Chiu Sir
//    5 【E-mail  】chiusir@yahoo.cn
//    6 【软件版本】V1.0
//    7 【最后更新】2011年12月25日
//    8 【相关信息参考下列地址】
//    9 【网    站】http://www.lqist.cn
//   10 【淘宝店铺】http://shop36265907.taobao.com
//   11 【dev.env.】Code Warrior 10.1
//   12 【Target  】CORTEX-M4
//   13 【Crystal 】50.000Mhz
//   14 【busclock】？MHz
//   15 【pllclock】125MHz
//   16 ------------------------------------------------   
//   17 ------------------------------------------------
//   18 使用说明: FTM1定时器PWM输出
//   19 使用PORTA BIT14,15,16,17流水灯程序
//   20 
//   21 FTM1CH0；PTA8 管脚参考K60P144M100SF2.pdf  P.70
//   22 
//   23 用示波器查看PTA8管脚波形输出
//   24 
//   25 或者用杜邦线将PTA8接到舵机的PWM输入端口
//   26 
//   27 PMW频率=系统频率/4/(2^FTM1_SC_PS)/FTM1_MOD
//   28        =125 000 000/4/(2^5)/19531
//   29        =50HZ
//   30 
//   31  *********************************************************/
//   32 
//   33 #include "includes.h"
//   34 
//   35 #define GPIO_PIN_MASK      0x1Fu    //0x1f=31,限制位数为0--31有效
//   36 #define GPIO_PIN(x)        (((1)<<(x & GPIO_PIN_MASK)))  //把当前位置1
//   37 
//   38 //give some delay~~

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   39 void delay1()
//   40 {
//   41    int i =0;	
delay1:
        MOVS     R0,#+0
//   42    int j=0;
        MOVS     R1,#+0
//   43    for(i=0;i<2000;i++)
        MOVS     R2,#+0
        MOVS     R0,R2
        B.N      ??delay1_0
//   44 	  for(j=0;j<1000;j++)
//   45 	      asm("nop");   
??delay1_1:
        nop              
        ADDS     R1,R1,#+1
??delay1_2:
        MOV      R2,#+1000
        CMP      R1,R2
        BLT.N    ??delay1_1
        ADDS     R0,R0,#+1
??delay1_0:
        CMP      R0,#+2000
        BGE.N    ??delay1_3
        MOVS     R1,#+0
        B.N      ??delay1_2
//   46 }
??delay1_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 void delay2()
//   48 {
//   49    int i =0;	
delay2:
        MOVS     R0,#+0
//   50    int j=0;
        MOVS     R1,#+0
//   51    for(i=0;i<100;i++)
        MOVS     R2,#+0
        MOVS     R0,R2
        B.N      ??delay2_0
//   52 	  for(j=0;j<1000;j++)
//   53 	      asm("nop");   
??delay2_1:
        nop              
        ADDS     R1,R1,#+1
??delay2_2:
        MOV      R2,#+1000
        CMP      R1,R2
        BLT.N    ??delay2_1
        ADDS     R0,R0,#+1
??delay2_0:
        CMP      R0,#+100
        BGE.N    ??delay2_3
        MOVS     R1,#+0
        B.N      ??delay2_2
//   54 }
??delay2_3:
        BX       LR               ;; return
//   55 
//   56 
//   57 
//   58 /*
//   59 void main(void)
//   60 {	
//   61 	uint16 i=0;
//   62         //设置系统主频率  第一步
//   63         pllinit125M();
//   64 	//开启各个GPIO口的转换时钟
//   65 	SIM_SCGC5 = SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK;
//   66 	//关中断
//   67         DisableInterrupts;            //禁止总中断
//   68 
//   69         //初始化FTM1
//   70         //hw_FTM1_init2(1000,2000);
//   71         hw_FTM1_init();
//   72         //EnableInterrupts;	      //开总中断
//   73 
//   74 	//设置PORTA pin14,pin15为GPIO口 
//   75         //K60P144M100SF2.pdf   第68页  8.1 K60 Signal Multiplexing and Pin Assignments
//   76 	PORTA_PCR14=(0|PORT_PCR_MUX(1));
//   77 	PORTA_PCR15=(0|PORT_PCR_MUX(1)); 
//   78 	PORTA_PCR16=(0|PORT_PCR_MUX(1));
//   79 	PORTA_PCR17=(0|PORT_PCR_MUX(1)); 
//   80 	
//   81 	//设置PORTA pin14,pin15为输出方向;pin16,pin17为输入方向
//   82 	GPIOA_PDDR=GPIO_PDDR_PDD(GPIO_PIN(14)|GPIO_PIN(15));
//   83 	GPIOA_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(14)|GPIO_PIN(15)); //先读取，然后才能输出
//   84 
//   85 	for(;;)  
//   86 	{	                	   
//   87                 GPIOA_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(15));	//IO口输出低电平，亮	
//   88 		delay();delay();//暂停	
//   89                 
//   90                 GPIOA_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(15));	//IO口输出高电平，灭	
//   91 		delay();delay();//暂停		
//   92 
//   93                 for(i=2000;i>1000;i-=1)                              
//   94                 {  
//   95                     FTM1_C0V=i;//改变占空比，逐渐变大，舵机跟着转动    
//   96                     delay2();//暂停		
//   97                 }		
//   98 		//用户添加自己的代码
//   99 	}	
//  100 }
//  101 */
//  102 
//  103 
//  104 
//  105 
//  106 /*==========================================================================
//  107 FTM1c0 PWM输出初始化函数
//  108 The edge-aligned mode is selected when (QUADEN = 0), (DECAPEN = 0), (COMBINE
//  109 = 0), (CPWMS = 0), and (MSnB = 1).  
//  110 K60P144M100SF2RM.pdf  P1011 39.4.6 Edge-Aligned PWM (EPWM) Mode
//  111 The EPWM period is determined by (MOD - CNTIN + 0x0001) and the pulse width
//  112 (duty cycle) is determined by (CnV - CNTIN).
//  113 //==========================================================================*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114     void hw_FTM1_init(void)
//  115     {      	
//  116       //SIM_SOPT4|=SIM_SOPT4_FTM1FLT0_MASK;        
//  117       /* Turn on all port clocks */
//  118       SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
hw_FTM1_init:
        LDR.W    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  119         
//  120       // PTA8 K60P144M100SF2.pdf   第68页  8.1 K60 Signal Multiplexing and Pin Assignments
//  121       PORTA_PCR8 = PORT_PCR_MUX(0x3)| PORT_PCR_DSE_MASK;; // FTM is alt3 function for this pin         
        LDR.W    R0,??DataTable8_1  ;; 0x40049020
        MOV      R1,#+832
        STR      R1,[R0, #+0]
//  122     
//  123       SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;         //使能FTM1时钟      
        LDR.W    R0,??DataTable8_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  124       
//  125       //change MSnB = 1  
//  126       FTM1_C0SC |= FTM_CnSC_ELSB_MASK;
        LDR.W    R0,??DataTable8_3  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable8_3  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  127       FTM1_C0SC &= ~FTM_CnSC_ELSA_MASK;
        LDR.W    R0,??DataTable8_3  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable8_3  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  128       FTM1_C0SC |= FTM_CnSC_MSB_MASK;     
        LDR.W    R0,??DataTable8_3  ;; 0x4003900c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable8_3  ;; 0x4003900c
        STR      R0,[R1, #+0]
//  129       
//  130       //FTM1_SC = FTM_SC_PS(0) | FTM_SC_CLKS(1);
//  131       //FTM1_SC=0X0F;     
//  132       FTM1_SC = 0x2D; //not enable the interrupt mask,up-down counting mode,System clock,Divide by 32
        LDR.W    R0,??DataTable8_4  ;; 0x40039000
        MOVS     R1,#+45
        STR      R1,[R0, #+0]
//  133       //FTM1_SC=0X1F;       //BIT5  0 FTM counter operates in up counting mode.
//  134                             //1 FTM counter operates in up-down counting mode.      
//  135       //BIT43 FTM1_SC|=FTM1_SC_CLKS_MASK;
//  136                             //00 No clock selected (This in effect disables the FTM counter.)
//  137                             //01 System clock
//  138                             //10 Fixed frequency clock
//  139                             //11 External clock
//  140       //BIT210 FTM1_SC|=FTM1_SC_PS_MASK; 
//  141                             //100M          MOD=2000;    
//  142                             //000 Divide by 1---12KHZ     
//  143                             //001 Divide by 2--- 6KHZ
//  144                             //010 Divide by 4--- 3K
//  145                             //011 Divide by 8--- 1.5K
//  146                             //100 Divide by 16---750
//  147                             //101 Divide by 32---375
//  148                             //110 Divide by 64---187.5HZ
//  149                             //111 Divide by 128--93.75hz             
//  150       
//  151       FTM1_MODE |= FTM_MODE_WPDIS_MASK;      
        LDR.W    R0,??DataTable8_5  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable8_5  ;; 0x40039054
        STR      R0,[R1, #+0]
//  152        //BIT1   Initialize the Channels Output
//  153       //FTMEN is bit 0, need to set to zero so DECAPEN can be set to 0
//  154       FTM1_MODE &= ~1;
        LDR.W    R0,??DataTable8_5  ;; 0x40039054
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable8_5  ;; 0x40039054
        STR      R0,[R1, #+0]
//  155        //BIT0   FTM Enable
//  156        //0 Only the TPM-compatible registers (first set of registers) can be used without any restriction. Do not use the FTM-specific registers.
//  157        //1 All registers including the FTM-specific registers (second set of registers) are available for use with no restrictions.
//  158       
//  159       FTM1_OUTMASK=0XFE;   //0 Channel output is not masked. It continues to operate normally.
        LDR.W    R0,??DataTable8_6  ;; 0x40039060
        MOVS     R1,#+254
        STR      R1,[R0, #+0]
//  160                            //1 Channel output is masked. It is forced to its inactive state.
//  161       
//  162       FTM1_COMBINE=0;      //Function for Linked Channels (FTMx_COMBINE)
        LDR.W    R0,??DataTable9  ;; 0x40039064
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  163       FTM1_OUTINIT=0;
        LDR.W    R0,??DataTable9_1  ;; 0x4003905c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  164       FTM1_EXTTRIG=0;      //FTM External Trigger (FTMx_EXTTRIG)
        LDR.W    R0,??DataTable9_2  ;; 0x4003906c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  165       FTM1_POL=0;          //Channels Polarity (FTMx_POL)
        LDR.W    R0,??DataTable9_3  ;; 0x40039070
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  166                            //0 The channel polarity is active high.
//  167                            //1 The channel polarity is active low.     
//  168       //Set Edge Aligned PWM
//  169       FTM1_QDCTRL &=~FTM_QDCTRL_QUADEN_MASK;
        LDR.W    R0,??DataTable9_4  ;; 0x40039080
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable9_4  ;; 0x40039080
        STR      R0,[R1, #+0]
//  170       //QUADEN is Bit 1, Set Quadrature Decoder Mode (QUADEN) Enable to 0,   (disabled)
//  171       //FTM0_SC = 0x16; //Center Aligned PWM Select = 0, sets FTM Counter to operate in up counting mode,
//  172       //it is field 5 of FTMx_SC (status control) - also setting the pre-scale bits here
//  173       
//  174       FTM1_INVCTRL=0;     //反转控制
        LDR.W    R0,??DataTable9_5  ;; 0x40039090
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  175       FTM1_SWOCTRL=0;     //软件输出控制F TM Software Output Control (FTMx_SWOCTRL)
        LDR.W    R0,??DataTable9_6  ;; 0x40039094
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  176       FTM1_PWMLOAD=0;     //FTM PWM Load
        LDR.W    R0,??DataTable9_7  ;; 0x40039098
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  177                           //BIT9: 0 Loading updated values is disabled.
//  178                           //1 Loading updated values is enabled.
//  179       FTM1_CNTIN=0;        //Counter Initial Value      
        LDR.W    R0,??DataTable9_8  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  180       FTM1_MOD=19531;       //Modulo value,The EPWM period is determined by (MOD - CNTIN + 0x0001) 
        LDR.W    R0,??DataTable9_9  ;; 0x40039008
        MOVW     R1,#+19531
        STR      R1,[R0, #+0]
//  181                            //采用龙丘时钟初始化函数，可以得到4分频的频率，例如：系统60M频率时，PWM频率是15M,以此类推
//  182                            //PMW频率=系统频率/4/(2^FTM1_SC_PS)/FTM1_MOD
//  183                            //PMW频率=125M/4/(2^5)/19531=125000000/4/32/19531=50hz
//  184       //PMW分频=125M/4/(2^5)=976562.5=1M,一个脉冲是1us,1500个脉冲就是1.5ms
//  185       FTM1_C0V=1500;       //设置 the pulse width(duty cycle) is determined by (CnV - CNTIN).
        LDR.W    R0,??DataTable9_10  ;; 0x40039010
        MOVW     R1,#+1500
        STR      R1,[R0, #+0]
//  186       FTM1_CNT=0;          //只有低16位可用
        LDR.W    R0,??DataTable12  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  187 }
        BX       LR               ;; return
//  188 
//  189 //锁相环频率为50/12*54=225M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  190 void pllinit225M(void)
//  191 {
//  192 	uint32_t temp_reg;
//  193         //使能IO端口时钟    
//  194     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  195                               | SIM_SCGC5_PORTB_MASK
//  196                               | SIM_SCGC5_PORTC_MASK
//  197                               | SIM_SCGC5_PORTD_MASK
//  198                               | SIM_SCGC5_PORTE_MASK );
pllinit225M:
        LDR.W    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  199     //这里处在默认的FEI模式
//  200     //首先移动到FBE模式
//  201     MCG_C2 = 0;  
        LDR.W    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  202     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  203     //初始化晶振后释放锁定状态的振荡器和GPIO
//  204     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  205     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  206     
//  207     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  208     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  209     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  210     
//  211     //等待晶振稳定	    
//  212     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  213     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit225M_0:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit225M_0
//  214     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit225M_1:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit225M_1
//  215     
//  216     //进入FBE模式,
//  217     //0x18==25分频=2M,
//  218     //0x08==15分频=3.333M 
//  219     //0x09==16分频=3.125M,
//  220     //0x10==17分频=2.94M 
//  221     //0x11==18分频=2.7778M 
//  222     //0x12==19分频=2.63M,
//  223     //0x13==20分频=2.5M    
//  224     MCG_C5 = MCG_C5_PRDIV(0x0b);                
        LDR.W    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+11
        STRB     R1,[R0, #+0]
//  225     
//  226     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  227     MCG_C6 = 0x0;
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  228     
//  229     //保存FMC_PFAPR当前的值
//  230     temp_reg = FMC_PFAPR;
        LDR.W    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  231     
//  232     //通过M&PFD置位M0PFD来禁止预取功能
//  233     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  234                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  235                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.W    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  236     ///设置系统分频器
//  237     //MCG=PLL, core = MCG, bus = MCG/3, FlexBus = MCG/3, Flash clock= MCG/9
//  238     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(2) 
//  239                  | SIM_CLKDIV1_OUTDIV3(2) | SIM_CLKDIV1_OUTDIV4(8);       
        LDR.W    R1,??DataTable9_19  ;; 0x40048044
        MOVS     R2,#+36175872
        STR      R2,[R1, #+0]
//  240     
//  241     //从新存FMC_PFAPR的原始值
//  242     FMC_PFAPR = temp_reg; 
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  243     
//  244     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  245     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+94
        STRB     R1,[R0, #+0]
//  246                                                   //VDIV = 26 (x50)
//  247     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit225M_2:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit225M_2
//  248     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit225M_3:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit225M_3
//  249     
//  250     //进入PBE模式    
//  251     //通过清零CLKS位来进入PEE模式
//  252     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  253     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  254     
//  255     //等待时钟状态位更新
//  256     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit225M_4:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit225M_4
//  257     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  258     
//  259     //设置跟踪时钟为内核时钟
//  260     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.W    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  261     //在PTA6引脚上使能TRACE_CLKOU功能
//  262     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.W    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  263     //使能FlexBus模块时钟
//  264     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.W    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  265     //在PTA6引脚上使能FB_CLKOUT功能
//  266     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  267 }
        BX       LR               ;; return
//  268 //锁相环频率为50/13*55=211.538462M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  269 void pllinit211M(void)
//  270 {
//  271 	uint32_t temp_reg;
//  272         //使能IO端口时钟    
//  273     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  274                               | SIM_SCGC5_PORTB_MASK
//  275                               | SIM_SCGC5_PORTC_MASK
//  276                               | SIM_SCGC5_PORTD_MASK
//  277                               | SIM_SCGC5_PORTE_MASK );
pllinit211M:
        LDR.W    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  278     //这里处在默认的FEI模式
//  279     //首先移动到FBE模式
//  280     MCG_C2 = 0;  
        LDR.W    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  281     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  282     //初始化晶振后释放锁定状态的振荡器和GPIO
//  283     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  284     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  285     
//  286     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  287     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  288     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  289     
//  290     //等待晶振稳定	    
//  291     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  292     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit211M_0:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit211M_0
//  293     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit211M_1:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit211M_1
//  294     
//  295     //进入FBE模式,
//  296     //0x18==25分频=2M,
//  297     //0x08==15分频=3.333M 
//  298     //0x09==16分频=3.125M,
//  299     //0x10==17分频=2.94M 
//  300     //0x11==18分频=2.7778M 
//  301     //0x12==19分频=2.63M,
//  302     //0x13==20分频=2.5M    
//  303     MCG_C5 = MCG_C5_PRDIV(0x0C);                
        LDR.W    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
//  304     
//  305     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  306     MCG_C6 = 0x0;
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  307     
//  308     //保存FMC_PFAPR当前的值
//  309     temp_reg = FMC_PFAPR;
        LDR.W    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  310     
//  311     //通过M&PFD置位M0PFD来禁止预取功能
//  312     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  313                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  314                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.W    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  315     ///设置系统分频器
//  316     //MCG=PLL, core = MCG, bus = MCG/3, FlexBus = MCG/3, Flash clock= MCG/8
//  317     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(2) 
//  318                  | SIM_CLKDIV1_OUTDIV3(2) | SIM_CLKDIV1_OUTDIV4(7);       
        LDR.W    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable10_3  ;; 0x2270000
        STR      R2,[R1, #+0]
//  319     
//  320     //从新存FMC_PFAPR的原始值
//  321     FMC_PFAPR = temp_reg; 
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  322     
//  323     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  324     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+94
        STRB     R1,[R0, #+0]
//  325                                                   //VDIV = 26 (x50)
//  326     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit211M_2:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit211M_2
//  327     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit211M_3:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit211M_3
//  328     
//  329     //进入PBE模式    
//  330     //通过清零CLKS位来进入PEE模式
//  331     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  332     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  333     
//  334     //等待时钟状态位更新
//  335     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit211M_4:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit211M_4
//  336     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  337     
//  338     //设置跟踪时钟为内核时钟
//  339     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.W    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  340     //在PTA6引脚上使能TRACE_CLKOU功能
//  341     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.W    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  342     //使能FlexBus模块时钟
//  343     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.W    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  344     //在PTA6引脚上使能FB_CLKOUT功能
//  345     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  346 }
        BX       LR               ;; return
//  347 //锁相环频率为50/13*54=207.7M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  348 void pllinit207M(void)
//  349 {
//  350 	uint32_t temp_reg;
//  351         //使能IO端口时钟    
//  352     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  353                               | SIM_SCGC5_PORTB_MASK
//  354                               | SIM_SCGC5_PORTC_MASK
//  355                               | SIM_SCGC5_PORTD_MASK
//  356                               | SIM_SCGC5_PORTE_MASK );
pllinit207M:
        LDR.W    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  357     //这里处在默认的FEI模式
//  358     //首先移动到FBE模式
//  359     MCG_C2 = 0;  
        LDR.W    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  360     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  361     //初始化晶振后释放锁定状态的振荡器和GPIO
//  362     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  363     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  364     
//  365     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  366     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  367     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  368     
//  369     //等待晶振稳定	    
//  370     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  371     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit207M_0:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit207M_0
//  372     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit207M_1:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit207M_1
//  373     
//  374     //进入FBE模式,
//  375     //0x18==25分频=2M,
//  376     //0x08==15分频=3.333M 
//  377     //0x09==16分频=3.125M,
//  378     //0x10==17分频=2.94M 
//  379     //0x11==18分频=2.7778M 
//  380     //0x12==19分频=2.63M,
//  381     //0x13==20分频=2.5M    
//  382     MCG_C5 = MCG_C5_PRDIV(0x0C);                
        LDR.W    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
//  383     
//  384     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  385     MCG_C6 = 0x0;
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  386     
//  387     //保存FMC_PFAPR当前的值
//  388     temp_reg = FMC_PFAPR;
        LDR.W    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  389     
//  390     //通过M&PFD置位M0PFD来禁止预取功能
//  391     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  392                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  393                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.W    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  394     ///设置系统分频器
//  395     //MCG=PLL, core = MCG, bus = MCG/3, FlexBus = MCG/3, Flash clock= MCG/8
//  396     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(2) 
//  397                  | SIM_CLKDIV1_OUTDIV3(2) | SIM_CLKDIV1_OUTDIV4(7);       
        LDR.W    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable10_3  ;; 0x2270000
        STR      R2,[R1, #+0]
//  398     
//  399     //从新存FMC_PFAPR的原始值
//  400     FMC_PFAPR = temp_reg; 
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  401     
//  402     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  403     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+94
        STRB     R1,[R0, #+0]
//  404                                                   //VDIV = 26 (x50)
//  405     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit207M_2:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit207M_2
//  406     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit207M_3:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit207M_3
//  407     
//  408     //进入PBE模式    
//  409     //通过清零CLKS位来进入PEE模式
//  410     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  411     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  412     
//  413     //等待时钟状态位更新
//  414     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit207M_4:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit207M_4
//  415     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  416     
//  417     //设置跟踪时钟为内核时钟
//  418     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.W    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  419     //在PTA6引脚上使能TRACE_CLKOU功能
//  420     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.W    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  421     //使能FlexBus模块时钟
//  422     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.W    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  423     //在PTA6引脚上使能FB_CLKOUT功能
//  424     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  425 }
        BX       LR               ;; return
//  426 //锁相环频率为50/15*54=180M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  427 void pllinit180M(void)
//  428 {
//  429 	uint32_t temp_reg;
//  430         //使能IO端口时钟    
//  431     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  432                               | SIM_SCGC5_PORTB_MASK
//  433                               | SIM_SCGC5_PORTC_MASK
//  434                               | SIM_SCGC5_PORTD_MASK
//  435                               | SIM_SCGC5_PORTE_MASK );
pllinit180M:
        LDR.W    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  436     //这里处在默认的FEI模式
//  437     //首先移动到FBE模式
//  438     MCG_C2 = 0;  
        LDR.W    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  439     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  440     //初始化晶振后释放锁定状态的振荡器和GPIO
//  441     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  442     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  443     
//  444     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  445     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  446     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  447     
//  448     //等待晶振稳定	    
//  449     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  450     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit180M_0:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit180M_0
//  451     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit180M_1:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit180M_1
//  452     
//  453     //进入FBE模式,
//  454     //0x18==25分频=2M,
//  455     //0x08==15分频=3.333M 
//  456     //0x09==16分频=3.125M,
//  457     //0x10==17分频=2.94M 
//  458     //0x11==18分频=2.7778M 
//  459     //0x12==19分频=2.63M,
//  460     //0x13==20分频=2.5M    
//  461     MCG_C5 = MCG_C5_PRDIV(0x0e);                
        LDR.W    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+14
        STRB     R1,[R0, #+0]
//  462     
//  463     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  464     MCG_C6 = 0x0;
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  465     
//  466     //保存FMC_PFAPR当前的值
//  467     temp_reg = FMC_PFAPR;
        LDR.W    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  468     
//  469     //通过M&PFD置位M0PFD来禁止预取功能
//  470     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  471                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  472                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.W    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  473     ///设置系统分频器
//  474     //MCG=PLL, core = MCG, bus = MCG/3, FlexBus = MCG/3, Flash clock= MCG/8
//  475     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(2) 
//  476                  | SIM_CLKDIV1_OUTDIV3(2) | SIM_CLKDIV1_OUTDIV4(7);       
        LDR.W    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable10_3  ;; 0x2270000
        STR      R2,[R1, #+0]
//  477     
//  478     //从新存FMC_PFAPR的原始值
//  479     FMC_PFAPR = temp_reg; 
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  480     
//  481     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  482     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+94
        STRB     R1,[R0, #+0]
//  483                                                   //VDIV = 26 (x50)
//  484     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit180M_2:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit180M_2
//  485     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit180M_3:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit180M_3
//  486     
//  487     //进入PBE模式    
//  488     //通过清零CLKS位来进入PEE模式
//  489     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  490     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  491     
//  492     //等待时钟状态位更新
//  493     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit180M_4:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit180M_4
//  494     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  495     
//  496     //设置跟踪时钟为内核时钟
//  497     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.W    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  498     //在PTA6引脚上使能TRACE_CLKOU功能
//  499     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.W    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  500     //使能FlexBus模块时钟
//  501     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.W    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  502     //在PTA6引脚上使能FB_CLKOUT功能
//  503     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  504 }
        BX       LR               ;; return
//  505 
//  506 //锁相环频率为50/16*54=168.75M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  507 void pllinit168d75M(void)
//  508 {
//  509 	uint32_t temp_reg;
//  510         //使能IO端口时钟    
//  511     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  512                               | SIM_SCGC5_PORTB_MASK
//  513                               | SIM_SCGC5_PORTC_MASK
//  514                               | SIM_SCGC5_PORTD_MASK
//  515                               | SIM_SCGC5_PORTE_MASK );
pllinit168d75M:
        LDR.W    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  516     //这里处在默认的FEI模式
//  517     //首先移动到FBE模式
//  518     MCG_C2 = 0;  
        LDR.W    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  519     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  520     //初始化晶振后释放锁定状态的振荡器和GPIO
//  521     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  522     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  523     
//  524     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  525     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  526     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  527     
//  528     //等待晶振稳定	    
//  529     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  530     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit168d75M_0:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit168d75M_0
//  531     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit168d75M_1:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit168d75M_1
//  532     
//  533     //进入FBE模式,
//  534     //0x18==25分频=2M,
//  535     //0x08==15分频=3.333M 
//  536     //0x09==16分频=3.125M,
//  537     //0x10==17分频=2.94M 
//  538     //0x11==18分频=2.7778M 
//  539     //0x12==19分频=2.63M,
//  540     //0x13==20分频=2.5M    
//  541     MCG_C5 = MCG_C5_PRDIV(0x0f);                
        LDR.W    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+15
        STRB     R1,[R0, #+0]
//  542     
//  543     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  544     MCG_C6 = 0x0;
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  545     
//  546     //保存FMC_PFAPR当前的值
//  547     temp_reg = FMC_PFAPR;
        LDR.W    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  548     
//  549     //通过M&PFD置位M0PFD来禁止预取功能
//  550     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  551                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  552                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.W    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  553     ///设置系统分频器
//  554     //MCG=PLL, core = MCG, bus = MCG/3, FlexBus = MCG/3, Flash clock= MCG/8
//  555     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(2) 
//  556                  | SIM_CLKDIV1_OUTDIV3(2) | SIM_CLKDIV1_OUTDIV4(7);       
        LDR.W    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable10_3  ;; 0x2270000
        STR      R2,[R1, #+0]
//  557     
//  558     //从新存FMC_PFAPR的原始值
//  559     FMC_PFAPR = temp_reg; 
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  560     
//  561     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  562     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+94
        STRB     R1,[R0, #+0]
//  563                                                   //VDIV = 26 (x50)
//  564     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit168d75M_2:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit168d75M_2
//  565     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit168d75M_3:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit168d75M_3
//  566     
//  567     //进入PBE模式    
//  568     //通过清零CLKS位来进入PEE模式
//  569     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  570     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  571     
//  572     //等待时钟状态位更新
//  573     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit168d75M_4:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit168d75M_4
//  574     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  575     
//  576     //设置跟踪时钟为内核时钟
//  577     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.W    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  578     //在PTA6引脚上使能TRACE_CLKOU功能
//  579     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.W    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  580     //使能FlexBus模块时钟
//  581     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.W    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  582     //在PTA6引脚上使能FB_CLKOUT功能
//  583     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  584 }
        BX       LR               ;; return
//  585 //锁相环频率为50/18*54=150M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  586 void pllinit150M(void)
//  587 {
//  588 	uint32_t temp_reg;
//  589         //使能IO端口时钟    
//  590     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  591                               | SIM_SCGC5_PORTB_MASK
//  592                               | SIM_SCGC5_PORTC_MASK
//  593                               | SIM_SCGC5_PORTD_MASK
//  594                               | SIM_SCGC5_PORTE_MASK );
pllinit150M:
        LDR.N    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  595     //这里处在默认的FEI模式
//  596     //首先移动到FBE模式
//  597     MCG_C2 = 0;  
        LDR.W    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  598     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  599     //初始化晶振后释放锁定状态的振荡器和GPIO
//  600     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  601     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  602     
//  603     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  604     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  605     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.W    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  606     
//  607     //等待晶振稳定	    
//  608     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  609     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit150M_0:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit150M_0
//  610     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit150M_1:
        LDR.W    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit150M_1
//  611     
//  612     //进入FBE模式,
//  613     //0x18==25分频=2M,
//  614     //0x11==18分频=2.7778M 
//  615     //0x12==19分频=2.63M,
//  616     //0x13==20分频=2.5M    
//  617     MCG_C5 = MCG_C5_PRDIV(0x11);                
        LDR.W    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+17
        STRB     R1,[R0, #+0]
//  618     
//  619     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  620     MCG_C6 = 0x0;
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  621     
//  622     //保存FMC_PFAPR当前的值
//  623     temp_reg = FMC_PFAPR;
        LDR.W    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  624     
//  625     //通过M&PFD置位M0PFD来禁止预取功能
//  626     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  627                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  628                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.W    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  629     ///设置系统分频器
//  630     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/8
//  631     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
//  632                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(7);       
        LDR.W    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable12_2  ;; 0x1170000
        STR      R2,[R1, #+0]
//  633     
//  634     //从新存FMC_PFAPR的原始值
//  635     FMC_PFAPR = temp_reg; 
        LDR.W    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  636     
//  637     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  638     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)
        LDR.W    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+94
        STRB     R1,[R0, #+0]
//  639                                                   //VDIV = 26 (x50)
//  640     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit150M_2:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit150M_2
//  641     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit150M_3:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit150M_3
//  642     
//  643     //进入PBE模式    
//  644     //通过清零CLKS位来进入PEE模式
//  645     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  646     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  647     
//  648     //等待时钟状态位更新
//  649     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit150M_4:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit150M_4
//  650     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  651     
//  652     //设置跟踪时钟为内核时钟
//  653     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.W    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  654     //在PTA6引脚上使能TRACE_CLKOU功能
//  655     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.W    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  656     //使能FlexBus模块时钟
//  657     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.W    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  658     //在PTA6引脚上使能FB_CLKOUT功能
//  659     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  660 }
        BX       LR               ;; return
//  661 //锁相环频率为50/19*55=144.7386421M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  662 void pllinit144M(void)
//  663 {
//  664 	uint32_t temp_reg;
//  665         //使能IO端口时钟    
//  666     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  667                               | SIM_SCGC5_PORTB_MASK
//  668                               | SIM_SCGC5_PORTC_MASK
//  669                               | SIM_SCGC5_PORTD_MASK
//  670                               | SIM_SCGC5_PORTE_MASK );
pllinit144M:
        LDR.N    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  671     //这里处在默认的FEI模式
//  672     //首先移动到FBE模式
//  673     MCG_C2 = 0;  
        LDR.N    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  674     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  675     //初始化晶振后释放锁定状态的振荡器和GPIO
//  676     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  677     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  678     
//  679     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  680     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  681     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  682     
//  683     //等待晶振稳定	    
//  684     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  685     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit144M_0:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit144M_0
//  686     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit144M_1:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit144M_1
//  687     
//  688     //进入FBE模式,
//  689     //0x18==25分频=2M,
//  690     //0x11==18分频=2.7778M 
//  691     //0x12==19分频=2.63M,
//  692     //0x13==20分频=2.5M    
//  693     MCG_C5 = MCG_C5_PRDIV(0x12);                
        LDR.N    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+18
        STRB     R1,[R0, #+0]
//  694     
//  695     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  696     MCG_C6 = 0x0;
        LDR.N    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  697     
//  698     //保存FMC_PFAPR当前的值
//  699     temp_reg = FMC_PFAPR;
        LDR.N    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  700     
//  701     //通过M&PFD置位M0PFD来禁止预取功能
//  702     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  703                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  704                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  705     ///设置系统分频器
//  706     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/6
//  707     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
//  708                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(5);       
        LDR.N    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable12_3  ;; 0x1150000
        STR      R2,[R1, #+0]
//  709     
//  710     //从新存FMC_PFAPR的原始值
//  711     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  712     
//  713     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  714     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(31);  //VDIV = 31 (x55)
        LDR.N    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+95
        STRB     R1,[R0, #+0]
//  715                                                   //VDIV = 26 (x50)
//  716     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit144M_2:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit144M_2
//  717     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit144M_3:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit144M_3
//  718     
//  719     //进入PBE模式    
//  720     //通过清零CLKS位来进入PEE模式
//  721     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  722     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  723     
//  724     //等待时钟状态位更新
//  725     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit144M_4:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit144M_4
//  726     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  727     
//  728     //设置跟踪时钟为内核时钟
//  729     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  730     //在PTA6引脚上使能TRACE_CLKOU功能
//  731     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.N    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  732     //使能FlexBus模块时钟
//  733     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  734     //在PTA6引脚上使能FB_CLKOUT功能
//  735     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  736 }
        BX       LR               ;; return
//  737 //锁相环频率为137.5M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  738 void pllinit1375M(void)
//  739 {
//  740 	uint32_t temp_reg;
//  741         //使能IO端口时钟    
//  742     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  743                               | SIM_SCGC5_PORTB_MASK
//  744                               | SIM_SCGC5_PORTC_MASK
//  745                               | SIM_SCGC5_PORTD_MASK
//  746                               | SIM_SCGC5_PORTE_MASK );
pllinit1375M:
        LDR.N    R0,??DataTable8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable8  ;; 0x40048038
        STR      R0,[R1, #+0]
//  747     //这里处在默认的FEI模式
//  748     //首先移动到FBE模式
//  749     MCG_C2 = 0;  
        LDR.N    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  750     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  751     //初始化晶振后释放锁定状态的振荡器和GPIO
//  752     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  753     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  754     
//  755     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  756     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  757     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  758     
//  759     //等待晶振稳定	    
//  760     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  761     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit1375M_0:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit1375M_0
//  762     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit1375M_1:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit1375M_1
//  763     
//  764     //进入FBE模式,
//  765     //0x18==25分频=2M,
//  766     //0x11==18分频=2.7778M 
//  767     //0x12==19分频=2.63M,
//  768     //0x13==20分频=2.5M    
//  769     MCG_C5 = MCG_C5_PRDIV(0x13);                
        LDR.N    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+19
        STRB     R1,[R0, #+0]
//  770     
//  771     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  772     MCG_C6 = 0x0;
        LDR.N    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  773     
//  774     //保存FMC_PFAPR当前的值
//  775     temp_reg = FMC_PFAPR;
        LDR.N    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  776     
//  777     //通过M&PFD置位M0PFD来禁止预取功能
//  778     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  779                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  780                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  781     ///设置系统分频器
//  782     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/6
//  783     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
//  784                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(5);       
        LDR.N    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable12_3  ;; 0x1150000
        STR      R2,[R1, #+0]
//  785     
//  786     //从新存FMC_PFAPR的原始值
//  787     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  788     
//  789     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  790     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(31);  //VDIV = 31 (x55)
        LDR.N    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+95
        STRB     R1,[R0, #+0]
//  791                                                   //VDIV = 26 (x50)
//  792     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit1375M_2:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit1375M_2
//  793     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit1375M_3:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit1375M_3
//  794     
//  795     //进入PBE模式    
//  796     //通过清零CLKS位来进入PEE模式
//  797     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  798     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  799     
//  800     //等待时钟状态位更新
//  801     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit1375M_4:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit1375M_4
//  802     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  803     
//  804     //设置跟踪时钟为内核时钟
//  805     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  806     //在PTA6引脚上使能TRACE_CLKOU功能
//  807     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.N    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  808     //使能FlexBus模块时钟
//  809     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  810     //在PTA6引脚上使能FB_CLKOUT功能
//  811     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.W    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  812 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40039060
//  813 //锁相环频率为125M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  814 void pllinit125M(void)
//  815 {
//  816 	uint32_t temp_reg;
//  817         //使能IO端口时钟    
//  818     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  819                               | SIM_SCGC5_PORTB_MASK
//  820                               | SIM_SCGC5_PORTC_MASK
//  821                               | SIM_SCGC5_PORTD_MASK
//  822                               | SIM_SCGC5_PORTE_MASK );
pllinit125M:
        LDR.W    R0,??DataTable12_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable12_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//  823     //这里处在默认的FEI模式
//  824     //首先移动到FBE模式
//  825     MCG_C2 = 0;  
        LDR.N    R0,??DataTable9_11  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  826     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  827     //初始化晶振后释放锁定状态的振荡器和GPIO
//  828     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??DataTable9_12  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable9_12  ;; 0x40048034
        STR      R0,[R1, #+0]
//  829     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??DataTable9_13  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable9_13  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  830     
//  831     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  832     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  833     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  834     
//  835     //等待晶振稳定	    
//  836     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  837     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit125M_0:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit125M_0
//  838     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit125M_1:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit125M_1
//  839     
//  840     //进入FBE模式,
//  841     //0x18==25分频=2M,
//  842     //0x11==18分频=2.7778M 
//  843     //0x12==19分频=2.63M,
//  844     //0x13==20分频=2.5M    
//  845     MCG_C5 = MCG_C5_PRDIV(0x13);                
        LDR.N    R0,??DataTable9_16  ;; 0x40064004
        MOVS     R1,#+19
        STRB     R1,[R0, #+0]
//  846     
//  847     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  848     MCG_C6 = 0x0;
        LDR.N    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  849     
//  850     //保存FMC_PFAPR当前的值
//  851     temp_reg = FMC_PFAPR;
        LDR.N    R0,??DataTable9_18  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  852     
//  853     //通过M&PFD置位M0PFD来禁止预取功能
//  854     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  855                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  856                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??DataTable9_18  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??DataTable9_18  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  857     ///设置系统分频器
//  858     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/6
//  859     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
//  860                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(5);       
        LDR.N    R1,??DataTable9_19  ;; 0x40048044
        LDR.W    R2,??DataTable12_3  ;; 0x1150000
        STR      R2,[R1, #+0]
//  861     
//  862     //从新存FMC_PFAPR的原始值
//  863     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??DataTable9_18  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  864     
//  865     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  866     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26);  //VDIV = 31 (x55)
        LDR.N    R0,??DataTable9_17  ;; 0x40064005
        MOVS     R1,#+90
        STRB     R1,[R0, #+0]
//  867                                                   //VDIV = 26 (x50)
//  868     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit125M_2:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit125M_2
//  869     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit125M_3:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit125M_3
//  870     
//  871     //进入PBE模式    
//  872     //通过清零CLKS位来进入PEE模式
//  873     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  874     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable9_14  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable9_14  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  875     
//  876     //等待时钟状态位更新
//  877     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit125M_4:
        LDR.N    R0,??DataTable9_15  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit125M_4
//  878     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1); 
//  879     
//  880         //设置跟踪时钟为内核时钟
//  881     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  882     //在PTA6引脚上使能TRACE_CLKOU功能
//  883     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.N    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  884     //使能FlexBus模块时钟
//  885     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  886     //在PTA6引脚上使能FB_CLKOUT功能
//  887     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.N    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  888 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40039064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x4003905c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x4003906c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x40039070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x40039090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x40039094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x40039098

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x40039010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x4007c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0x4001f000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     0x40048044
//  889 
//  890 //锁相环频率为100M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  891 void pllinit100M(void)
//  892 {
//  893 	uint32_t temp_reg;
//  894         //使能IO端口时钟    
//  895     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  896                               | SIM_SCGC5_PORTB_MASK
//  897                               | SIM_SCGC5_PORTC_MASK
//  898                               | SIM_SCGC5_PORTD_MASK
//  899                               | SIM_SCGC5_PORTE_MASK );
pllinit100M:
        LDR.N    R0,??DataTable12_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable12_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//  900     //这里处在默认的FEI模式
//  901     //首先移动到FBE模式
//  902     MCG_C2 = 0;  
        LDR.N    R0,??DataTable12_5  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  903     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  904     //初始化晶振后释放锁定状态的振荡器和GPIO
//  905     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??DataTable12_6  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable12_6  ;; 0x40048034
        STR      R0,[R1, #+0]
//  906     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??DataTable12_7  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_7  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  907     
//  908     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  909     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  910     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??DataTable12_8  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  911     
//  912     //等待晶振稳定	    
//  913     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  914     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit100M_0:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit100M_0
//  915     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit100M_1:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit100M_1
//  916     
//  917     //进入FBE模式,
//  918     //0x18==25分频=2M,
//  919     //0x11==18分频=2.7778M 
//  920     //0x12==19分频=2.63M,
//  921     //0x13==20分频=2.5M    
//  922     MCG_C5 = MCG_C5_PRDIV(0x18);                
        LDR.N    R0,??DataTable12_10  ;; 0x40064004
        MOVS     R1,#+24
        STRB     R1,[R0, #+0]
//  923     
//  924     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//  925     MCG_C6 = 0x0;
        LDR.N    R0,??DataTable12_11  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  926     
//  927     //保存FMC_PFAPR当前的值
//  928     temp_reg = FMC_PFAPR;
        LDR.N    R0,??DataTable12_12  ;; 0x4001f000
        LDR      R0,[R0, #+0]
//  929     
//  930     //通过M&PFD置位M0PFD来禁止预取功能
//  931     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  932                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  933                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??DataTable12_12  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??DataTable12_12  ;; 0x4001f000
        STR      R1,[R2, #+0]
//  934     ///设置系统分频器
//  935     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
//  936     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
//  937                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(3);       
        LDR.N    R1,??DataTable12_13  ;; 0x40048044
        LDR.N    R2,??DataTable12_14  ;; 0x1130000
        STR      R2,[R1, #+0]
//  938     
//  939     //从新存FMC_PFAPR的原始值
//  940     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??DataTable12_12  ;; 0x4001f000
        STR      R0,[R1, #+0]
//  941     
//  942     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  943     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26);  //VDIV = 31 (x55)
        LDR.N    R0,??DataTable12_11  ;; 0x40064005
        MOVS     R1,#+90
        STRB     R1,[R0, #+0]
//  944                                                   //VDIV = 26 (x50)
//  945     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit100M_2:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit100M_2
//  946     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit100M_3:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit100M_3
//  947     
//  948     //进入PBE模式    
//  949     //通过清零CLKS位来进入PEE模式
//  950     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  951     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable12_8  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable12_8  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  952     
//  953     //等待时钟状态位更新
//  954     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit100M_4:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit100M_4
//  955     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//  956     
//  957         //设置跟踪时钟为内核时钟
//  958     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R0,??DataTable10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  959     //在PTA6引脚上使能TRACE_CLKOU功能
//  960     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.N    R0,??DataTable10_1  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  961     //使能FlexBus模块时钟
//  962     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R0,??DataTable10_2  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_2  ;; 0x40048040
        STR      R0,[R1, #+0]
//  963     //在PTA6引脚上使能FB_CLKOUT功能
//  964     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.N    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  965 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x2270000
//  966 
//  967 //锁相环频率为80M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  968 void pllinit80M(void)
//  969 {
//  970 	uint32_t temp_reg;
//  971         //使能IO端口时钟    
//  972     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  973                               | SIM_SCGC5_PORTB_MASK
//  974                               | SIM_SCGC5_PORTC_MASK
//  975                               | SIM_SCGC5_PORTD_MASK
//  976                               | SIM_SCGC5_PORTE_MASK );
pllinit80M:
        LDR.N    R0,??DataTable12_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable12_4  ;; 0x40048038
        STR      R0,[R1, #+0]
//  977     //这里处在默认的FEI模式
//  978     //首先移动到FBE模式
//  979     MCG_C2 = 0;  
        LDR.N    R0,??DataTable12_5  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  980     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  981     //初始化晶振后释放锁定状态的振荡器和GPIO
//  982     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??DataTable12_6  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable12_6  ;; 0x40048034
        STR      R0,[R1, #+0]
//  983     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??DataTable12_7  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_7  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  984     
//  985     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//  986     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//  987     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??DataTable12_8  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  988     
//  989     //等待晶振稳定	    
//  990     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//  991     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit80M_0:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit80M_0
//  992     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit80M_1:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit80M_1
//  993     
//  994     //进入FBE模式,
//  995     //0x18==25分频=2M,
//  996     //0x11==18分频=2.7778M 
//  997     //0x12==19分频=2.63M,
//  998     //0x13==20分频=2.5M    
//  999     MCG_C5 = MCG_C5_PRDIV(0x18);                
        LDR.N    R0,??DataTable12_10  ;; 0x40064004
        MOVS     R1,#+24
        STRB     R1,[R0, #+0]
// 1000     
// 1001     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
// 1002     MCG_C6 = 0x0;
        LDR.N    R0,??DataTable12_11  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1003     
// 1004     //保存FMC_PFAPR当前的值
// 1005     temp_reg = FMC_PFAPR;
        LDR.N    R0,??DataTable12_12  ;; 0x4001f000
        LDR      R0,[R0, #+0]
// 1006     
// 1007     //通过M&PFD置位M0PFD来禁止预取功能
// 1008     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
// 1009                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
// 1010                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??DataTable12_12  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??DataTable12_12  ;; 0x4001f000
        STR      R1,[R2, #+0]
// 1011     ///设置系统分频器
// 1012     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
// 1013     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
// 1014                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(3);       
        LDR.N    R1,??DataTable12_13  ;; 0x40048044
        LDR.N    R2,??DataTable12_14  ;; 0x1130000
        STR      R2,[R1, #+0]
// 1015     
// 1016     //从新存FMC_PFAPR的原始值
// 1017     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??DataTable12_12  ;; 0x4001f000
        STR      R0,[R1, #+0]
// 1018     
// 1019     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
// 1020     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(16);  //VDIV = 31 (x55)
        LDR.N    R0,??DataTable12_11  ;; 0x40064005
        MOVS     R1,#+80
        STRB     R1,[R0, #+0]
// 1021                                                   //VDIV = 26 (x50)
// 1022 												  //VDIV = 16 (x40)
// 1023     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit80M_2:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit80M_2
// 1024     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit80M_3:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit80M_3
// 1025     
// 1026     //进入PBE模式    
// 1027     //通过清零CLKS位来进入PEE模式
// 1028     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
// 1029     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable12_8  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable12_8  ;; 0x40064000
        STRB     R0,[R1, #+0]
// 1030     
// 1031     //等待时钟状态位更新
// 1032     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit80M_4:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit80M_4
// 1033     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);    
// 1034     
// 1035         //设置跟踪时钟为内核时钟
// 1036     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R0,??DataTable12_15  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable12_15  ;; 0x40048004
        STR      R0,[R1, #+0]
// 1037     //在PTA6引脚上使能TRACE_CLKOU功能
// 1038     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.N    R0,??DataTable12_16  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
// 1039     //使能FlexBus模块时钟
// 1040     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R0,??DataTable12_17  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12_17  ;; 0x40048040
        STR      R0,[R1, #+0]
// 1041     //在PTA6引脚上使能FB_CLKOUT功能
// 1042     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.N    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
// 1043 }
        BX       LR               ;; return
// 1044 
// 1045 //锁相环频率为60M测试函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1046 void pllinit60M(void)
// 1047 {
// 1048 	uint32_t temp_reg;
// 1049         //使能IO端口时钟    
// 1050     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
// 1051                               | SIM_SCGC5_PORTB_MASK
// 1052                               | SIM_SCGC5_PORTC_MASK
// 1053                               | SIM_SCGC5_PORTD_MASK
// 1054                               | SIM_SCGC5_PORTE_MASK );
pllinit60M:
        LDR.N    R0,??DataTable12_4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable12_4  ;; 0x40048038
        STR      R0,[R1, #+0]
// 1055     //这里处在默认的FEI模式
// 1056     //首先移动到FBE模式
// 1057     MCG_C2 = 0;  
        LDR.N    R0,??DataTable12_5  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1058     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
// 1059     //初始化晶振后释放锁定状态的振荡器和GPIO
// 1060     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??DataTable12_6  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable12_6  ;; 0x40048034
        STR      R0,[R1, #+0]
// 1061     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??DataTable12_7  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_7  ;; 0x4007c008
        STRB     R0,[R1, #+0]
// 1062     
// 1063     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
// 1064     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
// 1065     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??DataTable12_8  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
// 1066     
// 1067     //等待晶振稳定	    
// 1068     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
// 1069     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pllinit60M_0:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pllinit60M_0
// 1070     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pllinit60M_1:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pllinit60M_1
// 1071     
// 1072     //进入FBE模式,
// 1073     //0x18==25分频=2M,
// 1074     //0x11==18分频=2.7778M 
// 1075     //0x12==19分频=2.63M,
// 1076     //0x13==20分频=2.5M    
// 1077     MCG_C5 = MCG_C5_PRDIV(0x18);                
        LDR.N    R0,??DataTable12_10  ;; 0x40064004
        MOVS     R1,#+24
        STRB     R1,[R0, #+0]
// 1078     
// 1079     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
// 1080     MCG_C6 = 0x0;
        LDR.N    R0,??DataTable12_11  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1081     
// 1082     //保存FMC_PFAPR当前的值
// 1083     temp_reg = FMC_PFAPR;
        LDR.N    R0,??DataTable12_12  ;; 0x4001f000
        LDR      R0,[R0, #+0]
// 1084     
// 1085     //通过M&PFD置位M0PFD来禁止预取功能
// 1086     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
// 1087                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
// 1088                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??DataTable12_12  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??DataTable12_12  ;; 0x4001f000
        STR      R1,[R2, #+0]
// 1089     ///设置系统分频器
// 1090     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
// 1091     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
// 1092                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(3);       
        LDR.N    R1,??DataTable12_13  ;; 0x40048044
        LDR.N    R2,??DataTable12_14  ;; 0x1130000
        STR      R2,[R1, #+0]
// 1093     
// 1094     //从新存FMC_PFAPR的原始值
// 1095     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??DataTable12_12  ;; 0x4001f000
        STR      R0,[R1, #+0]
// 1096     
// 1097     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
// 1098     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(6);  //VDIV = 31 (x55)
        LDR.N    R0,??DataTable12_11  ;; 0x40064005
        MOVS     R1,#+70
        STRB     R1,[R0, #+0]
// 1099                                                   //VDIV = 26 (x50)
// 1100 												  //VDIV = 6 (x30)
// 1101     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pllinit60M_2:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pllinit60M_2
// 1102     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pllinit60M_3:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pllinit60M_3
// 1103     
// 1104     //进入PBE模式    
// 1105     //通过清零CLKS位来进入PEE模式
// 1106     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
// 1107     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable12_8  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable12_8  ;; 0x40064000
        STRB     R0,[R1, #+0]
// 1108     
// 1109     //等待时钟状态位更新
// 1110     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pllinit60M_4:
        LDR.N    R0,??DataTable12_9  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pllinit60M_4
// 1111     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
// 1112     
// 1113         //设置跟踪时钟为内核时钟
// 1114     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R0,??DataTable12_15  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable12_15  ;; 0x40048004
        STR      R0,[R1, #+0]
// 1115     //在PTA6引脚上使能TRACE_CLKOU功能
// 1116     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        LDR.N    R0,??DataTable12_16  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
// 1117     //使能FlexBus模块时钟
// 1118     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R0,??DataTable12_17  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12_17  ;; 0x40048040
        STR      R0,[R1, #+0]
// 1119     //在PTA6引脚上使能FB_CLKOUT功能
// 1120     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.N    R0,??DataTable12_1  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
// 1121 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x1170000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x1150000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x4007c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x4001f000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     0x1130000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     0x40048040

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
// 3 252 bytes in section .text
// 
// 3 252 bytes of CODE memory
//
//Errors: none
//Warnings: none
