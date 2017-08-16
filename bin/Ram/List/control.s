///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      08/Aug/2014  18:18:58 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\sony\Desktop\can\src\Sources\C\Component_C\con /
//                    trol.c                                                  /
//    Command line =  C:\Users\sony\Desktop\can\src\Sources\C\Component_C\con /
//                    trol.c -D IAR -D TWR_K60N512 -lCN                       /
//                    C:\Users\sony\Desktop\can\bin\Ram\List\ -lB             /
//                    C:\Users\sony\Desktop\can\bin\Ram\List\ -o              /
//                    C:\Users\sony\Desktop\can\bin\Ram\Obj\ --no_cse         /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "E:\Program Files                         /
//                    (x86)\IAREW6.3\arm\INC\c\DLib_Config_Normal.h" -I       /
//                    C:\Users\sony\Desktop\can\src\Sources\H\ -I             /
//                    C:\Users\sony\Desktop\can\src\Sources\H\Component_H\    /
//                    -I C:\Users\sony\Desktop\can\src\Sources\H\Frame_H\     /
//                    -Ol --use_c++_inline                                    /
//    List file    =  C:\Users\sony\Desktop\can\bin\Ram\List\control.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME control

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_ChangeDuty
        EXTERN HONGWAI_L
        EXTERN HONGWAI_R
        EXTERN IT_ref
        EXTERN IncPID_Calculate
        EXTERN Kd
        EXTERN Ki
        EXTERN Kp
        EXTERN Kp_hold
        EXTERN LCD_P8x16_number
        EXTERN PID_SetPoint
        EXTERN PULSE_MAX
        EXTERN Pixel_F
        EXTERN Pixel_Z
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN delay_ms
        EXTERN fch_dp1
        EXTERN fch_dp2
        EXTERN gpio_init
        EXTERN hongwai_l
        EXTERN hongwai_r
        EXTERN hw_ad_ave
        EXTERN hw_ad_once
        EXTERN hw_adc_convertstart
        EXTERN hw_adc_convertstop
        EXTERN hw_adc_init
        EXTERN shache_time
        EXTERN speed
        EXTERN speed_B
        EXTERN speed_H
        EXTERN speed_L
        EXTERN speed_jian
        EXTERN speedflag
        EXTERN uart_send1

        PUBLIC ADC0_start
        PUBLIC ADC0_stop
        PUBLIC Abs
        PUBLIC Aver_F
        PUBLIC Aver_Z
        PUBLIC BL_SHACHE_TIME
        PUBLIC CCD_init
        PUBLIC CRC_CHECK
        PUBLIC CalculateIntegrationTimeFront
        PUBLIC CalculateIntegrationTimeZong
        PUBLIC Clear
        PUBLIC DR
        PUBLIC D_err
        PUBLIC DirectionControlOutput
        PUBLIC GetMotorPulse
        PUBLIC GetOFFSET
        PUBLIC GetSamplezhi
        PUBLIC I_sumerr
        PUBLIC ImageCapture_F
        PUBLIC ImageCapture_Z
        PUBLIC IntegrationTime_Front
        PUBLIC IntegrationTime_Zong
        PUBLIC LCD_show
        PUBLIC LHOLDdiao_flag
        PUBLIC LR_count
        PUBLIC L_aver
        PUBLIC L_fch
        PUBLIC Ldiaotou_count
        PUBLIC Ldiaotou_flag
        PUBLIC Lendiao
        PUBLIC Lfch
        PUBLIC Lpre1
        PUBLIC Lpre2
        PUBLIC Lpre3
        PUBLIC Lpre4
        PUBLIC Lqing_count
        PUBLIC Lr_count
        PUBLIC MotorSpeedOut
        PUBLIC OutData
        PUBLIC OutPut_Data
        PUBLIC PD_ZW_flag
        PUBLIC PD_ZW_keeptime
        PUBLIC PixelAverage
        PUBLIC PixelAverageValue_Front
        PUBLIC PixelAverageValue_Zong
        PUBLIC PixelAverageVoltageError
        PUBLIC PixelAverageVoltage_Front
        PUBLIC PixelAverageVoltage_Zong
        PUBLIC RHOLDdiao_flag
        PUBLIC RSH
        PUBLIC R_aver
        PUBLIC R_fch
        PUBLIC Rdiaotou_count
        PUBLIC Rdiaotou_flag
        PUBLIC Rendiao
        PUBLIC Rfch
        PUBLIC Rpre1
        PUBLIC Rpre2
        PUBLIC Rpre3
        PUBLIC Rpre4
        PUBLIC Rqing_count
        PUBLIC SHACHE_TIME_1
        PUBLIC SHACHE_TIME_2
        PUBLIC SHACHE_TIME_3
        PUBLIC SHACHE_TIME_4
        PUBLIC SHACHE_TIME_5
        PUBLIC SHA_PULSE
        PUBLIC SamplingDelay
        PUBLIC SendHex
        PUBLIC SendImageData
        PUBLIC SetMotorVoltage
        PUBLIC SetServoVoltage
        PUBLIC SpeedControl
        PUBLIC SpeedControlOutput
        PUBLIC Speed_PID
        PUBLIC StartIntegrationFront
        PUBLIC StartIntegrationZong
        PUBLIC TargetPixelAverageVoltage
        PUBLIC TargetPixelAverageVoltageAllowError
        PUBLIC WW_flag
        PUBLIC ZHONG
        PUBLIC ZZ_count
        PUBLIC ZZ_flag
        PUBLIC banma_flag
        PUBLIC binaryzation_F
        PUBLIC binaryzation_Z
        PUBLIC bl_count
        PUBLIC bl_flag
        PUBLIC bl_shache_time
        PUBLIC black_l
        PUBLIC black_r
        PUBLIC bodong
        PUBLIC chafang_f
        PUBLIC chafang_z
        PUBLIC chu
        PUBLIC cl_f
        PUBLIC cl_f_pre
        PUBLIC cl_z
        PUBLIC d_err1
        PUBLIC d_err2
        PUBLIC d_err3
        PUBLIC d_err4
        PUBLIC d_err5
        PUBLIC d_err6
        PUBLIC d_err7
        PUBLIC d_err8
        PUBLIC d_err9
        PUBLIC delay_count
        PUBLIC delta_l
        PUBLIC delta_p
        PUBLIC delta_r
        PUBLIC fangcha_f
        PUBLIC fangcha_hou_f
        PUBLIC fangcha_hou_z
        PUBLIC fangcha_qian_f
        PUBLIC fangcha_qian_z
        PUBLIC fangcha_z
        PUBLIC front_OFFSET
        PUBLIC front_OFFSET_KZ
        PUBLIC front_OFFSET_KZ_pre
        PUBLIC front_OFFSET_pre
        PUBLIC front_OFFSET_pre1
        PUBLIC front_OFFSET_pre10
        PUBLIC front_OFFSET_pre2
        PUBLIC front_OFFSET_pre3
        PUBLIC front_OFFSET_pre4
        PUBLIC front_OFFSET_pre5
        PUBLIC front_OFFSET_pre6
        PUBLIC front_OFFSET_pre7
        PUBLIC front_OFFSET_pre8
        PUBLIC front_OFFSET_pre9
        PUBLIC front_l
        PUBLIC front_l_fg_last
        PUBLIC front_l_flag
        PUBLIC front_l_last
        PUBLIC front_l_pre1
        PUBLIC front_l_pre2
        PUBLIC front_l_pre3
        PUBLIC front_l_pre4
        PUBLIC front_l_reference
        PUBLIC front_l_view
        PUBLIC front_max
        PUBLIC front_min
        PUBLIC front_r
        PUBLIC front_r_fg_last
        PUBLIC front_r_flag
        PUBLIC front_r_last
        PUBLIC front_r_pre1
        PUBLIC front_r_pre2
        PUBLIC front_r_pre3
        PUBLIC front_r_pre4
        PUBLIC front_r_reference
        PUBLIC front_r_view
        PUBLIC front_reference
        PUBLIC front_width
        PUBLIC g_fCarSpeed
        PUBLIC g_fCarSpeedstart
        PUBLIC g_fDirectionControlOut
        PUBLIC g_fDirectionControlOutNew
        PUBLIC g_fDirectionControlOutOld
        PUBLIC g_fMotorOut
        PUBLIC g_fSpeedControlIntegral
        PUBLIC g_fSpeedControlOut
        PUBLIC g_fSpeedControlOutNew
        PUBLIC g_fSpeedControlOutOld
        PUBLIC g_lnInputVoltageSigma
        PUBLIC g_nDirectionControlPeriod
        PUBLIC g_nInputVoltage
        PUBLIC g_nMotorPulse
        PUBLIC g_nMotorPulseSigma
        PUBLIC g_nRightMotorPulse
        PUBLIC g_nSpeedControlPeriod
        PUBLIC get_ad
        PUBLIC get_front
        PUBLIC get_fu
        PUBLIC get_zong
        PUBLIC gravity
        PUBLIC guosha_flag
        PUBLIC high_aver_f
        PUBLIC high_aver_z
        PUBLIC jiao_L
        PUBLIC jiao_R
        PUBLIC jisha
        PUBLIC k
        PUBLIC lR_count
        PUBLIC lost_all_count
        PUBLIC lost_all_flag
        PUBLIC lost_left_flag
        PUBLIC lost_right_flag
        PUBLIC low_aver_f
        PUBLIC low_aver_z
        PUBLIC lr_count
        PUBLIC mq
        PUBLIC mq_last
        PUBLIC pulse_count
        PUBLIC pulse_count_pre
        PUBLIC qd_count
        PUBLIC qpx_count
        PUBLIC real_l
        PUBLIC real_r
        PUBLIC rensha_count
        PUBLIC route_ave_f
        PUBLIC route_ave_z
        PUBLIC route_f
        PUBLIC route_mid
        PUBLIC route_type_F
        PUBLIC route_type_Z
        PUBLIC route_view
        PUBLIC route_z
        PUBLIC rzguo_count
        PUBLIC rzguo_flag
        PUBLIC rzop
        PUBLIC sd
        PUBLIC serial_Txd
        PUBLIC servo_duty
        PUBLIC shache2
        PUBLIC shache3
        PUBLIC shache_fg
        PUBLIC `sp`
        PUBLIC speed_pwm
        PUBLIC stop_count
        PUBLIC stop_flag
        PUBLIC t
        PUBLIC virtual_scope_show
        PUBLIC voltage_gravity
        PUBLIC xianfu
        PUBLIC yichang_count
        PUBLIC yichang_flag
        PUBLIC z_err1
        PUBLIC z_err2
        PUBLIC z_err3
        PUBLIC z_err4
        PUBLIC z_err5
        PUBLIC z_err6
        PUBLIC z_err7
        PUBLIC z_err8
        PUBLIC z_err9
        PUBLIC zheng
        PUBLIC zhong
        PUBLIC zong_OFFSET
        PUBLIC zong_OFFSET_KZ
        PUBLIC zong_OFFSET_KZ_pre
        PUBLIC zong_OFFSET_pre
        PUBLIC zong_OFFSET_pre1
        PUBLIC zong_OFFSET_pre10
        PUBLIC zong_OFFSET_pre2
        PUBLIC zong_OFFSET_pre3
        PUBLIC zong_OFFSET_pre4
        PUBLIC zong_OFFSET_pre5
        PUBLIC zong_OFFSET_pre6
        PUBLIC zong_OFFSET_pre7
        PUBLIC zong_OFFSET_pre8
        PUBLIC zong_OFFSET_pre9
        PUBLIC zong_l
        PUBLIC zong_l_last
        PUBLIC zong_l_pre
        PUBLIC zong_l_reference
        PUBLIC zong_l_view
        PUBLIC zong_max
        PUBLIC zong_min
        PUBLIC zong_r
        PUBLIC zong_r_last
        PUBLIC zong_r_pre
        PUBLIC zong_r_reference
        PUBLIC zong_r_view
        PUBLIC zong_reference
        PUBLIC zong_width

// C:\Users\sony\Desktop\can\src\Sources\C\Component_C\control.c
//    1 #include "includes.h"
//    2 
//    3 //------------
//    4 #define SPEED_CONTROL_PERIOD                100
//    5 #define CAR_SPEED_CONSTANT                  0.02
//    6 #define SPEED_CONTROL_P                     0.044
//    7 #define SPEED_CONTROL_I                     0.00003
//    8 #define SPEED_CONTROL_OUT_MAX		    MOTOR_OUT_MAX *10
//    9 #define SPEED_CONTROL_OUT_MIN		    MOTOR_OUT_MIN *10
//   10 #define CAR_SPEED_SET                       20
//   11 #define CAR_SPEED_STEP                      5//每100毫秒增加的速度
//   12 
//   13 //-----------
//   14 #define SI_SetVal()                         gpio_init (PORTE , 0, 1, 1)
//   15 #define SI_ClrVal()                         gpio_init (PORTE , 0, 1, 0)
//   16 #define CLK_SetVal()                        gpio_init (PORTE , 1, 1, 1)
//   17 #define CLK_ClrVal()                        gpio_init (PORTE , 1, 1, 0)
//   18 #define SI_SetVal_1()                       gpio_init (PORTA , 12, 1, 1)
//   19 #define SI_ClrVal_1()                       gpio_init (PORTA , 12, 1, 0)
//   20 #define CLK_SetVal_1()                      gpio_init (PORTA , 13, 1, 1)
//   21 #define CLK_ClrVal_1()                      gpio_init (PORTA , 13, 1, 0)
//   22 #define DIR_DEFAULT_MIN                     50
//   23 #define DIRECTION_CONTROL_PERIOD            20
//   24 #define DIR_CONTROL_P                       0.017
//   25 #define DIR_CONTROL_D                       0.0007
//   26 #define GATE                                45
//   27 #define DIRECTION_CONTROL_DEADVALUE         0
//   28 #define DIRECTION_CONTROL_OUT_MAX	    MOTOR_OUT_MAX
//   29 #define DIRECTION_CONTROL_OUT_MIN	    MOTOR_OUT_MIN
//   30 
//   31 //------------
//   32 #define MOTOR_OUT_DEAD_VAL                  0
//   33 #define MOTOR_SPEED_POSITIVE	            (g_fMotorOut > 0)
//   34 #define MOTOR_OUT_MAX                       1.0
//   35 #define MOTOR_OUT_MIN                      -1.0
//   36 //------------------------------------------------------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 int16   g_nInputVoltage[5]={0};
g_nInputVoltage:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 int32	g_lnInputVoltageSigma[5]={0};    	
g_lnInputVoltageSigma:
        DS8 20
//   39 #define VOLTAGE_GRAVITY                     g_nInputVoltage[0]
//   40 #define VOLTAGE_GYRO                        g_nInputVoltage[1]
//   41 #define VOLTAGE_LEFT                        g_nInputVoltage[2]
//   42 #define VOLTAGE_RIGHT                       g_nInputVoltage[3]		
//   43 #define DIR_CONTROL_D_VALUE                 g_nInputVoltage[4]
//   44 #define key_1                               (((GPIO_PDIR_REG(PTA_BASE_PTR))>>(19))&1)
//   45 //------------------------------------------------------------------------------
//   46 
//   47 //-----------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 float g_fCarSpeed=0;
g_fCarSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 float g_fCarSpeedstart=0;
g_fCarSpeedstart:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   50 int16 g_nMotorPulse=0;
g_nMotorPulse:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   51 int16 g_nRightMotorPulse=0;
g_nRightMotorPulse:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 float g_fSpeedControlIntegral=0;
g_fSpeedControlIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   53 float g_fSpeedControlOutOld =0;
g_fSpeedControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 float g_fSpeedControlOutNew =0;
g_fSpeedControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 float g_fSpeedControlOut =0;
g_fSpeedControlOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   56 uint8 g_nSpeedControlPeriod =0;
g_nSpeedControlPeriod:
        DS8 1
//   57 
//   58 //-----------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   59 float g_fDirectionControlOutOld=0;
g_fDirectionControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 float g_fDirectionControlOutNew =0;
g_fDirectionControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 float g_fDirectionControlOut=0;
g_fDirectionControlOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   62 int16 g_nDirectionControlPeriod=0;
g_nDirectionControlPeriod:
        DS8 2
//   63 
//   64 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   65 int16 front_l=0,front_r=127;
front_l:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
front_r:
        DATA
        DC16 127

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   66 int16 route_view;
route_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   67 int16 route_mid;
route_mid:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   68 int16 front_l_view,front_r_view;
front_l_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   69 int16 front_max=0;
front_max:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   70 int16 front_min=0;
front_min:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   71 int16 Aver_F=0;
Aver_F:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   72 int16 delta_l=0,delta_r=0;
delta_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
delta_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   73 int16 front_l_last=0,front_r_last=0;
front_l_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   74 int16 front_l_pre1=0,front_r_pre1=0,front_l_pre2=0,front_r_pre2=0,front_l_pre3=0,front_r_pre3=0,front_l_pre4=0,front_r_pre4=0;
front_l_pre1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_pre1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_l_pre2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_pre2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_l_pre3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_pre3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_l_pre4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_pre4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   75 int16 front_width=0;
front_width:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   76 int16 cl_f=0,cl_f_pre=0;
cl_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
cl_f_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   77 int16 Lfch=0,Rfch=0;
Lfch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rfch:
        DS8 2
//   78 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   79 int16 front_l_reference=0,front_r_reference=128;
front_l_reference:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
front_r_reference:
        DATA
        DC16 128

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   80 int16 front_OFFSET_KZ=0;
front_OFFSET_KZ:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   81 int16 front_reference;
front_reference:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   82 int16 front_OFFSET_KZ_pre=0,front_OFFSET=0,front_OFFSET_pre=0,front_OFFSET_pre1=0,front_OFFSET_pre2=0,front_OFFSET_pre3=0,front_OFFSET_pre4=0,front_OFFSET_pre5=0,front_OFFSET_pre6=0,front_OFFSET_pre7=0,front_OFFSET_pre8=0,front_OFFSET_pre9=0,front_OFFSET_pre10=0;//上一次位置偏差
front_OFFSET_KZ_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre8:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre9:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_OFFSET_pre10:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   83 int16 d_err1=0,d_err2=0,d_err3=0,d_err4=0,d_err5=0,d_err6=0,d_err7=0,d_err8=0,d_err9=0;
d_err1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err8:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
d_err9:
        DS8 2
//   84 
//   85 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   86 int16 zong_l=0,zong_r=127;
zong_l:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
zong_r:
        DATA
        DC16 127
//   87 //int16 route_view;
//   88 //int16 route_mid;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   89 int16 zong_l_view,zong_r_view;
zong_l_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   90 int16 zong_max=0;
zong_max:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   91 int16 zong_min=0;
zong_min:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   92 int16 Aver_Z=0;
Aver_Z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   93 int16 zong_l_last=0,zong_r_last=0;
zong_l_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   94 int16 zong_l_pre=0,zong_r_pre=0;
zong_l_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   95 int16 zong_width=0;
zong_width:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   96 int16 cl_z=0;
cl_z:
        DS8 2
//   97 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   98 int16 zong_l_reference=0,zong_r_reference=128;
zong_l_reference:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
zong_r_reference:
        DATA
        DC16 128

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   99 int16 zong_OFFSET_KZ=0;
zong_OFFSET_KZ:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  100 int16 zong_reference;
zong_reference:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  101 int16 zong_OFFSET_KZ_pre=0,zong_OFFSET=0,zong_OFFSET_pre=0,zong_OFFSET_pre1=0,zong_OFFSET_pre2=0,zong_OFFSET_pre3=0,zong_OFFSET_pre4=0,zong_OFFSET_pre5=0,zong_OFFSET_pre6=0,zong_OFFSET_pre7=0,zong_OFFSET_pre8=0,zong_OFFSET_pre9=0,zong_OFFSET_pre10=0;//上一次位置偏差
zong_OFFSET_KZ_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre8:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre9:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_OFFSET_pre10:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  102 int16 z_err1=0,z_err2=0,z_err3=0,z_err4=0,z_err5=0,z_err6=0,z_err7=0,z_err8=0,z_err9=0;
z_err1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err8:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
z_err9:
        DS8 2
//  103 
//  104 
//  105 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  106 int16 servo_duty=4780;//舵机占空比
servo_duty:
        DATA
        DC16 4780
//  107 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  108 int16 D_err=0;
D_err:
        DS8 2
//  109 
//  110 
//  111 //------------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  112 float g_fMotorOut=0;
g_fMotorOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  113 int16 g_nMotorPulseSigma =0;
g_nMotorPulseSigma:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  114 extern int16 OutData[4] = { 0 };//虚拟示波器输出
OutData:
        DS8 8
//  115 extern uint8 a,b;
//  116 extern int16 speedflag;
//  117 //----------------------------------------------------------------------------------------------------
//  118 
//  119 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  120 int16   gravity,voltage_gravity;
gravity:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
voltage_gravity:
        DS8 2
//  121 extern  int16   hongwai_l,hongwai_r;
//  122 extern  int16   HONGWAI_L,HONGWAI_R;
//  123 
//  124 
//  125 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 void GetSamplezhi()
//  127 {
GetSamplezhi:
        PUSH     {R7,LR}
//  128     g_lnInputVoltageSigma[0]+= hw_ad_ave(0,17,12,20);//左   
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11
        LDR      R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
//  129     g_lnInputVoltageSigma[1]+= hw_ad_ave(0,18,12,20);//右
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+18
        MOVS     R0,#+0
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11
        LDR      R1,[R1, #+4]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+4]
//  130     //g_lnInputVoltageSigma[2]+= hw_ad_ave(0,12,12,20);
//  131 }
        POP      {R0,PC}          ;; return
//  132 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void GetOFFSET()
//  134 {
//  135     HONGWAI_L=g_lnInputVoltageSigma[0]/200;
GetOFFSET:
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_1
        STRH     R0,[R1, #+0]
//  136     HONGWAI_R=g_lnInputVoltageSigma[1]/200;
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+4]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  137     //gyro_direction= g_lnInputVoltageSigma[2]/200;  
//  138 }
        BX       LR               ;; return
//  139 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void get_ad()
//  141 {
get_ad:
        PUSH     {R7,LR}
//  142    hongwai_l = hw_ad_ave(0,17,12,20);              
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+0]
//  143    hongwai_r = hw_ad_ave(0,18,12,20);                   
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+18
        MOVS     R0,#+0
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11_4
        STRH     R0,[R1, #+0]
//  144    //DIR_CONTROL_D_VALUE = hw_ad_ave(0,12,12,20);            //---------得转向陀螺仪电压信号(PTB2)
//  145 }
        POP      {R0,PC}          ;; return
//  146 
//  147 
//  148 
//  149 
//  150 
//  151 
//  152 
//  153 //-------------------------------------方向控制-------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 void CCD_init(void)
//  155 {
CCD_init:
        PUSH     {R7,LR}
//  156   gpio_init (PORTE , 0, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  157   gpio_init (PORTE , 1, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  158   gpio_init (PORTA , 12, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  159   gpio_init (PORTA , 13, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  160   hw_adc_init(1);
        MOVS     R0,#+1
        BL       hw_adc_init
//  161 }
        POP      {R0,PC}          ;; return
//  162 /*
//  163 void button_init()
//  164 {
//  165    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;    //打开PORTD端口的时钟
//  166    PORTA_PCR19=(0|PORT_PCR_MUX(1));
//  167    gpio_init (PORTA,19, 0,0);
//  168 }
//  169 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void ADC0_stop(void)
//  171 
//  172 {
ADC0_stop:
        PUSH     {R7,LR}
//  173     hw_adc_convertstop(0,8);
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       hw_adc_convertstop
//  174     hw_adc_convertstop(0,9);
        MOVS     R1,#+9
        MOVS     R0,#+0
        BL       hw_adc_convertstop
//  175     hw_adc_convertstop(0,12);
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       hw_adc_convertstop
//  176 }
        POP      {R0,PC}          ;; return
//  177 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  178 void ADC0_start(void)
//  179 {
ADC0_start:
        PUSH     {R7,LR}
//  180     hw_adc_convertstart(0,8,12);
        MOVS     R2,#+12
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       hw_adc_convertstart
//  181     hw_adc_convertstart(0,9,12);
        MOVS     R2,#+12
        MOVS     R1,#+9
        MOVS     R0,#+0
        BL       hw_adc_convertstart
//  182     hw_adc_convertstart(0,12,12);
        MOVS     R2,#+12
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       hw_adc_convertstart
//  183 }
        POP      {R0,PC}          ;; return
//  184 
//  185 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void StartIntegrationFront(void)
//  187 {
StartIntegrationFront:
        PUSH     {R4,LR}
//  188     unsigned char i;
//  189 
//  190     SI_SetVal();            /* SI  = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  191     SamplingDelay();
        BL       SamplingDelay
//  192     CLK_SetVal();           /* CLK = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  193     SamplingDelay();
        BL       SamplingDelay
//  194     SI_ClrVal();            /* SI  = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  195     SamplingDelay();
        BL       SamplingDelay
//  196     CLK_ClrVal();           /* CLK = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  197 
//  198     for(i=0; i<127; i++)
        MOVS     R4,#+0
        B.N      ??StartIntegrationFront_0
//  199     {
//  200         SamplingDelay();
??StartIntegrationFront_1:
        BL       SamplingDelay
//  201         SamplingDelay();
        BL       SamplingDelay
//  202         CLK_SetVal();       /* CLK = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  203         SamplingDelay();
        BL       SamplingDelay
//  204         SamplingDelay();
        BL       SamplingDelay
//  205         CLK_ClrVal();       /* CLK = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  206     }
        ADDS     R4,R4,#+1
??StartIntegrationFront_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BCC.N    ??StartIntegrationFront_1
//  207     SamplingDelay();
        BL       SamplingDelay
//  208     SamplingDelay();
        BL       SamplingDelay
//  209     CLK_SetVal();           /* CLK = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  210     SamplingDelay();
        BL       SamplingDelay
//  211     SamplingDelay();
        BL       SamplingDelay
//  212     CLK_ClrVal();           /* CLK = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  213 }
        POP      {R4,PC}          ;; return
//  214 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  215 void StartIntegrationZong(void)
//  216 {
StartIntegrationZong:
        PUSH     {R4,LR}
//  217     unsigned char i;
//  218 
//  219     //SI_SetVal();            /* SI  = 1 */
//  220     SI_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  221     SamplingDelay();
        BL       SamplingDelay
//  222     //CLK_SetVal();           /* CLK = 1 */
//  223     CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  224     SamplingDelay();
        BL       SamplingDelay
//  225     //SI_ClrVal();            /* SI  = 0 */
//  226     SI_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  227     SamplingDelay();
        BL       SamplingDelay
//  228     //CLK_ClrVal();           /* CLK = 0 */
//  229     CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  230 
//  231     for(i=0; i<127; i++)
        MOVS     R4,#+0
        B.N      ??StartIntegrationZong_0
//  232     {
//  233         SamplingDelay();
??StartIntegrationZong_1:
        BL       SamplingDelay
//  234         SamplingDelay();
        BL       SamplingDelay
//  235         //CLK_SetVal();       /* CLK = 1 */
//  236         CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  237         SamplingDelay();
        BL       SamplingDelay
//  238         SamplingDelay();
        BL       SamplingDelay
//  239         //CLK_ClrVal();       /* CLK = 0 */
//  240         CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  241     }
        ADDS     R4,R4,#+1
??StartIntegrationZong_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BCC.N    ??StartIntegrationZong_1
//  242     SamplingDelay();
        BL       SamplingDelay
//  243     SamplingDelay();
        BL       SamplingDelay
//  244     //CLK_SetVal();           /* CLK = 1 */
//  245     CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  246     SamplingDelay();
        BL       SamplingDelay
//  247     SamplingDelay();
        BL       SamplingDelay
//  248     //CLK_ClrVal();           /* CLK = 0 */
//  249     CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  250 }
        POP      {R4,PC}          ;; return
//  251 
//  252 
//  253 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 void ImageCapture_F(uint8 * ImageData_F)
//  255 {
ImageCapture_F:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  256     unsigned char i;
//  257     extern uint8 AtemP;
//  258 
//  259     SI_SetVal();            
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  260     SamplingDelay();
        BL       SamplingDelay
//  261     CLK_SetVal();          
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  262     SamplingDelay();
        BL       SamplingDelay
//  263     SI_ClrVal();           
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  264     SamplingDelay();
        BL       SamplingDelay
//  265     
//  266     //Delay 10us for sample the first pixel
//  267     for(i = 0; i < 150; i++)//由10us改为10*8/5us
        MOVS     R5,#+0
        B.N      ??ImageCapture_F_0
//  268     {
//  269       SamplingDelay();  //200ns
??ImageCapture_F_1:
        BL       SamplingDelay
//  270     }
        ADDS     R5,R5,#+1
??ImageCapture_F_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+150
        BCC.N    ??ImageCapture_F_1
//  271     //Sampling Pixel_F 1
//  272     *ImageData_F =  hw_ad_once(1, 6, 8);
        MOVS     R2,#+8
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  273     ImageData_F ++ ;
        ADDS     R4,R4,#+1
//  274     CLK_ClrVal();          
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  275     
//  276     for(i=0; i<127; i++)
        MOVS     R5,#+0
        B.N      ??ImageCapture_F_2
//  277     {
//  278         SamplingDelay();
??ImageCapture_F_3:
        BL       SamplingDelay
//  279         SamplingDelay();
        BL       SamplingDelay
//  280         CLK_SetVal();       
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  281         SamplingDelay();
        BL       SamplingDelay
//  282         SamplingDelay();
        BL       SamplingDelay
//  283 
//  284         //Sampling Pixel_F 2~128
//  285         *ImageData_F = hw_ad_once(1, 6, 8);
        MOVS     R2,#+8
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  286         ImageData_F ++;
        ADDS     R4,R4,#+1
//  287         CLK_ClrVal();      
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  288     }
        ADDS     R5,R5,#+1
??ImageCapture_F_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+127
        BCC.N    ??ImageCapture_F_3
//  289     SamplingDelay();
        BL       SamplingDelay
//  290     SamplingDelay();
        BL       SamplingDelay
//  291     CLK_SetVal();          
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  292     SamplingDelay();
        BL       SamplingDelay
//  293     SamplingDelay();
        BL       SamplingDelay
//  294     CLK_ClrVal();          
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  295 }
        POP      {R0,R4,R5,PC}    ;; return
//  296 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void ImageCapture_Z(uint8 * ImageData_Z)
//  298 {
ImageCapture_Z:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  299     unsigned char i;
//  300     extern uint8 AtemP;
//  301 
//  302     SI_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  303     SamplingDelay();
        BL       SamplingDelay
//  304     CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  305     SamplingDelay();
        BL       SamplingDelay
//  306     SI_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  307     SamplingDelay();
        BL       SamplingDelay
//  308     //Delay 10us for sample the first pixel
//  309     for(i = 0; i < 80; i++)//由10us改为10*10/5us
        MOVS     R5,#+0
        B.N      ??ImageCapture_Z_0
//  310     {
//  311       SamplingDelay();  //200ns
??ImageCapture_Z_1:
        BL       SamplingDelay
//  312     }
        ADDS     R5,R5,#+1
??ImageCapture_Z_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+80
        BCC.N    ??ImageCapture_Z_1
//  313     //Sampling Pixel_Z 1
//  314     *ImageData_Z= hw_ad_once(1, 14, 8);
        MOVS     R2,#+8
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  315     ImageData_Z ++;
        ADDS     R4,R4,#+1
//  316     CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  317 
//  318     for(i=0; i<127; i++)
        MOVS     R5,#+0
        B.N      ??ImageCapture_Z_2
//  319     {
//  320         SamplingDelay();
??ImageCapture_Z_3:
        BL       SamplingDelay
//  321         SamplingDelay();
        BL       SamplingDelay
//  322         CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  323         SamplingDelay();
        BL       SamplingDelay
//  324         SamplingDelay();
        BL       SamplingDelay
//  325         
//  326         //Sampling Pixel_F 2~128
//  327         *ImageData_Z= hw_ad_once(1, 14, 8);
        MOVS     R2,#+8
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  328         ImageData_Z++;
        ADDS     R4,R4,#+1
//  329         CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  330     }
        ADDS     R5,R5,#+1
??ImageCapture_Z_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+127
        BCC.N    ??ImageCapture_Z_3
//  331     SamplingDelay();
        BL       SamplingDelay
//  332     SamplingDelay();
        BL       SamplingDelay
//  333     CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  334     SamplingDelay();
        BL       SamplingDelay
//  335     SamplingDelay();
        BL       SamplingDelay
//  336     CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  337 }
        POP      {R0,R4,R5,PC}    ;; return
//  338 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  339 int16  TargetPixelAverageVoltage = 30;                          //设定目标平均电压值，实际电压的10倍 
TargetPixelAverageVoltage:
        DATA
        DC16 30

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  340 int16  PixelAverageVoltageError = 0;                            //设定目标平均电压值与实际值的偏差，实际电压的10倍 
PixelAverageVoltageError:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  341 int16  TargetPixelAverageVoltageAllowError = 2;                 //设定目标平均电压值允许的偏差，实际电压的10倍 
TargetPixelAverageVoltageAllowError:
        DATA
        DC16 2
//  342 
//  343 extern uint8 Pixel_F[128];

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  344 uint8        PixelAverageValue_Front=0;                                       //128个像素点的平均AD值 
PixelAverageValue_Front:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  345 uint8        PixelAverageVoltage_Front=0;                                     //128个像素点的平均电压值的10倍 
PixelAverageVoltage_Front:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  346 uint8        IntegrationTime_Front=10;                                        //曝光时间，单位ms 
IntegrationTime_Front:
        DATA
        DC8 10

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  347 void CalculateIntegrationTimeFront(void)
//  348 {
CalculateIntegrationTimeFront:
        PUSH     {R7,LR}
//  349     PixelAverageValue_Front = PixelAverage(128,Pixel_F);/* 计算128个像素点的平均AD值 */
        LDR.W    R1,??DataTable11_7
        MOVS     R0,#+128
        BL       PixelAverage
        LDR.W    R1,??DataTable11_8
        STRB     R0,[R1, #+0]
//  350     PixelAverageVoltage_Front = (uint8)((int)(PixelAverageValue_Front * 25 / 128));/* 计算128个像素点的平均电压值,实际值的10倍 */
        LDR.W    R0,??DataTable11_8
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        MOVS     R1,#+128
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_9
        STRB     R0,[R1, #+0]
//  351     PixelAverageVoltageError = TargetPixelAverageVoltage - PixelAverageVoltage_Front;
        LDR.W    R0,??DataTable11_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_9
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable11_11
        STRH     R0,[R1, #+0]
//  352     if(PixelAverageVoltageError < -TargetPixelAverageVoltageAllowError)
        LDR.W    R0,??DataTable11_11
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        LDRSH    R1,[R1, #+0]
        CMN      R0,R1
        BGE.N    ??CalculateIntegrationTimeFront_0
//  353       IntegrationTime_Front--;//多于目标值，曝光时间大了
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  354     if(PixelAverageVoltageError > TargetPixelAverageVoltageAllowError)
??CalculateIntegrationTimeFront_0:
        LDR.W    R0,??DataTable11_12
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_11
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??CalculateIntegrationTimeFront_1
//  355       IntegrationTime_Front++;//少于目标值，曝光时间小了
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  356     if(IntegrationTime_Front <= 1)
??CalculateIntegrationTimeFront_1:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCS.N    ??CalculateIntegrationTimeFront_2
//  357       IntegrationTime_Front = 1;
        LDR.W    R0,??DataTable11_13
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  358     if(IntegrationTime_Front >= 20)
??CalculateIntegrationTimeFront_2:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BCC.N    ??CalculateIntegrationTimeFront_3
//  359       IntegrationTime_Front = 20;
        LDR.W    R0,??DataTable11_13
        MOVS     R1,#+20
        STRB     R1,[R0, #+0]
//  360 }
??CalculateIntegrationTimeFront_3:
        POP      {R0,PC}          ;; return
//  361 
//  362 extern uint8 Pixel_Z[128];

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  363 uint8        PixelAverageValue_Zong=0;
PixelAverageValue_Zong:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  364 uint8        PixelAverageVoltage_Zong=0;
PixelAverageVoltage_Zong:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  365 uint8        IntegrationTime_Zong = 2;                              // 曝光时间，单位ms
IntegrationTime_Zong:
        DATA
        DC8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void CalculateIntegrationTimeZong(void)
//  367 {
CalculateIntegrationTimeZong:
        PUSH     {R7,LR}
//  368     PixelAverageValue_Zong = PixelAverage(128,Pixel_Z);/* 计算128个像素点的平均AD值 */
        LDR.W    R1,??DataTable11_14
        MOVS     R0,#+128
        BL       PixelAverage
        LDR.W    R1,??DataTable11_15
        STRB     R0,[R1, #+0]
//  369     PixelAverageVoltage_Zong = (uint8)((int)(PixelAverageValue_Zong * 25 / 128));/* 计算128个像素点的平均电压值,实际值的10倍 */
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        MOVS     R1,#+128
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_16
        STRB     R0,[R1, #+0]
//  370     PixelAverageVoltageError = TargetPixelAverageVoltage - PixelAverageVoltage_Zong;
        LDR.W    R0,??DataTable11_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_16
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable11_11
        STRH     R0,[R1, #+0]
//  371     if(PixelAverageVoltageError < -TargetPixelAverageVoltageAllowError)
        LDR.W    R0,??DataTable11_11
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        LDRSH    R1,[R1, #+0]
        CMN      R0,R1
        BGE.N    ??CalculateIntegrationTimeZong_0
//  372       IntegrationTime_Zong--;
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable11_17
        STRB     R0,[R1, #+0]
//  373     if(PixelAverageVoltageError > TargetPixelAverageVoltageAllowError)
??CalculateIntegrationTimeZong_0:
        LDR.W    R0,??DataTable11_12
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_11
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??CalculateIntegrationTimeZong_1
//  374       IntegrationTime_Zong++;
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_17
        STRB     R0,[R1, #+0]
//  375     if(IntegrationTime_Zong <= 1)
??CalculateIntegrationTimeZong_1:
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCS.N    ??CalculateIntegrationTimeZong_2
//  376       IntegrationTime_Zong = 1;
        LDR.W    R0,??DataTable11_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  377     if(IntegrationTime_Zong >= 3)
??CalculateIntegrationTimeZong_2:
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BCC.N    ??CalculateIntegrationTimeZong_3
//  378       IntegrationTime_Zong = 3;
        LDR.W    R0,??DataTable11_17
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  379 }
??CalculateIntegrationTimeZong_3:
        POP      {R0,PC}          ;; return
//  380 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  381 uint8 PixelAverage(uint8 len, uint8 *data)
//  382 {
PixelAverage:
        PUSH     {R4}
//  383   uint8 i;
//  384   uint16 sum = 0;
        MOVS     R3,#+0
//  385   for(i = 0; i<len; i++)
        MOVS     R2,#+0
        B.N      ??PixelAverage_0
//  386   {
//  387      sum = sum + *data++;
??PixelAverage_1:
        LDRB     R4,[R1, #+0]
        UXTAB    R3,R3,R4
        ADDS     R1,R1,#+1
//  388   }
        ADDS     R2,R2,#+1
??PixelAverage_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BCC.N    ??PixelAverage_1
//  389   return ((uint8)(sum/len));
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SDIV     R0,R3,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  390 }
//  391 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  392 int Abs(int a)
//  393 {
//  394   int i;
//  395   i=a;
//  396   if(i<0) i=-a;
Abs:
        CMP      R0,#+0
        BPL.N    ??Abs_0
        RSBS     R0,R0,#+0
        B.N      ??Abs_1
//  397   else i=a;
//  398   return i;
??Abs_0:
??Abs_1:
        BX       LR               ;; return
//  399 }
//  400 
//  401 //CCD二值化
//  402 extern  uint8  IT_ref;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  403 int16  bodong=0;
bodong:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  404 int16 high_aver_f=0,low_aver_f=0;
high_aver_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
low_aver_f:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  405 void binaryzation_F(unsigned char *point)
//  406 {
binaryzation_F:
        PUSH     {R3-R7,LR}
//  407   uint8 i,j,num_high_f=0,num_low_f=0,max_label=0,min_label=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R0,#+0
//  408   uint8 tb_fg=0;
        MOVS     R1,#+0
//  409   
//  410   front_max=Pixel_F[7];
        LDR.W    R2,??DataTable11_7
        LDRB     R2,[R2, #+7]
        LDR.W    R3,??DataTable11_18
        STRH     R2,[R3, #+0]
//  411   front_min=Pixel_F[7];
        LDR.W    R2,??DataTable11_7
        LDRB     R2,[R2, #+7]
        LDR.W    R3,??DataTable11_19
        STRH     R2,[R3, #+0]
//  412 
//  413   for(i=7;i<=120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_0
//  414   {
//  415     if(front_max<Pixel_F[i])
//  416     {
//  417       max_label=i;
//  418       front_max=Pixel_F[i];
//  419     }
//  420     else if(front_min>Pixel_F[i])
??binaryzation_F_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable11_19
        LDRSH    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??binaryzation_F_2
//  421     {
//  422       min_label=i;
        MOVS     R0,R7
//  423       front_min=Pixel_F[i];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable11_7
        LDRB     R1,[R7, R1]
        LDR.W    R2,??DataTable11_19
        STRH     R1,[R2, #+0]
//  424     }
??binaryzation_F_2:
        ADDS     R7,R7,#+1
??binaryzation_F_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+121
        BCS.N    ??binaryzation_F_3
        LDR.W    R0,??DataTable11_18
        LDRSH    R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable11_7
        LDRB     R1,[R7, R1]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??binaryzation_F_1
        MOVS     R6,R7
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable11_18
        STRH     R0,[R1, #+0]
        B.N      ??binaryzation_F_2
//  425   }
//  426   if((front_max-Pixel_F[max_label-2]>10)&&(front_max-Pixel_F[max_label+2]>10)&&(Abs(Pixel_F[max_label-2]-Pixel_F[max_label+2])<10))
??binaryzation_F_3:
        LDR.W    R0,??DataTable11_18
        LDRSH    R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable11_7
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-2]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BLT.N    ??binaryzation_F_4
        LDR.W    R0,??DataTable11_18
        LDRSH    R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable11_7
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BLT.N    ??binaryzation_F_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable11_7
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #-2]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable11_7
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R0,#+10
        BGE.N    ??binaryzation_F_4
//  427   {
//  428     Pixel_F[max_label]=(Pixel_F[max_label-2]+Pixel_F[max_label+2])/2;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable11_7
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #-2]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable11_7
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+2]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable11_7
        STRB     R0,[R6, R1]
//  429     front_max=Pixel_F[max_label];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R6, R0]
        LDR.W    R1,??DataTable11_18
        STRH     R0,[R1, #+0]
//  430   }
//  431   Aver_F=(front_max+front_min)/2;
??binaryzation_F_4:
        LDR.W    R0,??DataTable11_18
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_19
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_20
        STRH     R0,[R1, #+0]
//  432   /*
//  433   //确定是否存在跳变沿
//  434   tb_fg=0;
//  435   for(i=7;i<120;i++)
//  436   {
//  437     if(Abs(Pixel_F[i]-Pixel_F[i+1])>(front_max-front_min)/5)
//  438     {
//  439       tb_fg=1;
//  440       break;
//  441     }
//  442   }
//  443   */
//  444   for(i=7;i<=120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_5
//  445   {
//  446     if(Pixel_F[i]>=Aver_F) 
//  447     {
//  448       high_aver_f+=Pixel_F[i];
//  449       num_high_f++;
//  450     }
//  451     else 
//  452     {
//  453       low_aver_f+=Pixel_F[i];
??binaryzation_F_6:
        LDR.W    R0,??DataTable11_21
        LDRH     R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable11_7
        LDRB     R1,[R7, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable11_21
        STRH     R0,[R1, #+0]
//  454       num_low_f++;
        ADDS     R5,R5,#+1
//  455     }
??binaryzation_F_7:
        ADDS     R7,R7,#+1
??binaryzation_F_5:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+121
        BCS.N    ??binaryzation_F_8
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable11_20
        LDRSH    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.N    ??binaryzation_F_6
        LDR.W    R0,??DataTable11_22
        LDRH     R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable11_7
        LDRB     R1,[R7, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable11_22
        STRH     R0,[R1, #+0]
        ADDS     R4,R4,#+1
        B.N      ??binaryzation_F_7
//  456   }
//  457   high_aver_f=high_aver_f/num_high_f;
??binaryzation_F_8:
        LDR.W    R0,??DataTable11_22
        LDRSH    R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SDIV     R0,R0,R4
        LDR.W    R1,??DataTable11_22
        STRH     R0,[R1, #+0]
//  458   low_aver_f=low_aver_f/num_low_f;
        LDR.W    R0,??DataTable11_21
        LDRSH    R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SDIV     R0,R0,R5
        LDR.W    R1,??DataTable11_21
        STRH     R0,[R1, #+0]
//  459   Aver_F=(high_aver_f+low_aver_f)/2;
        LDR.W    R0,??DataTable11_22
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_21
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_20
        STRH     R0,[R1, #+0]
//  460   //LCD_P8x16_number(10,4,high_aver_f);
//  461   //LCD_P8x16_number(70,4,low_aver_f);
//  462 
//  463   //tb_fg=0;
//  464   for(i=7;i<120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_9
//  465   {
//  466     bodong+=Abs(Pixel_F[i]-Aver_F);
??binaryzation_F_10:
        LDR.W    R0,??DataTable11_23
        LDRH     R4,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable11_20
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        ADDS     R0,R0,R4
        LDR.W    R1,??DataTable11_23
        STRH     R0,[R1, #+0]
//  467   }
        ADDS     R7,R7,#+1
??binaryzation_F_9:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+120
        BCC.N    ??binaryzation_F_10
//  468   bodong=bodong/114;
        LDR.W    R0,??DataTable11_23
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+114
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_23
        STRH     R0,[R1, #+0]
//  469   //赛道
//  470   if(bodong>15)
        LDR.W    R0,??DataTable11_23
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??binaryzation_F_11
//  471   {
//  472     //执行二值化
//  473     for(i=7;i<=120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_12
//  474     {
//  475       if(Pixel_F[i]>=Aver_F) Pixel_F[i]=1;
//  476       else Pixel_F[i]=0;
??binaryzation_F_13:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        MOVS     R1,#+0
        STRB     R1,[R7, R0]
??binaryzation_F_14:
        ADDS     R7,R7,#+1
??binaryzation_F_12:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+121
        BCS.N    ??binaryzation_F_15
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable11_20
        LDRSH    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.N    ??binaryzation_F_13
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        MOVS     R1,#+1
        STRB     R1,[R7, R0]
        B.N      ??binaryzation_F_14
//  477     }
//  478     
//  479     if(Pixel_F[7]==1)
??binaryzation_F_15:
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+7]
        CMP      R0,#+1
        BNE.N    ??binaryzation_F_16
//  480       for(i=0;i<=7;i++) Pixel_F[i]=1;
        MOVS     R7,#+0
??binaryzation_F_17:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCS.N    ??binaryzation_F_18
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_7
        MOVS     R1,#+1
        STRB     R1,[R7, R0]
        ADDS     R7,R7,#+1
        B.N      ??binaryzation_F_17
//  481     else
//  482       for(i=0;i<=7;i++) Pixel_F[i]=0;
??binaryzation_F_16:
        MOVS     R7,#+0
        B.N      ??binaryzation_F_19
??binaryzation_F_20:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_7
        MOVS     R1,#+0
        STRB     R1,[R7, R0]
        ADDS     R7,R7,#+1
??binaryzation_F_19:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCC.N    ??binaryzation_F_20
//  483     
//  484     if(Pixel_F[120]==1)
??binaryzation_F_18:
        LDR.N    R0,??DataTable11_7
        LDRB     R0,[R0, #+120]
        CMP      R0,#+1
        BNE.N    ??binaryzation_F_21
//  485       for(i=120;i<=127;i++) Pixel_F[i]=1;
        MOVS     R7,#+120
??binaryzation_F_22:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BCS.N    ??binaryzation_F_23
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_7
        MOVS     R1,#+1
        STRB     R1,[R7, R0]
        ADDS     R7,R7,#+1
        B.N      ??binaryzation_F_22
//  486     else
//  487       for(i=120;i<=127;i++) Pixel_F[i]=0;
??binaryzation_F_21:
        MOVS     R7,#+120
??binaryzation_F_24:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BCS.N    ??binaryzation_F_23
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_7
        MOVS     R1,#+0
        STRB     R1,[R7, R0]
        ADDS     R7,R7,#+1
        B.N      ??binaryzation_F_24
//  488     
//  489   }
//  490   //盲区
//  491   else if(bodong<=15)
??binaryzation_F_11:
        LDR.N    R0,??DataTable11_23
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+16
        BGE.N    ??binaryzation_F_23
//  492   {
//  493      if(IntegrationTime_Front>IT_ref)
        LDR.N    R0,??DataTable11_24
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable11_13
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??binaryzation_F_25
//  494        for(i=0;i<=127;i++) Pixel_F[i]=0;
        MOVS     R7,#+0
??binaryzation_F_26:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BCS.N    ??binaryzation_F_23
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_7
        MOVS     R1,#+0
        STRB     R1,[R7, R0]
        ADDS     R7,R7,#+1
        B.N      ??binaryzation_F_26
//  495      else
//  496        for(i=0;i<=127;i++) Pixel_F[i]=1;
??binaryzation_F_25:
        MOVS     R7,#+0
        B.N      ??binaryzation_F_27
??binaryzation_F_28:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_7
        MOVS     R1,#+1
        STRB     R1,[R7, R0]
        ADDS     R7,R7,#+1
??binaryzation_F_27:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BCC.N    ??binaryzation_F_28
//  497   }
//  498   /*
//  499   if(tb_fg==1)
//  500   {
//  501     
//  502   }
//  503   */
//  504   //滤波
//  505   for(j=3;j<125;j++)
??binaryzation_F_23:
        MOVS     R0,#+3
        B.N      ??binaryzation_F_29
//  506   {
//  507     if( Pixel_F[j]==0)
??binaryzation_F_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_F_31
//  508     {
//  509       if((Pixel_F[j-1]==1)&&(Pixel_F[j+1]==1))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_F_31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_F_31
//  510         Pixel_F[j]=1;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  511     }
//  512     if(Pixel_F[j]==1)
??binaryzation_F_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_F_32
//  513     {
//  514       if((Pixel_F[j-1]==0)&&(Pixel_F[j+1]==0))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_F_32
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_F_32
//  515         Pixel_F[j]=0;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  516     }
//  517   }
??binaryzation_F_32:
        ADDS     R0,R0,#+1
??binaryzation_F_29:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+125
        BCC.N    ??binaryzation_F_30
//  518 }
        POP      {R0,R4-R7,PC}    ;; return
//  519 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  520 int16 high_aver_z=0,low_aver_z=0;
high_aver_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
low_aver_z:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  521 void binaryzation_Z(unsigned char *point)
//  522 {
binaryzation_Z:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  523   uint8 i,j,num_high_z=0,num_low_z=0,max_label=0,min_label=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R0,#+0
//  524   zong_max=Pixel_Z[1];
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable11_25
        STRH     R1,[R2, #+0]
//  525   zong_min=Pixel_Z[1];
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable11_26
        STRH     R1,[R2, #+0]
//  526 
//  527   for(i=1;i<127;i++)
        MOVS     R1,#+1
        B.N      ??binaryzation_Z_0
//  528   {
//  529     if(zong_max<Pixel_Z[i])
//  530     {
//  531       max_label=i;
//  532       zong_max=Pixel_Z[i];
//  533     }
//  534     else if(zong_min>Pixel_Z[i])
??binaryzation_Z_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_14
        LDRB     R0,[R1, R0]
        LDR.N    R2,??DataTable11_26
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BGE.N    ??binaryzation_Z_2
//  535     {
//  536       min_label=i;
        MOVS     R0,R1
//  537       zong_min=Pixel_Z[i];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable11_14
        LDRB     R2,[R1, R2]
        LDR.N    R3,??DataTable11_26
        STRH     R2,[R3, #+0]
//  538     }
??binaryzation_Z_2:
        ADDS     R1,R1,#+1
??binaryzation_Z_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+127
        BCS.N    ??binaryzation_Z_3
        LDR.N    R0,??DataTable11_25
        LDRSH    R0,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable11_14
        LDRB     R2,[R1, R2]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BGE.N    ??binaryzation_Z_1
        MOVS     R7,R1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_14
        LDRB     R0,[R1, R0]
        LDR.N    R2,??DataTable11_25
        STRH     R0,[R2, #+0]
        B.N      ??binaryzation_Z_2
//  539   }
//  540   if((zong_max-Pixel_Z[max_label-2]>10)&&(zong_max-Pixel_Z[max_label+2]>10)&&(Abs(Pixel_Z[max_label-2]-Pixel_Z[max_label+2])<10))
??binaryzation_Z_3:
        LDR.N    R0,??DataTable11_25
        LDRSH    R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-2]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BLT.N    ??binaryzation_Z_4
        LDR.N    R0,??DataTable11_25
        LDRSH    R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BLT.N    ??binaryzation_Z_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_14
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-2]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R0,#+10
        BGE.N    ??binaryzation_Z_4
//  541   {
//  542     Pixel_Z[max_label]=Pixel_Z[max_label-2]+Pixel_Z[max_label+2];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_14
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-2]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+2]
        ADDS     R0,R1,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable11_14
        STRB     R0,[R7, R1]
//  543     zong_max=Pixel_Z[max_label];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_14
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable11_25
        STRH     R0,[R1, #+0]
//  544   }
//  545   Aver_Z=(zong_max+zong_min)/2;
??binaryzation_Z_4:
        LDR.N    R0,??DataTable11_25
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable11_26
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable11_27
        STRH     R0,[R1, #+0]
//  546   for(i=0;i<127;i++)
        MOVS     R1,#+0
        B.N      ??binaryzation_Z_5
//  547   {
//  548     if(Pixel_Z[i]>=Aver_Z) 
//  549     {
//  550       high_aver_z+=Pixel_Z[i];
//  551       num_high_z++;
//  552     }
//  553     else 
//  554     {
//  555       low_aver_z+=Pixel_Z[i];
??binaryzation_Z_6:
        LDR.N    R0,??DataTable11_28
        LDRH     R0,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable11_14
        LDRB     R2,[R1, R2]
        ADDS     R0,R0,R2
        LDR.N    R2,??DataTable11_28
        STRH     R0,[R2, #+0]
//  556       num_low_z++;
        ADDS     R6,R6,#+1
//  557     }
??binaryzation_Z_7:
        ADDS     R1,R1,#+1
??binaryzation_Z_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+127
        BCS.N    ??binaryzation_Z_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_14
        LDRB     R0,[R1, R0]
        LDR.N    R2,??DataTable11_27
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BLT.N    ??binaryzation_Z_6
        LDR.N    R0,??DataTable11_29
        LDRH     R0,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable11_14
        LDRB     R2,[R1, R2]
        ADDS     R0,R0,R2
        LDR.N    R2,??DataTable11_29
        STRH     R0,[R2, #+0]
        ADDS     R5,R5,#+1
        B.N      ??binaryzation_Z_7
//  558   }
//  559   high_aver_z=high_aver_z/num_high_z;
??binaryzation_Z_8:
        LDR.N    R0,??DataTable11_29
        LDRSH    R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SDIV     R0,R0,R5
        LDR.N    R1,??DataTable11_29
        STRH     R0,[R1, #+0]
//  560   low_aver_z=low_aver_z/num_low_z;
        LDR.N    R0,??DataTable11_28
        LDRSH    R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SDIV     R0,R0,R6
        LDR.N    R1,??DataTable11_28
        STRH     R0,[R1, #+0]
//  561   Aver_Z=(high_aver_z+low_aver_z)/2;
        LDR.N    R0,??DataTable11_29
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable11_28
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable11_27
        STRH     R0,[R1, #+0]
//  562   //LCD_P8x16_number(10,4,high_aver_z);
//  563   //LCD_P8x16_number(70,4,low_aver_z);
//  564 
//  565   for(i=0;i<128;i++)
        MOVS     R1,#+0
        B.N      ??binaryzation_Z_9
//  566   {
//  567     if(*point>=Aver_Z)//PixelAverageValue_Front*0.6
//  568       *point=1;
//  569     else
//  570       *point=0;
??binaryzation_Z_10:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  571     point++;
??binaryzation_Z_11:
        ADDS     R4,R4,#+1
        ADDS     R1,R1,#+1
??binaryzation_Z_9:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+128
        BCS.N    ??binaryzation_Z_12
        LDRB     R0,[R4, #+0]
        LDR.N    R2,??DataTable11_27
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BLT.N    ??binaryzation_Z_10
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
        B.N      ??binaryzation_Z_11
//  572   }
//  573   //滤波
//  574   for(j=3;j<125;j++)
??binaryzation_Z_12:
        MOVS     R0,#+3
        B.N      ??binaryzation_Z_13
//  575   {
//  576     if( Pixel_Z[j]==0)
??binaryzation_Z_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_Z_15
//  577     {
//  578       if((Pixel_Z[j-1]==1)&&(Pixel_Z[j+1]==1))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_Z_15
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_Z_15
//  579         Pixel_Z[j]=1;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  580     }
//  581     if(Pixel_Z[j]==1)
??binaryzation_Z_15:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_Z_16
//  582     {
//  583       if((Pixel_Z[j-1]==0)&&(Pixel_Z[j+1]==0))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_Z_16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_Z_16
//  584         Pixel_Z[j]=0;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  585     }
//  586   }
??binaryzation_Z_16:
        ADDS     R0,R0,#+1
??binaryzation_Z_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+125
        BCC.N    ??binaryzation_Z_14
//  587   
//  588   //for(j=0;j<128;j++) Pixel_Z[j]=Pixel_Z[j]*100;
//  589 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     g_lnInputVoltageSigma

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     HONGWAI_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     HONGWAI_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     hongwai_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     hongwai_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     Pixel_F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     PixelAverageValue_Front

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     PixelAverageVoltage_Front

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     TargetPixelAverageVoltage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     PixelAverageVoltageError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     TargetPixelAverageVoltageAllowError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     IntegrationTime_Front

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     Pixel_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     PixelAverageValue_Zong

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     PixelAverageVoltage_Zong

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     IntegrationTime_Zong

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     front_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     front_min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     Aver_F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_21:
        DC32     low_aver_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_22:
        DC32     high_aver_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_23:
        DC32     bodong

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_24:
        DC32     IT_ref

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_25:
        DC32     zong_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_26:
        DC32     zong_min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_27:
        DC32     Aver_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_28:
        DC32     low_aver_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_29:
        DC32     high_aver_z
//  590 
//  591 //-----------------------------------------------------------------------------------------------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  592 int16   rensha_count=0;
rensha_count:
        DS8 2
//  593 extern float k_out;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  594 int16  lost_all_count=0;
lost_all_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  595 uint8  lost_all_flag=0,lost_left_flag=0,lost_right_flag=0;
lost_all_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
lost_left_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
lost_right_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  596 uint8  Rdiaotou_flag=0;
Rdiaotou_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  597 int16  Rdiaotou_count=0,Rqing_count=0;
Rdiaotou_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rqing_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  598 uint8  Ldiaotou_flag=0;
Ldiaotou_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  599 int16  Ldiaotou_count=0,Lqing_count=0;
Ldiaotou_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Lqing_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  600 uint8  banma_flag=0;
banma_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  601 uint8  LHOLDdiao_flag=0,RHOLDdiao_flag=0;
LHOLDdiao_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
RHOLDdiao_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  602 uint8  Lendiao=0,Rendiao=0;
Lendiao:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rendiao:
        DS8 1
//  603 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  604 uint8  rzguo_flag=0;
rzguo_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  605 uint8  rzguo_count=0;
rzguo_count:
        DS8 1
//  606 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  607 int16   ZZ_count=0;
ZZ_count:
        DS8 2
//  608 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  609 int16 route_f[100]={0};
route_f:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  610 int16 chafang_f[100]={0};
chafang_f:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  611 int16 route_ave_f=0;
route_ave_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  612 int16 fangcha_f=0,fangcha_qian_f=0,fangcha_hou_f=0;
fangcha_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_qian_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_hou_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  613 int16 Rpre1=0,Rpre2=0,Rpre3=0,Rpre4=0,Lpre1=0,Lpre2=0,Lpre3=0,Lpre4=0;
Rpre1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rpre2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rpre3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rpre4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Lpre1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Lpre2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Lpre3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Lpre4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  614 int16 R_aver=0,L_aver=0;
R_aver:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
L_aver:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  615 int16 L_fch=0,R_fch=0;
L_fch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
R_fch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  616 int16 qpx_count=0;
qpx_count:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  617 uint8 rzop=1;
rzop:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  618 int16 front_l_fg_last=0,front_r_fg_last=0;
front_l_fg_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_fg_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  619 int16 front_l_flag=0,front_r_flag=0;
front_l_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  620 int16 real_l=0,real_r=0;
real_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
real_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  621 uint8 mq=0,mq_last=0;
mq:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
mq_last:
        DS8 1
//  622 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  623 int16 LR_count=0;
LR_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  624 int16 Lr_count=0;
Lr_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  625 int16 lR_count=0;
lR_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  626 int16 lr_count=0;
lr_count:
        DS8 2
//  627 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  628 int16 jiao_L=20,jiao_R=23;
jiao_L:
        DATA
        DC16 20

        SECTION `.data`:DATA:REORDER:NOROOT(1)
jiao_R:
        DATA
        DC16 23
//  629 
//  630 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  631 void get_front()
//  632 {
get_front:
        PUSH     {R4,LR}
//  633     int16 i,j;
//  634     uint8 hold_flag=0;
        MOVS     R0,#+0
//  635     
//  636     if(qpx_count++>50) qpx_count=51;
        LDR.W    R1,??DataTable12
        LDRSH    R1,[R1, #+0]
        ADDS     R2,R1,#+1
        LDR.W    R3,??DataTable12
        STRH     R2,[R3, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+51
        BLT.N    ??get_front_0
        LDR.W    R0,??DataTable12
        MOVS     R1,#+51
        STRH     R1,[R0, #+0]
//  637     
//  638     hold_flag=0;
??get_front_0:
        MOVS     R0,#+0
//  639     
//  640     mq=0;
        LDR.W    R1,??DataTable12_1
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  641     
//  642     if(LHOLDdiao_flag==0)
        LDR.W    R1,??DataTable12_2
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??get_front_1
//  643     {
//  644       Ldiaotou_flag=0;
        LDR.W    R0,??DataTable12_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  645     }
//  646     if(RHOLDdiao_flag==0)
??get_front_1:
        LDR.W    R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_2
//  647     {
//  648       Rdiaotou_flag=0;
        LDR.W    R0,??DataTable12_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  649     }
//  650 
//  651     for(i=121;i>=6;i--)
??get_front_2:
        MOVS     R0,#+121
        B.N      ??get_front_3
//  652     {
//  653       if((Pixel_F[i]==1)&&(Pixel_F[i-1]==0)&&(Pixel_F[i-2]==0)&&(Pixel_F[i-3]==0))
//  654       {
//  655         front_l = i-2;
//  656         front_l_flag = 1;
//  657         break;
//  658       }
//  659       front_l_flag = 0;
??get_front_4:
        LDR.W    R1,??DataTable12_6
        MOVS     R2,#+0
        STRH     R2,[R1, #+0]
        SUBS     R0,R0,#+1
??get_front_3:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+6
        BLT.N    ??get_front_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_front_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+0
        BNE.N    ??get_front_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+0
        BNE.N    ??get_front_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-3]
        CMP      R1,#+0
        BNE.N    ??get_front_4
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  660     }
//  661     for(j=6;j<=121;j++)
??get_front_5:
        MOVS     R0,#+6
        B.N      ??get_front_6
//  662     {
//  663        if((Pixel_F[j]==1)&&(Pixel_F[j+1]==0)&&(Pixel_F[j+2]==0)&&(Pixel_F[j+3]==0))
//  664       {
//  665         front_r = j+2;
//  666         front_r_flag = 1;
//  667         break;
//  668       }
//  669       front_r_flag = 0;
??get_front_7:
        LDR.W    R1,??DataTable12_9
        MOVS     R2,#+0
        STRH     R2,[R1, #+0]
        ADDS     R0,R0,#+1
??get_front_6:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+122
        BGE.N    ??get_front_8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_front_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+0
        BNE.N    ??get_front_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+0
        BNE.N    ??get_front_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_7
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+3]
        CMP      R1,#+0
        BNE.N    ??get_front_7
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_9
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  670     }
//  671     
//  672     //A.采到左右数据
//  673     if((front_l_flag == 1)&&(front_r_flag == 1))
??get_front_8:
        LDR.W    R0,??DataTable12_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_9
        LDR.W    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_9
//  674     {  
//  675       LR_count++;
        LDR.W    R0,??DataTable12_11
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_11
        STRH     R0,[R1, #+0]
//  676       Lr_count=0;
        LDR.W    R0,??DataTable12_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  677       lR_count=0;
        LDR.W    R0,??DataTable13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  678       lr_count=0;
        LDR.W    R0,??DataTable12_13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  679       
//  680       lost_all_flag = 0;
        LDR.W    R0,??DataTable12_14
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  681       //a.1.左值大于右值,有且只有一条有用边     
//  682       if(front_l>front_r)            
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.W    ??get_front_10
//  683       { 
//  684         //-m4-//---------------------------------------
//  685         if(qpx_count>50)//防止启动时主CCD才到起跑线出错
        LDR.W    R0,??DataTable12
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+51
        BLT.W    ??get_front_11
//  686         {
//  687           if(mq_last==1)
        LDR.W    R0,??DataTable12_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_12
//  688           {
//  689             mq=mq_last;
        LDR.W    R0,??DataTable12_1
        LDR.W    R1,??DataTable12_15
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  690             
//  691             if((front_l_fg_last==1)&&(front_r_fg_last==0))  front_r=front_l+front_width;
        LDR.W    R0,??DataTable12_16
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_13
        LDR.W    R0,??DataTable12_17
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_13
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
//  692             if((front_l_fg_last==0)&&(front_r_fg_last==1))  front_l=front_r-front_width;
??get_front_13:
        LDR.W    R0,??DataTable12_16
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_14
        LDR.W    R0,??DataTable12_17
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_14
        LDR.W    R0,??DataTable12_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
//  693             
//  694             front_l_flag=front_l_fg_last;
??get_front_14:
        LDR.W    R0,??DataTable12_6
        LDR.W    R1,??DataTable12_16
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  695             front_r_flag=front_r_fg_last;
        LDR.W    R0,??DataTable12_9
        LDR.W    R1,??DataTable12_17
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_15
//  696           }
//  697           else
//  698           {
//  699             if(Abs((front_l+front_l+front_width)/2-cl_f_pre)>Abs((front_r+front_r-front_width)/2-cl_f_pre)) 
??get_front_12:
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_10
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_18
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_19
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        MOVS     R4,R0
        LDR.W    R0,??DataTable12_8
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_18
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R0,R1
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_19
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R4,R0
        BGE.N    ??get_front_16
//  700               front_l=front_r-front_width;
        LDR.W    R0,??DataTable12_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  701             else 
//  702               front_r=front_l+front_width;
??get_front_16:
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  703           }
//  704         }
//  705         else
//  706         { 
//  707            front_l=front_l_last;
??get_front_11:
        LDR.W    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  708            front_r=front_r_last;
        LDR.W    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_15
//  709         }
//  710       }
//  711       //a.2.右值大于左值,正常
//  712       else
//  713       {
//  714         if(front_r-front_l<front_width-10) 
??get_front_10:
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_18
        LDRSH    R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??get_front_17
//  715         {
//  716           if((front_l+front_r)/2<63) front_l=front_r-(front_r_last-front_l_last);
        LDR.W    R0,??DataTable12_8
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_10
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        CMP      R0,#+63
        BGE.N    ??get_front_18
        LDR.W    R0,??DataTable12_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  717           else front_r = front_l+(front_r_last-front_l_last);
??get_front_18:
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  718         }
//  719         else if(front_r-front_l>=front_width-10)
??get_front_17:
        B.N      ??get_front_15
//  720         {
//  721         }
//  722       }  
//  723     }
//  724     //B.右数据丢失
//  725     else if((front_l_flag == 1)&&(front_r_flag == 0))
??get_front_9:
        LDR.W    R0,??DataTable12_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_19
        LDR.W    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_19
//  726     {
//  727       LR_count=0;
        LDR.W    R0,??DataTable12_11
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  728       Lr_count++;
        LDR.W    R0,??DataTable12_12
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_12
        STRH     R0,[R1, #+0]
//  729       lR_count=0;
        LDR.W    R0,??DataTable13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  730       lr_count=0;
        LDR.W    R0,??DataTable12_13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  731       
//  732       //全丢
//  733       if(front_l>front_r_last)
        LDR.W    R0,??DataTable13_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_20
//  734       {
//  735         front_l=front_l_last;
        LDR.W    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  736         front_r=front_r_last;
        LDR.W    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_15
//  737       }
//  738       //-m2-//以赛宽判断--------------
//  739       else if(front_l<=front_r_last)
??get_front_20:
        LDR.W    R0,??DataTable13_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.W    ??get_front_15
//  740       { 
//  741         //在“十字弯”处大偏差
//  742         if(front_l<127-front_width-15)//-10(29,69,98)
        LDR.W    R0,??DataTable12_8
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        LDRSH    R1,[R1, #+0]
        RSBS     R1,R1,#+112
        CMP      R0,R1
        BGE.N    ??get_front_21
//  743         {
//  744             Rdiaotou_flag=1;
        LDR.W    R0,??DataTable12_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  745           
//  746             Lpre4=Lpre3;
        LDR.W    R0,??DataTable13_3
        LDR.W    R1,??DataTable13_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  747             Lpre3=Lpre2;
        LDR.W    R0,??DataTable13_4
        LDR.W    R1,??DataTable13_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  748             Lpre2=Lpre1;
        LDR.W    R0,??DataTable13_5
        LDR.W    R1,??DataTable13_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  749             Lpre1=front_l;
        LDR.W    R0,??DataTable13_6
        LDR.W    R1,??DataTable12_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  750             //A.实际上front_width不是此时实际的赛道宽度
//  751             //B.此处用了历史值，在过人字弯后会受影响
//  752             //-m1-//
//  753             front_r =front_l+(front_r_last-front_l_last); 
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  754             
//  755             //front_l=front_l-((front_r_last-front_l_last)-front_width)/2;
//  756             //front_r=front_r-((front_r_last-front_l_last)-front_width)/2;
//  757             //-m2-//
//  758             //front_l=front_l_last;
//  759             //front_r=front_r_last;
//  760         } 
//  761         else 
//  762         {   //-m1-//
//  763             front_r =front_l+(front_r_last-front_l_last);
??get_front_21:
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  764             
//  765             //front_l=front_l-((front_r_last-front_l_last)-front_width)/2;
//  766             //front_r=front_r-((front_r_last-front_l_last)-front_width)/2;
//  767         }
//  768       }
//  769     }
//  770     //C.左数据丢
//  771     else if((front_l_flag == 0)&&(front_r_flag == 1))
??get_front_19:
        LDR.W    R0,??DataTable12_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??get_front_22
        LDR.W    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_22
//  772     { 
//  773       LR_count=0;
        LDR.W    R0,??DataTable12_11
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  774       Lr_count=0;
        LDR.W    R0,??DataTable12_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  775       lR_count++;
        LDR.W    R0,??DataTable13
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13
        STRH     R0,[R1, #+0]
//  776       lr_count=0;
        LDR.W    R0,??DataTable12_13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  777       
//  778       if(front_r<front_l_last)
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_1
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_23
//  779       {
//  780         front_l=front_l_last;
        LDR.W    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  781         front_r=front_r_last;
        LDR.W    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_15
//  782       }
//  783       //2.以赛宽判断
//  784       else if(front_r>=front_l_last)
??get_front_23:
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_1
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.W    ??get_front_15
//  785       {  //在“十字弯”处大偏差
//  786          if(front_r>front_width+15)//路径，每次入弯的效果，经验大+10(29,69,98)
        LDR.W    R0,??DataTable12_18
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+15
        LDR.W    R1,??DataTable12_10
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_24
//  787          {
//  788            Ldiaotou_flag=1;
        LDR.W    R0,??DataTable12_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  789            
//  790            Rpre4=Rpre3;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable13_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  791            Rpre3=Rpre2;
        LDR.W    R0,??DataTable13_8
        LDR.W    R1,??DataTable13_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  792            Rpre2=Rpre1;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_10
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  793            Rpre1=front_r;
        LDR.W    R0,??DataTable13_10
        LDR.W    R1,??DataTable12_10
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  794            //-m1-//
//  795            front_l=front_r-(front_r_last-front_l_last);//!!!!-3
        LDR.W    R0,??DataTable12_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  796            
//  797            //front_l=front_l+((front_r_last-front_l_last)-front_width)/2;
//  798            //front_r=front_r+((front_r_last-front_l_last)-front_width)/2;
//  799            //-m2-//
//  800            //front_l=front_l_last;
//  801            //front_r=front_r_last;
//  802            
//  803          } 
//  804          else
//  805          { //-m1-//
//  806            front_l=front_r-(front_r_last-front_l_last);
??get_front_24:
        LDR.W    R0,??DataTable12_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
        B.N      ??get_front_15
//  807            
//  808            //front_l=front_l+((front_r_last-front_l_last)-front_width)/2;
//  809            //front_r=front_r+((front_r_last-front_l_last)-front_width)/2;
//  810          }
//  811       }
//  812     }
//  813     //D.两边数据都丢失
//  814     else if((front_l_flag == 0)&&(front_r_flag == 0))
??get_front_22:
        LDR.W    R0,??DataTable12_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_9
        LDRH     R1,[R1, #+0]
        ORRS     R0,R1,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_front_15
//  815     { 
//  816       //全白，只有十字弯
//  817       if(IntegrationTime_Front<IT_ref)
        LDR.W    R0,??DataTable13_11
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_12
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??get_front_25
//  818       {
//  819         //-m3-//-------------------
//  820         mq=1;
        LDR.W    R0,??DataTable12_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  821         
//  822         //front_l=front_l_last;
//  823         //front_r=front_r_last;
//  824         
//  825         front_l=front_l_reference;
        LDR.W    R0,??DataTable12_8
        LDR.W    R1,??DataTable14
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  826         front_r=front_r_reference;
        LDR.W    R0,??DataTable12_10
        LDR.W    R1,??DataTable14_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  827         
//  828         front_l_flag=front_l_fg_last;
        LDR.W    R0,??DataTable12_6
        LDR.W    R1,??DataTable12_16
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  829         front_r_flag=front_r_fg_last;
        LDR.W    R0,??DataTable12_9
        LDR.W    R1,??DataTable12_17
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_26
//  830         /*
//  831         if((front_l_fg_last==0)&&(front_r_fg_last==0))
//  832         {
//  833           front_l=front_l_last;
//  834           front_r=front_r_last;
//  835         }
//  836         else if((front_l_fg_last==0)&&(front_r_fg_last==1))
//  837         {
//  838           if(lR_count>20)//？？？
//  839           {
//  840             front_l=front_l_last-jiao_L;//2*lR_count;
//  841             front_r=front_r_last-jiao_L;//2*lR_count;
//  842           }
//  843         }
//  844         else if((front_l_fg_last==1)&&(front_r_fg_last==0))
//  845         {
//  846           if(Lr_count>20)
//  847           {
//  848             front_l=front_l_last+jiao_R;//2*Lr_count;
//  849             front_r=front_r_last+jiao_R;//2*Lr_count;
//  850           }
//  851         }
//  852         else if((front_l_fg_last==1)&&(front_r_fg_last==1))
//  853         {
//  854           front_l=front_l_last;
//  855           front_r=front_r_last;
//  856         }*/
//  857       }
//  858       //全黑，曲率大的弯处
//  859       else if(IntegrationTime_Front>IT_ref)
??get_front_25:
        LDR.W    R0,??DataTable13_12
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_11
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??get_front_26
//  860       {
//  861         front_l=front_l_last;
        LDR.W    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  862         front_r=front_r_last;
        LDR.W    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  863         /*
//  864         if((front_l_last+front_r_last)/2>front_reference)
//  865         {
//  866           front_l=front_l_last;
//  867           front_r=front_r_last;
//  868         }
//  869         else if((front_l_last+front_r_last)/2<=front_reference)
//  870         {
//  871           front_l=front_l_last;
//  872           front_r=front_r_last;
//  873         }*/
//  874       }
//  875       
//  876       LR_count=0;
??get_front_26:
        LDR.W    R0,??DataTable12_11
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  877       Lr_count=0;
        LDR.W    R0,??DataTable12_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  878       lR_count=0;
        LDR.W    R0,??DataTable13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  879       lr_count++;
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_13
        STRH     R0,[R1, #+0]
//  880     }
//  881     
//  882     mq_last=mq;
??get_front_15:
        LDR.W    R0,??DataTable12_15
        LDR.W    R1,??DataTable12_1
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  883     
//  884     L_aver=(Lpre1+Lpre2+Lpre3)/3;
        LDR.W    R0,??DataTable13_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_5
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_4
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R0,R1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable14_2
        STRH     R0,[R1, #+0]
//  885     L_fch=((Lpre1-L_aver)*(Lpre1-L_aver)+(Lpre2-L_aver)*(Lpre2-L_aver)+(Lpre3-L_aver)*(Lpre3-L_aver))/3;
        LDR.W    R0,??DataTable13_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14_2
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_6
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_2
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable13_5
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14_2
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        LDR.W    R3,??DataTable13_5
        LDRSH    R3,[R3, #+0]
        LDR.W    R4,??DataTable14_2
        LDRSH    R4,[R4, #+0]
        SUBS     R3,R3,R4
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable13_4
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_2
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable13_4
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14_2
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        MLA      R0,R2,R1,R0
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable14_3
        STRH     R0,[R1, #+0]
//  886 
//  887     R_aver=(Rpre1+Rpre2+Rpre3)/3;
        LDR.W    R0,??DataTable13_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_9
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_8
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R0,R1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable14_4
        STRH     R0,[R1, #+0]
//  888     R_fch=((Rpre1-R_aver)*(Rpre1-R_aver)+(Rpre2-R_aver)*(Rpre2-R_aver)+(Rpre3-R_aver)*(Rpre3-R_aver))/3;
        LDR.W    R0,??DataTable13_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14_4
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_10
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_4
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable13_9
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14_4
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        LDR.W    R3,??DataTable13_9
        LDRSH    R3,[R3, #+0]
        LDR.W    R4,??DataTable14_4
        LDRSH    R4,[R4, #+0]
        SUBS     R3,R3,R4
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable13_8
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_4
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable13_8
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14_4
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        MLA      R0,R2,R1,R0
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable14_5
        STRH     R0,[R1, #+0]
//  889     
//  890     //简单的变化率
//  891     delta_l=(front_l-front_l_last)+(front_l_last-front_l_pre1)+(front_l_pre1-front_l_pre2); 
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_6
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_7
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_8
        STRH     R0,[R1, #+0]
//  892     delta_r=(front_r-front_r_last)+(front_r_last-front_r_pre1)+(front_r_pre1-front_r_pre2);
        LDR.W    R0,??DataTable12_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_9
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_9
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_10
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_11
        STRH     R0,[R1, #+0]
//  893     
//  894     Lfch=((front_l-front_l_reference)*(front_l-front_l_reference)+(front_l_last-front_l_reference)*(front_l_last-front_l_reference)+(front_l_pre1-front_l_reference)*(front_l_pre1-front_l_reference))/3;
        LDR.W    R0,??DataTable12_8
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable13_1
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        LDR.W    R3,??DataTable13_1
        LDRSH    R3,[R3, #+0]
        LDR.W    R4,??DataTable14
        LDRSH    R4,[R4, #+0]
        SUBS     R3,R3,R4
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable14_6
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable14_6
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        MLA      R0,R2,R1,R0
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable14_12
        STRH     R0,[R1, #+0]
//  895     Rfch=((front_r-front_r_reference)*(front_r-front_r_reference)+(front_r_last-front_r_reference)*(front_r_last-front_r_reference)+(front_r_pre1-front_r_reference)*(front_r_pre1-front_r_reference))/3;
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14_1
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_1
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable13_2
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14_1
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        LDR.W    R3,??DataTable13_2
        LDRSH    R3,[R3, #+0]
        LDR.W    R4,??DataTable14_1
        LDRSH    R4,[R4, #+0]
        SUBS     R3,R3,R4
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable14_9
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_1
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable14_9
        LDRSH    R2,[R2, #+0]
        LDR.W    R3,??DataTable14_1
        LDRSH    R3,[R3, #+0]
        SUBS     R2,R2,R3
        MLA      R0,R2,R1,R0
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable14_13
        STRH     R0,[R1, #+0]
//  896     
//  897     if(rzop==1)
        LDR.W    R0,??DataTable14_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_27
//  898     {
//  899     //-m2-//以赛道宽及其他判断赛道宽
//  900     //右调头-----------------------舵机的中值
//  901     if(Rdiaotou_flag==1)
        LDR.W    R0,??DataTable12_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_28
//  902     {
//  903       Rdiaotou_count++;
        LDR.W    R0,??DataTable14_15
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14_15
        STRH     R0,[R1, #+0]
//  904       if(Rdiaotou_count<=3)//2 
        LDR.W    R0,??DataTable14_15
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??get_front_28
//  905       {}
//  906       else if(Rdiaotou_count>3&&Rdiaotou_count<60)//30
        LDR.W    R0,??DataTable14_15
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+56
        BCS.N    ??get_front_29
//  907       {                                        
//  908         if((front_r_last-front_l_last)<=(front_width+5))//与直道入十字有冲突
        LDR.W    R0,??DataTable12_18
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable13_2
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable13_1
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BLT.N    ??get_front_30
//  909           Rendiao=1;
        LDR.W    R0,??DataTable14_16
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  910         
//  911         if(Rendiao==1)
??get_front_30:
        LDR.W    R0,??DataTable14_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_28
//  912         {
//  913           RHOLDdiao_flag=1;
        LDR.W    R0,??DataTable12_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  914           if(Rdiaotou_count<25)
        LDR.W    R0,??DataTable14_15
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+25
        BGE.N    ??get_front_28
//  915           {
//  916             front_l=130-front_width/2;
        LDR.W    R0,??DataTable12_18
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        RSBS     R0,R0,#+130
        LDR.W    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
//  917             front_r=130+front_width/2;
        LDR.W    R0,??DataTable12_18
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+130
        LDR.W    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        B.N      ??get_front_28
//  918           }
//  919         } 
//  920       }
//  921       else 
//  922       {
//  923         Rdiaotou_count=0;
??get_front_29:
        LDR.W    R0,??DataTable14_15
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  924         Rdiaotou_flag=0;
        LDR.W    R0,??DataTable12_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  925         Rendiao=0;
        LDR.W    R0,??DataTable14_16
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  926         RHOLDdiao_flag=0;
        LDR.W    R0,??DataTable12_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  927         rensha_count=0; 
        LDR.W    R0,??DataTable14_17
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  928         //---
//  929         rzguo_flag=1;
        LDR.W    R0,??DataTable14_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  930       }
//  931     }
//  932     
//  933     if(Rdiaotou_flag==0&&RHOLDdiao_flag==0)
??get_front_28:
        LDR.W    R0,??DataTable12_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_4
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??get_front_31
//  934     {
//  935         Rdiaotou_count=0;
        LDR.W    R0,??DataTable14_15
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  936     }
//  937 
//  938     //左调头
//  939     if(Ldiaotou_flag==1)
??get_front_31:
        LDR.N    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_32
//  940     {
//  941       Ldiaotou_count++;
        LDR.W    R0,??DataTable14_19
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14_19
        STRH     R0,[R1, #+0]
//  942       if(Ldiaotou_count<=3) 
        LDR.W    R0,??DataTable14_19
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??get_front_32
//  943       {}
//  944       else if(Ldiaotou_count>3&&Ldiaotou_count<60)//30
        LDR.W    R0,??DataTable14_19
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+56
        BCS.N    ??get_front_33
//  945       {                                         
//  946         if((front_r_last-front_l_last)<=(front_width+5))//与直道入十字有冲突
        LDR.N    R0,??DataTable12_18
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable13_2
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable13_1
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BLT.N    ??get_front_34
//  947           Lendiao=1;
        LDR.W    R0,??DataTable14_20
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  948         
//  949         if(Lendiao==1)
??get_front_34:
        LDR.W    R0,??DataTable14_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_32
//  950         {
//  951           LHOLDdiao_flag=1;
        LDR.N    R0,??DataTable12_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  952           if(Ldiaotou_count<25)
        LDR.W    R0,??DataTable14_19
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+25
        BGE.N    ??get_front_32
//  953           {
//  954             front_l=-3-front_width/2;
        MVNS     R0,#+2
        LDR.N    R1,??DataTable12_18
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable12_8
        STRH     R0,[R1, #+0]
//  955             front_r=-3+front_width/2;
        LDR.N    R0,??DataTable12_18
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+3
        LDR.N    R1,??DataTable12_10
        STRH     R0,[R1, #+0]
        B.N      ??get_front_32
//  956           } 
//  957         }
//  958       }
//  959       else 
//  960       {
//  961         Ldiaotou_count=0;
??get_front_33:
        LDR.W    R0,??DataTable14_19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  962         Ldiaotou_flag=0;
        LDR.N    R0,??DataTable12_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  963         Lendiao=0;
        LDR.W    R0,??DataTable14_20
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  964         LHOLDdiao_flag=0;
        LDR.N    R0,??DataTable12_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  965         rensha_count=0;
        LDR.W    R0,??DataTable14_17
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  966         //---
//  967         rzguo_flag=1;
        LDR.W    R0,??DataTable14_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  968       }
//  969     }
//  970     
//  971     if(Ldiaotou_flag==0&&LHOLDdiao_flag==0)
??get_front_32:
        LDR.N    R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12_2
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??get_front_27
//  972     {
//  973         Ldiaotou_count=0;//是由于未能及时清零吗？
        LDR.W    R0,??DataTable14_19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  974     }
//  975   }
//  976   
//  977   //出十字------------------------------------
//  978   if((front_l+front_r)/2-front_reference>0)
??get_front_27:
        LDR.N    R0,??DataTable12_8
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable12_10
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable15
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??get_front_35
//  979   {
//  980     if((front_l_flag == 0)&&(front_r_flag == 1))////lR_count>3
        LDR.N    R0,??DataTable12_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_36
        LDR.N    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_36
//  981     {
//  982       front_l=front_l_last;//-((front_l+front_r)/2-front_reference);//未测试
        LDR.N    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  983       front_r=front_r_last;//-((front_l+front_r)/2-front_reference);
        LDR.N    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_36
//  984     }
//  985   }
//  986   else //if((front_l+front_r)/2-front_reference<0)
//  987   {
//  988     if((front_l_flag == 1)&&(front_r_flag == 0))////Lr_count>3
??get_front_35:
        LDR.N    R0,??DataTable12_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_36
        LDR.N    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_36
//  989     {
//  990       front_l=front_l_last;//-((front_l+front_r)/2-front_reference);
        LDR.N    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  991       front_r=front_r_last;//-((front_l+front_r)/2-front_reference);
        LDR.N    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  992     }
//  993   }
//  994   //---------------------------------------
//  995   
//  996   //!!!程序bug,在十字弯斜冲出赛道
//  997   if(front_l>front_r)
??get_front_36:
        LDR.N    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable12_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_37
//  998   {
//  999       front_l=front_l_last;
        LDR.N    R0,??DataTable12_8
        LDR.W    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1000       front_r=front_r_last;
        LDR.N    R0,??DataTable12_10
        LDR.W    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1001   }
// 1002   
// 1003   
// 1004   
// 1005     cl_f = (front_l+front_r)/2;
??get_front_37:
        LDR.N    R0,??DataTable12_8
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable12_10
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable15_1
        STRH     R0,[R1, #+0]
// 1006     front_OFFSET = cl_f - front_reference;
        LDR.W    R0,??DataTable15_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable15_2
        STRH     R0,[R1, #+0]
// 1007     
// 1008     cl_f_pre = cl_f;
        LDR.N    R0,??DataTable12_19
        LDR.W    R1,??DataTable15_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1009     
// 1010     front_l_fg_last=front_l_flag;
        LDR.N    R0,??DataTable12_16
        LDR.N    R1,??DataTable12_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1011     front_r_fg_last=front_r_flag;
        LDR.N    R0,??DataTable12_17
        LDR.N    R1,??DataTable12_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1012     
// 1013     front_l_pre4=front_l_pre3;
        LDR.W    R0,??DataTable15_3
        LDR.W    R1,??DataTable15_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1014     front_r_pre4=front_r_pre3;
        LDR.W    R0,??DataTable15_5
        LDR.W    R1,??DataTable15_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1015     front_l_pre3=front_l_pre2;
        LDR.W    R0,??DataTable15_4
        LDR.W    R1,??DataTable14_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1016     front_r_pre3=front_r_pre2;
        LDR.W    R0,??DataTable15_6
        LDR.W    R1,??DataTable14_10
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1017     front_l_pre2=front_l_pre1;
        LDR.W    R0,??DataTable14_7
        LDR.W    R1,??DataTable14_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1018     front_r_pre2=front_r_pre1;
        LDR.W    R0,??DataTable14_10
        LDR.W    R1,??DataTable14_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1019     front_l_pre1=front_l_last;
        LDR.W    R0,??DataTable14_6
        LDR.N    R1,??DataTable13_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1020     front_r_pre1=front_r_last;
        LDR.W    R0,??DataTable14_9
        LDR.N    R1,??DataTable13_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1021     front_l_last=front_l;
        LDR.N    R0,??DataTable13_1
        LDR.N    R1,??DataTable12_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1022     front_r_last=front_r;
        LDR.N    R0,??DataTable13_2
        LDR.N    R1,??DataTable12_10
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1023     
// 1024     front_OFFSET_pre10 = front_OFFSET_pre9;
        LDR.W    R0,??DataTable18
        LDR.W    R1,??DataTable18_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1025     front_OFFSET_pre9 = front_OFFSET_pre8;
        LDR.W    R0,??DataTable18_1
        LDR.W    R1,??DataTable18_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1026     front_OFFSET_pre8 = front_OFFSET_pre7;
        LDR.W    R0,??DataTable18_2
        LDR.W    R1,??DataTable18_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1027     front_OFFSET_pre7 = front_OFFSET_pre6;
        LDR.W    R0,??DataTable18_3
        LDR.W    R1,??DataTable18_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1028     front_OFFSET_pre6 = front_OFFSET_pre5;
        LDR.W    R0,??DataTable18_4
        LDR.W    R1,??DataTable18_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1029     front_OFFSET_pre5 = front_OFFSET_pre4;
        LDR.W    R0,??DataTable18_5
        LDR.W    R1,??DataTable18_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1030     front_OFFSET_pre4 = front_OFFSET_pre3;
        LDR.W    R0,??DataTable18_6
        LDR.W    R1,??DataTable18_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1031     front_OFFSET_pre3 = front_OFFSET_pre2;
        LDR.W    R0,??DataTable18_7
        LDR.W    R1,??DataTable18_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1032     front_OFFSET_pre2 = front_OFFSET_pre1;
        LDR.W    R0,??DataTable18_8
        LDR.W    R1,??DataTable18_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1033     front_OFFSET_pre1 = front_OFFSET;
        LDR.W    R0,??DataTable18_9
        LDR.W    R1,??DataTable15_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1034     
// 1035     //d_err1 = front_OFFSET - front_OFFSET_pre1;恒为0
// 1036     d_err1 = front_OFFSET_pre1 - front_OFFSET_pre2;
        LDR.W    R0,??DataTable18_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_8
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18_10
        STRH     R0,[R1, #+0]
// 1037     d_err2 = front_OFFSET_pre2 - front_OFFSET_pre3;
        LDR.W    R0,??DataTable18_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_7
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18_11
        STRH     R0,[R1, #+0]
// 1038     d_err3 = front_OFFSET_pre3 - front_OFFSET_pre4;
        LDR.W    R0,??DataTable18_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19
        STRH     R0,[R1, #+0]
// 1039     d_err4 = front_OFFSET_pre4 - front_OFFSET_pre5;
        LDR.W    R0,??DataTable18_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_5
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_1
        STRH     R0,[R1, #+0]
// 1040     d_err5 = front_OFFSET_pre5 - front_OFFSET_pre6;
        LDR.W    R0,??DataTable18_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_4
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_2
        STRH     R0,[R1, #+0]
// 1041     d_err6 = front_OFFSET_pre6 - front_OFFSET_pre7;
        LDR.W    R0,??DataTable18_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_3
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_3
        STRH     R0,[R1, #+0]
// 1042     d_err7 = front_OFFSET_pre7 - front_OFFSET_pre8;
        LDR.W    R0,??DataTable18_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_4
        STRH     R0,[R1, #+0]
// 1043     d_err8 = front_OFFSET_pre8 - front_OFFSET_pre9;
        LDR.W    R0,??DataTable18_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_5
        STRH     R0,[R1, #+0]
// 1044     d_err9 = front_OFFSET_pre9 - front_OFFSET_pre10;   
        LDR.W    R0,??DataTable18_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_6
        STRH     R0,[R1, #+0]
// 1045 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     qpx_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     mq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     LHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     Ldiaotou_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     RHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     Rdiaotou_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     front_l_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     Pixel_F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     front_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     front_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     LR_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     Lr_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     lr_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     lost_all_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     mq_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     front_l_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     front_r_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     front_width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     cl_f_pre
// 1046 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1047 void route_type_F()
// 1048 {
route_type_F:
        PUSH     {R4,R5}
// 1049   char i;
// 1050   char fch_first=3;//赛道过渡
        MOVS     R0,#+3
// 1051   char label_count=6;
        MOVS     R1,#+6
// 1052   char fch_av_count=0;
        MOVS     R2,#+0
// 1053   
// 1054   fangcha_f=0;
        LDR.W    R3,??DataTable19_7
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1055   fangcha_qian_f=0;
        LDR.W    R3,??DataTable19_8
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1056   fangcha_hou_f=0;
        LDR.W    R3,??DataTable21
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1057   
// 1058   fch_av_count = label_count - fch_first+1;
        SUBS     R3,R1,R0
        ADDS     R3,R3,#+1
        MOVS     R2,R3
// 1059   //刷新
// 1060   route_f[0]=front_OFFSET;
        LDR.W    R3,??DataTable19_9
        LDR.W    R4,??DataTable15_2
        LDRH     R4,[R4, #+0]
        STRH     R4,[R3, #+0]
// 1061   for(i=100;i>0;i--)
        MOVS     R3,#+100
        B.N      ??route_type_F_0
// 1062   {
// 1063     route_f[i] = route_f[i-1];
??route_type_F_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_9
        ADDS     R4,R4,R3, LSL #+1
        LDRH     R4,[R4, #-2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_9
        STRH     R4,[R5, R3, LSL #+1]
// 1064   }
        SUBS     R3,R3,#+1
??route_type_F_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BCS.N    ??route_type_F_1
// 1065   //前3
// 1066   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_2
// 1067   {
// 1068     route_ave_f += route_f[i]; 
??route_type_F_3:
        LDR.W    R4,??DataTable19_10
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_9
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable19_10
        STRH     R4,[R5, #+0]
// 1069   }
        ADDS     R3,R3,#+1
??route_type_F_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_F_3
// 1070   route_ave_f = route_ave_f/3;
        LDR.W    R3,??DataTable19_10
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable19_10
        STRH     R3,[R4, #+0]
// 1071   
// 1072   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_4
// 1073   {
// 1074     chafang_f[i] = route_f[i]*route_f[i];//changshi
??route_type_F_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_9
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_9
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_11
        STRH     R4,[R5, R3, LSL #+1]
// 1075   }
        ADDS     R3,R3,#+1
??route_type_F_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_F_5
// 1076   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_6
// 1077   {
// 1078     fangcha_f += chafang_f[i]; 
??route_type_F_7:
        LDR.W    R4,??DataTable19_7
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_11
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable19_7
        STRH     R4,[R5, #+0]
// 1079   }
        ADDS     R3,R3,#+1
??route_type_F_6:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_F_7
// 1080   fangcha_qian_f = fangcha_f/3;
        LDR.W    R3,??DataTable19_7
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable19_8
        STRH     R3,[R4, #+0]
// 1081   
// 1082   
// 1083   //清0
// 1084   route_ave_f=0;
        LDR.W    R3,??DataTable19_10
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1085   for(i=0;i<5;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_8
// 1086   {
// 1087     chafang_f[i] = 0;
??route_type_F_9:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_11
        MOVS     R5,#+0
        STRH     R5,[R4, R3, LSL #+1]
// 1088   }
        ADDS     R3,R3,#+1
??route_type_F_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+5
        BCC.N    ??route_type_F_9
// 1089   fangcha_f=0;
        LDR.W    R3,??DataTable19_7
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1090   
// 1091   //后续
// 1092   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_F_10
// 1093   {
// 1094     route_ave_f += route_f[i]; 
??route_type_F_11:
        LDR.W    R4,??DataTable19_10
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_9
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable19_10
        STRH     R4,[R5, #+0]
// 1095   }
        ADDS     R3,R3,#+1
??route_type_F_10:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_F_11
// 1096   route_ave_f = route_ave_f/label_count;
        LDR.W    R3,??DataTable19_10
        LDRSH    R3,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SDIV     R3,R3,R1
        LDR.W    R4,??DataTable19_10
        STRH     R3,[R4, #+0]
// 1097   
// 1098   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_F_12
// 1099   {
// 1100     chafang_f[i] = route_f[i]*route_f[i];
??route_type_F_13:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_9
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_9
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_11
        STRH     R4,[R5, R3, LSL #+1]
// 1101   }
        ADDS     R3,R3,#+1
??route_type_F_12:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_F_13
// 1102   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_F_14
// 1103   {
// 1104     fangcha_f += chafang_f[i]; 
??route_type_F_15:
        LDR.W    R0,??DataTable19_7
        LDRH     R0,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_11
        LDRH     R4,[R4, R3, LSL #+1]
        ADDS     R0,R4,R0
        LDR.W    R4,??DataTable19_7
        STRH     R0,[R4, #+0]
// 1105   }
        ADDS     R3,R3,#+1
??route_type_F_14:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_F_15
// 1106   fangcha_hou_f = fangcha_f/fch_av_count;
        LDR.W    R0,??DataTable19_7
        LDRSH    R0,[R0, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SDIV     R0,R0,R2
        LDR.W    R1,??DataTable21
        STRH     R0,[R1, #+0]
// 1107 }
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     lR_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     front_l_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     front_r_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     Lpre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     Lpre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     Lpre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     Lpre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     Rpre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     Rpre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     Rpre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     Rpre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     IntegrationTime_Front

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     IT_ref
// 1108 //----------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1109 int16  stop_flag=0;
stop_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1110 int16  stop_count=0;
stop_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1111 int16  black_l=0,black_r=0,zheng=0;
black_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
black_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zheng:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1112 int16  delay_count=0;
delay_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1113 int16  zhong=0;
zhong:
        DS8 2
// 1114 extern uint8  qpx_en;

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1115 void get_fu()
// 1116 {
get_fu:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
// 1117   int16 i,j,ii=0,jj=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
// 1118   int16 jiang_l[10]={0},jiang_r[10]={0};
        ADD      R0,SP,#+20
        MOVS     R1,#+20
        BL       __aeabi_memclr4
        ADD      R0,SP,#+0
        MOVS     R1,#+20
        BL       __aeabi_memclr4
// 1119   
// 1120   for(i=126;i>=2;i--)
        MOVS     R0,#+126
        B.N      ??get_fu_0
// 1121   {
// 1122     if(Pixel_Z[i+1]==1&&Pixel_Z[i]==1&&Pixel_Z[i-1]==0&&Pixel_Z[i-2]==0)
??get_fu_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+1
        BNE.N    ??get_fu_2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_fu_2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+0
        BNE.N    ??get_fu_2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+0
        BNE.N    ??get_fu_2
// 1123     {
// 1124       jiang_l[ii++]=i;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADD      R1,SP,#+20
        STRH     R0,[R1, R4, LSL #+1]
        ADDS     R4,R4,#+1
// 1125     }
// 1126   }
??get_fu_2:
        SUBS     R0,R0,#+1
??get_fu_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BGE.N    ??get_fu_1
// 1127   for(j=1;j<=125;j++)
        MOVS     R0,#+1
        B.N      ??get_fu_3
// 1128   {
// 1129     if(Pixel_Z[j-1]==1&&Pixel_Z[j]==1&&Pixel_Z[j+1]==0&&Pixel_Z[j+2]==0)
??get_fu_4:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+1
        BNE.N    ??get_fu_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_fu_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+0
        BNE.N    ??get_fu_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable19_12
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+0
        BNE.N    ??get_fu_5
// 1130     {
// 1131       jiang_r[jj++]=j;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ADD      R1,SP,#+0
        STRH     R0,[R1, R5, LSL #+1]
        ADDS     R5,R5,#+1
// 1132     }
// 1133   }
??get_fu_5:
        ADDS     R0,R0,#+1
??get_fu_3:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+126
        BLT.N    ??get_fu_4
// 1134   
// 1135   if(ii==3&&jj==3)
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+3
        BNE.N    ??get_fu_6
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BNE.N    ??get_fu_6
// 1136   {
// 1137     black_l=jiang_l[1]-jiang_r[0];
        LDRH     R0,[SP, #+22]
        LDRH     R1,[SP, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable22
        STRH     R0,[R1, #+0]
// 1138     black_r=jiang_l[0]-jiang_r[1];
        LDRH     R0,[SP, #+20]
        LDRH     R1,[SP, #+2]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable22_1
        STRH     R0,[R1, #+0]
// 1139     
// 1140     zhong=jiang_r[1]-jiang_l[1];
        LDRH     R0,[SP, #+2]
        LDRH     R1,[SP, #+22]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable22_2
        STRH     R0,[R1, #+0]
// 1141     
// 1142     zheng=(jiang_l[2]+jiang_r[2])/2;
        LDRSH    R0,[SP, #+24]
        LDRSH    R1,[SP, #+4]
        SXTAH    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable22_3
        STRH     R0,[R1, #+0]
// 1143     
// 1144     if(Abs(zong_reference-zheng)<10&&(zhong>=zong_width*9/40-5&&zhong<=zong_width*9/40+5))
        LDR.W    R0,??DataTable22_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable22_3
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R0,#+10
        BGE.N    ??get_fu_6
        LDR.W    R0,??DataTable22_5
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+9
        MULS     R0,R1,R0
        MOVS     R1,#+40
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+5
        LDR.W    R1,??DataTable22_2
        LDRSH    R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??get_fu_6
        LDR.W    R0,??DataTable22_5
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+9
        MULS     R0,R1,R0
        MOVS     R1,#+40
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable22_2
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??get_fu_6
// 1145       stop_flag=1;
        LDR.W    R0,??DataTable22_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
// 1146   }
// 1147  
// 1148   if(stop_flag==1) 
??get_fu_6:
        LDR.W    R0,??DataTable22_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_fu_7
// 1149   {
// 1150     if(delay_count++>15)
        LDR.W    R0,??DataTable22_7
        LDRSH    R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable22_7
        STRH     R1,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+16
        BLT.N    ??get_fu_7
// 1151     {
// 1152       delay_count=0;
        LDR.W    R0,??DataTable22_7
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1153       stop_flag=0;
        LDR.W    R0,??DataTable22_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1154       ++stop_count;
        LDR.W    R0,??DataTable23
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable23
        STRH     R0,[R1, #+0]
// 1155     }
// 1156   } 
// 1157 }
??get_fu_7:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     front_l_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     front_r_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     L_aver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     L_fch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     R_aver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     R_fch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     front_l_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     front_l_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     delta_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     front_r_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     front_r_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     delta_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     Lfch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     Rfch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     rzop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     Rdiaotou_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     Rendiao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     rensha_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     rzguo_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     Ldiaotou_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     Lendiao
// 1158 
// 1159 //--------------------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1160 void get_zong()
// 1161 {
get_zong:
        PUSH     {R4}
// 1162     int16 i,j;
// 1163     int16 zong_l_flag,zong_r_flag;
// 1164     uint8 hold_flag=0;
        MOVS     R3,#+0
// 1165     
// 1166     hold_flag=0;
        MOVS     R1,#+0
        MOVS     R3,R1
// 1167     
// 1168     for(i=126;i>=4;i--)
        MOVS     R1,#+126
        B.N      ??get_zong_0
// 1169     {
// 1170       if((Pixel_Z[i]==1)&&(Pixel_Z[i-1]==0)&&(Pixel_Z[i-2]==0)&&(Pixel_Z[i-3]==0))
// 1171       {
// 1172         zong_l = i-2;
// 1173         zong_l_flag = 1;
// 1174         break;
// 1175       }
// 1176       zong_l_flag = 0;
??get_zong_1:
        MOVS     R2,#+0
        SUBS     R1,R1,#+1
??get_zong_0:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+4
        BLT.N    ??get_zong_2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable19_12
        LDRB     R2,[R1, R2]
        CMP      R2,#+1
        BNE.N    ??get_zong_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable19_12
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-1]
        CMP      R2,#+0
        BNE.N    ??get_zong_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable19_12
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-2]
        CMP      R2,#+0
        BNE.N    ??get_zong_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable19_12
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-3]
        CMP      R2,#+0
        BNE.N    ??get_zong_1
        SUBS     R2,R1,#+2
        LDR.W    R3,??DataTable22_8
        STRH     R2,[R3, #+0]
        MOVS     R2,#+1
// 1177     }
// 1178     for(j=1;j<123;j++)
??get_zong_2:
        MOVS     R3,#+1
        B.N      ??get_zong_3
// 1179     {
// 1180        if((Pixel_Z[j]==1)&&(Pixel_Z[j+1]==0)&&(Pixel_Z[j+2]==0)&&(Pixel_Z[j+3]==0))
// 1181       {
// 1182         zong_r = j+2;
// 1183         zong_r_flag = 1;
// 1184         break;
// 1185       }
// 1186       zong_r_flag = 0;
??get_zong_4:
        MOVS     R0,#+0
        ADDS     R3,R3,#+1
??get_zong_3:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+123
        BGE.N    ??get_zong_5
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable19_12
        LDRB     R0,[R3, R0]
        CMP      R0,#+1
        BNE.N    ??get_zong_4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable19_12
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??get_zong_4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable19_12
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??get_zong_4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable19_12
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??get_zong_4
        ADDS     R0,R3,#+2
        LDR.W    R4,??DataTable23_1
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
// 1187     }
// 1188     //A.采到左右数据
// 1189     if((zong_l_flag == 1)&&(zong_r_flag == 1))
??get_zong_5:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+1
        BNE.N    ??get_zong_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.N    ??get_zong_6
// 1190     {  
// 1191       //a.当看到的全部是背景时,由于背景灰度值不均匀,二值化后依然能误采到黑白跳变 
// 1192       if((high_aver_f-low_aver_f)>45)
        LDR.W    R0,??DataTable23_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R2,??DataTable23_3
        LDRSH    R2,[R2, #+0]
        SUBS     R0,R0,R2
        CMP      R0,#+46
        BLT.N    ??get_zong_7
// 1193       {
// 1194         //a.1.左值大于右值,两边数据都丢失     
// 1195         if(zong_l>zong_r)            
        LDR.W    R0,??DataTable23_1
        LDRSH    R0,[R0, #+0]
        LDR.W    R2,??DataTable22_8
        LDRSH    R2,[R2, #+0]
        CMP      R0,R2
        BGE.W    ??get_zong_8
// 1196         {  
// 1197           //向右拐弯时看到左边赛道,右边沿发生较大位移,右值假象,左值真实
// 1198           if(zong_r_last-zong_r>30)
        LDR.W    R0,??DataTable23_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R2,??DataTable23_1
        LDRSH    R2,[R2, #+0]
        SUBS     R0,R0,R2
        CMP      R0,#+31
        BLT.N    ??get_zong_9
// 1199           {
// 1200             zong_l=i-2;
        SUBS     R0,R1,#+2
        LDR.W    R1,??DataTable22_8
        STRH     R0,[R1, #+0]
// 1201             zong_r=zong_l+zong_width;
        LDR.W    R0,??DataTable22_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable22_5
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable23_1
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1202           }
// 1203           //向左拐弯时看到右边赛道,左边沿发生较大位移,左值假象,右值真实
// 1204           else if(zong_l-zong_l_last>30)
??get_zong_9:
        LDR.W    R0,??DataTable22_8
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23_5
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+31
        BLT.W    ??get_zong_8
// 1205           {
// 1206             zong_r=j+2;
        ADDS     R0,R3,#+2
        LDR.W    R1,??DataTable23_1
        STRH     R0,[R1, #+0]
// 1207             zong_l=zong_r-zong_width;
        LDR.W    R0,??DataTable23_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable22_5
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable22_8
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1208           }         
// 1209         }       
// 1210         //a.2.右值大于左值,正常
// 1211         else
// 1212         {}
// 1213       }
// 1214       //b.
// 1215       else
// 1216       {
// 1217         zong_l=zong_l_last;
??get_zong_7:
        LDR.W    R0,??DataTable22_8
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1218         zong_r=zong_r_last;
        LDR.W    R0,??DataTable23_1
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1219         //hold_flag=1;
// 1220       }   
// 1221     }
// 1222     //B.右数据丢失
// 1223     else if((zong_l_flag == 1)&&(zong_r_flag == 0))
??get_zong_6:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+1
        BNE.N    ??get_zong_10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_zong_10
// 1224     {
// 1225       if((high_aver_f-low_aver_f)>45)
        LDR.W    R0,??DataTable23_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23_3
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+46
        BLT.N    ??get_zong_11
// 1226       {
// 1227         if(zong_l>zong_r_last)
        LDR.W    R0,??DataTable23_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable22_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_zong_12
// 1228         {
// 1229           zong_l=zong_l_last;
        LDR.W    R0,??DataTable22_8
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1230           zong_r=zong_r_last;
        LDR.W    R0,??DataTable23_1
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1231           //hold_flag=1;
// 1232         }
// 1233         else 
// 1234         {
// 1235           zong_r =zong_l+zong_width; 
??get_zong_12:
        LDR.W    R0,??DataTable22_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable22_5
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable23_1
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1236         }
// 1237         /*
// 1238         else
// 1239         {
// 1240           //在“十字弯”处大偏差
// 1241           if(front_l<127-front_width)
// 1242           {
// 1243             front_l=front_l_last+1;
// 1244             front_r=front_r_last+1;
// 1245           } 
// 1246           else 
// 1247           {
// 1248             front_r =front_l+front_width; 
// 1249           }
// 1250         }
// 1251         */
// 1252       } 
// 1253       else
// 1254       {
// 1255         zong_l=zong_l_last;
??get_zong_11:
        LDR.W    R0,??DataTable22_8
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1256         zong_r=zong_r_last;
        LDR.W    R0,??DataTable23_1
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1257         //hold_flag=1;
// 1258       }
// 1259     }
// 1260     //C.左数据丢
// 1261     else if((zong_l_flag == 0)&&(zong_r_flag == 1))
??get_zong_10:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??get_zong_13
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.N    ??get_zong_13
// 1262     {
// 1263       if((high_aver_f-low_aver_f)>45)
        LDR.W    R0,??DataTable23_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23_3
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+46
        BLT.N    ??get_zong_14
// 1264       {
// 1265         if(zong_r<zong_l_last)
        LDR.W    R0,??DataTable23_1
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23_5
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_zong_15
// 1266         {
// 1267           zong_l=zong_l_last;
        LDR.W    R0,??DataTable22_8
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1268           zong_r=zong_r_last;
        LDR.W    R0,??DataTable23_1
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1269           //hold_flag=1;
// 1270         }
// 1271         else
// 1272         {
// 1273            zong_l=front_r-zong_width;
??get_zong_15:
        LDR.W    R0,??DataTable23_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable22_5
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable22_8
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1274         }
// 1275         /*
// 1276         else
// 1277         {  //在“十字弯”处大偏差
// 1278            if(front_r>front_width)//路径，每次入弯的效果
// 1279            {
// 1280              front_l=front_l_last-1;
// 1281              front_r=front_r_last-1;
// 1282            } 
// 1283            else
// 1284            {
// 1285              front_l=front_r-front_width;
// 1286            }
// 1287         }
// 1288         */
// 1289       }
// 1290       else
// 1291       {
// 1292         zong_l=zong_l_last;
??get_zong_14:
        LDR.W    R0,??DataTable22_8
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1293         zong_r=zong_r_last;
        LDR.W    R0,??DataTable23_1
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1294         //hold_flag=1;
// 1295       }
// 1296     }
// 1297     //D.两边数据都丢失
// 1298     else if((zong_l_flag == 0)&&(zong_r_flag == 0))
??get_zong_13:
        ORRS     R0,R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_zong_8
// 1299     {
// 1300       if(zong_l_last>63||zong_r_last<64)
        LDR.W    R0,??DataTable23_5
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+64
        BGE.N    ??get_zong_16
        LDR.W    R0,??DataTable23_4
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+64
        BGE.N    ??get_zong_17
// 1301       {
// 1302         zong_l=zong_l_last;
??get_zong_16:
        LDR.W    R0,??DataTable22_8
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1303         zong_r=zong_r_last;
        LDR.W    R0,??DataTable23_1
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1304         //hold_flag=1;
// 1305       }
// 1306       else
// 1307       {
// 1308         zong_l=0;
??get_zong_17:
        LDR.W    R0,??DataTable22_8
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1309         zong_r=127;
        LDR.W    R0,??DataTable23_1
        MOVS     R1,#+127
        STRH     R1,[R0, #+0]
// 1310       }
// 1311     }
// 1312     cl_z = (zong_l+zong_r)/2;
??get_zong_8:
        LDR.W    R0,??DataTable22_8
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23_1
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable23_7
        STRH     R0,[R1, #+0]
// 1313     zong_OFFSET = cl_z-zong_reference;
        LDR.W    R0,??DataTable23_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable22_4
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_8
        STRH     R0,[R1, #+0]
// 1314     
// 1315     //if(hold_flag==1) zong_OFFSET=zong_OFFSET*k_out;
// 1316       
// 1317     
// 1318     zong_l_last=zong_l;
        LDR.W    R0,??DataTable23_5
        LDR.W    R1,??DataTable22_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1319     zong_r_last=zong_r;
        LDR.W    R0,??DataTable23_4
        LDR.W    R1,??DataTable23_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1320     zong_l_pre=zong_l_last;
        LDR.W    R0,??DataTable23_9
        LDR.W    R1,??DataTable23_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1321     zong_r_pre=zong_r_last;
        LDR.W    R0,??DataTable23_10
        LDR.W    R1,??DataTable23_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1322     
// 1323     zong_OFFSET_pre10 = zong_OFFSET_pre9;
        LDR.W    R0,??DataTable23_11
        LDR.W    R1,??DataTable23_12
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1324     zong_OFFSET_pre9 = zong_OFFSET_pre8;
        LDR.W    R0,??DataTable23_12
        LDR.W    R1,??DataTable23_13
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1325     zong_OFFSET_pre8 = zong_OFFSET_pre7;
        LDR.W    R0,??DataTable23_13
        LDR.W    R1,??DataTable23_14
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1326     zong_OFFSET_pre7 = zong_OFFSET_pre6;
        LDR.W    R0,??DataTable23_14
        LDR.W    R1,??DataTable23_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1327     zong_OFFSET_pre6 = zong_OFFSET_pre5;
        LDR.W    R0,??DataTable23_15
        LDR.W    R1,??DataTable23_16
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1328     zong_OFFSET_pre5 = zong_OFFSET_pre4;
        LDR.W    R0,??DataTable23_16
        LDR.W    R1,??DataTable23_17
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1329     zong_OFFSET_pre4 = zong_OFFSET_pre3;
        LDR.W    R0,??DataTable23_17
        LDR.W    R1,??DataTable23_18
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1330     zong_OFFSET_pre3 = zong_OFFSET_pre2;
        LDR.W    R0,??DataTable23_18
        LDR.W    R1,??DataTable23_19
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1331     zong_OFFSET_pre2 = zong_OFFSET_pre1;
        LDR.W    R0,??DataTable23_19
        LDR.W    R1,??DataTable23_20
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1332     zong_OFFSET_pre1 = zong_OFFSET;
        LDR.W    R0,??DataTable23_20
        LDR.W    R1,??DataTable23_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1333     
// 1334     //d_err1 = front_OFFSET - front_OFFSET_pre1;恒为0
// 1335     z_err1 = zong_OFFSET_pre1 - zong_OFFSET_pre2;
        LDR.W    R0,??DataTable23_20
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_19
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_21
        STRH     R0,[R1, #+0]
// 1336     z_err2 = zong_OFFSET_pre2 - zong_OFFSET_pre3;
        LDR.W    R0,??DataTable23_19
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_18
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_22
        STRH     R0,[R1, #+0]
// 1337     z_err3 = zong_OFFSET_pre3 - zong_OFFSET_pre4;
        LDR.W    R0,??DataTable23_18
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_17
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_23
        STRH     R0,[R1, #+0]
// 1338     z_err4 = zong_OFFSET_pre4 - zong_OFFSET_pre5;
        LDR.W    R0,??DataTable23_17
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_16
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_24
        STRH     R0,[R1, #+0]
// 1339     z_err5 = zong_OFFSET_pre5 - zong_OFFSET_pre6;
        LDR.W    R0,??DataTable23_16
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_25
        STRH     R0,[R1, #+0]
// 1340     z_err6 = zong_OFFSET_pre6 - zong_OFFSET_pre7;
        LDR.W    R0,??DataTable23_15
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_14
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_26
        STRH     R0,[R1, #+0]
// 1341     z_err7 = zong_OFFSET_pre7 - zong_OFFSET_pre8;
        LDR.W    R0,??DataTable23_14
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_13
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_27
        STRH     R0,[R1, #+0]
// 1342     z_err8 = zong_OFFSET_pre8 - zong_OFFSET_pre9;
        LDR.W    R0,??DataTable23_13
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_12
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable23_28
        STRH     R0,[R1, #+0]
// 1343     z_err9 = zong_OFFSET_pre9 - zong_OFFSET_pre10;  
        LDR.W    R0,??DataTable23_12
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable23_11
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable25
        STRH     R0,[R1, #+0]
// 1344 }
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     front_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     cl_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     front_OFFSET

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     front_l_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     front_l_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     front_r_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     front_r_pre3
// 1345 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1346 int16 route_z[100]={0};
route_z:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1347 int16 chafang_z[100]={0};
chafang_z:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1348 int16 route_ave_z=0;
route_ave_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1349 int16 fangcha_z=0,fangcha_qian_z=0,fangcha_hou_z=0;
fangcha_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_qian_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_hou_z:
        DS8 2
// 1350 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1351 void route_type_Z()
// 1352 {
route_type_Z:
        PUSH     {R4,R5}
// 1353   char i;
// 1354   char fch_first=3;//赛道过渡
        MOVS     R0,#+3
// 1355   char label_count=6;
        MOVS     R1,#+6
// 1356   char fch_av_count=0;
        MOVS     R2,#+0
// 1357   
// 1358   fangcha_z=0;
        LDR.W    R3,??DataTable23_29
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1359   fangcha_qian_z=0;
        LDR.W    R3,??DataTable23_30
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1360   fangcha_hou_z=0;
        LDR.W    R3,??DataTable25_1
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1361   
// 1362   fch_av_count = label_count - fch_first+1;
        SUBS     R3,R1,R0
        ADDS     R3,R3,#+1
        MOVS     R2,R3
// 1363   //刷新
// 1364   route_z[0]=zong_OFFSET;
        LDR.W    R3,??DataTable23_31
        LDR.W    R4,??DataTable23_8
        LDRH     R4,[R4, #+0]
        STRH     R4,[R3, #+0]
// 1365   for(i=100;i>0;i--)
        MOVS     R3,#+100
        B.N      ??route_type_Z_0
// 1366   {
// 1367     route_z[i] = route_z[i-1];
??route_type_Z_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable23_31
        ADDS     R4,R4,R3, LSL #+1
        LDRH     R4,[R4, #-2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable23_31
        STRH     R4,[R5, R3, LSL #+1]
// 1368   }
        SUBS     R3,R3,#+1
??route_type_Z_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BCS.N    ??route_type_Z_1
// 1369   //前3
// 1370   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_2
// 1371   {
// 1372     route_ave_z += route_z[i]; 
??route_type_Z_3:
        LDR.W    R4,??DataTable24
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable23_31
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable24
        STRH     R4,[R5, #+0]
// 1373   }
        ADDS     R3,R3,#+1
??route_type_Z_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_Z_3
// 1374   route_ave_z = route_ave_z/3;
        LDR.W    R3,??DataTable24
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable24
        STRH     R3,[R4, #+0]
// 1375   
// 1376   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_4
// 1377   {
// 1378     chafang_z[i] = route_z[i]*route_z[i];
??route_type_Z_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable23_31
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable23_31
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable24_1
        STRH     R4,[R5, R3, LSL #+1]
// 1379   }
        ADDS     R3,R3,#+1
??route_type_Z_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_Z_5
// 1380   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_6
// 1381   {
// 1382     fangcha_z += chafang_z[i]; 
??route_type_Z_7:
        LDR.W    R4,??DataTable23_29
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable24_1
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable23_29
        STRH     R4,[R5, #+0]
// 1383   }
        ADDS     R3,R3,#+1
??route_type_Z_6:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_Z_7
// 1384   fangcha_qian_z = fangcha_z/3;
        LDR.W    R3,??DataTable23_29
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable23_30
        STRH     R3,[R4, #+0]
// 1385   
// 1386   
// 1387   //清0
// 1388   route_ave_z=0;
        LDR.W    R3,??DataTable24
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1389   for(i=0;i<5;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_8
// 1390   {
// 1391     chafang_z[i] = 0;
??route_type_Z_9:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable24_1
        MOVS     R5,#+0
        STRH     R5,[R4, R3, LSL #+1]
// 1392   }
        ADDS     R3,R3,#+1
??route_type_Z_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+5
        BCC.N    ??route_type_Z_9
// 1393   fangcha_z=0;
        LDR.W    R3,??DataTable23_29
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1394   
// 1395   //后续
// 1396   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_Z_10
// 1397   {
// 1398     route_ave_z += route_z[i]; 
??route_type_Z_11:
        LDR.W    R4,??DataTable24
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable23_31
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable24
        STRH     R4,[R5, #+0]
// 1399   }
        ADDS     R3,R3,#+1
??route_type_Z_10:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_Z_11
// 1400   route_ave_z = route_ave_z/label_count;
        LDR.W    R3,??DataTable24
        LDRSH    R3,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SDIV     R3,R3,R1
        LDR.W    R4,??DataTable24
        STRH     R3,[R4, #+0]
// 1401   
// 1402   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_Z_12
// 1403   {
// 1404     chafang_z[i] = route_z[i]*route_z[i];
??route_type_Z_13:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable23_31
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable23_31
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable24_1
        STRH     R4,[R5, R3, LSL #+1]
// 1405   }
        ADDS     R3,R3,#+1
??route_type_Z_12:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_Z_13
// 1406   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_Z_14
// 1407   {
// 1408     fangcha_z += chafang_z[i]; 
??route_type_Z_15:
        LDR.W    R0,??DataTable23_29
        LDRH     R0,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable24_1
        LDRH     R4,[R4, R3, LSL #+1]
        ADDS     R0,R4,R0
        LDR.W    R4,??DataTable23_29
        STRH     R0,[R4, #+0]
// 1409   }
        ADDS     R3,R3,#+1
??route_type_Z_14:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_Z_15
// 1410   fangcha_hou_z = fangcha_z/fch_av_count;
        LDR.W    R0,??DataTable23_29
        LDRSH    R0,[R0, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SDIV     R0,R0,R2
        LDR.W    R1,??DataTable25_1
        STRH     R0,[R1, #+0]
// 1411 }
        POP      {R4,R5}
        BX       LR               ;; return
// 1412 
// 1413 
// 1414 //---------------------------OLED显示--------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1415 void LCD_show()
// 1416 {   
LCD_show:
        PUSH     {R7,LR}
// 1417     //LCD_P8x16_number(10,0,front_reference);
// 1418     LCD_P8x16_number(10,2,front_l);
        LDR.W    R0,??DataTable24_2
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       LCD_P8x16_number
// 1419     LCD_P8x16_number(70,2,front_r);
        LDR.W    R0,??DataTable23_6
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+70
        BL       LCD_P8x16_number
// 1420 }
        POP      {R0,PC}          ;; return
// 1421 //----------------------------给CCDView发送图像------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1422 void SendImageData(uint8 * ImageData)
// 1423 {
SendImageData:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
// 1424     unsigned char i;
// 1425     unsigned char crc = 0;
        MOVS     R6,#+0
// 1426     /* Send Data */
// 1427     uart_send1(UART3,'*');
        MOVS     R1,#+42
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
// 1428     uart_send1(UART3,'L');
        MOVS     R1,#+76
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
// 1429     uart_send1(UART3,'D');
        MOVS     R1,#+68
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
// 1430 
// 1431     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1432     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1433     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1434     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1435 
// 1436     for(i=0; i<128; i++)
        MOVS     R5,#+0
        B.N      ??SendImageData_0
// 1437     {
// 1438         SendHex(*ImageData ++);
??SendImageData_1:
        LDRB     R0,[R4, #+0]
        BL       SendHex
        ADDS     R4,R4,#+1
// 1439     }
        ADDS     R5,R5,#+1
??SendImageData_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BCC.N    ??SendImageData_1
// 1440     SendHex(crc);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SendHex
// 1441     uart_send1(UART3,'#');
        MOVS     R1,#+35
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
// 1442 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     front_OFFSET_pre10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     front_OFFSET_pre9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     front_OFFSET_pre8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     front_OFFSET_pre7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     front_OFFSET_pre6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     front_OFFSET_pre5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     front_OFFSET_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     front_OFFSET_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     front_OFFSET_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     front_OFFSET_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     d_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     d_err2
// 1443 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1444 void SendHex(unsigned char hex)
// 1445 {
SendHex:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1446   unsigned char temp;
// 1447   temp = hex >> 4;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
// 1448   if(temp < 10)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BCS.N    ??SendHex_0
// 1449   {
// 1450    uart_send1(UART3,temp + '0');
        ADDS     R1,R0,#+48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
        B.N      ??SendHex_1
// 1451   }
// 1452   else
// 1453   {
// 1454    uart_send1(UART3,temp - 10 + 'A');
??SendHex_0:
        ADDS     R1,R0,#+55
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
// 1455   }
// 1456   temp = hex & 0x0F;
??SendHex_1:
        ANDS     R0,R4,#0xF
// 1457   if(temp < 10)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BCS.N    ??SendHex_2
// 1458   {
// 1459    uart_send1(UART3,temp + '0');
        ADDS     R1,R0,#+48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
        B.N      ??SendHex_3
// 1460   }
// 1461   else
// 1462   {
// 1463    uart_send1(UART3,temp - 10 + 'A');
??SendHex_2:
        ADDS     R1,R0,#+55
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable28  ;; 0x4006d000
        BL       uart_send1
// 1464   }
// 1465 }
??SendHex_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     d_err3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     d_err4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     d_err5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     d_err6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     d_err7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     d_err8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     d_err9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     fangcha_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     fangcha_qian_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     route_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     route_ave_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     chafang_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_12:
        DC32     Pixel_Z
// 1466 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1467 void SamplingDelay(void)//CCD延时程序 200ns
// 1468 {
SamplingDelay:
        SUB      SP,SP,#+4
// 1469    volatile uint8 i;
// 1470    for(i=0;i<1;i++)
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        B.N      ??SamplingDelay_0
// 1471    {
// 1472     asm("nop");
??SamplingDelay_1:
        nop              
// 1473     asm("nop");
        nop              
// 1474    }
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
??SamplingDelay_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BCC.N    ??SamplingDelay_1
// 1475 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
// 1476 //---------------------------------------舵机控制------------------------------------------//
// 1477                

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1478          int32      pulse_count=0,pulse_count_pre=0;
pulse_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pulse_count_pre:
        DS8 4
// 1479 extern   int16      fch_dp1,fch_dp2,fch_dp3;
// 1480 #define  bolang     (fangcha_qian_f>100&&fangcha_qian_f<250)
// 1481 extern   float      Kp,Kp_hold;
// 1482 extern   float      Kd,Kd_hold;
// 1483 extern   float      Ki,Ki_hold;
// 1484 extern   float      Kp_ZW,Kp_WW,Kp_WZ,Kp_ZZ,Kp_BL;
// 1485 extern   float      Kd_ZW,Kd_WW,Kd_WZ,Kd_ZZ,Kd_BL;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// 1486          float      k=0.02,t=0.0,chu=6.0;
k:
        DATA
        DC32 3CA3D70AH

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
t:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
chu:
        DATA
        DC32 40C00000H

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
// 1487          double     delta_p=0.0;
delta_p:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
// 1488          double     I_sumerr=0.0;
I_sumerr:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1489          int16      ZHONG=4530;//2-4455;//1-4530;       
ZHONG:
        DATA
        DC16 4530

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1490          int16      xianfu=1300;
xianfu:
        DATA
        DC16 1300
// 1491          

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1492 void SetServoVoltage()
// 1493 {       
SetServoVoltage:
        PUSH     {R4-R6,LR}
// 1494       g_fDirectionControlOutOld = g_fDirectionControlOutNew;  
        LDR.W    R0,??DataTable25_2
        LDR.W    R1,??DataTable31
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 1495       
// 1496       front_OFFSET_KZ = front_OFFSET;//P项！！！不能贸然地加偏差
        LDR.W    R0,??DataTable25_3
        LDR.W    R1,??DataTable25_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1497       /*
// 1498       if(front_OFFSET_KZ>100)
// 1499         front_OFFSET_KZ=100;
// 1500       if(front_OFFSET_KZ<-100)
// 1501         front_OFFSET_KZ=-100;*/     
// 1502       t=k*front_OFFSET_KZ; 
        LDR.W    R0,??DataTable25_3
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable25_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        STR      R0,[R1, #+0]
// 1503       delta_p=t-1/6*t*t*t+3*t*t*t*t*t;
        LDR.W    R0,??DataTable25_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable25_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable25_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_7  ;; 0x40400000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable25_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable25_8
        STRD     R0,R1,[R2, #+0]
// 1504       delta_p=delta_p/chu;
        LDR.W    R0,??DataTable25_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable25_8
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_ddiv
        LDR.W    R2,??DataTable25_8
        STRD     R0,R1,[R2, #+0]
// 1505       
// 1506       if(delta_p>20)
        LDR.W    R2,??DataTable25_8
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable26  ;; 0x40340000
        BL       __aeabi_cdrcmple
        BHI.N    ??SetServoVoltage_0
// 1507         delta_p=20;
        LDR.W    R0,??DataTable25_8
        MOVS     R2,#+0
        LDR.W    R3,??DataTable26  ;; 0x40340000
        STRD     R2,R3,[R0, #+0]
// 1508       if(delta_p<-20)
??SetServoVoltage_0:
        LDR.W    R2,??DataTable25_8
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable26_1  ;; 0xc0340000
        BL       __aeabi_cdcmple
        BCS.N    ??SetServoVoltage_1
// 1509         delta_p=-20;
        LDR.W    R0,??DataTable25_8
        MOVS     R2,#+0
        LDR.W    R3,??DataTable26_1  ;; 0xc0340000
        STRD     R2,R3,[R0, #+0]
// 1510       
// 1511       if(delta_p<0) delta_p=-delta_p;
??SetServoVoltage_1:
        LDR.W    R2,??DataTable25_8
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??SetServoVoltage_2
        LDR.W    R0,??DataTable25_8
        LDR.W    R1,??DataTable25_8
        LDRD     R2,R3,[R1, #+0]
        EORS     R3,R3,#0x80000000
        STRD     R2,R3,[R0, #+0]
// 1512       
// 1513       //Kp=Kp_hold+delta_p;
// 1514       
// 1515       //if((front_OFFSET_KZ_pre<0&&front_OFFSET_KZ>0)||(front_OFFSET_KZ_pre>0&&front_OFFSET_KZ<0))
// 1516         //I_sumerr=-front_OFFSET_KZ_pre;//I项 
// 1517       
// 1518       
// 1519       D_err=front_OFFSET_KZ-front_OFFSET_KZ_pre;//D项
??SetServoVoltage_2:
        LDR.W    R0,??DataTable25_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable28_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable27
        STRH     R0,[R1, #+0]
// 1520       
// 1521       if(ZZ_count>10)
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??SetServoVoltage_3
// 1522         Kp=Kp_hold+(pulse_count/400)*Ki;
        LDR.W    R0,??DataTable27_2
        LDR      R0,[R0, #+0]
        MOV      R1,#+400
        SDIV     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable28_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable28_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable28_4
        STR      R0,[R1, #+0]
// 1523       
// 1524       servo_duty=(int16)(ZHONG+Kp*front_OFFSET_KZ+Ki*I_sumerr+Kd*D_err);
??SetServoVoltage_3:
        LDR.W    R0,??DataTable28_5
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable25_3
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable28_4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable28_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R6,??DataTable28_6
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable28_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable29
        STRH     R0,[R1, #+0]
// 1525     
// 1526       front_OFFSET_KZ_pre=front_OFFSET_KZ;
        LDR.W    R0,??DataTable28_1
        LDR.W    R1,??DataTable25_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1527       
// 1528       //舵机限幅保护
// 1529       if(servo_duty>ZHONG+xianfu)//
        LDR.W    R0,??DataTable28_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable30
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable29
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_4
// 1530         servo_duty=ZHONG+xianfu;
        LDR.W    R0,??DataTable28_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable30
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable29
        STRH     R0,[R1, #+0]
// 1531     
// 1532       if(servo_duty<ZHONG-xianfu)//
??SetServoVoltage_4:
        LDR.W    R0,??DataTable29
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable28_5
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable30
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_5
// 1533         servo_duty=ZHONG-xianfu;
        LDR.W    R0,??DataTable28_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable30
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable29
        STRH     R0,[R1, #+0]
// 1534      
// 1535       /*if((Lendiao==1)||(Rendiao==1))
// 1536       {
// 1537         //舵机限幅保护
// 1538         if(servo_duty>5862)//5648
// 1539           servo_duty=5862;
// 1540       
// 1541         if(servo_duty<3242)//3048
// 1542           servo_duty=3242;
// 1543       }
// 1544       else
// 1545       {
// 1546         //舵机限幅保护
// 1547         if(servo_duty>5700)//5752
// 1548           servo_duty=5700;
// 1549       
// 1550         if(servo_duty<3404)//3332
// 1551           servo_duty=3404;
// 1552       }*/
// 1553    //舵机调节
// 1554    FTM_PWM_ChangeDuty(0,2,servo_duty);//servo_duty变小，舵机右转，前轮左偏
??SetServoVoltage_5:
        LDR.W    R0,??DataTable29
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_ChangeDuty
// 1555    //****************************************//
// 1556    //延时要慎用，否则会出现各种不能理解的错误//
// 1557    //****************************************//
// 1558    g_fDirectionControlOutNew = servo_duty;
        LDR.W    R0,??DataTable29
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable31
        STR      R0,[R1, #+0]
// 1559 }
        POP      {R4-R6,PC}       ;; return
// 1560 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1561 void DirectionControlOutput(void)
// 1562 {
DirectionControlOutput:
        PUSH     {R4,LR}
// 1563 	float fValue;
// 1564 	fValue = g_fDirectionControlOutNew - g_fDirectionControlOutOld;
        LDR.W    R0,??DataTable31
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable25_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
// 1565 	servo_duty = (int16)(fValue * (g_nDirectionControlPeriod + 1) / DIRECTION_CONTROL_PERIOD + g_fDirectionControlOutOld);
        LDR.W    R0,??DataTable32
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable32_1  ;; 0x41a00000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable25_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29
        STRH     R0,[R1, #+0]
// 1566 
// 1567 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     fangcha_hou_f
// 1568 
// 1569 //-----------------------速度控制-------------------------------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1570 void GetMotorPulse()
// 1571 {
// 1572   uint32 nPulse;
// 1573   nPulse=FTM2_CNT;                     //脉冲计数的加减,目前看，正转为正，反转为负
GetMotorPulse:
        LDR.W    R0,??DataTable33  ;; 0x400b8004
        LDR      R0,[R0, #+0]
// 1574   g_nMotorPulse = (int32)nPulse;       //注意编码器的安装
        LDR.W    R1,??DataTable32_2
        STRH     R0,[R1, #+0]
// 1575   //if(!MOTOR_SPEED_POSITIVE)	g_nMotorPulse = -g_nMotorPulse;
// 1576   g_nMotorPulseSigma +=g_nMotorPulse;
        LDR.W    R0,??DataTable32_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable32_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable32_3
        STRH     R0,[R1, #+0]
// 1577   FTM2_CNT=0;
        LDR.W    R0,??DataTable33  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1578 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     black_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     black_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     zhong

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     zheng

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_4:
        DC32     zong_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_5:
        DC32     zong_width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_6:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_7:
        DC32     delay_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_8:
        DC32     zong_l
// 1579 //================================================================
// 1580 //函数名：  void Speed_PID()
// 1581 //功能：    输入脉冲捕捉
// 1582 //入口参数：无
// 1583 //出口参数：无
// 1584 //说明：    无
// 1585 //================================================================
// 1586         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1587         uint8    DR;
DR:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1588         uint8    qd_count=0;
qd_count:
        DS8 1
// 1589 extern  int16    speed;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1590         int16    speed_pwm=0;
speed_pwm:
        DS8 2
// 1591        
// 1592 extern  int16    shache_time;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1593         int16    bl_shache_time=0;
bl_shache_time:
        DS8 2
// 1594 extern  int16    speed;
// 1595 extern  int16    speed_H;
// 1596 extern  int16    speed_L;
// 1597 extern  int16    speed_B;
// 1598 
// 1599 extern  int16    speed_jian;
// 1600 extern  int16    PULSE_MAX; 
// 1601 
// 1602 extern  float    k_B;
// 1603         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1604         uint8    yichang_count=0;
yichang_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1605         uint8    yichang_flag=0;
yichang_flag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1606         int16    SHA_PULSE=50;
SHA_PULSE:
        DATA
        DC16 50

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1607         uint8    SHACHE_TIME_1=0;//5;
SHACHE_TIME_1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1608         uint8    SHACHE_TIME_2=0;//5;
SHACHE_TIME_2:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1609         uint8    SHACHE_TIME_3=6;//6;
SHACHE_TIME_3:
        DATA
        DC8 6

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1610         uint8    SHACHE_TIME_4=7;
SHACHE_TIME_4:
        DATA
        DC8 7

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1611         uint8    SHACHE_TIME_5=15;
SHACHE_TIME_5:
        DATA
        DC8 15

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1612         uint8    BL_SHACHE_TIME=15;
BL_SHACHE_TIME:
        DATA
        DC8 15

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1613         uint8    guosha_flag=0;
guosha_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1614         uint8    PD_ZW_keeptime=0;
PD_ZW_keeptime:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1615         uint8    shache_fg=0;
shache_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1616         uint8    bl_flag=0;
bl_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1617         uint8    ZZ_flag=0;
ZZ_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1618         uint8    WW_flag=0;
WW_flag:
        DS8 1
// 1619         
// 1620 extern  int16    Motor_Lock;
// 1621 extern  int16    Servo_Lock;
// 1622                          

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1623         int16    bl_count=0;
bl_count:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1624         uint8    PD_ZW_flag=1; 
PD_ZW_flag:
        DATA
        DC8 1
// 1625 #define PULSE    (pulse_count*5/13+48)
// 1626 #define zhuan1   ((d_err1>0&&d_err2>0&&d_err3>0)||(d_err1<0&&d_err2<0&&d_err3<0))//三个最大front_OFFSET_pre1
// 1627 #define zhuan2   ((front_OFFSET>0&&front_OFFSET_pre1>0&&front_OFFSET_pre2>0)||(front_OFFSET<0&&front_OFFSET_pre1<0&&front_OFFSET_pre2<0))//三个最大
// 1628 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1629         uint8    jisha=1;
jisha:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// 1630         float    sp=10.0,sd=10.0;
`sp`:
        DATA
        DC32 41200000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sd:
        DATA
        DC32 41200000H
// 1631         

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1632         int16    RSH=15;
RSH:
        DATA
        DC16 15
// 1633 
// 1634 //----------------------------------刹车2---------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1635 void shache2()//条件得封闭
// 1636 { 
// 1637   //Z>>W
// 1638   if(fangcha_qian_f>=fch_dp2)
shache2:
        LDR.W    R0,??DataTable32_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable32_5
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??shache2_0
// 1639   {
// 1640     WW_flag = 1;
        LDR.W    R0,??DataTable32_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1641     if(ZZ_count>10)
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??shache2_1
// 1642     {
// 1643       if(pulse_count>SHA_PULSE)
        LDR.W    R0,??DataTable32_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache2_2
// 1644         if(shache_fg==1) speed=-speed_B;
        LDR.W    R0,??DataTable32_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache2_3
        LDR.W    R0,??DataTable32_9
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache2_2
// 1645       else
// 1646       {
// 1647         shache_fg=0;
??shache2_3:
        LDR.W    R0,??DataTable32_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1648         ZZ_count=0;
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1649         speed=speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache2_2
// 1650       }
// 1651     }
// 1652     else 
// 1653     {
// 1654       ZZ_count=0;
??shache2_1:
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1655       speed=speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache2_2
// 1656     }
// 1657   }
// 1658   //Z>>Z
// 1659   else if(fangcha_qian_f<fch_dp2)
??shache2_0:
        LDR.W    R0,??DataTable32_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable32_5
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache2_2
// 1660   {
// 1661     if(WW_flag==1)
        LDR.W    R0,??DataTable32_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache2_4
// 1662     {
// 1663       WW_flag = 0;
        LDR.W    R0,??DataTable32_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1664       ZZ_count = 0;
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1665     }
// 1666     ZZ_count++;
??shache2_4:
        LDR.W    R0,??DataTable27_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_1
        STRH     R0,[R1, #+0]
// 1667     if(ZZ_count>3) //减少误判情况下的误加速 
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??shache2_5
// 1668     {
// 1669       speed = speed_H;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache2_2
// 1670     }   
// 1671     else speed = speed_L;
??shache2_5:
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1672   }
// 1673   /*
// 1674   //过度 或 波浪
// 1675   else
// 1676   {
// 1677     WW_flag = 1;
// 1678     speed = speed_L;
// 1679   }*/
// 1680   //人字弯------------------------------------------------------------------
// 1681   if(LHOLDdiao_flag==1||RHOLDdiao_flag==1)
??shache2_2:
        LDR.W    R0,??DataTable33_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??shache2_6
        LDR.W    R0,??DataTable33_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache2_7
// 1682   {
// 1683     rensha_count++;
??shache2_6:
        LDR.W    R0,??DataTable33_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_6
        STRH     R0,[R1, #+0]
// 1684     if(rensha_count<RSH)
        LDR.W    R0,??DataTable33_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache2_8
// 1685     {
// 1686       speed = -400;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_8  ;; 0xfffffe70
        STRH     R1,[R0, #+0]
        B.N      ??shache2_7
// 1687     }
// 1688     else if(rensha_count>=RSH&&rensha_count<RSH+7)
??shache2_8:
        LDR.W    R0,??DataTable33_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??shache2_9
        LDR.W    R0,??DataTable33_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_7
        LDRSH    R1,[R1, #+0]
        ADDS     R1,R1,#+7
        CMP      R0,R1
        BGE.N    ??shache2_9
// 1689     {
// 1690       speed = speed+100;
        LDR.W    R0,??DataTable33_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+100
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache2_7
// 1691     }
// 1692     else
// 1693     {
// 1694       speed = 400;
??shache2_9:
        LDR.W    R0,??DataTable33_1
        MOV      R1,#+400
        STRH     R1,[R0, #+0]
// 1695     }
// 1696   }
// 1697 }
??shache2_7:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     stop_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     zong_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_2:
        DC32     high_aver_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_3:
        DC32     low_aver_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_4:
        DC32     zong_r_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_5:
        DC32     zong_l_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_6:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_7:
        DC32     cl_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_8:
        DC32     zong_OFFSET

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_9:
        DC32     zong_l_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_10:
        DC32     zong_r_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_11:
        DC32     zong_OFFSET_pre10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_12:
        DC32     zong_OFFSET_pre9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_13:
        DC32     zong_OFFSET_pre8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_14:
        DC32     zong_OFFSET_pre7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_15:
        DC32     zong_OFFSET_pre6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_16:
        DC32     zong_OFFSET_pre5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_17:
        DC32     zong_OFFSET_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_18:
        DC32     zong_OFFSET_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_19:
        DC32     zong_OFFSET_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_20:
        DC32     zong_OFFSET_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_21:
        DC32     z_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_22:
        DC32     z_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_23:
        DC32     z_err3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_24:
        DC32     z_err4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_25:
        DC32     z_err5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_26:
        DC32     z_err6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_27:
        DC32     z_err7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_28:
        DC32     z_err8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_29:
        DC32     fangcha_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_30:
        DC32     fangcha_qian_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_31:
        DC32     route_z
// 1698 
// 1699 //----------------------------------刹车3---------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1700 void shache3()//条件得封闭
// 1701 { 
// 1702   //Z>>W
// 1703   if(fangcha_qian_f>fch_dp1)
shache3:
        LDR.W    R0,??DataTable33_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable32_4
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.W    ??shache3_0
// 1704   {
// 1705     WW_flag = 1;
        LDR.W    R0,??DataTable32_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1706     
// 1707     if(ZZ_count>=5&&ZZ_count<8)//12  改为5,令人激动的波浪弯入大弯刹车
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BCS.N    ??shache3_1
// 1708     { 
// 1709       //刹车阶段 
// 1710       if(shache_time<SHACHE_TIME_1)
        LDR.W    R0,??DataTable33_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_11
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??shache3_2
// 1711       { 
// 1712         //Kp=Kp_ZW;
// 1713         //Kd=Kd_ZW;
// 1714         shache_time++;
        LDR.W    R0,??DataTable33_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_10
        STRH     R0,[R1, #+0]
// 1715         speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
        LDR.W    R0,??DataTable32_9
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+400
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable27_1
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache3_3
// 1716         //if(pulse_count>SHA_PULSE) speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
// 1717         //else speed = speed_L;
// 1718       }
// 1719       //W>>W
// 1720       else 
// 1721       {
// 1722         ZZ_count = 0;
??shache3_2:
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1723         speed = speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1724       }
// 1725     }
// 1726     else if(ZZ_count>=8&&ZZ_count<18)
??shache3_1:
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BCS.N    ??shache3_4
// 1727     {
// 1728       //刹车阶段 
// 1729       if(shache_time<SHACHE_TIME_2)
        LDR.W    R0,??DataTable33_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_12
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??shache3_5
// 1730       { 
// 1731         //Kp=Kp_ZW;
// 1732         //Kd=Kd_ZW;
// 1733         shache_time++;
        LDR.W    R0,??DataTable33_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_10
        STRH     R0,[R1, #+0]
// 1734         speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
        LDR.W    R0,??DataTable32_9
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+400
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable27_1
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache3_3
// 1735         //if(pulse_count>SHA_PULSE) speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
// 1736         //else speed = speed_L;
// 1737       }
// 1738       //W>>W
// 1739       else 
// 1740       {
// 1741         ZZ_count = 0;//刚刹完，清零
??shache3_5:
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1742         speed = speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1743       }
// 1744     }
// 1745     else if(ZZ_count>=18&&ZZ_count<28)
??shache3_4:
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+18
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BCS.N    ??shache3_6
// 1746     {
// 1747       //刹车阶段 
// 1748       if(shache_time<SHACHE_TIME_3)
        LDR.W    R0,??DataTable33_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_13
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??shache3_7
// 1749       { 
// 1750         shache_time++;
        LDR.W    R0,??DataTable33_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_10
        STRH     R0,[R1, #+0]
// 1751         if(pulse_count>SHA_PULSE) speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
        LDR.W    R0,??DataTable32_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache3_8
        LDR.W    R0,??DataTable32_9
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+400
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable27_1
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache3_3
// 1752         else speed = speed_L;
??shache3_8:
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1753       }
// 1754       //W>>W
// 1755       else 
// 1756       {
// 1757         ZZ_count = 0;//刚刹完，清零
??shache3_7:
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1758         speed = speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1759       }
// 1760     }
// 1761     else if(ZZ_count>=28&&ZZ_count<48)
??shache3_6:
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+28
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+20
        BCS.N    ??shache3_9
// 1762     {
// 1763       //刹车阶段 
// 1764       if(shache_time<SHACHE_TIME_4)
        LDR.W    R0,??DataTable33_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_14
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??shache3_10
// 1765       { 
// 1766         shache_time++;
        LDR.W    R0,??DataTable33_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_10
        STRH     R0,[R1, #+0]
// 1767         if(pulse_count>SHA_PULSE) speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
        LDR.W    R0,??DataTable32_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache3_11
        LDR.W    R0,??DataTable32_9
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+400
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable27_1
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache3_3
// 1768         else speed = speed_L;
??shache3_11:
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1769       }
// 1770       //W>>W
// 1771       else 
// 1772       {
// 1773         ZZ_count = 0;
??shache3_10:
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1774         speed = speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1775       }
// 1776     }
// 1777     else if(ZZ_count>=48)
??shache3_9:
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+48
        BLT.N    ??shache3_12
// 1778     {
// 1779       //刹车阶段 
// 1780       if(shache_time<SHACHE_TIME_5)
        LDR.W    R0,??DataTable33_10
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_15
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??shache3_13
// 1781       { 
// 1782         shache_time++;
        LDR.W    R0,??DataTable33_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_10
        STRH     R0,[R1, #+0]
// 1783         if(pulse_count>SHA_PULSE) speed = -speed_B*(pulse_count/400)*(ZZ_count/10);
        LDR.W    R0,??DataTable32_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache3_14
        LDR.W    R0,??DataTable32_9
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+400
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable27_1
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache3_3
// 1784         else speed = speed_L;
??shache3_14:
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1785       }
// 1786       //W>>W
// 1787       else 
// 1788       {
// 1789         ZZ_count = 0;
??shache3_13:
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1790         speed = speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1791       }
// 1792     }
// 1793     else speed = speed_L;
??shache3_12:
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1794   }
// 1795   //Z>>Z
// 1796   else if(fangcha_qian_f<fch_dp2)
??shache3_0:
        LDR.W    R0,??DataTable32_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable32_5
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache3_15
// 1797   {
// 1798     if(WW_flag==1)
        LDR.W    R0,??DataTable32_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache3_16
// 1799     {
// 1800       WW_flag = 0;
        LDR.W    R0,??DataTable32_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1801       ZZ_count = 0;
        LDR.W    R0,??DataTable27_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1802     }
// 1803     shache_time = 0;
??shache3_16:
        LDR.W    R0,??DataTable33_10
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1804     ZZ_count++;
        LDR.W    R0,??DataTable27_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_1
        STRH     R0,[R1, #+0]
// 1805     if(ZZ_count>3) //减少误判情况下的误加速 
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??shache3_17
// 1806     {
// 1807       speed = speed_H;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1808     }   
// 1809     else speed = speed_L;
??shache3_17:
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache3_3
// 1810   }
// 1811   //过度 或 波浪
// 1812   else
// 1813   {
// 1814     WW_flag = 1;
??shache3_15:
        LDR.W    R0,??DataTable32_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1815     speed = speed_L;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1816   }
// 1817   
// 1818   //人字弯------------------------------------------------------------------
// 1819   if(LHOLDdiao_flag==1||RHOLDdiao_flag==1)
??shache3_3:
        LDR.W    R0,??DataTable33_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??shache3_18
        LDR.W    R0,??DataTable33_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache3_19
// 1820   {
// 1821     rensha_count++;
??shache3_18:
        LDR.W    R0,??DataTable33_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable33_6
        STRH     R0,[R1, #+0]
// 1822     if(rensha_count<RSH)
        LDR.W    R0,??DataTable33_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache3_20
// 1823     {
// 1824       speed = -400;
        LDR.W    R0,??DataTable33_1
        LDR.W    R1,??DataTable33_8  ;; 0xfffffe70
        STRH     R1,[R0, #+0]
        B.N      ??shache3_19
// 1825     }
// 1826     else if(rensha_count>=RSH&&rensha_count<RSH+7)
??shache3_20:
        LDR.W    R0,??DataTable33_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??shache3_21
        LDR.W    R0,??DataTable33_6
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_7
        LDRSH    R1,[R1, #+0]
        ADDS     R1,R1,#+7
        CMP      R0,R1
        BGE.N    ??shache3_21
// 1827     {
// 1828       speed = speed+100;
        LDR.W    R0,??DataTable33_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+100
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
        B.N      ??shache3_19
// 1829     }
// 1830     else
// 1831     {
// 1832       speed = 400;
??shache3_21:
        LDR.W    R0,??DataTable33_1
        MOV      R1,#+400
        STRH     R1,[R0, #+0]
// 1833     }
// 1834   }
// 1835 }        
??shache3_19:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     route_ave_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     chafang_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     front_l
// 1836 //----------------------------------------------------------------------------------------        
// 1837         

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1838 void Speed_PID()//------接下来需要及时刹车-------------------
// 1839 {
Speed_PID:
        PUSH     {R4,LR}
// 1840     pulse_count=g_nMotorPulseSigma; 
        LDR.N    R0,??DataTable27_2
        LDR.W    R1,??DataTable32_3
        LDRSH    R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 1841     g_nMotorPulseSigma=0;
        LDR.W    R0,??DataTable32_3
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1842     /*没实现预期的效果的程序，就一条一条地调试*/
// 1843     //刹车控制
// 1844     shache3();
        BL       shache3
// 1845     //if(speed<0&&pulse_count<SHA_PULSE+200) speed=speed_L;
// 1846     
// 1847     //启动加速
// 1848     //if(qd_count++<60) speed=1000;
// 1849     //else qd_count=60;
// 1850     //最高速度限制
// 1851     if(pulse_count>PULSE_MAX) speed = speed-speed_jian;//控制效果明显
        LDR.W    R0,??DataTable33_16
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_0
        LDR.W    R0,??DataTable33_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable33_17
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable33_1
        STRH     R0,[R1, #+0]
// 1852     //设定PID输入值
// 1853     PID_SetPoint(speed);
??Speed_PID_0:
        LDR.W    R0,??DataTable33_1
        LDRSH    R0,[R0, #+0]
        BL       PID_SetPoint
// 1854     speed_pwm=(int16)(speed+IncPID_Calculate((pulse_count*5/13+48)));
        LDR.N    R0,??DataTable27_2
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        MULS     R0,R1,R0
        MOVS     R1,#+13
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+48
        BL       IncPID_Calculate
        LDR.W    R1,??DataTable33_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable33_18
        STRH     R0,[R1, #+0]
// 1855     
// 1856     //if(speed==speed_L)
// 1857       //speed_pwm=600;
// 1858     
// 1859     //if(speed_pwm<0)
// 1860       //speed_pwm=-400;
// 1861     /*
// 1862     if(speed>speed_L) 
// 1863     {
// 1864       if(pulse_count<500) speed_pwm=1200;
// 1865       else speed_pwm=(int16)(speed+IncPID_Calculate((pulse_count*5/13+48)));
// 1866     }
// 1867     else
// 1868       speed_pwm=(int16)(speed+IncPID_Calculate((pulse_count*5/13+48))); */
// 1869     
// 1870     //起跑线检测
// 1871     if(stop_flag==1) 
        LDR.W    R0,??DataTable33_19
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_1
// 1872     {
// 1873       if(jisha==1)  speed_pwm=-500;
        LDR.W    R0,??DataTable33_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_2
        LDR.W    R0,??DataTable33_18
        LDR.W    R1,??DataTable33_21  ;; 0xfffffe0c
        STRH     R1,[R0, #+0]
// 1874       if(pulse_count<10||jisha==2)
??Speed_PID_2:
        LDR.N    R0,??DataTable27_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??Speed_PID_3
        LDR.W    R0,??DataTable33_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Speed_PID_1
// 1875       {
// 1876         jisha=2;
??Speed_PID_3:
        LDR.W    R0,??DataTable33_20
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
// 1877         speed_pwm=-sp*pulse_count+sd*(pulse_count-pulse_count_pre);
        LDR.N    R0,??DataTable27_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable33_22
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable27_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_23
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable33_24
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable33_18
        STRH     R0,[R1, #+0]
// 1878       }
// 1879     }
// 1880     
// 1881     
// 1882     if(speed_pwm>1250)
??Speed_PID_1:
        LDR.W    R0,??DataTable33_18
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+1251
        CMP      R0,R1
        BLT.N    ??Speed_PID_4
// 1883       speed_pwm=1250;
        LDR.W    R0,??DataTable33_18
        MOVW     R1,#+1250
        STRH     R1,[R0, #+0]
// 1884     if(speed_pwm<-1250)
??Speed_PID_4:
        LDR.W    R0,??DataTable33_18
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable33_25  ;; 0xfffffb1e
        CMP      R0,R1
        BGE.N    ??Speed_PID_5
// 1885       speed_pwm=-1250;
        LDR.W    R0,??DataTable33_18
        LDR.W    R1,??DataTable33_25  ;; 0xfffffb1e
        STRH     R1,[R0, #+0]
// 1886     
// 1887     
// 1888     if(speed_pwm>0) 
??Speed_PID_5:
        LDR.W    R0,??DataTable33_18
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Speed_PID_6
// 1889     {
// 1890       gpio_init(PORTB, 9, 1,0);//DIL_B;
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.W    R0,??DataTable33_26  ;; 0x400ff040
        BL       gpio_init
// 1891       FTM1_C0V=speed_pwm;
        LDR.W    R0,??DataTable33_27  ;; 0x40039010
        LDR.W    R1,??DataTable33_18
        LDRSH    R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??Speed_PID_7
// 1892     }
// 1893     else 
// 1894     {
// 1895       gpio_init(PORTB, 9, 1,1);//DIL_F;
??Speed_PID_6:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.W    R0,??DataTable33_26  ;; 0x400ff040
        BL       gpio_init
// 1896       FTM1_C0V=1250+speed_pwm;
        LDR.W    R0,??DataTable33_18
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+1250
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable33_27  ;; 0x40039010
        STR      R0,[R1, #+0]
// 1897     }
// 1898     
// 1899     pulse_count_pre=pulse_count;
??Speed_PID_7:
        LDR.W    R0,??DataTable33_23
        LDR.N    R1,??DataTable27_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 1900 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     z_err9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     fangcha_hou_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     g_fDirectionControlOutOld

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     front_OFFSET_KZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_4:
        DC32     front_OFFSET

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_5:
        DC32     k

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_6:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_7:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_8:
        DC32     delta_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_9:
        DC32     chu
// 1901 //--------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1902 void SpeedControl(void)
// 1903 {
SpeedControl:
        PUSH     {R4,R5,LR}
// 1904 	float fP,fI, fDelta;
// 1905 
// 1906 	g_fCarSpeed = g_nMotorPulseSigma;
        LDR.N    R0,??DataTable32_3
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable33_28
        STR      R0,[R1, #+0]
// 1907 	g_nMotorPulseSigma = 0;
        LDR.N    R0,??DataTable32_3
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1908 	g_fCarSpeed *= CAR_SPEED_CONSTANT;
        LDR.W    R0,??DataTable33_28
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable33_29  ;; 0x47ae147b
        LDR.W    R3,??DataTable33_30  ;; 0x3f947ae1
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable33_28
        STR      R0,[R1, #+0]
// 1909 
// 1910         if(g_fCarSpeedstart<CAR_SPEED_SET)
        LDR.W    R0,??DataTable33_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable32_1  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedControl_0
// 1911         {
// 1912 	   g_fCarSpeedstart+=CAR_SPEED_STEP;
        LDR.W    R0,??DataTable33_31
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable33_32  ;; 0x40a00000
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable33_31
        STR      R0,[R1, #+0]
// 1913         }
// 1914         if(g_fCarSpeedstart>CAR_SPEED_SET)
??SpeedControl_0:
        LDR.W    R0,??DataTable33_31
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_33  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedControl_1
// 1915         {
// 1916 	   g_fCarSpeedstart-=CAR_SPEED_STEP;
        LDR.W    R0,??DataTable33_31
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable33_34  ;; 0xc0a00000
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable33_31
        STR      R0,[R1, #+0]
// 1917         }
// 1918 
// 1919         if(speedflag<30) //speedflag的递加应该设在中断中
??SpeedControl_1:
        LDR.W    R0,??DataTable33_35
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+30
        BGE.N    ??SpeedControl_2
// 1920         {
// 1921           fDelta = g_fCarSpeedstart - g_fCarSpeed;
        LDR.W    R0,??DataTable33_31
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_28
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R5,R0
        B.N      ??SpeedControl_3
// 1922         }
// 1923         else	
// 1924         {
// 1925           fDelta = CAR_SPEED_SET - g_fCarSpeed;
??SpeedControl_2:
        LDR.N    R0,??DataTable32_1  ;; 0x41a00000
        LDR.W    R1,??DataTable33_28
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R5,R0
// 1926         }
// 1927 
// 1928         fDelta = g_fCarSpeedstart - g_fCarSpeed;
??SpeedControl_3:
        LDR.W    R0,??DataTable33_31
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_28
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R5,R0
// 1929 	fP = fDelta * SPEED_CONTROL_P;
        MOVS     R0,R5
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable33_36  ;; 0x20c49ba
        LDR.W    R3,??DataTable33_37  ;; 0x3fa6872b
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R4,R0
// 1930 	fI = fDelta * SPEED_CONTROL_I;
        MOVS     R0,R5
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable33_38  ;; 0x4d551d69
        LDR.W    R3,??DataTable33_39  ;; 0x3eff7510
        BL       __aeabi_dmul
        BL       __aeabi_d2f
// 1931 	g_fSpeedControlIntegral += fI;		
        LDR.W    R1,??DataTable33_40
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable33_40
        STR      R0,[R1, #+0]
// 1932 	if(g_fSpeedControlIntegral > SPEED_CONTROL_OUT_MAX)	
        LDR.W    R0,??DataTable33_40
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_41  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedControl_4
// 1933 		g_fSpeedControlIntegral = SPEED_CONTROL_OUT_MAX;
        LDR.W    R0,??DataTable33_40
        LDR.W    R1,??DataTable33_42  ;; 0x41200000
        STR      R1,[R0, #+0]
// 1934 	if(g_fSpeedControlIntegral < SPEED_CONTROL_OUT_MIN)  	
??SpeedControl_4:
        LDR.W    R0,??DataTable33_40
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_43  ;; 0xc1200000
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedControl_5
// 1935 		g_fSpeedControlIntegral = SPEED_CONTROL_OUT_MIN;
        LDR.W    R0,??DataTable33_40
        LDR.W    R1,??DataTable33_43  ;; 0xc1200000
        STR      R1,[R0, #+0]
// 1936 	
// 1937 	g_fSpeedControlOutOld = g_fSpeedControlOutNew;
??SpeedControl_5:
        LDR.W    R0,??DataTable33_44
        LDR.W    R1,??DataTable33_45
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 1938 
// 1939 	g_fSpeedControlOutNew = fP + g_fSpeedControlIntegral;
        LDR.W    R0,??DataTable33_40
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable33_45
        STR      R0,[R1, #+0]
// 1940 }
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     0xc0340000
// 1941 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1942 void SpeedControlOutput(void)
// 1943 {
SpeedControlOutput:
        PUSH     {R4,LR}
// 1944 	float fValue3;
// 1945 	fValue3 = g_fSpeedControlOutNew - g_fSpeedControlOutOld;
        LDR.W    R0,??DataTable33_45
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable33_44
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
// 1946 	g_fSpeedControlOut = fValue3 * (g_nSpeedControlPeriod + 1) / SPEED_CONTROL_PERIOD + g_fSpeedControlOutOld;	
        LDR.W    R0,??DataTable33_46
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable33_47  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable33_44
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable33_48
        STR      R0,[R1, #+0]
// 1947 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     D_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     ZZ_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     pulse_count
// 1948 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1949 void MotorSpeedOut(void)
// 1950 {
MotorSpeedOut:
        PUSH     {R7,LR}
// 1951 	float fMotorValue;
// 1952 	
// 1953 	fMotorValue = g_fSpeedControlOut;
        LDR.N    R0,??DataTable33_48
        LDR      R0,[R0, #+0]
// 1954         /*
// 1955 	if(fMotorValue > 0) fMotorValue += MOTOR_OUT_DEAD_VAL;
// 1956 	else if(fMotorValue < 0) fMotorValue -= MOTOR_OUT_DEAD_VAL;
// 1957 	*/	
// 1958 	if(fMotorValue > MOTOR_OUT_MAX)	fMotorValue = MOTOR_OUT_MAX;
        LDR.N    R1,??DataTable33_49  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??MotorSpeedOut_0
        MOVS     R0,#+1065353216
// 1959 	if(fMotorValue < MOTOR_OUT_MIN)	fMotorValue = MOTOR_OUT_MIN;
??MotorSpeedOut_0:
        LDR.N    R1,??DataTable33_50  ;; 0xbf800000
        BL       __aeabi_cfcmple
        BCS.N    ??MotorSpeedOut_1
        LDR.N    R0,??DataTable33_50  ;; 0xbf800000
// 1960 			
// 1961 	SetMotorVoltage(fMotorValue);
??MotorSpeedOut_1:
        BL       SetMotorVoltage
// 1962 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_1:
        DC32     front_OFFSET_KZ_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_2:
        DC32     Ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_3:
        DC32     Kp_hold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_4:
        DC32     Kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_5:
        DC32     ZHONG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_6:
        DC32     I_sumerr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_7:
        DC32     Kd
// 1963 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1964 void SetMotorVoltage(float fMotorVoltage)
// 1965 {
SetMotorVoltage:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
// 1966                                                 // Voltage : > 0 : Move forward
// 1967                                                 // Voltage : < 0 : Move backward
// 1968 	int16 nPeriod;
// 1969 	int16 nOut;
// 1970 	
// 1971 	nPeriod =1250;
        MOVW     R5,#+1250
// 1972         //--------------------------------------------------------------------------
// 1973 	if(fMotorVoltage > 1.0) 			fMotorVoltage = 1.0;
        MOVS     R0,R4
        LDR.N    R1,??DataTable33_49  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??SetMotorVoltage_0
        MOVS     R4,#+1065353216
        B.N      ??SetMotorVoltage_1
// 1974 	else if(fMotorVoltage < -1.0) 	fMotorVoltage = -1.0;
??SetMotorVoltage_0:
        MOVS     R0,R4
        LDR.N    R1,??DataTable33_50  ;; 0xbf800000
        BL       __aeabi_cfcmple
        BCS.N    ??SetMotorVoltage_1
        LDR.N    R4,??DataTable33_50  ;; 0xbf800000
// 1975 	
// 1976 
// 1977         //--------------------------------------------------------------------------	                                            	
// 1978 	if(fMotorVoltage > 0)                                           //左轮 前
??SetMotorVoltage_1:
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SetMotorVoltage_2
// 1979 	{
// 1980           gpio_init(PORTB, 9, 1,0);//DIL_B ;
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.N    R0,??DataTable33_26  ;; 0x400ff040
        BL       gpio_init
// 1981           nOut = (int16)(fMotorVoltage * nPeriod);
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R0,R5
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
// 1982           FTM1_C0V=nOut;
        LDR.N    R1,??DataTable33_27  ;; 0x40039010
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
        B.N      ??SetMotorVoltage_3
// 1983 	}
// 1984 	else                                                           //左轮 后
// 1985 	{
// 1986 	  gpio_init(PORTB, 9, 1,1);// DIL_F ;
??SetMotorVoltage_2:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.N    R0,??DataTable33_26  ;; 0x400ff040
        BL       gpio_init
// 1987 	  fMotorVoltage = -fMotorVoltage;
        EORS     R4,R4,#0x80000000
// 1988           nOut = (int16)(fMotorVoltage * nPeriod);
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R0,R5
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
// 1989 	  FTM1_C0V=nPeriod-nOut;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SUBS     R0,R5,R0
        LDR.N    R1,??DataTable33_27  ;; 0x40039010
        STR      R0,[R1, #+0]
// 1990   	}
// 1991 }
??SetMotorVoltage_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     servo_duty
// 1992 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1993 void Clear()
// 1994 {
// 1995     g_lnInputVoltageSigma[0]=0;
Clear:
        LDR.N    R0,??DataTable33_51
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1996     g_lnInputVoltageSigma[1]=0;
        LDR.N    R0,??DataTable33_51
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1997     g_lnInputVoltageSigma[2]=0;
        LDR.N    R0,??DataTable33_51
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1998 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     xianfu
// 1999 
// 2000 
// 2001 
// 2002 /****************************虚拟示波器模块******************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2003 void virtual_scope_show(void)
// 2004 {
// 2005       OutData[0]=0;
virtual_scope_show:
        LDR.N    R0,??DataTable33_52
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 2006       OutData[1]=0;
        LDR.N    R0,??DataTable33_52
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
// 2007       OutData[2]=0;
        LDR.N    R0,??DataTable33_52
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 2008       OutData[3]=0;
        LDR.N    R0,??DataTable33_52
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
// 2009 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     g_fDirectionControlOutNew
// 2010 
// 2011 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2012 void serial_Txd()//传输的一帧数据，包括如下的内容
// 2013 {
serial_Txd:
        PUSH     {R4,LR}
        SUB      SP,SP,#+16
// 2014         uint8 temp[10]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
// 2015         uint8 i,j;
// 2016         //帧头数据
// 2017         uart_send1 (UART3, 0xa5);
        MOVS     R1,#+165
        LDR.N    R0,??DataTable33_53  ;; 0x4006d000
        BL       uart_send1
// 2018         uart_send1 (UART3, 0x5a);
        MOVS     R1,#+90
        LDR.N    R0,??DataTable33_53  ;; 0x4006d000
        BL       uart_send1
// 2019 	
// 2020        //第一条曲线的数据
// 2021         for(i=0;i<3;i++)
        MOVS     R0,#+0
        B.N      ??serial_Txd_0
// 2022         {
// 2023            temp[i*2]=(int)OutData[i]/10;
??serial_Txd_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable33_52
        LDRSH    R1,[R1, R0, LSL #+1]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+0
        STRB     R1,[R2, R0, LSL #+1]
// 2024            temp[i*2+1]=(int)OutData[i]%10;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable33_52
        LDRSH    R1,[R1, R0, LSL #+1]
        MOVS     R2,#+10
        SDIV     R3,R1,R2
        MLS      R1,R2,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+0
        ADDS     R2,R2,R0, LSL #+1
        STRB     R1,[R2, #+1]
// 2025         }
        ADDS     R0,R0,#+1
??serial_Txd_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BCC.N    ??serial_Txd_1
// 2026        for(j=0;j<6;j++)
        MOVS     R4,#+0
        B.N      ??serial_Txd_2
// 2027        {
// 2028           uart_send1 (UART3, temp[j]);
??serial_Txd_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable33_53  ;; 0x4006d000
        BL       uart_send1
// 2029        }
        ADDS     R4,R4,#+1
??serial_Txd_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCC.N    ??serial_Txd_3
// 2030         delay_ms(10);
        MOVS     R0,#+10
        BL       delay_ms
// 2031 }
        POP      {R0-R4,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     g_nDirectionControlPeriod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_2:
        DC32     g_nMotorPulse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_3:
        DC32     g_nMotorPulseSigma

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_4:
        DC32     fangcha_qian_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_5:
        DC32     fch_dp2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_6:
        DC32     WW_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_7:
        DC32     SHA_PULSE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_8:
        DC32     shache_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_9:
        DC32     speed_B
// 2032 
// 2033 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2034 unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
// 2035 {
CRC_CHECK:
        PUSH     {R4,R5}
// 2036     unsigned short CRC_Temp;
// 2037     unsigned char i,j;
// 2038     CRC_Temp = 0xffff;
        MOVW     R2,#+65535
// 2039 
// 2040     for (i=0;i<CRC_CNT; i++)
        MOVS     R3,#+0
        B.N      ??CRC_CHECK_0
??CRC_CHECK_1:
        ADDS     R3,R3,#+1
??CRC_CHECK_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCS.N    ??CRC_CHECK_2
// 2041     {
// 2042         CRC_Temp ^= Buf[i];
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R4,[R3, R0]
        EORS     R2,R4,R2
// 2043         for (j=0;j<8;j++)
        MOVS     R4,#+0
        B.N      ??CRC_CHECK_3
// 2044         {
// 2045             if (CRC_Temp & 0x01)
// 2046                 CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
// 2047             else
// 2048                 CRC_Temp = CRC_Temp >> 1;
??CRC_CHECK_4:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R2,R2,#+1
??CRC_CHECK_5:
        ADDS     R4,R4,#+1
??CRC_CHECK_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??CRC_CHECK_1
        LSLS     R5,R2,#+31
        BPL.N    ??CRC_CHECK_4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R2,R2,#+1
        EOR      R2,R2,#0xA000
        EORS     R2,R2,#0x1
        B.N      ??CRC_CHECK_5
// 2049         }
// 2050     }
// 2051     return(CRC_Temp);
??CRC_CHECK_2:
        MOVS     R0,R2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
// 2052 }
// 2053 
// 2054 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2055 void OutPut_Data(void)
// 2056 {
OutPut_Data:
        PUSH     {R4,LR}
        SUB      SP,SP,#+48
// 2057   int temp[4] = {0};
        ADD      R0,SP,#+28
        MOVS     R1,#+16
        BL       __aeabi_memclr4
// 2058   unsigned int temp1[4] = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+16
        BL       __aeabi_memclr4
// 2059   unsigned char databuf[10] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
// 2060   unsigned char i;
// 2061   unsigned short CRC16 = 0;
        MOVS     R0,#+0
// 2062   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_0
// 2063   {
// 2064     temp[i]  = (int16)OutData[i];
??OutPut_Data_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+28
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable33_52
        LDRSH    R1,[R1, R4, LSL #+1]
        STR      R1,[R0, R4, LSL #+2]
// 2065     temp1[i] = (uint16)temp[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+28
        LDRH     R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
// 2066   }
        ADDS     R4,R4,#+1
??OutPut_Data_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCC.N    ??OutPut_Data_1
// 2067 
// 2068   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_2
// 2069   {
// 2070     databuf[i*2]   = (int8)(temp1[i]%256);
??OutPut_Data_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        MOV      R1,#+256
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        STRB     R2,[R0, R4, LSL #+1]
// 2071     databuf[i*2+1] = (int8)(temp1[i]/256);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        LSRS     R0,R0,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+0
        ADDS     R1,R1,R4, LSL #+1
        STRB     R0,[R1, #+1]
// 2072   }
        ADDS     R4,R4,#+1
??OutPut_Data_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCC.N    ??OutPut_Data_3
// 2073 
// 2074   CRC16 = CRC_CHECK(databuf,8);
        MOVS     R1,#+8
        ADD      R0,SP,#+0
        BL       CRC_CHECK
// 2075   databuf[8] = CRC16%256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        STRB     R2,[SP, #+8]
// 2076   databuf[9] = CRC16/256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R0,R0,R1
        STRB     R0,[SP, #+9]
// 2077 
// 2078   for(i=0;i<10;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_4
// 2079   uart_send1 (UART3,databuf[i]);
??OutPut_Data_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable33_53  ;; 0x4006d000
        BL       uart_send1
        ADDS     R4,R4,#+1
??OutPut_Data_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BCC.N    ??OutPut_Data_5
// 2080 }
        ADD      SP,SP,#+48
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_1:
        DC32     speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_2:
        DC32     speed_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_3:
        DC32     speed_H

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_4:
        DC32     LHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_5:
        DC32     RHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_6:
        DC32     rensha_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_7:
        DC32     RSH

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_8:
        DC32     0xfffffe70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_9:
        DC32     fch_dp1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_10:
        DC32     shache_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_11:
        DC32     SHACHE_TIME_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_12:
        DC32     SHACHE_TIME_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_13:
        DC32     SHACHE_TIME_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_14:
        DC32     SHACHE_TIME_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_15:
        DC32     SHACHE_TIME_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_16:
        DC32     PULSE_MAX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_17:
        DC32     speed_jian

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_18:
        DC32     speed_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_19:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_20:
        DC32     jisha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_21:
        DC32     0xfffffe0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_22:
        DC32     `sp`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_23:
        DC32     pulse_count_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_24:
        DC32     sd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_25:
        DC32     0xfffffb1e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_26:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_27:
        DC32     0x40039010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_28:
        DC32     g_fCarSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_29:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_30:
        DC32     0x3f947ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_31:
        DC32     g_fCarSpeedstart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_32:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_33:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_34:
        DC32     0xc0a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_35:
        DC32     speedflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_36:
        DC32     0x20c49ba

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_37:
        DC32     0x3fa6872b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_38:
        DC32     0x4d551d69

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_39:
        DC32     0x3eff7510

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_40:
        DC32     g_fSpeedControlIntegral

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_41:
        DC32     0x41200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_42:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_43:
        DC32     0xc1200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_44:
        DC32     g_fSpeedControlOutOld

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_45:
        DC32     g_fSpeedControlOutNew

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_46:
        DC32     g_nSpeedControlPeriod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_47:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_48:
        DC32     g_fSpeedControlOut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_49:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_50:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_51:
        DC32     g_lnInputVoltageSigma

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_52:
        DC32     OutData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_53:
        DC32     0x4006d000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC16 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC16 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 2081 
// 2082 
// 
//  1 235 bytes in section .bss
//     51 bytes in section .data
//     96 bytes in section .rodata
// 13 344 bytes in section .text
// 
// 13 344 bytes of CODE  memory
//     96 bytes of CONST memory
//  1 286 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
