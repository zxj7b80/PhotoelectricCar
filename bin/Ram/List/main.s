///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      02/Mar/2014  21:14:40 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectric /
//                    Car V1.1\src\Sources\C\main.c                           /
//    Command line =  "D:\FREESCALE智能车竞赛\freescale(九)\程序\Photoelectri /
//                    cCar V1.1\src\Sources\C\main.c" -D IAR -D TWR_K60N512   /
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
//                    Car V1.1\bin\Ram\List\main.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN CCD_init
        EXTERN FTM_PWM_Init
        EXTERN FTM_PWM_Open
        EXTERN KeyScan
        EXTERN LCD_Init
        EXTERN LCD_P8x16_number
        EXTERN LCD_show
        EXTERN Motor_init
        EXTERN Pixel_B
        EXTERN Pixel_F
        EXTERN TIME1flag_20ms
        EXTERN back_reference
        EXTERN button_init
        EXTERN cl_b_long
        EXTERN cl_f
        EXTERN cl_f_long
        EXTERN enable_pit_interrupt
        EXTERN front_l
        EXTERN front_r
        EXTERN front_reference
        EXTERN get_back
        EXTERN get_front
        EXTERN hw_pit_init
        EXTERN periph_clk_khz
        EXTERN uart_init

        PUBLIC Motor_Lock
        PUBLIC a
        PUBLIC integration_piont_Back
        PUBLIC integration_piont_Front
        PUBLIC main
        PUBLIC showcnt
        PUBLIC system_init

// D:\FREESCALE智能车竞赛\freescale(九)\程序\PhotoelectricCar V1.1\src\Sources\C\main.c
//    1 //头文件
//    2 #include "includes.h"
//    3 
//    4 //全局变量声明
//    5 extern int   periph_clk_khz;
//    6 extern int16 cl_f;//如果赋初值，会出现重复定义
//    7 extern int16 front_l,front_r;
//    8 extern int16 cl_f_long,cl_b_long;
//    9 extern int16 front_reference,back_reference;
//   10 extern uint8 IntegrationTime_Front,IntegrationTime_Back;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8        integration_piont_Front,integration_piont_Back;
integration_piont_Front:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
integration_piont_Back:
        DS8 1
//   12 extern uint8 Pixel_F[128],Pixel_B[128];
//   13 extern uint8 TIME1flag_20ms;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   14 int16        Motor_Lock;
Motor_Lock:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 uint8        a=0;
a:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   16 uint8        showcnt=0;
showcnt:
        DS8 1
//   17 //函数声明
//   18 void  system_init();
//   19 void  button_init();
//   20 //主函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void main()
//   22 {
main:
        PUSH     {R4,LR}
//   23    int8   j;
//   24    uint8  *pixel_pt;
//   25    //uint8  send_data_cnt = 0;
//   26    int16  LCD_Average_Flag=0;
        MOVS     R4,#+0
//   27    
//   28    pixel_pt = Pixel_F;
        LDR.N    R1,??DataTable1
//   29    for(j=0; j<128+10; j++)
        MOVS     R0,#+0
        B.N      ??main_0
//   30    {
//   31       *pixel_pt++ = 0;
??main_1:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
//   32    }
        ADDS     R0,R0,#+1
??main_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+138
        BCC.N    ??main_1
//   33    pixel_pt = Pixel_B;
        LDR.N    R1,??DataTable1_1
//   34    for(j=0; j<128+10; j++)
        MOVS     R0,#+0
        B.N      ??main_2
//   35    {
//   36       *pixel_pt++ = 0;
??main_3:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
//   37    }
        ADDS     R0,R0,#+1
??main_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+138
        BCC.N    ??main_3
//   38 
//   39    system_init();
        BL       system_init
//   40    /*
//   41    serial_choose();
//   42    uart_send1(UART3 ,  gravity );        //PTC16接串口模块的uart3_RX，PTC17接串口模块的uart3_TX
//   43    uart_send1(UART3 , gyro );
//   44    */
//   45    
//   46    while(1)                              //等待1ms中断
//   47    {  
//   48     Motor_Lock=1;
??main_4:
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//   49     if(TIME1flag_20ms==1)
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_4
//   50     {
//   51        TIME1flag_20ms=0;
        LDR.N    R0,??DataTable1_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   52        get_front();
        BL       get_front
//   53        cl_f_long+=cl_f;
        LDR.N    R0,??DataTable1_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
//   54        //get_back();
//   55        //cl_b_long+=cl_b;
//   56        /*   
//   57        if(++send_data_cnt >= 5)        //每100ms给CCDview发送数据
//   58        {
//   59           send_data_cnt =0;
//   60           SendImageData(Pixel_F);
//   61           //SendImageData(Pixel_B); 
//   62        }
//   63        */
//   64        if(++LCD_Average_Flag>9)
        ADDS     R4,R4,#+1
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BLT.N    ??main_4
//   65        {
//   66          LCD_Average_Flag=0;
        MOVS     R4,#+0
//   67          front_reference=(int16)(cl_f_long/10);//不合理，left或right可能为255，但可通过人为修正
        LDR.N    R0,??DataTable1_4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+0]
//   68          back_reference=(int16)(cl_b_long/10);
        LDR.N    R0,??DataTable1_7
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+0]
//   69          LCD_P8x16_number(10,0,front_reference);
        LDR.N    R0,??DataTable1_6
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       LCD_P8x16_number
//   70          //LCD_P8x16_number(70,0,back_reference);
//   71          LCD_P8x16_number(10,2,front_l);
        LDR.N    R0,??DataTable1_9
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       LCD_P8x16_number
//   72          LCD_P8x16_number(70,2,front_r);
        LDR.N    R0,??DataTable1_10
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LCD_P8x16_number
//   73          cl_f_long=0;
        LDR.N    R0,??DataTable1_4
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   74          cl_b_long=0;
        LDR.N    R0,??DataTable1_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   75          //按键跳出初始化循环
//   76          KeyScan();
        BL       KeyScan
//   77          if(a!=0)break;
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_4
//   78        }
//   79     }
//   80    }
//   81    
//   82    while(1)                              //等待1ms中断
//   83    { 
//   84     Motor_Lock=1;
??main_5:
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//   85     if(TIME1flag_20ms==1)
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_5
//   86     {
//   87        TIME1flag_20ms=0;
        LDR.N    R0,??DataTable1_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   88        get_front();
        BL       get_front
//   89        get_back();
        BL       get_back
//   90        
//   91        showcnt++;
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
//   92        if(showcnt==5)
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??main_5
//   93        {
//   94          showcnt=0;
        LDR.N    R0,??DataTable1_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   95          LCD_show();
        BL       LCD_show
        B.N      ??main_5
//   96        }
//   97        /*
//   98        if(++send_data_cnt >= 5)        //每100ms给CCDview发送数据
//   99        {
//  100           send_data_cnt =0;
//  101           SendImageData(Pixel_F);
//  102           //SendImageData(Pixel_B); 
//  103        }
//  104        */
//  105     }
//  106    }
//  107 }
//  108 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  109 void system_init()
//  110 {
system_init:
        PUSH     {R7,LR}
//  111     //uint8  send_data_cnt = 0;观察发现如此采集的图像高低跳动
//  112     DisableInterrupts;                          //关闭总中断
        CPSID i         
//  113     uart_init(UART3,periph_clk_khz,115200);     //串口初始化
        MOVS     R2,#+115200
        LDR.N    R0,??DataTable1_13
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_14  ;; 0x4006d000
        BL       uart_init
//  114     FTM_PWM_Init(0,300);                        //舵机频率初始化
        MOV      R1,#+300
        MOVS     R0,#+0
        BL       FTM_PWM_Init
//  115     FTM_PWM_Open(0,2,5000);
        MOVW     R2,#+5000
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Open
//  116     FTM_PWM_Init(1,1000);                       //电机频率初始化 pwm频率为10kHz
        MOV      R1,#+1000
        MOVS     R0,#+1
        BL       FTM_PWM_Init
//  117     Motor_init();                               //电机初始化   
        BL       Motor_init
//  118     //FTM_QUAD_init();                           //正交解码测速初始化
//  119     CCD_init();
        BL       CCD_init
//  120     LCD_Init();                                 //OLED液晶初始化
        BL       LCD_Init
//  121     button_init();
        BL       button_init
//  122     
//  123     //while(1){;}  
//  124     hw_pit_init(0,60000);                       //配置pit定时器0,1ms中断(60000)
        MOVW     R1,#+60000
        MOVS     R0,#+0
        BL       hw_pit_init
//  125     enable_pit_interrupt(0);                    //开pit中断0通道
        MOVS     R0,#+0
        BL       enable_pit_interrupt
//  126     EnableInterrupts;                           //开启总中断,中断开启后，此刻就进行1ms的定时吗？
        CPSIE i         
//  127     
//  128     
//  129         
//  130 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Pixel_F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     Pixel_B

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Motor_Lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     TIME1flag_20ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     cl_f_long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     cl_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     front_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     cl_b_long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     back_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     front_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     showcnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x4006d000

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
//   6 bytes in section .bss
// 400 bytes in section .text
// 
// 400 bytes of CODE memory
//   6 bytes of DATA memory
//
//Errors: none
//Warnings: none
