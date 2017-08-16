///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      20/Aug/2014  04:11:53 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0       /
//                    2014.08.20 tiaoshi\src\Sources\C\Component_C\button.c   /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\src\Sources\C\Component_C\button.c"  /
//                    -D IAR -D TWR_K60N512 -lCN                              /
//                    "D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0      /
//                    2014.08.20 tiaoshi\bin\Flash\List\" -lB                 /
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
//                    2014.08.20 tiaoshi\bin\Flash\List\button.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME button

        #define SHT_PROGBITS 0x1

        EXTERN delay_ms
        EXTERN gpio_init
        EXTERN gpio_read

        PUBLIC button_init
        PUBLIC keyboard_scan
        PUBLIC matrix_keyboard_init

// D:\FREESCALE智能车竞赛\freescale(九)\程序\PE V2.0 2014.08.20 tiaoshi\src\Sources\C\Component_C\button.c
//    1 
//    2 //程序名：  矩阵键盘 驱动程序
//    3 //硬件平台：MK60DN512ZVLL10
//    4 //开发环境：IAR V6.3
//    5 //最后修改和注解的时间：
//    6 //                     2012.8.26
//    7 #include "includes.h"
//    8 #include "button.h"
//    9 #include "gpio.h"
//   10 #include "LQ12864.h"
//   11 
//   12 
//   13 #define  keyport       PORTD
//   14 #define  keyport_clk   SIM_SCGC5_PORTD_MASK
//   15 #define  pin_begin     0  
//   16 
//   17 /********************************************************
//   18 *函数名：   void button_init(void)
//   19 *功能：     按键，外部触发
//   20 *入口参数:  无
//   21 *出口参数:  无
//   22 *说明：     使用的引脚：PC7、PC8、PC9
//   23 *********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void button_init(void)
//   25 {   
//   26      /*
//   27      SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;    //打开PORTC端口的时钟
//   28      
//   29      PORTC_DFER|=PORT_DFER_DFE_MASK;   //enable filter
//   30      PORTC_DFCR|=PORT_DFCR_CS_MASK;    //select LDO as Filter Clock
//   31      PORTC_DFWR=PORT_DFWR_FILT(10);     //10ms
//   32      
//   33      PORTC_PCR7=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
//   34      PORTC_PCR8=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
//   35      PORTC_PCR9=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
//   36      */
//   37   
//   38      SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;    //打开PORTD端口的时钟
button_init:
        LDR.W    R0,??DataTable2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable2  ;; 0x40048038
        STR      R0,[R1, #+0]
//   39      
//   40      //PORTD_DFER|=PORT_DFER_DFE_MASK;   //enable filter
//   41      //PORTD_DFCR|=PORT_DFCR_CS_MASK;    //select LDO as Filter Clock
//   42      //PORTD_DFWR=PORT_DFWR_FILT(1);     //10ms
//   43      
//   44      PORTD_PCR0=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_1  ;; 0x4004c000
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   45      PORTD_PCR1=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_3  ;; 0x4004c004
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   46      PORTD_PCR2=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_4  ;; 0x4004c008
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   47      PORTD_PCR3=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_5  ;; 0x4004c00c
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   48      PORTD_PCR4=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_6  ;; 0x4004c010
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   49      PORTD_PCR5=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_7  ;; 0x4004c014
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   50      PORTD_PCR6=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_8  ;; 0x4004c018
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   51      PORTD_PCR7=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //上拉  上升沿中断
        LDR.W    R0,??DataTable2_9  ;; 0x4004c01c
        LDR.W    R1,??DataTable2_2  ;; 0xa0103
        STR      R1,[R0, #+0]
//   52 }
        BX       LR               ;; return
//   53 
//   54 
//   55 /********************************************************
//   56 *函数名：   void matrix_keyboard_init()
//   57 *功能：     按键，外部触发
//   58 *入口参数:  无
//   59 *出口参数:  无
//   60 *说明：     使用的引脚：PD0~PD7
//   61 *********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void matrix_keyboard_init()
//   63 {
matrix_keyboard_init:
        PUSH     {R7,LR}
//   64   SIM_SCGC5 |= keyport_clk;    //打开keyport端口的时钟
        LDR.W    R0,??DataTable2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable2  ;; 0x40048038
        STR      R0,[R1, #+0]
//   65   
//   66   gpio_init (keyport,pin_begin,0,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   67   gpio_init (keyport,(pin_begin+1),0,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   68   gpio_init (keyport,(pin_begin+2),0,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   69   gpio_init (keyport,(pin_begin+3),0,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   70   gpio_init (keyport,(pin_begin+4),0,1);
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.W    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   71   gpio_init (keyport,(pin_begin+5),0,1);
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   72   gpio_init (keyport,(pin_begin+6),0,1);
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   73   gpio_init (keyport,(pin_begin+7),0,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   74 }
        POP      {R0,PC}          ;; return
//   75 
//   76 /***************************************************************
//   77 *函数名：uint8 keyboard_scan()
//   78 *功能：扫描按键的值
//   79 *入口参数：无
//   80 *出口参数：键值
//   81 *说明：无
//   82 ***************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 uint8 keyboard_scan()
//   84 {
keyboard_scan:
        PUSH     {R3-R7,LR}
//   85      uint8 temp=0;
        MOVS     R5,#+0
//   86      uint8 key_num=255;
        MOVS     R4,#+255
//   87      //第四行-------------------------
//   88      gpio_init (keyport,pin_begin,1,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   89      gpio_init (keyport,(pin_begin+1),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   90      gpio_init (keyport,(pin_begin+2),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   91      gpio_init (keyport,(pin_begin+3),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//   92         
//   93      temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R7,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R7,#+5
        ADDS     R1,R1,R6, LSL #+4
        ADDS     R6,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R0,R6,R0, LSL #+7
        MOVS     R5,R0
//   94      
//   95      if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_0
//   96 	{
//   97 	   delay_ms(10);
        MOVS     R0,#+10
        BL       delay_ms
//   98                 
//   99 	   temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  100            
//  101            if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_0
//  102 	      {
//  103                  switch(temp)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+48
        BEQ.N    ??keyboard_scan_1
        CMP      R5,#+80
        BEQ.N    ??keyboard_scan_2
        CMP      R5,#+96
        BNE.N    ??keyboard_scan_0
//  104                  {
//  105                 
//  106 		 case 0x60:	
//  107                            key_num=10;                          //10号键被按下
??keyboard_scan_3:
        MOVS     R4,#+10
//  108                            //LCD_P8x16_number(10,6,12);
//  109 			   //LCD_P8x16_num3wei(0,0,12);  ;				
//  110 			   break;
        B.N      ??keyboard_scan_0
//  111 		 case 0x50:
//  112                            key_num=11;                         //11号键被按下
??keyboard_scan_2:
        MOVS     R4,#+11
//  113                            //LCD_P8x16_number(10,6,13);
//  114 		           //LCD_P8x16_num3wei(0,0,13); ;
//  115 	  		   break;
        B.N      ??keyboard_scan_0
//  116 		 case 0x30:
//  117                            key_num=12;                          //12号键被按下
??keyboard_scan_1:
        MOVS     R4,#+12
//  118                            //LCD_P8x16_number(10,6,14);
//  119 		           //LCD_P8x16_num3wei(0,0,14); ;
//  120 			   break;
//  121                            /*
//  122 		 case 0x70:
//  123                            key_num=15;                         //4号键被按下
//  124                            //LCD_P8x16_number(10,6,15);
//  125 		           //LCD_P8x16_num3wei(0,0,15); ;
//  126 	  		   break;
//  127                            */
//  128                            
//  129                  }
//  130 	       }			 	   
//  131 	}
//  132 
//  133      //第三行--------------------------
//  134      gpio_init (keyport,pin_begin,1,1);
??keyboard_scan_0:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  135      gpio_init (keyport,(pin_begin+1),1,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  136      gpio_init (keyport,(pin_begin+2),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  137      gpio_init (keyport,(pin_begin+3),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  138         
//  139      temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  140         
//  141      if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_4
//  142 	{
//  143 	    delay_ms(10);
        MOVS     R0,#+10
        BL       delay_ms
//  144                 
//  145 	   temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  146                 
//  147 	    if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_4
//  148 		{
//  149                    switch(temp)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+48
        BEQ.N    ??keyboard_scan_5
        CMP      R5,#+80
        BEQ.N    ??keyboard_scan_6
        CMP      R5,#+96
        BNE.N    ??keyboard_scan_4
//  150                     {
//  151 		    case 0x60:	
//  152                               key_num=7;                    //7号键被按下
??keyboard_scan_7:
        MOVS     R4,#+7
//  153                               //LCD_P8x16_number(10,6,8);
//  154 			      //LCD_P8x16_num3wei(0,0,8);					
//  155 	           	      break;
        B.N      ??keyboard_scan_4
//  156 		    case 0x50:
//  157                               key_num=8;                    //8号键被按下
??keyboard_scan_6:
        MOVS     R4,#+8
//  158                               //LCD_P8x16_number(10,6,9);
//  159 		              //LCD_P8x16_num3wei(0,0,9);
//  160 			      break;
        B.N      ??keyboard_scan_4
//  161 		    case 0x30:
//  162                               key_num=9;                     //9号键被按下
??keyboard_scan_5:
        MOVS     R4,#+9
//  163                               //LCD_P8x16_number(10,6,10);
//  164 		              //LCD_P8x16_num3wei(0,0,10);
//  165 			      break;
//  166                               /*
//  167 		    case 0x70:			             //8号键被按下
//  168 		              key_num=11;
//  169                               //LCD_P8x16_number(10,6,11);
//  170                               //LCD_P8x16_num3wei(0,0,11);
//  171 			      break;
//  172                               */
//  173                     }
//  174 		}			 	   
//  175 	}
//  176      //第二行------------------------
//  177      gpio_init (keyport,pin_begin,1,1);
??keyboard_scan_4:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  178      gpio_init (keyport,(pin_begin+1),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  179      gpio_init (keyport,(pin_begin+2),1,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  180      gpio_init (keyport,(pin_begin+3),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  181         
//  182      temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  183      
//  184      if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_8
//  185 	{
//  186 	    delay_ms(10);
        MOVS     R0,#+10
        BL       delay_ms
//  187                 
//  188 	    temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  189                 
//  190 	    if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_8
//  191 	         {
//  192                     switch(temp)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+48
        BEQ.N    ??keyboard_scan_9
        CMP      R5,#+80
        BEQ.N    ??keyboard_scan_10
        CMP      R5,#+96
        BNE.N    ??keyboard_scan_8
//  193                     {
//  194 		    case 0x60:
//  195                               key_num=4;                         //4号键被按下
??keyboard_scan_11:
        MOVS     R4,#+4
//  196                               //LCD_P8x16_number(10,6,4);
//  197 			      //LCD_P8x16_num3wei(0,0,4);;					
//  198 	           	      break;
        B.N      ??keyboard_scan_8
//  199 		    case 0x50:
//  200                               key_num=5;                        //5号键被按下
??keyboard_scan_10:
        MOVS     R4,#+5
//  201                               //LCD_P8x16_number(10,6,5);
//  202 		              //LCD_P8x16_num3wei(0,0,5); ;
//  203 			      break;
        B.N      ??keyboard_scan_8
//  204 		    case 0x30:
//  205                               key_num=6;                        //6号键被按下
??keyboard_scan_9:
        MOVS     R4,#+6
//  206                               //LCD_P8x16_number(10,6,6);
//  207 		              //LCD_P8x16_num3wei(0,0,6);  ;
//  208 			      break;
//  209                               /*
//  210 		    case 0x70:
//  211                               key_num=7;                         //12号键被按下
//  212                               //LCD_P8x16_number(10,6,7);
//  213 		              //LCD_P8x16_num3wei(0,0,7); ;
//  214 			      break;
//  215                               */
//  216                     }
//  217 		 }			 	   
//  218 	}
//  219        //第一行------------------------------
//  220        gpio_init (keyport,pin_begin,1,1);
??keyboard_scan_8:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  221        gpio_init (keyport,(pin_begin+1),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  222        gpio_init (keyport,(pin_begin+2),1,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  223        gpio_init (keyport,(pin_begin+3),1,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_init
//  224         
//  225 	temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  226         
//  227 	if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_12
//  228 	{
//  229 	    delay_ms(10);
        MOVS     R0,#+10
        BL       delay_ms
//  230                 
//  231 	    temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R5,R0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        MOVS     R6,R0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        LSLS     R1,R6,#+5
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R5,R1,R0, LSL #+6
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_10  ;; 0x400ff0c0
        BL       gpio_read
        ADDS     R5,R5,R0, LSL #+7
//  232                 
//  233 	    if(temp!=0x70)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BEQ.N    ??keyboard_scan_12
//  234 		 {
//  235                      switch(temp)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+48
        BEQ.N    ??keyboard_scan_13
        CMP      R5,#+80
        BEQ.N    ??keyboard_scan_14
        CMP      R5,#+96
        BNE.N    ??keyboard_scan_12
//  236                      {
//  237 		     case 0x60:
//  238                                key_num=1;                           //1号键被按下
??keyboard_scan_15:
        MOVS     R4,#+1
//  239                                //LCD_P8x16_number(10,6,0);
//  240 	                       //LCD_P8x16_num3wei(0,0,0);  ;					
//  241 		               break;
        B.N      ??keyboard_scan_12
//  242 		     case 0x50:
//  243                                key_num=2;                           //2号键被按下
??keyboard_scan_14:
        MOVS     R4,#+2
//  244                                //LCD_P8x16_number(10,6,1);
//  245 			       //LCD_P8x16_num3wei(0,0,1); ;
//  246 	        	       break;
        B.N      ??keyboard_scan_12
//  247 		     case  0x30:
//  248                                 key_num=3;                           //3号键被按下
??keyboard_scan_13:
        MOVS     R4,#+3
//  249                                 //LCD_P8x16_number(10,6,2);
//  250 		                //LCD_P8x16_num3wei(0,0,2); ;
//  251 		       	        break;
//  252                                 /*
//  253 		     case  0x70:
//  254                                 key_num=3;                            //16号键被按下
//  255                                 //LCD_P8x16_number(10,6,3);
//  256 			        //LCD_P8x16_num3wei(0,0,3); ;
//  257 	       		        break;
//  258                                 */
//  259                      }
//  260 		  }			 	   
//  261 	} 
//  262         return(key_num);     
??keyboard_scan_12:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
//  263 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0xa0103

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x400ff0c0

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
// 1 044 bytes in section .text
// 
// 1 044 bytes of CODE memory
//
//Errors: none
//Warnings: none
