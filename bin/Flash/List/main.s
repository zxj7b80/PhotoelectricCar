///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       31/Dec/2015  15:29:37
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\src\Sources\C\main.c
//    Command line =  
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\src\Sources\C\main.c"
//        -D IAR -D TWR_K60N512 -lCN
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\bin\Flash\List\"
//        -lB
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\bin\Flash\List\"
//        -o
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\bin\Flash\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\MyProgramFiles\IAR
//        7.10.3\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\src\Sources\H\"
//        -I
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\src\Sources\H\Component_H\"
//        -I
//        "G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\src\Sources\H\Frame_H\"
//        -Ol --use_c++_inline
//    List file    =  
//        G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\bin\Flash\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Abs
        EXTERN BLsha
        EXTERN CAR_GO
        EXTERN CCD_init
        EXTERN FTM2_QUAD_Iint
        EXTERN FTM_PWM_Init
        EXTERN FTM_PWM_Open
        EXTERN GetMotorPulse
        EXTERN GetOFFSET
        EXTERN GetSamplezhi
        EXTERN IntegrationTime_Front
        EXTERN LCD_CLS
        EXTERN LCD_Init
        EXTERN LCD_P8x16Str
        EXTERN LCD_P8x16_num3wei
        EXTERN LCD_P8x16_number
        EXTERN LCD_P8x16_number_4
        EXTERN Motor_init
        EXTERN PID_SetKpid
        EXTERN PID_SetPoint
        EXTERN POshaen
        EXTERN Pixel_F
        EXTERN Pixel_Z
        EXTERN Pmax
        EXTERN Psha
        EXTERN QPX_SET
        EXTERN SetServoVoltage
        EXTERN Speed_PID
        EXTERN TIME1flag_20ms
        EXTERN ZHONG
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN binaryzation_F
        EXTERN chu
        EXTERN cl_f
        EXTERN delay_ms
        EXTERN enable_pit_interrupt
        EXTERN fangcha_qian_f
        EXTERN front_OFFSET
        EXTERN front_OFFSET_pre
        EXTERN front_l
        EXTERN front_l_flag
        EXTERN front_l_reference
        EXTERN front_r
        EXTERN front_r_flag
        EXTERN front_r_reference
        EXTERN front_reference
        EXTERN front_width
        EXTERN get_front
        EXTERN hw_adc_init
        EXTERN hw_pit_init
        EXTERN keyboard_scan
        EXTERN matrix_keyboard_init
        EXTERN periph_clk_khz
        EXTERN route_type_F
        EXTERN sh_x
        EXTERN shapo
        EXTERN shmode
        EXTERN speedflag
        EXTERN uart_init
        EXTERN xianfu

        PUBLIC BK
        PUBLIC FRONT_WIDTH
        PUBLIC HONGWAI_L
        PUBLIC HONGWAI_R
        PUBLIC HWPO
        PUBLIC HWPO_ct
        PUBLIC IT_long
        PUBLIC IT_ref
        PUBLIC Kd
        PUBLIC Kd_BL
        PUBLIC Kd_WW
        PUBLIC Kd_WZ
        PUBLIC Kd_ZW
        PUBLIC Kd_ZZ
        PUBLIC Kd_hold
        PUBLIC Ki
        PUBLIC Ki_hold
        PUBLIC Kmax
        PUBLIC Kmin
        PUBLIC Kp
        PUBLIC Kp_BL
        PUBLIC Kp_WW
        PUBLIC Kp_WZ
        PUBLIC Kp_ZW
        PUBLIC Kp_ZZ
        PUBLIC Kp_hold
        PUBLIC Motor_Lock
        PUBLIC PMAX
        PUBLIC PO_ct
        PUBLIC POsha
        PUBLIC Prz
        PUBLIC Sd
        PUBLIC Servo_Lock
        PUBLIC Si
        PUBLIC `Sp`
        PUBLIC ZONG_WIDTH
        PUBLIC ZZ_count_max
        PUBLIC a
        PUBLIC cl_f_long
        PUBLIC cl_z_long
        PUBLIC d_err1_max
        PUBLIC d_p
        PUBLIC dazhi
        PUBLIC dir_fg
        PUBLIC fch_dp1
        PUBLIC fch_dp2
        PUBLIC fch_dp3
        PUBLIC fch_mo
        PUBLIC front_l_long
        PUBLIC front_r_long
        PUBLIC guopo
        PUBLIC hongwai_l
        PUBLIC hongwai_l_count
        PUBLIC hongwai_r
        PUBLIC hongwai_r_count
        PUBLIC hw_l_fg
        PUBLIC hw_r_fg
        PUBLIC k_B
        PUBLIC k_out
        PUBLIC key_no
        PUBLIC key_num
        PUBLIC lost_all_count_max
        PUBLIC main
        PUBLIC mode
        PUBLIC po_count
        PUBLIC po_gap
        PUBLIC po_gap_ct
        PUBLIC polook
        PUBLIC pulse_count_max
        PUBLIC shache_time
        PUBLIC showcnt
        PUBLIC speed
        PUBLIC speed_B
        PUBLIC speed_H
        PUBLIC speed_L
        PUBLIC speed_jian
        PUBLIC system_init
        PUBLIC zhming
        PUBLIC zong_l_long
        PUBLIC zong_r_long

// G:\FREESCALE智能车竞赛\freescale(九)\程序\总决赛比赛程序21.22.23\2014.08.22\src\Sources\C\main.c
//    1 //头文件
//    2 #include "includes.h"
//    3 
//    4 //全局变量声明
//    5 extern  int16  periph_clk_khz;
//    6 
//    7 extern  int16  cl_f,cl_f_pre;//如果赋初值，会出现重复定义
//    8 extern  int16  front_l,front_r;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    9         int16  cl_f_long,front_l_long,front_r_long,IT_long;
cl_f_long:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_l_long:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_long:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
IT_long:
        DS8 2
//   10 extern  int16  front_reference,front_l_reference,front_r_reference;

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   11         uint8  IT_ref=10;
IT_ref:
        DATA
        DC8 10
//   12 extern  int16  front_max,front_min;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   13         int16  lost_all_count_max=0;
lost_all_count_max:
        DS8 2
//   14 extern  int16  lost_all_count;
//   15 extern  uint8  lost_all_flag;
//   16 extern  int16  Aver_F,high_aver_f,low_aver_f;
//   17 extern  int16  R_aver,L_aver;
//   18 extern  uint8  Ldiaotou_flag,Rdiaotou_flag;
//   19 extern  int16  Ldiaotou_count,Rdiaotou_count;
//   20 
//   21 extern  int16  front_l_flag,front_r_flag;
//   22 
//   23 extern  int16  bodong;
//   24 
//   25 extern  int16  cl_z;
//   26 extern  int16  zong_l,zong_r;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   27         int16  cl_z_long,zong_l_long,zong_r_long;
cl_z_long:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_l_long:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_long:
        DS8 2
//   28 extern  int16  zong_reference,zong_l_reference,zong_r_reference;
//   29 extern  int16  zong_max,zong_min;
//   30 
//   31 extern  uint8  Pixel_F[128],Pixel_Z[128];
//   32 extern  uint8  IntegrationTime_Front,IntegrationTime_Zong;
//   33 extern  uint8  integration_piont_Front,integration_piont_Zong;
//   34 extern  uint8  pit0_1ms_flag;
//   35 extern  uint8  TIME1flag_20ms,TIME1flag_20ms_Z;
//   36 extern  int16  speedflag;

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   37         int16  Motor_Lock=1;
Motor_Lock:
        DATA
        DC16 1

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   38         int16  Servo_Lock=1;
Servo_Lock:
        DATA
        DC16 1
//   39 
//   40 extern  int16  delta_l,delta_r;
//   41 extern  int16  fangcha_f,fangcha_qian_f,fangcha_hou_f;
//   42 extern  int16  fangcha_z,fangcha_qian_z,fangcha_hou_z;

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   43         int16  fch_dp1=256,fch_dp2=81,fch_dp3=625;
fch_dp1:
        DATA
        DC16 256

        SECTION `.data`:DATA:REORDER:NOROOT(1)
fch_dp2:
        DATA
        DC16 81

        SECTION `.data`:DATA:REORDER:NOROOT(1)
fch_dp3:
        DATA
        DC16 625
//   44 
//   45 
//   46         /*前瞻提高，切线厉害，过第二十字好，立上3.25，（75，30.97）*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   47         float  Kp=19.0;//合适的前瞻是最好的！
Kp:
        DATA
        DC32 41980000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48         float  Ki=0.0;
Ki:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   49         float  Kd=21.0;
Kd:
        DATA
        DC32 41A80000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   50         float  Kp_hold=19.0;
Kp_hold:
        DATA
        DC32 41980000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51         float  Ki_hold=0.0;
Ki_hold:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52         float  Kd_hold=21.0;
Kd_hold:
        DATA
        DC32 41A80000H
//   53        

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   54         float  Kp_ZW=18.0,Kp_WW=13.0,Kp_WZ=13.5,Kp_ZZ=16.5,Kp_BL=0.5;
Kp_ZW:
        DATA
        DC32 41900000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kp_WW:
        DATA
        DC32 41500000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kp_WZ:
        DATA
        DC32 41580000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kp_ZZ:
        DATA
        DC32 41840000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kp_BL:
        DATA
        DC32 3F000000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   55         float  Kd_ZW=20.0,Kd_WW=18.5,Kd_WZ=18.5,Kd_ZZ=23.0,Kd_BL=20.0;
Kd_ZW:
        DATA
        DC32 41A00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd_WW:
        DATA
        DC32 41940000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd_WZ:
        DATA
        DC32 41940000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd_ZZ:
        DATA
        DC32 41B80000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd_BL:
        DATA
        DC32 41A00000H
//   56 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   57         float   Kmax=0.8,Kmin=0.6;
Kmax:
        DATA
        DC32 3F4CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kmin:
        DATA
        DC32 3F19999AH
//   58         
//   59 extern  float  sp,sd;
//   60        

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   61         uint8  d_p=0;
d_p:
        DS8 1
//   62 extern  float  chu;
//   63        
//   64 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   65         float  k_out=1.5;
k_out:
        DATA
        DC32 3FC00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   66         float  k_B=1.0;
k_B:
        DATA
        DC32 3F800000H
//   67        

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   68         int16  shache_time=0;
shache_time:
        DS8 2
//   69 extern  int16  ZZ_count;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   70         int16  ZZ_count_max=0;
ZZ_count_max:
        DS8 2
//   71 extern  int16  bl_count;
//   72 extern  uint8  bl_flag;
//   73 extern  int16  stop_flag;
//   74 extern  int16  stop_count;
//   75 extern  int16  black_l,black_r;
//   76 extern  int16  Psha;
//   77 extern  int16  ZHONG;
//   78 extern  int16  xianfu;
//   79 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   80         uint8  mode=1;        
mode:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   81         uint8  fch_mo=1;
fch_mo:
        DATA
        DC8 1
//   82 extern  uint8  shmode;
//   83 
//   84        /*供电线*/
//   85        //提速需谨慎，始终调不出好的参数则降速处理

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   86         int16  speed=365;
speed:
        DATA
        DC16 365

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   87         int16  speed_H=360;
speed_H:
        DATA
        DC16 360

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   88         int16  speed_L=280;
speed_L:
        DATA
        DC16 280

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   89         int16  speed_B=300;
speed_B:
        DATA
        DC16 300

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   90         int16  speed_jian=20;
speed_jian:
        DATA
        DC16 20

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   91         int16  PMAX=175;
PMAX:
        DATA
        DC16 175
//   92 extern  int16  Pmax;

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   93         int16  Prz=-10;
Prz:
        DATA
        DC16 -10

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   94         int16  POsha=100;
POsha:
        DATA
        DC16 100
//   95        
//   96 extern  int16  d_err1,d_err2,d_err3,d_err4,d_err5,d_err6,d_err7,d_err8,d_err9;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   97         int16  d_err1_max=0;
d_err1_max:
        DS8 2
//   98 extern  int16  z_err1,z_err2,z_err3,z_err4,z_err5,z_err6,z_err7,z_err8,z_err9;
//   99 extern  int16  front_OFFSET,front_OFFSET_pre;
//  100 extern  int16  zong_OFFSET;
//  101 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  102         uint8  a=0;
a:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  103         uint8  showcnt=0;
showcnt:
        DS8 1
//  104 extern  int16  front_width;
//  105 extern  int16  zong_width;
//  106 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  107         int16  FRONT_WIDTH;
FRONT_WIDTH:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  108         int16  ZONG_WIDTH;
ZONG_WIDTH:
        DS8 2
//  109 
//  110 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  111         uint8  key_num=255;
key_num:
        DATA
        DC8 255

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  112         uint8  key_no=255;
key_no:
        DATA
        DC8 255

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  113         uint8  zhming=1;
zhming:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  114         uint8  BK=255;
BK:
        DATA
        DC8 255
//  115 extern  int16  g_nMotorPulseSigma;
//  116 extern  int32  pulse_count;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  117         int32  pulse_count_max=0;
pulse_count_max:
        DS8 4
//  118 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  119         float  Sp=1.7,Si=0.05,Sd=0.3;//至决赛做强速度控制
`Sp`:
        DATA
        DC32 3FD9999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Si:
        DATA
        DC32 3D4CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Sd:
        DATA
        DC32 3E99999AH
//  120        
//  121 extern  uint8  CAR_GO;
//  122 extern  uint8  rzop;
//  123 extern  uint8  qpx_en;
//  124 extern  int16  QPX_SET;
//  125 
//  126 extern  int16  jiao_L,jiao_R;
//  127 
//  128 extern  uint8  mq,mq_last;
//  129 extern  uint8  mq_look1,mq_look2,mq_look3,mq_look4;
//  130 
//  131 extern  int16  gravity,voltage_gravity;
//  132 extern  int16  g_nInputVoltage[5];

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  133         uint8  dazhi=0;
dazhi:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  134         uint8  guopo=0;
guopo:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  135         int16  po_count=0,PO_ct=39;
po_count:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
PO_ct:
        DATA
        DC16 39
//  136        

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  137         int16  hongwai_l=0,hongwai_r=0;
hongwai_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
hongwai_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  138         int16  HONGWAI_L=0,HONGWAI_R=0;
HONGWAI_L:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
HONGWAI_R:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  139         int16  hongwai_l_count=0,hongwai_r_count=0;
hongwai_l_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
hongwai_r_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  140         uint8  hw_l_fg=0,hw_r_fg=0;
hw_l_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
hw_r_fg:
        DS8 1
//  141        

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  142         uint8  dir_fg=0;
dir_fg:
        DS8 1
//  143        
//  144 
//  145 extern  int16  OFFSET_keep;
//  146 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  147         uint8  polook=0;
polook:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  148         uint8  po_gap=0;
po_gap:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  149         int16  po_gap_ct=0;
po_gap_ct:
        DS8 2
//  150         
//  151 extern  int16  sha_width;
//  152 extern  uint8  shapo;
//  153 extern  uint8  BLsha;
//  154 
//  155 extern  uint8   sh_x;
//  156 extern  uint8   POshaen;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  157         uint8   HWPO=0;
HWPO:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  158         int16   HWPO_ct=0;
HWPO_ct:
        DS8 2
//  159        
//  160 //函数声明
//  161 void  system_init();
//  162 //主函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  163 void main()
//  164 {
main:
        PUSH     {R4,LR}
//  165    int8   j;
//  166    uint8  *pixel_pt;
//  167    uint8  send_data_cnt = 0;
        MOVS     R2,#+0
//  168    int16  LCD_Average_Flag=0,LCD_Average_Flag_Z=0;
        MOVS     R4,#+0
        MOVS     R3,#+0
//  169    
//  170    pixel_pt = Pixel_F;
        LDR.W    R1,??main_0+0x8
//  171    for(j=0; j<128+10; j++){*pixel_pt++ = 0;}
        MOVS     R0,#+0
        B.N      ??main_1
??main_2:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
??main_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+138
        BLT.N    ??main_2
//  172    
//  173    pixel_pt = Pixel_Z;
        LDR.W    R1,??main_0+0xC
//  174    for(j=0; j<128+10; j++){*pixel_pt++ = 0;}
        MOVS     R0,#+0
        B.N      ??main_3
??main_4:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
??main_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+138
        BLT.N    ??main_4
//  175    
//  176    system_init();
        BL       system_init
//  177    /*
//  178    serial_choose();
//  179    uart_send1(UART3 ,  gravity );//PTC16接串口模块的uart3_RX，PTC17接串口模块的uart3_TX
//  180    uart_send1(UART3 , gyro );
//  181    */
//  182    //-----------------------------------------------------------------
//  183    //--------------------------模式 按键调参--------------------------
//  184    //-----------------------------------------------------------------
//  185    while(1)
//  186    { 
//  187       
//  188       //user GUI
//  189       LCD_P8x16Str(0,0,"mode:1");
??main_5:
        LDR.W    R2,??main_0+0x10
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  190       LCD_P8x16Str(60,0,"s_H:2");
        LDR.W    R2,??main_0+0x14
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  191       LCD_P8x16Str(0,2,"s_L:3");
        LDR.W    R2,??main_0+0x18
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  192       LCD_P8x16Str(60,2,"Kp:4");
        LDR.W    R2,??main_0+0x1C
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  193       LCD_P8x16Str(0,4,"Kd:5");
        LDR.W    R2,??main_0+0x20
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  194       LCD_P8x16Str(60,4,"QPX_SET:6");
        LDR.W    R2,??main_0+0x24
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  195       
//  196       matrix_keyboard_init();
        BL       matrix_keyboard_init
//  197       key_no=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  198       
//  199       delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  200 
//  201       //1号按键按下的时候调节mode
//  202       if(key_no==1)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??main_7
//  203        {
//  204         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  205         BK=1;
        MOVS     R0,#+1
        LDR.W    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  206         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_8
//  207         while(BK==1)
//  208         {
//  209           LCD_P8x16Str(0,0,"mode:");
??main_9:
        LDR.W    R2,??main_0+0x2C
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  210           LCD_P8x16_number_4(60,0,mode);
        LDR.W    R0,??main_0+0x30
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_number_4
//  211           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_10     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  212           LCD_P8x16Str(60,2,"Key7");
        LDR.W    R2,??main_0+0x34
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  213           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_10+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  214           LCD_P8x16Str(60,4,"Key8");
        LDR.W    R2,??main_0+0x38
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  215           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_10+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  216           LCD_P8x16Str(60,6,"Key9");
        LDR.W    R2,??main_0+0x3C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  217           
//  218           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  219           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  220           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  221           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_11
//  222           {
//  223             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  224           }          
//  225 
//  226           if(key_no==7)
??main_11:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_12
//  227           {
//  228             mode=mode+1;
        LDR.W    R0,??main_0+0x30
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??main_0+0x30
        STRB     R0,[R1, #+0]
//  229             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  230           }
//  231         
//  232           if(key_no==8)
??main_12:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_13
//  233           {
//  234             mode=mode-1;
        LDR.W    R0,??main_0+0x30
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??main_0+0x30
        STRB     R0,[R1, #+0]
//  235             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  236           }
//  237         
//  238           if(key_no==9)
??main_13:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_8
//  239           {
//  240             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  241             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  242             key_num=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  243           }
//  244         }
??main_8:
        LDR.W    R0,??main_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??main_9
//  245         LCD_CLS();
        BL       LCD_CLS
//  246       }
//  247       
//  248       //模式------------------
//  249       if(mode==1)
??main_7:
        LDR.W    R0,??main_0+0x30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_14
//  250       {
//  251         speed_H=360;
        MOV      R0,#+360
        LDR.W    R1,??main_0+0x40
        STRH     R0,[R1, #+0]
//  252         speed_L=280;
        MOV      R0,#+280
        LDR.W    R1,??main_0+0x44
        STRH     R0,[R1, #+0]
//  253         Kp=19.7;
        LDR.W    R0,??main_0+0x48  ;; 0x419d999a
        LDR.W    R1,??main_0+0x4C
        STR      R0,[R1, #+0]
//  254         Kd=21.0;
        LDR.W    R0,??main_0+0x50  ;; 0x41a80000
        LDR.W    R1,??main_0+0x54
        STR      R0,[R1, #+0]
//  255         Psha=60;
        MOVS     R0,#+60
        LDR.W    R1,??main_15
        STRH     R0,[R1, #+0]
//  256         Prz=-20;
        MVNS     R0,#+19
        LDR.W    R1,??main_15+0x4
        STRH     R0,[R1, #+0]
//  257         
//  258         Kmax=0.8;
        LDR.W    R0,??main_0+0x58  ;; 0x3f4ccccd
        LDR.W    R1,??main_0+0x5C
        STR      R0,[R1, #+0]
//  259         Kmin=0.6;
        LDR.W    R0,??main_0+0x60  ;; 0x3f19999a
        LDR.W    R1,??main_0+0x64
        STR      R0,[R1, #+0]
        B.N      ??main_16
//  260         
//  261         
//  262       }
//  263       else if(mode==2)
??main_14:
        LDR.W    R0,??main_0+0x30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??main_17
//  264       {
//  265         speed_H=350;
        MOV      R0,#+350
        LDR.W    R1,??main_0+0x40
        STRH     R0,[R1, #+0]
//  266         speed_L=270;
        MOV      R0,#+270
        LDR.W    R1,??main_0+0x44
        STRH     R0,[R1, #+0]
//  267         Kp=18.0;
        LDR.W    R0,??main_0+0x68  ;; 0x41900000
        LDR.W    R1,??main_0+0x4C
        STR      R0,[R1, #+0]
//  268         Kd=21.0;
        LDR.W    R0,??main_0+0x50  ;; 0x41a80000
        LDR.W    R1,??main_0+0x54
        STR      R0,[R1, #+0]
//  269         Psha=80;
        MOVS     R0,#+80
        LDR.W    R1,??main_15
        STRH     R0,[R1, #+0]
//  270         Prz=0;
        MOVS     R0,#+0
        LDR.W    R1,??main_15+0x4
        STRH     R0,[R1, #+0]
//  271         
//  272         Kmax=0.7;
        LDR.W    R0,??main_0+0x6C  ;; 0x3f333333
        LDR.W    R1,??main_0+0x5C
        STR      R0,[R1, #+0]
//  273         Kmin=0.5;
        MOVS     R0,#+1056964608
        LDR.W    R1,??main_0+0x64
        STR      R0,[R1, #+0]
        B.N      ??main_16
        Nop      
        DATA
??main_10:
        DC8      0x2B, 0x3A, 0x00, 0x00
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
//  274       }
//  275       else if(mode==3)
??main_17:
        LDR.W    R0,??main_0+0x30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??main_16
//  276       {
//  277         speed_H=340;
        MOV      R0,#+340
        LDR.W    R1,??main_0+0x40
        STRH     R0,[R1, #+0]
//  278         speed_L=260;
        MOV      R0,#+260
        LDR.W    R1,??main_0+0x44
        STRH     R0,[R1, #+0]
//  279         Kp=17.0;
        LDR.W    R0,??main_18     ;; 0x41880000
        LDR.W    R1,??main_0+0x4C
        STR      R0,[R1, #+0]
//  280         Kd=21.0;
        LDR.W    R0,??main_0+0x50  ;; 0x41a80000
        LDR.W    R1,??main_0+0x54
        STR      R0,[R1, #+0]
//  281         Psha=90;
        MOVS     R0,#+90
        LDR.W    R1,??main_15
        STRH     R0,[R1, #+0]
//  282         Prz=0;
        MOVS     R0,#+0
        LDR.W    R1,??main_15+0x4
        STRH     R0,[R1, #+0]
//  283         
//  284         Kmax=0.6;
        LDR.W    R0,??main_0+0x60  ;; 0x3f19999a
        LDR.W    R1,??main_0+0x5C
        STR      R0,[R1, #+0]
//  285         Kmin=0.4;
        LDR.W    R0,??main_18+0x4  ;; 0x3ecccccd
        LDR.W    R1,??main_0+0x64
        STR      R0,[R1, #+0]
//  286       }
//  287       //------------------
//  288       
//  289       //2号按键按下的时候调节Speed_H
//  290       if(key_no==2)
??main_16:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??main_19
//  291        {
//  292         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  293         BK=2;
        MOVS     R0,#+2
        LDR.W    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  294         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_20
//  295         while(BK==2)
//  296         {
//  297           delay_ms(110);
??main_21:
        MOVS     R0,#+110
        BL       delay_ms
//  298           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  299           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  300           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_22
//  301           {
//  302             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  303           }          
//  304           LCD_P8x16Str(0,0,"Speed_H:");
??main_22:
        LDR.W    R2,??main_18+0x8
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  305           LCD_P8x16_num3wei(60,0,speed_H);
        LDR.W    R0,??main_0+0x40
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  306           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_23     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  307           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  308           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_24     ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  309           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  310           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_24+0x4  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  311           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  312           
//  313           if(key_no==7)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_25
//  314           {
//  315             speed_H=speed_H+5;
        LDR.W    R0,??main_0+0x40
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_0+0x40
        STRH     R0,[R1, #+0]
//  316             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  317           }
//  318         
//  319           if(key_no==8)
??main_25:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_26
//  320           {
//  321             speed_H=speed_H-5;
        LDR.W    R0,??main_0+0x40
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_0+0x40
        STRH     R0,[R1, #+0]
//  322             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  323           }
//  324         
//  325           if(key_no==9)
??main_26:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_20
//  326           {
//  327             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  328             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  329           }
//  330         }
??main_20:
        LDR.W    R0,??main_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??main_21
//  331         LCD_CLS();
        BL       LCD_CLS
//  332        }
//  333       //3号按键按下的时候调节Speed_L
//  334       if(key_no==3)
??main_19:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??main_27
//  335        {
//  336         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  337         BK=3;
        MOVS     R0,#+3
        LDR.W    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  338         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_28
//  339         while(BK==3)
//  340         {
//  341           delay_ms(110);
??main_29:
        MOVS     R0,#+110
        BL       delay_ms
//  342           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  343           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  344           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_30
//  345           {
//  346             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  347           }          
//  348           LCD_P8x16Str(0,0,"Speed_L:");
??main_30:
        LDR.W    R2,??main_18+0x18
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  349           LCD_P8x16_num3wei(60,0,speed_L);
        LDR.W    R0,??main_0+0x44
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  350           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_23     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  351           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  352           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_24     ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  353           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  354           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_24+0x4  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  355           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  356           
//  357           if(key_no==7)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_31
//  358           {
//  359             speed_L=speed_L+5;
        LDR.N    R0,??main_0+0x44
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.N    R1,??main_0+0x44
        STRH     R0,[R1, #+0]
//  360             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  361           }
//  362         
//  363           if(key_no==8)
??main_31:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_32
//  364           {
//  365             speed_L=speed_L-5;
        LDR.N    R0,??main_0+0x44
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.N    R1,??main_0+0x44
        STRH     R0,[R1, #+0]
//  366             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  367           }
//  368         
//  369           if(key_no==9)
??main_32:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_28
//  370           {
//  371             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  372             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  373           }
//  374         }
??main_28:
        LDR.N    R0,??main_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??main_29
//  375         LCD_CLS();
        BL       LCD_CLS
//  376        }
//  377       
//  378       //4号按键按下的时候调节Kp
//  379       if(key_no==4)
??main_27:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??main_33
//  380        {
//  381         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  382         BK=4;
        MOVS     R0,#+4
        LDR.N    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  383         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_34
//  384         while(BK==4)
//  385         {
//  386           LCD_P8x16Str(0,0,"Kp:");
??main_35:
        ADR.N    R2,??main_0      ;; "Kp:"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  387           LCD_P8x16_num3wei(60,0,(uint16)(Kp*10));
        LDR.N    R0,??main_0+0x4C
        LDR      R0,[R0, #+0]
        LDR.W    R1,??main_18+0x1C  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  388           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_23     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  389           LCD_P8x16Str(60,2,"Key7");
        LDR.N    R2,??main_0+0x34
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  390           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_24     ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  391           LCD_P8x16Str(60,4,"Key8");
        LDR.N    R2,??main_0+0x38
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  392           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_24+0x4  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  393           LCD_P8x16Str(60,6,"Key9");
        LDR.N    R2,??main_0+0x3C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  394           
//  395           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  396           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  397           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  398           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_36
//  399           {
//  400             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  401           }          
//  402 
//  403           if(key_no==7)
??main_36:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_37
//  404           {
//  405             Kp=Kp+0.1;
        LDR.N    R0,??main_0+0x4C
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??main_18+0x20  ;; 0x9999999a
        LDR.W    R3,??main_38     ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??main_0+0x4C
        STR      R0,[R1, #+0]
//  406             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  407           }
//  408         
//  409           if(key_no==8)
??main_37:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_39
//  410           {
//  411             Kp=Kp-0.1;
        LDR.N    R0,??main_0+0x4C
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??main_18+0x20  ;; 0x9999999a
        LDR.W    R3,??main_38+0x4  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??main_0+0x4C
        STR      R0,[R1, #+0]
//  412             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  413           }
//  414         
//  415           if(key_no==9)
??main_39:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_34
//  416           {
//  417             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  418             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  419             key_num=255;//注意控制条件
        MOVS     R0,#+255
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  420           }
//  421         }
??main_34:
        LDR.N    R0,??main_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.W    ??main_35
//  422         LCD_CLS();
        BL       LCD_CLS
//  423       }
//  424       //5号按键按下的时候调节Kd
//  425       if(key_no==5)
??main_33:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.W    ??main_40
//  426        {
//  427         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  428         BK=5;
        MOVS     R0,#+5
        LDR.N    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  429         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_41
//  430         while(BK==5)
//  431         {
//  432           delay_ms(110);
??main_42:
        MOVS     R0,#+110
        BL       delay_ms
//  433           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  434           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  435           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_43
//  436           {
//  437             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  438           }          
//  439           LCD_P8x16Str(0,0,"Kd:");
??main_43:
        ADR.N    R2,??main_0+0x4  ;; "Kd:"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  440           LCD_P8x16_num3wei(60,0,(uint16)(Kd*10));
        LDR.N    R0,??main_0+0x54
        LDR      R0,[R0, #+0]
        LDR.W    R1,??main_18+0x1C  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  441           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_23     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  442           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  443           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_24     ;; 0x2D, 0x3A, 0x00, 0x00
        B.N      ??main_44
        DATA
??main_23:
        DC8      0x2B, 0x3A, 0x00, 0x00
        THUMB
??main_44:
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  444           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  445           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_24+0x4  ;; "Re:"
        B.N      ??main_45
        DATA
??main_24:
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
??main_45:
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  446           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  447           
//  448           if(key_no==7)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_46
//  449           {
//  450             Kd=Kd+0.1;
        LDR.N    R0,??main_0+0x54
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??main_18+0x20  ;; 0x9999999a
        LDR.W    R3,??main_38     ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??main_0+0x54
        STR      R0,[R1, #+0]
//  451             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  452           }
//  453         
//  454           if(key_no==8)
??main_46:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_47
//  455           {
//  456             Kd=Kd-0.1;
        LDR.N    R0,??main_0+0x54
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??main_18+0x20  ;; 0x9999999a
        LDR.W    R3,??main_38+0x4  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??main_0+0x54
        STR      R0,[R1, #+0]
//  457             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  458           }
//  459         
//  460           if(key_no==9)
??main_47:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_41
//  461           {
//  462             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  463             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  464           }
//  465         }
??main_41:
        LDR.N    R0,??main_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.W    ??main_42
//  466         LCD_CLS();
        BL       LCD_CLS
//  467        }
//  468       //6号按键按下的时候调节QPX_SET
//  469       if(key_no==6)
??main_40:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BNE.W    ??main_48
//  470        {
//  471         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  472         BK=6;
        MOVS     R0,#+6
        LDR.N    R1,??main_0+0x28
        STRB     R0,[R1, #+0]
//  473         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_49
        Nop      
        DATA
??main_0:
        DC8      "Kp:"
        DC8      "Kd:"
        DC32     Pixel_F
        DC32     Pixel_Z
        DC32     `?<Constant "mode:1">`
        DC32     `?<Constant "s_H:2">`
        DC32     `?<Constant "s_L:3">`
        DC32     `?<Constant "Kp:4">`
        DC32     `?<Constant "Kd:5">`
        DC32     `?<Constant "QPX_SET:6">`
        DC32     BK
        DC32     `?<Constant "mode:">`
        DC32     mode
        DC32     `?<Constant "Key7">`
        DC32     `?<Constant "Key8">`
        DC32     `?<Constant "Key9">`
        DC32     speed_H
        DC32     speed_L
        DC32     0x419d999a
        DC32     Kp
        DC32     0x41a80000
        DC32     Kd
        DC32     0x3f4ccccd
        DC32     Kmax
        DC32     0x3f19999a
        DC32     Kmin
        DC32     0x41900000
        DC32     0x3f333333
        THUMB
//  474         while(BK==6)
//  475         {
//  476           delay_ms(110);
??main_50:
        MOVS     R0,#+110
        BL       delay_ms
//  477           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  478           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  479           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_51
//  480           {
//  481             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  482           }          
//  483           LCD_P8x16Str(0,0,"QPX_S:");
??main_51:
        LDR.W    R2,??main_18+0x24
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  484           LCD_P8x16_num3wei(60,0,QPX_SET);
        LDR.W    R0,??main_18+0x28
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  485           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_52     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  486           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  487           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_53     ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  488           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  489           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_53+0x4  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  490           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  491           
//  492           if(key_no==7)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_54
//  493           {
//  494             QPX_SET=QPX_SET+1;
        LDR.W    R0,??main_18+0x28
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??main_18+0x28
        STRH     R0,[R1, #+0]
//  495             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  496           }
//  497         
//  498           if(key_no==8)
??main_54:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_55
//  499           {
//  500             QPX_SET=QPX_SET-1;
        LDR.W    R0,??main_18+0x28
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??main_18+0x28
        STRH     R0,[R1, #+0]
//  501             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  502           }
//  503         
//  504           if(key_no==9)
??main_55:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_49
//  505           {
//  506             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  507             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  508           }
//  509         }
??main_49:
        LDR.W    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BEQ.N    ??main_50
//  510         LCD_CLS();
        BL       LCD_CLS
//  511        }
//  512      //10号按键按下 采集数据
//  513      if(key_no==10)
??main_48:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.W    ??main_5
//  514      {
//  515        key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  516        LCD_CLS();
        BL       LCD_CLS
//  517        break;
//  518      }
//  519    }   
//  520    
//  521    PID_SetKpid(Sp,Si,Sd);
        LDR.W    R0,??main_18+0x30
        LDR      R2,[R0, #+0]
        LDR.W    R0,??main_18+0x34
        LDR      R1,[R0, #+0]
        LDR.W    R0,??main_18+0x38
        LDR      R0,[R0, #+0]
        BL       PID_SetKpid
//  522    
//  523    //-----------------------------------------------------------------
//  524    //--------------------------一轮 按键调参--------------------------
//  525    //-----------------------------------------------------------------
//  526    while(1)
//  527    { 
//  528       //防止跳一轮调参
//  529       delay_ms(250);
??main_56:
        MOVS     R0,#+250
        BL       delay_ms
//  530       //user GUI
//  531       LCD_P8x16Str(0,0,"Psha:1");
        LDR.W    R2,??main_18+0x3C
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  532       LCD_P8x16Str(60,0,"Prz:2");
        LDR.W    R2,??main_18+0x40
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  533       LCD_P8x16Str(0,2,"PMAX:3");
        LDR.W    R2,??main_18+0x44
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  534       LCD_P8x16Str(0,4,"ZHONG:4");
        LDR.W    R2,??main_18+0x48
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  535       LCD_P8x16Str(60,4,"xianfu:5");
        LDR.W    R2,??main_18+0x4C
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  536       LCD_P8x16Str(0,6,"PO_ct:6");
        LDR.W    R2,??main_18+0x50
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  537       
//  538       matrix_keyboard_init();
        BL       matrix_keyboard_init
//  539       key_no=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  540       
//  541       delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  542 
//  543       //1号按键按下的时候调节Psha
//  544       if(key_no==1)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??main_57
//  545        {
//  546         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  547         BK=1;
        MOVS     R0,#+1
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  548         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_58
//  549         while(BK==1)
//  550         {
//  551           delay_ms(110);
??main_59:
        MOVS     R0,#+110
        BL       delay_ms
//  552           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  553           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  554           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_60
//  555           {
//  556             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  557           }          
//  558           LCD_P8x16Str(0,0,"Psha:");
??main_60:
        LDR.W    R2,??main_18+0x54
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  559           LCD_P8x16_num3wei(60,0,Psha);
        LDR.W    R0,??main_15
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  560           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_52     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  561           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  562           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_53     ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  563           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  564           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_53+0x4  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  565           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  566           
//  567           if(key_no==7)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_61
//  568           {
//  569             Psha=Psha+5;
        LDR.W    R0,??main_15
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_15
        STRH     R0,[R1, #+0]
//  570             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  571           }
//  572         
//  573           if(key_no==8)
??main_61:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_62
//  574           {
//  575             Psha=Psha-5;
        LDR.W    R0,??main_15
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_15
        STRH     R0,[R1, #+0]
//  576             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  577           }
//  578         
//  579           if(key_no==9)
??main_62:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_58
//  580           {
//  581             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  582             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  583           }
//  584         }
??main_58:
        LDR.W    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??main_59
//  585         LCD_CLS();
        BL       LCD_CLS
//  586        }
//  587       
//  588       //2号按键按下的时候调节Prz
//  589       if(key_no==2)
??main_57:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??main_63
//  590        {
//  591         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  592         BK=2;
        MOVS     R0,#+2
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  593         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_64
//  594         while(BK==2)
//  595         {
//  596           delay_ms(110);
??main_65:
        MOVS     R0,#+110
        BL       delay_ms
//  597           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  598           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  599           if(key_num!=255)
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_66
//  600           {
//  601             key_no=key_num;
        LDR.W    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  602           }          
//  603           LCD_P8x16Str(0,0,"Prz:");
??main_66:
        LDR.W    R2,??main_18+0x58
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  604           LCD_P8x16_num3wei(60,0,Abs(Prz));
        LDR.W    R0,??main_15+0x4
        LDRSH    R0,[R0, #+0]
        BL       Abs
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  605           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_52     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  606           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  607           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_53     ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  608           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  609           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_53+0x4  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  610           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  611           
//  612           if(key_no==7)
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_67
//  613           {
//  614             Prz=Prz+5;
        LDR.W    R0,??main_15+0x4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_15+0x4
        STRH     R0,[R1, #+0]
//  615             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  616           }
//  617         
//  618           if(key_no==8)
??main_67:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_68
//  619           {
//  620             Prz=Prz-5;
        LDR.W    R0,??main_15+0x4
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_15+0x4
        B.N      ??main_69
        Nop      
        DATA
??main_52:
        DC8      0x2B, 0x3A, 0x00, 0x00
        THUMB
??main_69:
        STRH     R0,[R1, #+0]
//  621             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_6
        STRB     R0,[R1, #+0]
//  622           }
//  623         
//  624           if(key_no==9)
??main_68:
        LDR.W    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_64
//  625           {
//  626             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  627             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  628           }
//  629         }
??main_64:
        LDR.W    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??main_65
//  630         LCD_CLS();
        BL       LCD_CLS
//  631        }
//  632       
//  633       //3号按键按下的时候调节PMAX
//  634       if(key_no==3)
??main_63:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??main_70
//  635        {
//  636         key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  637         BK=3;
        MOVS     R0,#+3
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  638         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_71
//  639         while(BK==3)
//  640         {
//  641           delay_ms(110);
??main_72:
        MOVS     R0,#+110
        BL       delay_ms
//  642           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  643           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  644           if(key_num!=255)
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_73
//  645           {
//  646             key_no=key_num;
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  647           }          
//  648           LCD_P8x16Str(0,0,"PMAX:");
??main_73:
        LDR.W    R2,??main_74
        B.N      ??main_75
        Nop      
        DATA
??main_53:
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
??main_75:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  649           LCD_P8x16_num3wei(60,0,PMAX);
        LDR.W    R0,??main_74+0x4
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  650           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_6+0x4  ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  651           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  652           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_6+0x8  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  653           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  654           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_6+0x10  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  655           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  656           
//  657           if(key_no==7)
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_76
//  658           {
//  659             PMAX=PMAX+5;
        LDR.W    R0,??main_74+0x4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_74+0x4
        STRH     R0,[R1, #+0]
//  660             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  661           }
//  662         
//  663           if(key_no==8)
??main_76:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_77
//  664           {
//  665             PMAX=PMAX-5;
        LDR.W    R0,??main_74+0x4
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_74+0x4
        STRH     R0,[R1, #+0]
//  666             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  667           }
//  668         
//  669           if(key_no==9)
??main_77:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_71
//  670           {
//  671             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  672             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  673           }
//  674         }
??main_71:
        LDR.W    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??main_72
//  675         LCD_CLS();
        BL       LCD_CLS
//  676        }
//  677       //4号按键按下的时候调节ZHONG
//  678       if(key_no==4)
??main_70:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??main_78
//  679        {
//  680         key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  681         BK=4;
        MOVS     R0,#+4
        LDR.W    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  682         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_79
//  683         while(BK==4)
//  684         {
//  685           LCD_P8x16Str(0,0,"ZHONG:");
??main_80:
        LDR.W    R2,??main_81
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  686           LCD_P8x16_number_4(60,0,(uint16)ZHONG);
        LDR.W    R0,??main_81+0x4
        LDRSH    R2,[R0, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_number_4
//  687           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_6+0x4  ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  688           LCD_P8x16Str(60,2,"Key7");
        LDR.W    R2,??main_81+0x8
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  689           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_6+0x8  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  690           LCD_P8x16Str(60,4,"Key8");
        LDR.W    R2,??main_81+0xC
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  691           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_6+0x10  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  692           LCD_P8x16Str(60,6,"Key9");
        LDR.W    R2,??main_81+0x10
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  693           
//  694           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  695           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  696           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  697           if(key_num!=255)
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_82
//  698           {
//  699             key_no=key_num;
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  700           }          
//  701 
//  702           if(key_no==7)
??main_82:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_83
//  703           {
//  704             ZHONG=ZHONG+5;
        LDR.W    R0,??main_81+0x4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_81+0x4
        STRH     R0,[R1, #+0]
//  705             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  706           }
//  707         
//  708           if(key_no==8)
??main_83:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_84
//  709           {
//  710             ZHONG=ZHONG-5;
        LDR.W    R0,??main_81+0x4
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_81+0x4
        STRH     R0,[R1, #+0]
//  711             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  712           }
//  713         
//  714           if(key_no==9)
??main_84:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_79
//  715           {
//  716             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  717             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  718             key_num=255;//注意控制条件
        MOVS     R0,#+255
        LDR.N    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  719           }
//  720         }
??main_79:
        LDR.N    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.N    ??main_80
//  721         LCD_CLS();
        BL       LCD_CLS
//  722       }
//  723       //5号按键按下的时候调节xianfu
//  724       if(key_no==5)
??main_78:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??main_85
//  725        {
//  726         key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  727         BK=5;
        MOVS     R0,#+5
        LDR.N    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  728         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_86
//  729         while(BK==5)
//  730         {
//  731           delay_ms(110);
??main_87:
        MOVS     R0,#+110
        BL       delay_ms
//  732           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  733           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  734           if(key_num!=255)
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_88
//  735           {
//  736             key_no=key_num;
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  737           }          
//  738           LCD_P8x16Str(0,0,"xianfu:");
??main_88:
        LDR.W    R2,??main_81+0x14
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  739           LCD_P8x16_number_4(60,0,xianfu);
        LDR.W    R0,??main_81+0x18
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_number_4
//  740           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_6+0x4  ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  741           LCD_P8x16Str(60,2,"Key4");
        LDR.N    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  742           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_6+0x8  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  743           LCD_P8x16Str(60,4,"Key5");
        LDR.N    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  744           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_6+0x10  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  745           LCD_P8x16Str(60,6,"Key6");
        LDR.N    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  746           
//  747           if(key_no==7)
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_89
//  748           {
//  749             xianfu=xianfu+5;
        LDR.W    R0,??main_81+0x18
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_81+0x18
        STRH     R0,[R1, #+0]
//  750             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  751           }
//  752         
//  753           if(key_no==8)
??main_89:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_90
//  754           {
//  755             xianfu=xianfu-5;
        LDR.W    R0,??main_81+0x18
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_81+0x18
        STRH     R0,[R1, #+0]
//  756             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  757           }
//  758         
//  759           if(key_no==9)
??main_90:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_86
//  760           {
//  761             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  762             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  763           }
//  764         }
??main_86:
        LDR.N    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.N    ??main_87
//  765         LCD_CLS();
        BL       LCD_CLS
//  766        }
//  767       //6号按键按下的时候调节PO_ct
//  768       if(key_no==6)
??main_85:
        LDR.N    R0,??main_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BNE.W    ??main_91
//  769        {
//  770         key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  771         BK=6;
        MOVS     R0,#+6
        LDR.N    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  772         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_92
//  773         while(BK==6)
//  774         {
//  775           delay_ms(110);
??main_93:
        MOVS     R0,#+110
        BL       delay_ms
//  776           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  777           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_6+0xC
        STRB     R0,[R1, #+0]
//  778           if(key_num!=255)
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_94
//  779           {
//  780             key_no=key_num;
        LDR.N    R0,??main_6+0xC
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_6
        STRB     R0,[R1, #+0]
//  781           }          
//  782           LCD_P8x16Str(0,0,"PO_ct:");
??main_94:
        LDR.W    R2,??main_81+0x1C
        B.N      ??main_95
        Nop      
        DATA
??main_6:
        DC32     key_no
        DC8      0x2B, 0x3A, 0x00, 0x00
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC32     key_num
        DC8      "Re:"
        THUMB
??main_95:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  783           LCD_P8x16_num3wei(60,0,PO_ct);
        LDR.W    R0,??main_81+0x20
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  784           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_96     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  785           LCD_P8x16Str(60,2,"Key4");
        LDR.N    R2,??main_18+0xC
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  786           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_96+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  787           LCD_P8x16Str(60,4,"Key5");
        LDR.N    R2,??main_18+0x10
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  788           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_96+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  789           LCD_P8x16Str(60,6,"Key6");
        LDR.N    R2,??main_18+0x14
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  790           
//  791           if(key_no==7)
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_97
//  792           {
//  793             PO_ct=PO_ct+5;
        LDR.W    R0,??main_81+0x20
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??main_81+0x20
        STRH     R0,[R1, #+0]
//  794             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  795           }
//  796         
//  797           if(key_no==8)
??main_97:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_98
//  798           {
//  799             PO_ct=PO_ct-5;
        LDR.W    R0,??main_81+0x20
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??main_81+0x20
        STRH     R0,[R1, #+0]
//  800             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  801           }
//  802         
//  803           if(key_no==9)
??main_98:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_92
//  804           {
//  805             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  806             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  807           }
//  808         }
??main_92:
        LDR.N    R0,??main_18+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BEQ.N    ??main_93
//  809         LCD_CLS();
        BL       LCD_CLS
//  810        }
//  811      //10号按键按下 采集数据
//  812      if(key_no==10)
??main_91:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.W    ??main_56
//  813      {
//  814        key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  815        LCD_CLS();
        BL       LCD_CLS
//  816        break;
//  817      }
//  818    }
//  819    
//  820    
//  821    //-----------------------------------------------------------------
//  822    //--------------------------第二轮 按键调参--------------------------
//  823    //-----------------------------------------------------------------
//  824    while(1)
//  825    { 
//  826      //防止跳二轮调参
//  827       delay_ms(250);
??main_99:
        MOVS     R0,#+250
        BL       delay_ms
//  828       
//  829       //user GUI
//  830       LCD_P8x16Str(0,0,"d_p:1");
        LDR.W    R2,??main_81+0x28
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  831       LCD_P8x16Str(60,0,"chu:2");
        LDR.W    R2,??main_81+0x2C
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  832       LCD_P8x16Str(0,2,"BLsha:3");
        LDR.W    R2,??main_81+0x30
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  833       LCD_P8x16Str(60,2,"Kmax");
        LDR.W    R2,??main_81+0x34
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  834       LCD_P8x16Str(0,4,"Kmin");
        LDR.W    R2,??main_81+0x38
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  835       LCD_P8x16Str(60,4,"Pmax:6");
        LDR.W    R2,??main_81+0x3C
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  836       
//  837       matrix_keyboard_init();
        BL       matrix_keyboard_init
//  838       key_no=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  839       
//  840       delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  841 
//  842       //1号按键按下的时候调节d_p
//  843       if(key_no==1)
        LDR.W    R0,??main_81+0x24
        B.N      ??main_100
        DATA
??main_15:
        DC32     Psha
        DC32     Prz
        THUMB
??main_100:
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??main_101
//  844        {
//  845         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  846         BK=1;
        MOVS     R0,#+1
        LDR.N    R1,??main_18+0x2C
        STRB     R0,[R1, #+0]
//  847         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_102
        DATA
??main_18:
        DC32     0x41880000
        DC32     0x3ecccccd
        DC32     `?<Constant "Speed_H:">`
        DC32     `?<Constant "Key4">`
        DC32     `?<Constant "Key5">`
        DC32     `?<Constant "Key6">`
        DC32     `?<Constant "Speed_L:">`
        DC32     0x41200000
        DC32     0x9999999a
        DC32     `?<Constant "QPX_S:">`
        DC32     QPX_SET
        DC32     BK
        DC32     Sd
        DC32     Si
        DC32     `Sp`
        DC32     `?<Constant "Psha:1">`
        DC32     `?<Constant "Prz:2">`
        DC32     `?<Constant "PMAX:3">`
        DC32     `?<Constant "ZHONG:4">`
        DC32     `?<Constant "xianfu:5">`
        DC32     `?<Constant "PO_ct:6">`
        DC32     `?<Constant "Psha:">`
        DC32     `?<Constant "Prz:">`
        THUMB
//  848         while(BK==1)
//  849         {
//  850           LCD_P8x16Str(0,0,"d_p:");
??main_103:
        LDR.W    R2,??main_81+0x40
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  851           LCD_P8x16_number_4(60,0,d_p);
        LDR.W    R0,??main_81+0x44
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_number_4
//  852           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_96     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  853           LCD_P8x16Str(60,2,"Key7");
        LDR.W    R2,??main_81+0x8
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  854           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_96+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  855           LCD_P8x16Str(60,4,"Key8");
        LDR.W    R2,??main_81+0xC
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  856           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_96+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  857           LCD_P8x16Str(60,6,"Key9");
        LDR.W    R2,??main_81+0x10
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  858           
//  859           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  860           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  861           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
//  862           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_105
//  863           {
//  864             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  865           }          
//  866 
//  867           if(key_no==7)
??main_105:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_106
//  868           {
//  869             d_p=d_p+1;
        LDR.W    R0,??main_81+0x44
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??main_81+0x44
        STRB     R0,[R1, #+0]
//  870             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  871           }
//  872         
//  873           if(key_no==8)
??main_106:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_107
//  874           {
//  875             d_p=d_p-1;
        LDR.W    R0,??main_81+0x44
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??main_81+0x44
        STRB     R0,[R1, #+0]
//  876             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  877           }
//  878         
//  879           if(key_no==9)
??main_107:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_102
//  880           {
//  881             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
//  882             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  883             key_num=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
//  884           }
//  885         }
??main_102:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??main_103
//  886         LCD_CLS();
        BL       LCD_CLS
//  887       }
//  888       
//  889       //2号按键按下的时候调节chu
//  890       if(key_no==2)
??main_101:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??main_108
//  891        {
//  892         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  893         BK=2;
        MOVS     R0,#+2
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
//  894         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_109
//  895         while(BK==2)
//  896         {
//  897           delay_ms(110);
??main_110:
        MOVS     R0,#+110
        BL       delay_ms
//  898           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  899           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
//  900           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_111
//  901           {
//  902             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  903           }          
//  904           LCD_P8x16Str(0,0,"chu:");
??main_111:
        LDR.W    R2,??main_104+0x8
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  905           LCD_P8x16_num3wei(60,0,(uint16)(chu*10));
        LDR.W    R0,??main_104+0xC
        LDR      R0,[R0, #+0]
        LDR.W    R1,??main_104+0x10  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  906           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_96     ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  907           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_104+0x14
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  908           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_96+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  909           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_104+0x18
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  910           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_96+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  911           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_104+0x1C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  912           
//  913           if(key_no==7)
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_112
//  914           {
//  915             chu=chu+0.1;
        LDR.W    R0,??main_104+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??main_104+0x24  ;; 0x9999999a
        LDR.N    R3,??main_38     ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??main_104+0xC
        STR      R0,[R1, #+0]
//  916             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  917           }
//  918         
//  919           if(key_no==8)
??main_112:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_113
//  920           {
//  921             chu=chu-0.1;
        LDR.W    R0,??main_104+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??main_104+0x24  ;; 0x9999999a
        LDR.N    R3,??main_38+0x4  ;; 0xbfb99999
        B.N      ??main_114
        Nop      
        DATA
??main_96:
        DC8      0x2B, 0x3A, 0x00, 0x00
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
??main_114:
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??main_104+0xC
        STR      R0,[R1, #+0]
//  922             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  923           }
//  924         
//  925           if(key_no==9)
??main_113:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_109
//  926           {
//  927             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
//  928             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  929           }
//  930         }
??main_109:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.W    ??main_110
//  931         LCD_CLS();
        BL       LCD_CLS
//  932        }
//  933       //3号按键按下的时候调节BLsha
//  934       if(key_no==3)
??main_108:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??main_115
//  935        {
//  936         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  937         BK=3;
        MOVS     R0,#+3
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
//  938         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_116
//  939         while(BK==3)
//  940         {
//  941           delay_ms(110);
??main_117:
        MOVS     R0,#+110
        BL       delay_ms
//  942           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  943           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
//  944           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_118
//  945           {
//  946             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  947           }          
//  948           LCD_P8x16Str(0,0,"BLsha:");
??main_118:
        LDR.W    R2,??DataTable0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  949           LCD_P8x16_num3wei(60,0,BLsha);
        LDR.W    R0,??DataTable0_1
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  950           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_119    ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  951           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_104+0x14
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  952           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_119+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  953           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_104+0x18
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  954           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_119+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  955           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_104+0x1C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  956           
//  957           if(key_no==7)
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_120
//  958           {
//  959             BLsha=BLsha+1;
        LDR.W    R0,??DataTable0_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable0_1
        STRB     R0,[R1, #+0]
//  960             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  961           }
//  962         
//  963           if(key_no==8)
??main_120:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_121
//  964           {
//  965             BLsha=BLsha-1;
        LDR.W    R0,??DataTable0_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable0_1
        B.N      ??main_122
        DATA
??main_38:
        DC32     0x3fb99999
        DC32     0xbfb99999
        THUMB
??main_122:
        STRB     R0,[R1, #+0]
//  966             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  967           }
//  968         
//  969           if(key_no==9)
??main_121:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_116
//  970           {
//  971             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
//  972             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  973           }
//  974         }
??main_116:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??main_117
//  975         LCD_CLS();
        BL       LCD_CLS
//  976        }
//  977       
//  978       //4号按键按下的时候调节Kmax
//  979       if(key_no==4)
??main_115:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??main_123
//  980        {
//  981         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
//  982         BK=4;
        MOVS     R0,#+4
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
//  983         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_124
//  984         while(BK==4)
//  985         {
//  986           LCD_P8x16Str(0,0,"Kmax:");
??main_125:
        LDR.W    R2,??DataTable0_2
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  987           LCD_P8x16_num3wei(60,0,(uint16)(Kmax*100));
        LDR.W    R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable0_4  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
//  988           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_119    ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  989           LCD_P8x16Str(60,2,"Key7");
        LDR.W    R2,??main_81+0x8
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  990           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_119+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  991           LCD_P8x16Str(60,4,"Key8");
        LDR.W    R2,??main_81+0xC
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  992           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_119+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
//  993           LCD_P8x16Str(60,6,"Key9");
        LDR.W    R2,??main_81+0x10
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
//  994           
//  995           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
//  996           matrix_keyboard_init();
        BL       matrix_keyboard_init
//  997           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
//  998           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_126
//  999           {
// 1000             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1001           }          
// 1002 
// 1003           if(key_no==7)
??main_126:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_127
// 1004           {
// 1005             Kmax=Kmax+0.01;
        LDR.W    R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable0_5  ;; 0x47ae147b
        LDR.W    R3,??DataTable0_6  ;; 0x3f847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable0_3
        STR      R0,[R1, #+0]
// 1006             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1007           }
// 1008         
// 1009           if(key_no==8)
??main_127:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_128
// 1010           {
// 1011             Kmax=Kmax-0.01;
        LDR.W    R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable0_5  ;; 0x47ae147b
        LDR.W    R3,??DataTable0_7  ;; 0xbf847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable0_3
        STR      R0,[R1, #+0]
// 1012             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1013           }
// 1014         
// 1015           if(key_no==9)
??main_128:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_124
// 1016           {
// 1017             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1018             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1019             key_num=255;//注意控制条件
        MOVS     R0,#+255
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1020           }
// 1021         }
??main_124:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.W    ??main_125
// 1022         LCD_CLS();
        BL       LCD_CLS
// 1023       }
// 1024       //5号按键按下的时候调节Kmin
// 1025       if(key_no==5)
??main_123:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.W    ??main_129
// 1026        {
// 1027         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1028         BK=5;
        MOVS     R0,#+5
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1029         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_130
// 1030         while(BK==5)
// 1031         {
// 1032           delay_ms(110);
??main_131:
        MOVS     R0,#+110
        BL       delay_ms
// 1033           matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1034           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1035           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_132
// 1036           {
// 1037             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1038           }          
// 1039           LCD_P8x16Str(0,0,"Kmin:");
??main_132:
        LDR.W    R2,??DataTable1
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1040           LCD_P8x16_num3wei(60,0,(uint16)(Kmin*100));
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable0_4  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
// 1041           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_119    ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1042           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_104+0x14
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1043           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_119+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1044           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_104+0x18
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1045           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_119+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1046           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_104+0x1C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1047           
// 1048           if(key_no==7)
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_133
// 1049           {
// 1050             Kmin=Kmin+0.01;
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable0_5  ;; 0x47ae147b
        LDR.W    R3,??DataTable0_6  ;; 0x3f847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable1_2
        STR      R0,[R1, #+0]
// 1051             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1052           }
// 1053         
// 1054           if(key_no==8)
??main_133:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_134
// 1055           {
// 1056             Kmin=Kmin-0.01;
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable0_5  ;; 0x47ae147b
        LDR.W    R3,??DataTable0_7  ;; 0xbf847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable1_2
        STR      R0,[R1, #+0]
// 1057             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1058           }
// 1059         
// 1060           if(key_no==9)
??main_134:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_130
// 1061           {
// 1062             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1063             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1064           }
// 1065         }
??main_130:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.W    ??main_131
// 1066         LCD_CLS();
        BL       LCD_CLS
// 1067        }
// 1068       //6号按键按下的时候调节Pmax
// 1069       if(key_no==6)
??main_129:
        LDR.W    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BNE.W    ??main_135
// 1070        {
// 1071         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1072         BK=6;
        MOVS     R0,#+6
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1073         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_136
// 1074         while(BK==6)
// 1075         {
// 1076           delay_ms(110);
??main_137:
        MOVS     R0,#+110
        BL       delay_ms
// 1077           matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1078           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1079           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_138
// 1080           {
// 1081             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1082           }          
// 1083           LCD_P8x16Str(0,0,"Pmax:");
??main_138:
        LDR.W    R2,??DataTable1_3
        B.N      ??main_139
        DATA
??main_119:
        DC8      0x2B, 0x3A, 0x00, 0x00
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
??main_139:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1084           LCD_P8x16_num3wei(60,0,Pmax);
        LDR.W    R0,??DataTable1_4
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
// 1085           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_74+0x8  ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1086           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_104+0x14
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1087           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_74+0xC  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1088           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_104+0x18
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1089           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_74+0x10  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1090           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_104+0x1C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1091           
// 1092           if(key_no==7)
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_140
// 1093           {
// 1094             Pmax=Pmax+5;
        LDR.W    R0,??DataTable1_4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
// 1095             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1096           }
// 1097         
// 1098           if(key_no==8)
??main_140:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_141
// 1099           {
// 1100             Pmax=Pmax-5;
        LDR.W    R0,??DataTable1_4
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
// 1101             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1102           }
// 1103         
// 1104           if(key_no==9)
??main_141:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_136
// 1105           {
// 1106             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1107             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1108           }
// 1109         }
??main_136:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BEQ.N    ??main_137
// 1110         LCD_CLS();
        BL       LCD_CLS
// 1111        }
// 1112      //10号按键按下 采集数据
// 1113      if(key_no==10)
??main_135:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.W    ??main_99
// 1114      {
// 1115        key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1116        LCD_CLS();
        BL       LCD_CLS
// 1117        break;
// 1118      }
// 1119    }   
// 1120    //-----------------------------------------------------------------
// 1121    //--------------------------第三轮 按键调参--------------------------
// 1122    //-----------------------------------------------------------------
// 1123    while(1)
// 1124    { 
// 1125      //防止跳二轮调参
// 1126       delay_ms(250);
??main_142:
        MOVS     R0,#+250
        BL       delay_ms
// 1127       
// 1128       //user GUI
// 1129       LCD_P8x16Str(0,0,"sh_x:1");
        LDR.W    R2,??DataTable1_5
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1130       LCD_P8x16Str(60,0,"fch_mo:2");
        LDR.W    R2,??DataTable1_6
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1131       LCD_P8x16Str(0,2,"POshen:3");
        LDR.W    R2,??DataTable1_7
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1132       LCD_P8x16Str(60,2,"shmode:4");
        LDR.W    R2,??DataTable1_8
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1133       //LCD_P8x16Str(0,4,"Kmin");
// 1134       //LCD_P8x16Str(60,4,"Pmax:6");
// 1135       
// 1136       matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1137       key_no=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1138       
// 1139       delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
// 1140 
// 1141       //1号按键按下的时候调节sh_x
// 1142       if(key_no==1)
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_143
// 1143        {
// 1144         key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1145         BK=1;
        MOVS     R0,#+1
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1146         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_144
// 1147         while(BK==1)
// 1148         {
// 1149           LCD_P8x16Str(0,0,"sh_x:");
??main_145:
        LDR.W    R2,??DataTable1_9
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1150           LCD_P8x16_number_4(60,0,sh_x);
        LDR.W    R0,??DataTable1_10
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_number_4
// 1151           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_74+0x8  ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1152           LCD_P8x16Str(60,2,"Key7");
        LDR.N    R2,??main_81+0x8
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1153           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_74+0xC  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1154           LCD_P8x16Str(60,4,"Key8");
        LDR.N    R2,??main_81+0xC
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1155           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_74+0x10  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1156           LCD_P8x16Str(60,6,"Key9");
        LDR.N    R2,??main_81+0x10
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1157           
// 1158           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
// 1159           matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1160           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1161           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_146
// 1162           {
// 1163             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1164           }          
// 1165 
// 1166           if(key_no==7)
??main_146:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_147
// 1167           {
// 1168             sh_x=sh_x+1;
        LDR.W    R0,??DataTable1_10
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_10
        STRB     R0,[R1, #+0]
// 1169             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1170           }
// 1171         
// 1172           if(key_no==8)
??main_147:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_148
// 1173           {
// 1174             sh_x=sh_x-1;
        LDR.W    R0,??DataTable1_10
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable1_10
        STRB     R0,[R1, #+0]
// 1175             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1176           }
// 1177         
// 1178           if(key_no==9)
??main_148:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_144
// 1179           {
// 1180             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1181             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1182             key_num=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1183           }
// 1184         }
??main_144:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??main_145
// 1185         LCD_CLS();
        BL       LCD_CLS
// 1186       }
// 1187       
// 1188       //2号按键按下的时候调节fch_mo
// 1189       if(key_no==2)
??main_143:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??main_149
// 1190        {
// 1191         key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1192         BK=2;
        MOVS     R0,#+2
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1193         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_150
        Nop      
        DATA
??main_74:
        DC32     `?<Constant "PMAX:">`
        DC32     PMAX
        DC8      0x2B, 0x3A, 0x00, 0x00
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
// 1194         while(BK==2)
// 1195         {
// 1196           delay_ms(110);
??main_151:
        MOVS     R0,#+110
        BL       delay_ms
// 1197           matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1198           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1199           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_152
// 1200           {
// 1201             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1202           }          
// 1203           LCD_P8x16Str(0,0,"fch_mo:");
??main_152:
        LDR.W    R2,??DataTable1_11
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1204           LCD_P8x16_num3wei(60,0,fch_mo);
        LDR.W    R0,??DataTable1_12
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
// 1205           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_153    ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1206           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_104+0x14
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1207           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_153+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1208           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_104+0x18
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1209           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_153+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1210           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_104+0x1C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1211           
// 1212           if(key_no==7)
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_154
// 1213           {
// 1214             fch_mo=fch_mo+1;
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
// 1215             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1216           }
// 1217         
// 1218           if(key_no==8)
??main_154:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_155
// 1219           {
// 1220             fch_mo=fch_mo-1;
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
// 1221             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1222           }
// 1223         
// 1224           if(key_no==9)
??main_155:
        LDR.N    R0,??main_81+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_150
// 1225           {
// 1226             BK=255;
        MOVS     R0,#+255
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1227             key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_81+0x24
        STRB     R0,[R1, #+0]
// 1228           }
// 1229         }
??main_150:
        LDR.W    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??main_151
// 1230         LCD_CLS();
        BL       LCD_CLS
// 1231        }
// 1232       
// 1233       if(fch_mo==1)
??main_149:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_156
// 1234         fch_dp2=81;
        MOVS     R0,#+81
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
        B.N      ??main_157
// 1235       else if(fch_mo==2)
??main_156:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??main_158
// 1236         fch_dp2=100;
        MOVS     R0,#+100
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
        B.N      ??main_157
// 1237       else if(fch_mo==3)
??main_158:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??main_159
// 1238         fch_dp2=121;
        MOVS     R0,#+121
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
        B.N      ??main_157
// 1239       else if(fch_mo==4)
??main_159:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??main_160
// 1240         fch_dp2=144;
        MOVS     R0,#+144
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
        B.N      ??main_157
// 1241       else if(fch_mo==5)
??main_160:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??main_161
// 1242         fch_dp2=169;
        MOVS     R0,#+169
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
        B.N      ??main_157
// 1243       else if(fch_mo==6)
??main_161:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BNE.N    ??main_162
// 1244         fch_dp2=196;
        MOVS     R0,#+196
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
        B.N      ??main_157
        DATA
??main_81:
        DC32     `?<Constant "ZHONG:">`
        DC32     ZHONG
        DC32     `?<Constant "Key7">`
        DC32     `?<Constant "Key8">`
        DC32     `?<Constant "Key9">`
        DC32     `?<Constant "xianfu:">`
        DC32     xianfu
        DC32     `?<Constant "PO_ct:">`
        DC32     PO_ct
        DC32     key_no
        DC32     `?<Constant "d_p:1">`
        DC32     `?<Constant "chu:2">`
        DC32     `?<Constant "BLsha:3">`
        DC32     `?<Constant "Kmax">`
        DC32     `?<Constant "Kmin">`
        DC32     `?<Constant "Pmax:6">`
        DC32     `?<Constant "d_p:">`
        DC32     d_p
        THUMB
// 1245       else if(fch_mo==7)
??main_162:
        LDR.W    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_157
// 1246         fch_dp2=225;
        MOVS     R0,#+225
        LDR.W    R1,??DataTable1_13
        STRH     R0,[R1, #+0]
// 1247       
// 1248       //3号按键按下的时候调节POshaen
// 1249       if(key_no==3)
??main_157:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??main_163
// 1250        {
// 1251         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1252         BK=3;
        MOVS     R0,#+3
        LDR.W    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1253         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_164
// 1254         while(BK==3)
// 1255         {
// 1256           delay_ms(110);
??main_165:
        MOVS     R0,#+110
        BL       delay_ms
// 1257           matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1258           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.W    R1,??main_104
        STRB     R0,[R1, #+0]
// 1259           if(key_num!=255)
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_166
// 1260           {
// 1261             key_no=key_num;
        LDR.W    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1262           }          
// 1263           LCD_P8x16Str(0,0,"POshaen:");
??main_166:
        LDR.W    R2,??DataTable1_15
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1264           LCD_P8x16_num3wei(60,0,POshaen);
        LDR.W    R0,??DataTable1_16
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
// 1265           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_153    ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1266           LCD_P8x16Str(60,2,"Key4");
        LDR.W    R2,??main_104+0x14
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1267           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_153+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1268           LCD_P8x16Str(60,4,"Key5");
        LDR.W    R2,??main_104+0x18
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1269           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_153+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1270           LCD_P8x16Str(60,6,"Key6");
        LDR.W    R2,??main_104+0x1C
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1271           
// 1272           if(key_no==7)
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_167
// 1273           {
// 1274             POshaen=POshaen+1;
        LDR.W    R0,??DataTable1_16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_16
        STRB     R0,[R1, #+0]
// 1275             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1276           }
// 1277         
// 1278           if(key_no==8)
??main_167:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_168
// 1279           {
// 1280             POshaen=POshaen-1;
        LDR.W    R0,??DataTable1_16
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable1_16
        STRB     R0,[R1, #+0]
// 1281             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1282           }
// 1283         
// 1284           if(key_no==9)
??main_168:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_164
// 1285           {
// 1286             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1287             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1288           }
// 1289         }
??main_164:
        LDR.N    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??main_165
// 1290         LCD_CLS();
        BL       LCD_CLS
// 1291        }
// 1292       
// 1293       //4号按键按下的时候调节shmode
// 1294       if(key_no==4)
??main_163:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??main_169
// 1295        {
// 1296         key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1297         BK=4;
        MOVS     R0,#+4
        LDR.N    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1298         LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_170
// 1299         while(BK==4)
// 1300         {
// 1301           LCD_P8x16Str(0,0,"shmode:");
??main_171:
        LDR.W    R2,??DataTable1_17
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1302           LCD_P8x16_num3wei(60,0,shmode);
        LDR.W    R0,??DataTable1_18
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_P8x16_num3wei
// 1303           LCD_P8x16Str(0,2,"+:");
        ADR.N    R2,??main_153    ;; 0x2B, 0x3A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1304           LCD_P8x16Str(60,2,"Key7");
        LDR.W    R2,??DataTable1_19
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1305           LCD_P8x16Str(0,4,"-:");
        ADR.N    R2,??main_153+0x4  ;; 0x2D, 0x3A, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1306           LCD_P8x16Str(60,4,"Key8");
        LDR.W    R2,??DataTable1_20
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1307           LCD_P8x16Str(0,6,"Re:");
        ADR.N    R2,??main_153+0x8  ;; "Re:"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1308           LCD_P8x16Str(60,6,"Key9");
        LDR.W    R2,??DataTable1_21
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
// 1309           
// 1310           delay_ms(110);
        MOVS     R0,#+110
        BL       delay_ms
// 1311           matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1312           key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_104
        STRB     R0,[R1, #+0]
// 1313           if(key_num!=255)
        LDR.N    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_172
// 1314           {
// 1315             key_no=key_num;
        LDR.N    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1316           }          
// 1317 
// 1318           if(key_no==7)
??main_172:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BNE.N    ??main_173
// 1319           {
// 1320             shmode=shmode+1;
        LDR.W    R0,??DataTable1_18
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_18
        STRB     R0,[R1, #+0]
// 1321             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1322           }
// 1323         
// 1324           if(key_no==8)
??main_173:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BNE.N    ??main_174
// 1325           {
// 1326             shmode=shmode-1;
        LDR.W    R0,??DataTable1_18
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable1_18
        B.N      ??main_175
        Nop      
        DATA
??main_153:
        DC8      0x2B, 0x3A, 0x00, 0x00
        DC8      0x2D, 0x3A, 0x00, 0x00
        DC8      "Re:"
        THUMB
??main_175:
        STRB     R0,[R1, #+0]
// 1327             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1328           }
// 1329         
// 1330           if(key_no==9)
??main_174:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??main_170
// 1331           {
// 1332             BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1333             key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1334             key_num=255;//注意控制条件
        MOVS     R0,#+255
        LDR.N    R1,??main_104
        STRB     R0,[R1, #+0]
// 1335           }
// 1336         }
??main_170:
        LDR.N    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.N    ??main_171
// 1337         LCD_CLS();
        BL       LCD_CLS
// 1338       }
// 1339       //5号按键按下的时候调节Kmin
// 1340       /*if(key_no==5)
// 1341        {
// 1342         key_no=255;
// 1343         BK=5;
// 1344         LCD_CLS();
// 1345         while(BK==5)
// 1346         {
// 1347           delay_ms(110);
// 1348           matrix_keyboard_init();
// 1349           key_num=keyboard_scan();
// 1350           if(key_num!=255)
// 1351           {
// 1352             key_no=key_num;
// 1353           }          
// 1354           LCD_P8x16Str(0,0,"Kmin:");
// 1355           LCD_P8x16_num3wei(60,0,(uint16)(Kmin*100));
// 1356           LCD_P8x16Str(0,2,"+:");
// 1357           LCD_P8x16Str(60,2,"Key4");
// 1358           LCD_P8x16Str(0,4,"-:");
// 1359           LCD_P8x16Str(60,4,"Key5");
// 1360           LCD_P8x16Str(0,6,"Re:");
// 1361           LCD_P8x16Str(60,6,"Key6");
// 1362           
// 1363           if(key_no==7)
// 1364           {
// 1365             Kmin=Kmin+0.01;
// 1366             key_no=255;
// 1367           }
// 1368         
// 1369           if(key_no==8)
// 1370           {
// 1371             Kmin=Kmin-0.01;
// 1372             key_no=255;
// 1373           }
// 1374         
// 1375           if(key_no==9)
// 1376           {
// 1377             BK=255;
// 1378             key_no=255;
// 1379           }
// 1380         }
// 1381         LCD_CLS();
// 1382        }
// 1383       //6号按键按下的时候调节Pmax
// 1384       if(key_no==6)
// 1385        {
// 1386         key_no=255;
// 1387         BK=6;
// 1388         LCD_CLS();
// 1389         while(BK==6)
// 1390         {
// 1391           delay_ms(110);
// 1392           matrix_keyboard_init();
// 1393           key_num=keyboard_scan();
// 1394           if(key_num!=255)
// 1395           {
// 1396             key_no=key_num;
// 1397           }          
// 1398           LCD_P8x16Str(0,0,"Pmax:");
// 1399           LCD_P8x16_num3wei(60,0,Pmax);
// 1400           LCD_P8x16Str(0,2,"+:");
// 1401           LCD_P8x16Str(60,2,"Key4");
// 1402           LCD_P8x16Str(0,4,"-:");
// 1403           LCD_P8x16Str(60,4,"Key5");
// 1404           LCD_P8x16Str(0,6,"Re:");
// 1405           LCD_P8x16Str(60,6,"Key6");
// 1406           
// 1407           if(key_no==7)
// 1408           {
// 1409             Pmax=Pmax+5;
// 1410             key_no=255;
// 1411           }
// 1412         
// 1413           if(key_no==8)
// 1414           {
// 1415             Pmax=Pmax-5;
// 1416             key_no=255;
// 1417           }
// 1418         
// 1419           if(key_no==9)
// 1420           {
// 1421             BK=255;
// 1422             key_no=255;
// 1423           }
// 1424         }
// 1425         LCD_CLS();
// 1426        }*/
// 1427      //10号按键按下 采集数据
// 1428      if(key_no==10)
??main_169:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.W    ??main_142
// 1429      {
// 1430        key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1431        LCD_CLS();
        BL       LCD_CLS
// 1432        break;
// 1433      }
// 1434    }   
// 1435 
// 1436    //------------------------------------------------------------
// 1437    //-------------------初始采集循环，等待1ms中断------------------
// 1438    //------------------------------------------------------------
// 1439    while(1)
// 1440    {  
// 1441      if(zhming==1)
??main_176:
        LDR.W    R0,??DataTable1_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_177
// 1442      {
// 1443       LCD_P8x16Str(0,0,"cj");
        ADR.N    R2,??main_104+0x20  ;; 0x63, 0x6A, 0x00, 0x00
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_P8x16Str
// 1444       delay_ms(250);
        MOVS     R0,#+250
        BL       delay_ms
// 1445       LCD_CLS();
        BL       LCD_CLS
// 1446      }
// 1447      zhming=2;
??main_177:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable1_22
        STRB     R0,[R1, #+0]
// 1448 
// 1449     Motor_Lock = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_23
        STRH     R0,[R1, #+0]
// 1450     Servo_Lock = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_24
        STRH     R0,[R1, #+0]
// 1451     
// 1452     if(TIME1flag_20ms == 1)
        LDR.W    R0,??DataTable1_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??main_178
// 1453     {
// 1454        TIME1flag_20ms = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_25
        STRB     R0,[R1, #+0]
// 1455 
// 1456        binaryzation_F(Pixel_F);
        LDR.W    R0,??DataTable1_26
        BL       binaryzation_F
// 1457        get_front();
        BL       get_front
// 1458        
// 1459        cl_f_long += cl_f;
        LDR.W    R0,??DataTable1_27
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_28
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_27
        STRH     R0,[R1, #+0]
// 1460        front_l_long += front_l;
        LDR.W    R0,??DataTable1_29
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_30
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_29
        STRH     R0,[R1, #+0]
// 1461        front_r_long += front_r;
        LDR.W    R0,??DataTable1_31
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_32
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_31
        STRH     R0,[R1, #+0]
// 1462        IT_long += IntegrationTime_Front;
        LDR.W    R0,??DataTable1_33
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_34
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable1_33
        STRH     R0,[R1, #+0]
// 1463        /*
// 1464        if(++send_data_cnt >= 5)//每100ms给CCDview发送数据
// 1465        {
// 1466           send_data_cnt = 0;
// 1467           //SendImageData(Pixel_F);
// 1468           SendImageData(Pixel_Z); 
// 1469        }*/
// 1470        if(++LCD_Average_Flag>9)
        ADDS     R4,R4,#+1
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BLT.N    ??main_178
// 1471        {
// 1472          LCD_Average_Flag = 0;
        MOVS     R4,#+0
// 1473          front_reference = (int16)(cl_f_long/10);
        LDR.W    R0,??DataTable1_27
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_35
        STRH     R0,[R1, #+0]
// 1474          front_l_reference = (int16)(front_l_long/10);
        LDR.W    R0,??DataTable1_29
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_36
        STRH     R0,[R1, #+0]
// 1475          front_r_reference = (int16)(front_r_long/10);
        LDR.W    R0,??DataTable1_31
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_37
        STRH     R0,[R1, #+0]
// 1476          IT_ref = (int16)(IT_long/10);
        LDR.W    R0,??DataTable1_33
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_38
        STRB     R0,[R1, #+0]
// 1477          IT_long = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_33
        STRH     R0,[R1, #+0]
// 1478          cl_f_long = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_27
        STRH     R0,[R1, #+0]
// 1479          front_l_long = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_29
        STRH     R0,[R1, #+0]
// 1480          front_r_long = 0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_31
        STRH     R0,[R1, #+0]
// 1481          FRONT_WIDTH = front_r_reference-front_l_reference;
        LDR.W    R0,??DataTable1_37
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_36
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_39
        STRH     R0,[R1, #+0]
// 1482          front_width = FRONT_WIDTH;
        LDR.W    R0,??DataTable1_39
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_40
        STRH     R0,[R1, #+0]
// 1483 
// 1484          LCD_P8x16_number(10,0,front_reference);
        LDR.W    R0,??DataTable1_35
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       LCD_P8x16_number
// 1485          LCD_P8x16_number(10,2,front_l_reference);
        LDR.W    R0,??DataTable1_36
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       LCD_P8x16_number
// 1486          LCD_P8x16_number(70,2,front_r_reference);
        LDR.W    R0,??DataTable1_37
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LCD_P8x16_number
// 1487        }
// 1488     }
// 1489     /*
// 1490     if(TIME1flag_20ms_Z == 1)
// 1491     {
// 1492        TIME1flag_20ms_Z = 0;
// 1493        binaryzation_Z(Pixel_Z);
// 1494        get_zong();
// 1495        cl_z_long += cl_z;
// 1496        zong_l_long += zong_l;
// 1497        zong_r_long += zong_r;
// 1498        if(++LCD_Average_Flag_Z>9)
// 1499        {
// 1500          LCD_Average_Flag_Z = 0;
// 1501          
// 1502          zong_reference = (int16)(cl_z_long/10);
// 1503          zong_l_reference = (int16)(zong_l_long/10);
// 1504          zong_r_reference = (int16)(zong_r_long/10);
// 1505          cl_z_long = 0;
// 1506          zong_l_long = 0;
// 1507          zong_r_long = 0; 
// 1508          ZONG_WIDTH = zong_r_reference-zong_l_reference;
// 1509          zong_width = ZONG_WIDTH;
// 1510         
// 1511          LCD_P8x16_number(10,4,zong_reference);
// 1512          LCD_P8x16_number(10,6,zong_l_reference);
// 1513          LCD_P8x16_number(70,6,zong_r_reference);     
// 1514        }
// 1515     }*/
// 1516        //按键跳出初始化循环
// 1517        matrix_keyboard_init();
??main_178:
        BL       matrix_keyboard_init
// 1518        key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_104
        STRB     R0,[R1, #+0]
// 1519        if(key_num!=255)
        LDR.N    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_179
// 1520        {
// 1521          key_no=key_num;
        LDR.N    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1522        }
// 1523        //12号按键按下的时候进主循环
// 1524        if(key_no==12)
??main_179:
        LDR.W    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+12
        BNE.W    ??main_176
// 1525        { 
// 1526          key_no=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1527          BK=12;
        MOVS     R0,#+12
        LDR.N    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1528          LCD_CLS();
        BL       LCD_CLS
        B.N      ??main_180
// 1529          while(BK==12)
// 1530          {
// 1531            delay_ms(110);
??main_181:
        MOVS     R0,#+110
        BL       delay_ms
// 1532            matrix_keyboard_init();
        BL       matrix_keyboard_init
// 1533            key_num=keyboard_scan();
        BL       keyboard_scan
        LDR.N    R1,??main_104
        STRB     R0,[R1, #+0]
// 1534            if(key_num!=255)
        LDR.N    R0,??main_104
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??main_182
// 1535            {
// 1536              key_no=key_num;
        LDR.N    R0,??main_104
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1537            }   
// 1538            if(key_no==12)
??main_182:
        LDR.N    R0,??DataTable1_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+12
        BNE.N    ??main_183
// 1539            {
// 1540              BK=255;
        MOVS     R0,#+255
        LDR.N    R1,??main_104+0x4
        STRB     R0,[R1, #+0]
// 1541              key_no=255;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
// 1542            }
// 1543            LCD_CLS();
??main_183:
        BL       LCD_CLS
// 1544          }
??main_180:
        LDR.N    R0,??main_104+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+12
        BEQ.N    ??main_181
// 1545          zhming=1;   
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_22
        STRB     R0,[R1, #+0]
// 1546          break;
        B.N      ??main_184
        Nop      
        DATA
??main_104:
        DC32     key_num
        DC32     BK
        DC32     `?<Constant "chu:">`
        DC32     chu
        DC32     0x41200000
        DC32     `?<Constant "Key4">`
        DC32     `?<Constant "Key5">`
        DC32     `?<Constant "Key6">`
        DC8      0x63, 0x6A, 0x00, 0x00
        DC32     0x9999999a
        THUMB
// 1547        }
// 1548    }
// 1549    //------------------------------------------------------------------
// 1550    //-----------------------主循环，等待1ms中断------------------------
// 1551    //------------------------------------------------------------------
// 1552    while(1)
// 1553    { 
// 1554     if(zhming==1)
// 1555     {
// 1556       LCD_P8x16Str(60,6,"go");
// 1557       delay_ms(1000);
// 1558       LCD_CLS();
// 1559       
// 1560       
// 1561       Motor_Lock = 0;
// 1562       Servo_Lock = 0;
// 1563       CAR_GO=1;
// 1564     }
// 1565     zhming =2;
// 1566 
// 1567     //图像采集
// 1568     if(TIME1flag_20ms == 1)//20ms内该条件里的程序是可以执行完的！
// 1569     {
// 1570        TIME1flag_20ms = 0;
// 1571  
// 1572        binaryzation_F(Pixel_F);
// 1573        get_front();
// 1574        route_type_F();
// 1575        dir_fg=1;
// 1576        
// 1577        //坡道--------------提高后轮利于过坡
// 1578        if((front_l_flag == 1)&&(front_r_flag == 1)&&(front_r-front_l)>front_width+22)
// 1579        {
// 1580          if(guopo==0) 
// 1581          {
// 1582            dazhi=1;
// 1583            guopo=1;
// 1584            po_gap=1;
// 1585            shapo=1;
// 1586            HWPO=1;
// 1587          } 
// 1588        }
// 1589          
// 1590        if(dazhi==1)
// 1591        { 
// 1592          if(po_count++<PO_ct)
// 1593          {
// 1594            if(Abs(front_OFFSET-front_OFFSET_pre)<20)
// 1595            {}
// 1596            else
// 1597              front_OFFSET=front_OFFSET_pre;//front_OFFSET_pre;未测试
// 1598          }
// 1599          else
// 1600            dazhi=0;
??main_185:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_41
        STRB     R0,[R1, #+0]
// 1601        }
// 1602        
// 1603        if(po_gap==1)
??main_186:
        LDR.N    R0,??DataTable1_42
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_187
// 1604        {
// 1605          po_gap_ct++;
        LDR.N    R0,??DataTable1_43
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_43
        STRH     R0,[R1, #+0]
// 1606          if(po_gap_ct>150)
        LDR.N    R0,??DataTable1_43
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+151
        BLT.N    ??main_187
// 1607          {
// 1608            po_gap=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_42
        STRB     R0,[R1, #+0]
// 1609            po_gap_ct=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_43
        STRH     R0,[R1, #+0]
// 1610            po_count=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_44
        STRH     R0,[R1, #+0]
// 1611            guopo=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_45
        STRB     R0,[R1, #+0]
// 1612          }
// 1613        }
// 1614        
// 1615        if(HWPO==1)
??main_187:
        LDR.N    R0,??DataTable1_46
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_188
// 1616        {
// 1617          HWPO_ct++;
        LDR.N    R0,??DataTable1_47
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_47
        STRH     R0,[R1, #+0]
// 1618          if(HWPO_ct>35)  HWPO=0;
        LDR.N    R0,??DataTable1_47
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+36
        BLT.N    ??main_188
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_46
        STRB     R0,[R1, #+0]
// 1619        }
// 1620        //--------------------------------------------------------
// 1621        //方向控制
// 1622        SetServoVoltage();
??main_188:
        BL       SetServoVoltage
// 1623 
// 1624        //LCD_CLS();
// 1625        //太快舵机来不及响应，不是计数的问题，这里的问题
// 1626        //delay_ms(20);//在此做了延时，就不会错误清零！！把图像采集放到主函数后不需此处的延时
// 1627        LCD_P8x16_number(10,0,front_l_flag);
        LDR.N    R0,??DataTable1_48
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       LCD_P8x16_number
// 1628        LCD_P8x16_number(70,0,front_r_flag);
        LDR.N    R0,??DataTable1_49
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+70
        BL       LCD_P8x16_number
// 1629        LCD_P8x16_number(10,2,front_l);
        LDR.N    R0,??DataTable1_30
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       LCD_P8x16_number
// 1630        LCD_P8x16_number(70,2,front_r);
        LDR.N    R0,??DataTable1_32
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LCD_P8x16_number
// 1631        //LCD_P8x16_number_4(0,4,hongwai_l);//LCD_P8x16_number(0,4,IT_ref);//LCD_P8x16_number(0,4,cl_f_pre);
// 1632        LCD_P8x16_number_4(70,4,fangcha_qian_f);//LCD_P8x16_number_4(70,4,hongwai_r);//LCD_P8x16_number(70,4,sha_width); //LCD_P8x16_number(70,4,IntegrationTime_Front);//LCD_P8x16_number(70,4,(front_l+front_r)/2);//LCD_P8x16_number(70,4,polook);//LCD_P8x16_number(70,4,mq_look1+mq_look2);
        LDR.N    R0,??DataTable1_50
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+70
        BL       LCD_P8x16_number_4
// 1633        LCD_P8x16_number(0,6,front_width);//LCD_P8x16_number_4(0,6,HONGWAI_L);//
        LDR.N    R0,??DataTable1_40
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_P8x16_number
// 1634        LCD_P8x16_number(70,6,front_r-front_l);//LCD_P8x16_number_4(70,6,HONGWAI_R);//
        LDR.N    R0,??DataTable1_32
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable1_30
        LDRSH    R1,[R1, #+0]
        SUBS     R2,R0,R1
        MOVS     R1,#+6
        MOVS     R0,#+70
        BL       LCD_P8x16_number
// 1635     } 
// 1636     
// 1637     //速度控制
// 1638     if(speedflag==1)
??main_189:
        LDR.N    R0,??DataTable1_51
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_184
// 1639     {
// 1640       speedflag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_51
        STRH     R0,[R1, #+0]
// 1641       GetMotorPulse();
        BL       GetMotorPulse
// 1642       Speed_PID();
        BL       Speed_PID
// 1643     }
??main_184:
        LDR.N    R0,??DataTable1_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_190
        ADR.N    R2,??DataTable1_1  ;; 0x67, 0x6F, 0x00, 0x00
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_P8x16Str
        MOV      R0,#+1000
        BL       delay_ms
        BL       LCD_CLS
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_23
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_24
        STRH     R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_52
        STRB     R0,[R1, #+0]
??main_190:
        MOVS     R0,#+2
        LDR.N    R1,??DataTable1_22
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_189
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_25
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_26
        BL       binaryzation_F
        BL       get_front
        BL       route_type_F
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_53
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_48
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_191
        LDR.N    R0,??DataTable1_49
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_191
        LDR.N    R0,??DataTable1_40
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+22
        LDR.N    R1,??DataTable1_32
        LDRSH    R1,[R1, #+0]
        LDR.N    R2,??DataTable1_30
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??main_191
        LDR.N    R0,??DataTable1_45
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_191
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_41
        STRB     R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_45
        STRB     R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_42
        STRB     R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_54
        STRB     R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_46
        STRB     R0,[R1, #+0]
??main_191:
        LDR.N    R0,??DataTable1_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??main_186
        LDR.N    R0,??DataTable1_44
        LDRSH    R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable1_44
        STRH     R1,[R2, #+0]
        LDR.N    R1,??DataTable1_55
        LDRSH    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.W    ??main_185
        LDR.N    R0,??DataTable1_56
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable1_57
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R0,#+20
        BLT.W    ??main_186
        LDR.N    R0,??DataTable1_57
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_56
        STRH     R0,[R1, #+0]
        B.N      ??main_186
// 1644     
// 1645     //无线停车
// 1646     /*if(gpio_read(PORTC,8)==1) 
// 1647     {
// 1648       stop_flag=1;
// 1649       LCD_P8x16Str(0,4,"stop");
// 1650     }*/
// 1651    } 
// 1652 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     `?<Constant "BLsha:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     BLsha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     `?<Constant "Kmax:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     Kmax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     0xbf847ae1
// 1653 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1654 void system_init()
// 1655 {   
system_init:
        PUSH     {R4,LR}
// 1656     int i;
// 1657     //关闭总中断
// 1658     DisableInterrupts;                          
        CPSID i
// 1659     //串口初始化
// 1660     uart_init(UART3,periph_clk_khz,115200);     
        MOVS     R2,#+115200
        LDR.N    R0,??DataTable1_58
        LDRSH    R1,[R0, #+0]
        LDR.N    R0,??DataTable1_59  ;; 0x4006d000
        BL       uart_init
// 1661     //UART_C2_REG(UART3)|=UART_C2_RIE_MASK;     //开放UART接收中断
// 1662     //enable_irq(51);			        //开接收引脚的IRQ中断 
// 1663     //set_irq_priority (51, 0);
// 1664     
// 1665     //gpio_init (PORTC,8,0,0);                    //无线接收
// 1666     
// 1667     
// 1668     //舵机频率初始化
// 1669     FTM_PWM_Init(0,300);                         //舵机频率初始化 pwm频率为300Hz，周期3.3ms
        MOV      R1,#+300
        MOVS     R0,#+0
        BL       FTM_PWM_Init
// 1670     FTM_PWM_Open(0,2,ZHONG);
        LDR.N    R0,??DataTable1_60
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Open
// 1671     
// 1672     //电机初始化 
// 1673     FTM_PWM_Init(1,10000);                       //电机频率初始化 pwm频率为10kHz，周期0.1ms
        MOVW     R1,#+10000
        MOVS     R0,#+1
        BL       FTM_PWM_Init
// 1674     Motor_init();                                
        BL       Motor_init
// 1675     
// 1676     //正交解码测速初始化
// 1677     FTM2_QUAD_Iint();                           
        BL       FTM2_QUAD_Iint
// 1678     
// 1679     //CCD初始化
// 1680     CCD_init();
        BL       CCD_init
// 1681     
// 1682     //OLED液晶初始化
// 1683     LCD_Init();                                 
        BL       LCD_Init
// 1684     
// 1685     PID_SetKpid(1.7,0.05,0.3);                   //速度PID初始化参数设置
        LDR.N    R2,??DataTable1_61  ;; 0x3e99999a
        LDR.N    R1,??DataTable1_62  ;; 0x3d4ccccd
        LDR.N    R0,??DataTable1_63  ;; 0x3fd9999a
        BL       PID_SetKpid
// 1686     PID_SetPoint(1000);                          //初始速度设定
        MOV      R0,#+1000
        BL       PID_SetPoint
// 1687     
// 1688     hw_adc_init(0);
        MOVS     R0,#+0
        BL       hw_adc_init
// 1689     hw_adc_init(1);
        MOVS     R0,#+1
        BL       hw_adc_init
// 1690     for(i=0;i<200;i++)
        MOVS     R4,#+0
        B.N      ??system_init_0
// 1691     {
// 1692       GetSamplezhi();                           //采样电压值
??system_init_1:
        BL       GetSamplezhi
// 1693     }
        ADDS     R4,R4,#+1
??system_init_0:
        CMP      R4,#+200
        BLT.N    ??system_init_1
// 1694     GetOFFSET();                                //得到零偏值
        BL       GetOFFSET
// 1695     delay_ms(50);
        MOVS     R0,#+50
        BL       delay_ms
// 1696     
// 1697     hw_pit_init(0,60000);                       //配置pit定时器0,1ms中断(60000)
        MOVW     R1,#+60000
        MOVS     R0,#+0
        BL       hw_pit_init
// 1698     enable_pit_interrupt(0);                    //开pit中断0通道
        MOVS     R0,#+0
        BL       enable_pit_interrupt
// 1699     EnableInterrupts;                           //开启总中断,中断开启后，此刻就进行1ms的定时吗？
        CPSIE i
// 1700 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant "Kmin:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC8      0x67, 0x6F, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Kmin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "Pmax:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     Pmax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     `?<Constant "sh_x:1">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     `?<Constant "fch_mo:2">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     `?<Constant "POshen:3">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     `?<Constant "shmode:4">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     `?<Constant "sh_x:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     sh_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     `?<Constant "fch_mo:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     fch_mo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     fch_dp2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     key_no

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     `?<Constant "POshaen:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     POshaen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     `?<Constant "shmode:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     shmode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     `?<Constant "Key7">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     `?<Constant "Key8">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     `?<Constant "Key9">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     zhming

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     Motor_Lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     Servo_Lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_25:
        DC32     TIME1flag_20ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_26:
        DC32     Pixel_F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_27:
        DC32     cl_f_long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_28:
        DC32     cl_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_29:
        DC32     front_l_long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_30:
        DC32     front_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_31:
        DC32     front_r_long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_32:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_33:
        DC32     IT_long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_34:
        DC32     IntegrationTime_Front

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_35:
        DC32     front_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_36:
        DC32     front_l_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_37:
        DC32     front_r_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_38:
        DC32     IT_ref

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_39:
        DC32     FRONT_WIDTH

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_40:
        DC32     front_width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_41:
        DC32     dazhi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_42:
        DC32     po_gap

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_43:
        DC32     po_gap_ct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_44:
        DC32     po_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_45:
        DC32     guopo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_46:
        DC32     HWPO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_47:
        DC32     HWPO_ct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_48:
        DC32     front_l_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_49:
        DC32     front_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_50:
        DC32     fangcha_qian_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_51:
        DC32     speedflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_52:
        DC32     CAR_GO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_53:
        DC32     dir_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_54:
        DC32     shapo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_55:
        DC32     PO_ct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_56:
        DC32     front_OFFSET

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_57:
        DC32     front_OFFSET_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_58:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_59:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_60:
        DC32     ZHONG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_61:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_62:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_63:
        DC32     0x3fd9999a

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mode:1">`:
        DATA
        DC8 "mode:1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "s_H:2">`:
        DATA
        DC8 "s_H:2"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "s_L:3">`:
        DATA
        DC8 "s_L:3"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Kp:4">`:
        DATA
        DC8 "Kp:4"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Kd:5">`:
        DATA
        DC8 "Kd:5"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "QPX_SET:6">`:
        DATA
        DC8 "QPX_SET:6"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mode:">`:
        DATA
        DC8 "mode:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "+:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Key7">`:
        DATA
        DC8 "Key7"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "-:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Key8">`:
        DATA
        DC8 "Key8"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Re:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Key9">`:
        DATA
        DC8 "Key9"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Speed_H:">`:
        DATA
        DC8 "Speed_H:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Key4">`:
        DATA
        DC8 "Key4"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Key5">`:
        DATA
        DC8 "Key5"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Key6">`:
        DATA
        DC8 "Key6"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Speed_L:">`:
        DATA
        DC8 "Speed_L:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Kp:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Kd:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "QPX_S:">`:
        DATA
        DC8 "QPX_S:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Psha:1">`:
        DATA
        DC8 "Psha:1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Prz:2">`:
        DATA
        DC8 "Prz:2"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PMAX:3">`:
        DATA
        DC8 "PMAX:3"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ZHONG:4">`:
        DATA
        DC8 "ZHONG:4"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "xianfu:5">`:
        DATA
        DC8 "xianfu:5"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PO_ct:6">`:
        DATA
        DC8 "PO_ct:6"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Psha:">`:
        DATA
        DC8 "Psha:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Prz:">`:
        DATA
        DC8 "Prz:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PMAX:">`:
        DATA
        DC8 "PMAX:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ZHONG:">`:
        DATA
        DC8 "ZHONG:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "xianfu:">`:
        DATA
        DC8 "xianfu:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PO_ct:">`:
        DATA
        DC8 "PO_ct:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "d_p:1">`:
        DATA
        DC8 "d_p:1"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "chu:2">`:
        DATA
        DC8 "chu:2"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BLsha:3">`:
        DATA
        DC8 "BLsha:3"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Kmax">`:
        DATA
        DC8 "Kmax"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Kmin">`:
        DATA
        DC8 "Kmin"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Pmax:6">`:
        DATA
        DC8 "Pmax:6"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "d_p:">`:
        DATA
        DC8 "d_p:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "chu:">`:
        DATA
        DC8 "chu:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "BLsha:">`:
        DATA
        DC8 "BLsha:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Kmax:">`:
        DATA
        DC8 "Kmax:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Kmin:">`:
        DATA
        DC8 "Kmin:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Pmax:">`:
        DATA
        DC8 "Pmax:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "sh_x:1">`:
        DATA
        DC8 "sh_x:1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "fch_mo:2">`:
        DATA
        DC8 "fch_mo:2"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "POshen:3">`:
        DATA
        DC8 "POshen:3"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "shmode:4">`:
        DATA
        DC8 "shmode:4"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "sh_x:">`:
        DATA
        DC8 "sh_x:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "fch_mo:">`:
        DATA
        DC8 "fch_mo:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "POshaen:">`:
        DATA
        DC8 "POshaen:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "shmode:">`:
        DATA
        DC8 "shmode:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "cj"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "go"
        DC8 0

        END
// 
//    67 bytes in section .bss
//   119 bytes in section .data
//   444 bytes in section .rodata
// 8 900 bytes in section .text
// 
// 8 900 bytes of CODE  memory
//   444 bytes of CONST memory
//   186 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
