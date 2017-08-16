///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      21/Jan/2015  15:24:30 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³ÌÐ /
//                    ò21.22.23\2014.08.22\src\Sources\C\Component_C\control. /
//                    c                                                       /
//    Command line =  "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\src\Sources\C\Component_C\control /
//                    .c" -D IAR -D TWR_K60N512 -lCN                          /
//                    "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\bin\Flash\List\" -lB              /
//                    "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\bin\Flash\List\" -o               /
//                    "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\bin\Flash\Obj\" --no_cse          /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "D:\MyProgramFiles\iar for arm            /
//                    v6.3\arm\INC\c\DLib_Config_Normal.h" -I                 /
//                    "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\src\Sources\H\" -I                /
//                    "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\src\Sources\H\Component_H\" -I    /
//                    "E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³Ì /
//                    Ðò21.22.23\2014.08.22\src\Sources\H\Frame_H\" -Ol       /
//                    --use_c++_inline                                        /
//    List file    =  E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³ÌÐ /
//                    ò21.22.23\2014.08.22\bin\Flash\List\control.s           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME control

        #define SHT_PROGBITS 0x1

        EXTERN CAR_GO
        EXTERN FTM_PWM_ChangeDuty
        EXTERN HONGWAI_L
        EXTERN HONGWAI_R
        EXTERN IT_ref
        EXTERN IncPID_Calculate
        EXTERN Kd
        EXTERN Kmax
        EXTERN Kmin
        EXTERN Kp
        EXTERN Kp_hold
        EXTERN PID_SetPoint
        EXTERN PMAX
        EXTERN POsha
        EXTERN Pixel_F
        EXTERN Pixel_Z
        EXTERN Prz
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN d_p
        EXTERN delay_ms
        EXTERN dir_fg
        EXTERN fch_dp2
        EXTERN fch_dp3
        EXTERN gpio_init
        EXTERN hongwai_l
        EXTERN hongwai_r
        EXTERN hw_ad_ave
        EXTERN hw_ad_once
        EXTERN hw_adc_convertstart
        EXTERN hw_adc_convertstop
        EXTERN hw_adc_init
        EXTERN speed
        EXTERN speed_B
        EXTERN speed_H
        EXTERN speed_L
        EXTERN speed_jian
        EXTERN uart_send1

        PUBLIC ADC0_start
        PUBLIC ADC0_stop
        PUBLIC Abs
        PUBLIC Aver_F
        PUBLIC Aver_Z
        PUBLIC BL_SHACHE_TIME
        PUBLIC BLsha
        PUBLIC CCD_init
        PUBLIC CRC_CHECK
        PUBLIC CalculateIntegrationTimeFront
        PUBLIC CalculateIntegrationTimeZong
        PUBLIC Clear
        PUBLIC D_err
        PUBLIC GetMotorPulse
        PUBLIC GetOFFSET
        PUBLIC GetSamplezhi
        PUBLIC I_sumerr
        PUBLIC ImageCapture_F
        PUBLIC ImageCapture_Z
        PUBLIC IntegrationTime_Front
        PUBLIC IntegrationTime_Zong
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
        PUBLIC OFFSET_keep
        PUBLIC OutData
        PUBLIC OutPut_Data
        PUBLIC POshaen
        PUBLIC PixelAverage
        PUBLIC PixelAverageValue_Front
        PUBLIC PixelAverageValue_Zong
        PUBLIC PixelAverageVoltageError
        PUBLIC PixelAverageVoltage_Front
        PUBLIC PixelAverageVoltage_Zong
        PUBLIC Pmax
        PUBLIC Pmin
        PUBLIC Pset
        PUBLIC Psha
        PUBLIC RHOLDdiao_flag
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
        PUBLIC SHCH_CT
        PUBLIC SamplingDelay
        PUBLIC SendHex
        PUBLIC SendImageData
        PUBLIC SetServoVoltage
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
        PUBLIC da_ct
        PUBLIC da_fg
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
        PUBLIC ga_fg
        PUBLIC ga_fg_last
        PUBLIC get_ad
        PUBLIC get_front
        PUBLIC get_fu
        PUBLIC get_zong
        PUBLIC gl_fg
        PUBLIC gl_fg_last
        PUBLIC gr_fg
        PUBLIC gr_fg_last
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
        PUBLIC maybe_bl_ct
        PUBLIC mq
        PUBLIC mq_last
        PUBLIC mq_look1
        PUBLIC mq_look2
        PUBLIC mq_look3
        PUBLIC mq_look4
        PUBLIC pulse_count
        PUBLIC pulse_count_pre
        PUBLIC qd_count
        PUBLIC qd_ct
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
        PUBLIC rshover_fg
        PUBLIC ruwang_fg
        PUBLIC rzguo_count
        PUBLIC rzguo_flag
        PUBLIC rzop
        PUBLIC rzsc_fg
        PUBLIC sd
        PUBLIC serial_Txd
        PUBLIC servo_duty
        PUBLIC sh_x
        PUBLIC sha_width
        PUBLIC shache1
        PUBLIC shache_fg
        PUBLIC shapo
        PUBLIC shmode
        PUBLIC `sp`
        PUBLIC speed_F
        PUBLIC speed_pwm
        PUBLIC stop_count
        PUBLIC stop_flag
        PUBLIC sz_in
        PUBLIC sz_in_ct
        PUBLIC sz_l
        PUBLIC sz_r
        PUBLIC t
        PUBLIC tisu_fg
        PUBLIC virtual_scope_show
        PUBLIC voltage_gravity
        PUBLIC x
        PUBLIC xianfu
        PUBLIC xiao_ct
        PUBLIC xiao_fg
        PUBLIC y
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

// E:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\×Ü¾öÈü±ÈÈü³ÌÐò21.22.23\2014.08.22\src\Sources\C\Component_C\control.c
//    1 #include "includes.h"
//    2 
//    3 //-----------
//    4 #define SI_SetVal()                         gpio_init (PORTE , 0, 1, 1)
//    5 #define SI_ClrVal()                         gpio_init (PORTE , 0, 1, 0)
//    6 #define CLK_SetVal()                        gpio_init (PORTE , 1, 1, 1)
//    7 #define CLK_ClrVal()                        gpio_init (PORTE , 1, 1, 0)
//    8 #define SI_SetVal_1()                       gpio_init (PORTA , 12, 1, 1)
//    9 #define SI_ClrVal_1()                       gpio_init (PORTA , 12, 1, 0)
//   10 #define CLK_SetVal_1()                      gpio_init (PORTA , 13, 1, 1)
//   11 #define CLK_ClrVal_1()                      gpio_init (PORTA , 13, 1, 0)
//   12 #define DIR_DEFAULT_MIN                     50
//   13 #define DIRECTION_CONTROL_PERIOD            20
//   14 #define DIR_CONTROL_P                       0.017
//   15 #define DIR_CONTROL_D                       0.0007
//   16 #define GATE                                45
//   17 #define DIRECTION_CONTROL_DEADVALUE         0
//   18 #define DIRECTION_CONTROL_OUT_MAX	    MOTOR_OUT_MAX
//   19 #define DIRECTION_CONTROL_OUT_MIN	    MOTOR_OUT_MIN
//   20 
//   21 //------------
//   22 #define MOTOR_OUT_DEAD_VAL                  0
//   23 #define MOTOR_SPEED_POSITIVE	            (g_fMotorOut > 0)
//   24 #define MOTOR_OUT_MAX                       1.0
//   25 #define MOTOR_OUT_MIN                      -1.0
//   26 //------------------------------------------------------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int16   g_nInputVoltage[5]={0};
g_nInputVoltage:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 int32	g_lnInputVoltageSigma[5]={0};    	
g_lnInputVoltageSigma:
        DS8 20
//   29 #define VOLTAGE_GRAVITY                     g_nInputVoltage[0]
//   30 #define VOLTAGE_GYRO                        g_nInputVoltage[1]
//   31 #define VOLTAGE_LEFT                        g_nInputVoltage[2]
//   32 #define VOLTAGE_RIGHT                       g_nInputVoltage[3]		
//   33 #define DIR_CONTROL_D_VALUE                 g_nInputVoltage[4]
//   34 #define key_1                               (((GPIO_PDIR_REG(PTA_BASE_PTR))>>(19))&1)
//   35 //------------------------------------------------------------------------------
//   36 
//   37 //-----------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 float g_fCarSpeed=0;
g_fCarSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 float g_fCarSpeedstart=0;
g_fCarSpeedstart:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   40 int16 g_nMotorPulse=0;
g_nMotorPulse:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   41 int16 g_nRightMotorPulse=0;
g_nRightMotorPulse:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 float g_fSpeedControlIntegral=0;
g_fSpeedControlIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 float g_fSpeedControlOutOld =0;
g_fSpeedControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 float g_fSpeedControlOutNew =0;
g_fSpeedControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 float g_fSpeedControlOut =0;
g_fSpeedControlOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   46 uint8 g_nSpeedControlPeriod =0;
g_nSpeedControlPeriod:
        DS8 1
//   47 
//   48 //-----------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 float g_fDirectionControlOutOld=0;
g_fDirectionControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 float g_fDirectionControlOutNew =0;
g_fDirectionControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 float g_fDirectionControlOut=0;
g_fDirectionControlOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   52 int16 g_nDirectionControlPeriod=0;
g_nDirectionControlPeriod:
        DS8 2
//   53 
//   54 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   55 int16 front_l=0,front_r=127;
front_l:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
front_r:
        DATA
        DC16 127

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   56 int16 route_view;
route_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   57 int16 route_mid;
route_mid:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   58 int16 front_l_view,front_r_view;
front_l_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   59 int16 front_max=0;
front_max:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   60 int16 front_min=0;
front_min:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   61 int16 Aver_F=0;
Aver_F:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   62 int16 delta_l=0,delta_r=0;
delta_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
delta_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   63 int16 front_l_last=0,front_r_last=0;
front_l_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   64 int16 front_l_pre1=0,front_r_pre1=0,front_l_pre2=0,front_r_pre2=0,front_l_pre3=0,front_r_pre3=0,front_l_pre4=0,front_r_pre4=0;
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
//   65 int16 front_width=0;
front_width:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   66 int16 cl_f=0,cl_f_pre=0;
cl_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
cl_f_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   67 int16 Lfch=0,Rfch=0;
Lfch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rfch:
        DS8 2
//   68 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   69 int16 front_l_reference=0,front_r_reference=128;
front_l_reference:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
front_r_reference:
        DATA
        DC16 128

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   70 int16 front_OFFSET_KZ=0;
front_OFFSET_KZ:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   71 int16 front_reference;
front_reference:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   72 int16 front_OFFSET_KZ_pre=0,front_OFFSET=0,front_OFFSET_pre=0,front_OFFSET_pre1=0,front_OFFSET_pre2=0,front_OFFSET_pre3=0,front_OFFSET_pre4=0,front_OFFSET_pre5=0,front_OFFSET_pre6=0,front_OFFSET_pre7=0,front_OFFSET_pre8=0,front_OFFSET_pre9=0,front_OFFSET_pre10=0;//ÉÏÒ»´ÎÎ»ÖÃÆ«²î
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
//   73 int16 d_err1=0,d_err2=0,d_err3=0,d_err4=0,d_err5=0,d_err6=0,d_err7=0,d_err8=0,d_err9=0;
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
//   74 
//   75 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   76 int16 zong_l=0,zong_r=127;
zong_l:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
zong_r:
        DATA
        DC16 127
//   77 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   78 int16 zong_l_view,zong_r_view;
zong_l_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_view:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   79 int16 zong_max=0;
zong_max:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   80 int16 zong_min=0;
zong_min:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   81 int16 Aver_Z=0;
Aver_Z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   82 int16 zong_l_last=0,zong_r_last=0;
zong_l_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   83 int16 zong_l_pre=0,zong_r_pre=0;
zong_l_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zong_r_pre:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   84 int16 zong_width=0;
zong_width:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   85 int16 cl_z=0;
cl_z:
        DS8 2
//   86 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   87 int16 zong_l_reference=0,zong_r_reference=128;
zong_l_reference:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
zong_r_reference:
        DATA
        DC16 128

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   88 int16 zong_OFFSET_KZ=0;
zong_OFFSET_KZ:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   89 int16 zong_reference;
zong_reference:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   90 int16 zong_OFFSET_KZ_pre=0,zong_OFFSET=0,zong_OFFSET_pre=0,zong_OFFSET_pre1=0,zong_OFFSET_pre2=0,zong_OFFSET_pre3=0,zong_OFFSET_pre4=0,zong_OFFSET_pre5=0,zong_OFFSET_pre6=0,zong_OFFSET_pre7=0,zong_OFFSET_pre8=0,zong_OFFSET_pre9=0,zong_OFFSET_pre10=0;//ÉÏÒ»´ÎÎ»ÖÃÆ«²î
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
//   91 int16 z_err1=0,z_err2=0,z_err3=0,z_err4=0,z_err5=0,z_err6=0,z_err7=0,z_err8=0,z_err9=0;
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
//   92 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   93 int16 servo_duty=4780;//¶æ»úÕ¼¿Õ±È
servo_duty:
        DATA
        DC16 4780
//   94 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   95 int16 D_err=0;
D_err:
        DS8 2
//   96 
//   97 //------------

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   98 float g_fMotorOut=0;
g_fMotorOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   99 int16 g_nMotorPulseSigma =0;
g_nMotorPulseSigma:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  100 extern int16 OutData[4] = { 0 };//ÐéÄâÊ¾²¨Æ÷Êä³ö
OutData:
        DS8 8
//  101 extern uint8 a,b;
//  102 extern int16 speedflag;
//  103 //----------------------------------------------------------------------------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  104 int16   gravity,voltage_gravity;
gravity:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
voltage_gravity:
        DS8 2
//  105 extern  int16   hongwai_l,hongwai_r;
//  106 extern  int16   HONGWAI_L,HONGWAI_R;
//  107 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void GetSamplezhi()
//  109 {
GetSamplezhi:
        PUSH     {R7,LR}
//  110   g_lnInputVoltageSigma[0]+= hw_ad_ave(0,17,12,20);//×ó1   
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
//  111   g_lnInputVoltageSigma[1]+= hw_ad_ave(1,7,12,20);//ÓÒ1
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+7
        MOVS     R0,#+1
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11
        LDR      R1,[R1, #+4]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+4]
//  112   //g_lnInputVoltageSigma[2]+= hw_ad_ave(0,12,12,20);
//  113 }
        POP      {R0,PC}          ;; return
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void GetOFFSET()
//  116 {
//  117   HONGWAI_L=g_lnInputVoltageSigma[0]/200;
GetOFFSET:
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_1
        STRH     R0,[R1, #+0]
//  118   HONGWAI_R=g_lnInputVoltageSigma[1]/200;
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+4]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  119   //gyro_direction= g_lnInputVoltageSigma[2]/200;  
//  120 }
        BX       LR               ;; return
//  121 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 void get_ad()
//  123 {
get_ad:
        PUSH     {R7,LR}
//  124   hongwai_l = hw_ad_ave(0,17,12,20);              
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+0]
//  125   hongwai_r = hw_ad_ave(1,7,12,20);                   
        MOVS     R3,#+20
        MOVS     R2,#+12
        MOVS     R1,#+7
        MOVS     R0,#+1
        BL       hw_ad_ave
        LDR.W    R1,??DataTable11_4
        STRH     R0,[R1, #+0]
//  126   //DIR_CONTROL_D_VALUE = hw_ad_ave(0,12,12,20);            //---------µÃ×ªÏòÍÓÂÝÒÇµçÑ¹ÐÅºÅ(PTB2)
//  127 }
        POP      {R0,PC}          ;; return
//  128 
//  129 //-------------------------------------·½Ïò¿ØÖÆ-------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void CCD_init(void)
//  131 {
CCD_init:
        PUSH     {R7,LR}
//  132   gpio_init (PORTE , 0, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  133   gpio_init (PORTE , 1, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  134   gpio_init (PORTA , 12, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  135   gpio_init (PORTA , 13, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  136   hw_adc_init(1);
        MOVS     R0,#+1
        BL       hw_adc_init
//  137 }
        POP      {R0,PC}          ;; return
//  138 /*
//  139 void button_init()
//  140 {
//  141    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;    //´ò¿ªPORTD¶Ë¿ÚµÄÊ±ÖÓ
//  142    PORTA_PCR19=(0|PORT_PCR_MUX(1));
//  143    gpio_init (PORTA,19, 0,0);
//  144 }
//  145 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void ADC0_stop(void)
//  147 
//  148 {
ADC0_stop:
        PUSH     {R7,LR}
//  149   hw_adc_convertstop(0,8);
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       hw_adc_convertstop
//  150   hw_adc_convertstop(0,9);
        MOVS     R1,#+9
        MOVS     R0,#+0
        BL       hw_adc_convertstop
//  151   hw_adc_convertstop(0,12);
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       hw_adc_convertstop
//  152 }
        POP      {R0,PC}          ;; return
//  153 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 void ADC0_start(void)
//  155 {
ADC0_start:
        PUSH     {R7,LR}
//  156   hw_adc_convertstart(0,8,12);
        MOVS     R2,#+12
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       hw_adc_convertstart
//  157   hw_adc_convertstart(0,9,12);
        MOVS     R2,#+12
        MOVS     R1,#+9
        MOVS     R0,#+0
        BL       hw_adc_convertstart
//  158   hw_adc_convertstart(0,12,12);
        MOVS     R2,#+12
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       hw_adc_convertstart
//  159 }
        POP      {R0,PC}          ;; return
//  160 
//  161 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void StartIntegrationFront(void)
//  163 {
StartIntegrationFront:
        PUSH     {R4,LR}
//  164   unsigned char i;
//  165 
//  166   SI_SetVal();            /* SI  = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  167   SamplingDelay();
        BL       SamplingDelay
//  168   CLK_SetVal();           /* CLK = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  169   SamplingDelay();
        BL       SamplingDelay
//  170   SI_ClrVal();            /* SI  = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  171   SamplingDelay();
        BL       SamplingDelay
//  172   CLK_ClrVal();           /* CLK = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  173 
//  174   for(i=0; i<127; i++)
        MOVS     R4,#+0
        B.N      ??StartIntegrationFront_0
//  175   {
//  176       SamplingDelay();
??StartIntegrationFront_1:
        BL       SamplingDelay
//  177       SamplingDelay();
        BL       SamplingDelay
//  178       CLK_SetVal();       /* CLK = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  179       SamplingDelay();
        BL       SamplingDelay
//  180       SamplingDelay();
        BL       SamplingDelay
//  181       CLK_ClrVal();       /* CLK = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  182   }
        ADDS     R4,R4,#+1
??StartIntegrationFront_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BCC.N    ??StartIntegrationFront_1
//  183   SamplingDelay();
        BL       SamplingDelay
//  184   SamplingDelay();
        BL       SamplingDelay
//  185   CLK_SetVal();           /* CLK = 1 */
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  186   SamplingDelay();
        BL       SamplingDelay
//  187   SamplingDelay();
        BL       SamplingDelay
//  188   CLK_ClrVal();           /* CLK = 0 */
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  189 }
        POP      {R4,PC}          ;; return
//  190 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  191 void StartIntegrationZong(void)
//  192 {
StartIntegrationZong:
        PUSH     {R4,LR}
//  193   unsigned char i;
//  194 
//  195   //SI_SetVal();            /* SI  = 1 */
//  196   SI_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  197   SamplingDelay();
        BL       SamplingDelay
//  198   //CLK_SetVal();           /* CLK = 1 */
//  199   CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  200   SamplingDelay();
        BL       SamplingDelay
//  201   //SI_ClrVal();            /* SI  = 0 */
//  202   SI_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  203   SamplingDelay();
        BL       SamplingDelay
//  204   //CLK_ClrVal();           /* CLK = 0 */
//  205   CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  206 
//  207   for(i=0; i<127; i++)
        MOVS     R4,#+0
        B.N      ??StartIntegrationZong_0
//  208   {
//  209       SamplingDelay();
??StartIntegrationZong_1:
        BL       SamplingDelay
//  210       SamplingDelay();
        BL       SamplingDelay
//  211       //CLK_SetVal();       /* CLK = 1 */
//  212       CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  213       SamplingDelay();
        BL       SamplingDelay
//  214       SamplingDelay();
        BL       SamplingDelay
//  215       //CLK_ClrVal();       /* CLK = 0 */
//  216       CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  217   }
        ADDS     R4,R4,#+1
??StartIntegrationZong_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BCC.N    ??StartIntegrationZong_1
//  218   SamplingDelay();
        BL       SamplingDelay
//  219   SamplingDelay();
        BL       SamplingDelay
//  220   //CLK_SetVal();           /* CLK = 1 */
//  221   CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  222   SamplingDelay();
        BL       SamplingDelay
//  223   SamplingDelay();
        BL       SamplingDelay
//  224   //CLK_ClrVal();           /* CLK = 0 */
//  225   CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  226 }
        POP      {R4,PC}          ;; return
//  227 
//  228 
//  229 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 void ImageCapture_F(uint8 * ImageData_F)
//  231 {
ImageCapture_F:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  232     unsigned char i;
//  233     extern uint8 AtemP;
//  234 
//  235     SI_SetVal();            
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  236     SamplingDelay();
        BL       SamplingDelay
//  237     CLK_SetVal();          
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  238     SamplingDelay();
        BL       SamplingDelay
//  239     SI_ClrVal();           
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  240     SamplingDelay();
        BL       SamplingDelay
//  241     
//  242     //Delay 10us for sample the first pixel
//  243     for(i = 0; i < 150; i++)//ÓÉ10us¸ÄÎª10*8/5us
        MOVS     R5,#+0
        B.N      ??ImageCapture_F_0
//  244     {
//  245       SamplingDelay();  //200ns
??ImageCapture_F_1:
        BL       SamplingDelay
//  246     }
        ADDS     R5,R5,#+1
??ImageCapture_F_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+150
        BCC.N    ??ImageCapture_F_1
//  247     //Sampling Pixel_F 1
//  248     *ImageData_F =  hw_ad_once(1, 6, 8);
        MOVS     R2,#+8
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  249     ImageData_F ++ ;
        ADDS     R4,R4,#+1
//  250     CLK_ClrVal();          
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  251     
//  252     for(i=0; i<127; i++)
        MOVS     R5,#+0
        B.N      ??ImageCapture_F_2
//  253     {
//  254         SamplingDelay();
??ImageCapture_F_3:
        BL       SamplingDelay
//  255         SamplingDelay();
        BL       SamplingDelay
//  256         CLK_SetVal();       
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  257         SamplingDelay();
        BL       SamplingDelay
//  258         SamplingDelay();
        BL       SamplingDelay
//  259 
//  260         //Sampling Pixel_F 2~128
//  261         *ImageData_F = hw_ad_once(1, 6, 8);
        MOVS     R2,#+8
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  262         ImageData_F ++;
        ADDS     R4,R4,#+1
//  263         CLK_ClrVal();      
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  264     }
        ADDS     R5,R5,#+1
??ImageCapture_F_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+127
        BCC.N    ??ImageCapture_F_3
//  265     SamplingDelay();
        BL       SamplingDelay
//  266     SamplingDelay();
        BL       SamplingDelay
//  267     CLK_SetVal();          
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  268     SamplingDelay();
        BL       SamplingDelay
//  269     SamplingDelay();
        BL       SamplingDelay
//  270     CLK_ClrVal();          
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.W    R0,??DataTable11_5  ;; 0x400ff100
        BL       gpio_init
//  271 }
        POP      {R0,R4,R5,PC}    ;; return
//  272 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  273 void ImageCapture_Z(uint8 * ImageData_Z)
//  274 {
ImageCapture_Z:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  275     unsigned char i;
//  276     extern uint8 AtemP;
//  277 
//  278     SI_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  279     SamplingDelay();
        BL       SamplingDelay
//  280     CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  281     SamplingDelay();
        BL       SamplingDelay
//  282     SI_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  283     SamplingDelay();
        BL       SamplingDelay
//  284     //Delay 10us for sample the first pixel
//  285     for(i = 0; i < 80; i++)//ÓÉ10us¸ÄÎª10*10/5us
        MOVS     R5,#+0
        B.N      ??ImageCapture_Z_0
//  286     {
//  287       SamplingDelay();  //200ns
??ImageCapture_Z_1:
        BL       SamplingDelay
//  288     }
        ADDS     R5,R5,#+1
??ImageCapture_Z_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+80
        BCC.N    ??ImageCapture_Z_1
//  289     //Sampling Pixel_Z 1
//  290     *ImageData_Z= hw_ad_once(1, 14, 8);
        MOVS     R2,#+8
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  291     ImageData_Z ++;
        ADDS     R4,R4,#+1
//  292     CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  293 
//  294     for(i=0; i<127; i++)
        MOVS     R5,#+0
        B.N      ??ImageCapture_Z_2
//  295     {
//  296         SamplingDelay();
??ImageCapture_Z_3:
        BL       SamplingDelay
//  297         SamplingDelay();
        BL       SamplingDelay
//  298         CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  299         SamplingDelay();
        BL       SamplingDelay
//  300         SamplingDelay();
        BL       SamplingDelay
//  301         
//  302         //Sampling Pixel_F 2~128
//  303         *ImageData_Z= hw_ad_once(1, 14, 8);
        MOVS     R2,#+8
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       hw_ad_once
        STRB     R0,[R4, #+0]
//  304         ImageData_Z++;
        ADDS     R4,R4,#+1
//  305         CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  306     }
        ADDS     R5,R5,#+1
??ImageCapture_Z_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+127
        BCC.N    ??ImageCapture_Z_3
//  307     SamplingDelay();
        BL       SamplingDelay
//  308     SamplingDelay();
        BL       SamplingDelay
//  309     CLK_SetVal_1();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  310     SamplingDelay();
        BL       SamplingDelay
//  311     SamplingDelay();
        BL       SamplingDelay
//  312     CLK_ClrVal_1();
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_6  ;; 0x400ff000
        BL       gpio_init
//  313 }
        POP      {R0,R4,R5,PC}    ;; return
//  314 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  315 int16  TargetPixelAverageVoltage = 30;                          //Éè¶¨Ä¿±êÆ½¾ùµçÑ¹Öµ£¬Êµ¼ÊµçÑ¹µÄ10±¶ 
TargetPixelAverageVoltage:
        DATA
        DC16 30

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  316 int16  PixelAverageVoltageError = 0;                            //Éè¶¨Ä¿±êÆ½¾ùµçÑ¹ÖµÓëÊµ¼ÊÖµµÄÆ«²î£¬Êµ¼ÊµçÑ¹µÄ10±¶ 
PixelAverageVoltageError:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  317 int16  TargetPixelAverageVoltageAllowError = 2;                 //Éè¶¨Ä¿±êÆ½¾ùµçÑ¹ÖµÔÊÐíµÄÆ«²î£¬Êµ¼ÊµçÑ¹µÄ10±¶ 
TargetPixelAverageVoltageAllowError:
        DATA
        DC16 2
//  318 
//  319 extern uint8 Pixel_F[128];

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  320 uint8        PixelAverageValue_Front=0;                                       //128¸öÏñËØµãµÄÆ½¾ùADÖµ 
PixelAverageValue_Front:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  321 uint8        PixelAverageVoltage_Front=0;                                     //128¸öÏñËØµãµÄÆ½¾ùµçÑ¹ÖµµÄ10±¶ 
PixelAverageVoltage_Front:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  322 uint8        IntegrationTime_Front=10;                                        //ÆØ¹âÊ±¼ä£¬µ¥Î»ms 
IntegrationTime_Front:
        DATA
        DC8 10

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void CalculateIntegrationTimeFront(void)
//  324 {
CalculateIntegrationTimeFront:
        PUSH     {R7,LR}
//  325     PixelAverageValue_Front = PixelAverage(128,Pixel_F);/* ¼ÆËã128¸öÏñËØµãµÄÆ½¾ùADÖµ */
        LDR.W    R1,??DataTable11_7
        MOVS     R0,#+128
        BL       PixelAverage
        LDR.W    R1,??DataTable11_8
        STRB     R0,[R1, #+0]
//  326     PixelAverageVoltage_Front = (uint8)((int)(PixelAverageValue_Front * 25 / 128));/* ¼ÆËã128¸öÏñËØµãµÄÆ½¾ùµçÑ¹Öµ,Êµ¼ÊÖµµÄ10±¶ */
        LDR.W    R0,??DataTable11_8
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        MOVS     R1,#+128
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_9
        STRB     R0,[R1, #+0]
//  327     PixelAverageVoltageError = TargetPixelAverageVoltage - PixelAverageVoltage_Front;
        LDR.W    R0,??DataTable11_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_9
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable11_11
        STRH     R0,[R1, #+0]
//  328     if(PixelAverageVoltageError < -TargetPixelAverageVoltageAllowError)
        LDR.W    R0,??DataTable11_11
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        LDRSH    R1,[R1, #+0]
        CMN      R0,R1
        BGE.N    ??CalculateIntegrationTimeFront_0
//  329       IntegrationTime_Front--;//¶àÓÚÄ¿±êÖµ£¬ÆØ¹âÊ±¼ä´óÁË
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  330     if(PixelAverageVoltageError > TargetPixelAverageVoltageAllowError)
??CalculateIntegrationTimeFront_0:
        LDR.W    R0,??DataTable11_12
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_11
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??CalculateIntegrationTimeFront_1
//  331       IntegrationTime_Front++;//ÉÙÓÚÄ¿±êÖµ£¬ÆØ¹âÊ±¼äÐ¡ÁË
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  332     if(IntegrationTime_Front <= 1)
??CalculateIntegrationTimeFront_1:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCS.N    ??CalculateIntegrationTimeFront_2
//  333       IntegrationTime_Front = 1;
        LDR.W    R0,??DataTable11_13
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  334     if(IntegrationTime_Front >= 20)
??CalculateIntegrationTimeFront_2:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BCC.N    ??CalculateIntegrationTimeFront_3
//  335       IntegrationTime_Front = 20;
        LDR.W    R0,??DataTable11_13
        MOVS     R1,#+20
        STRB     R1,[R0, #+0]
//  336 }
??CalculateIntegrationTimeFront_3:
        POP      {R0,PC}          ;; return
//  337 
//  338 extern uint8 Pixel_Z[128];

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  339 uint8        PixelAverageValue_Zong=0;
PixelAverageValue_Zong:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  340 uint8        PixelAverageVoltage_Zong=0;
PixelAverageVoltage_Zong:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  341 uint8        IntegrationTime_Zong = 2;                              // ÆØ¹âÊ±¼ä£¬µ¥Î»ms
IntegrationTime_Zong:
        DATA
        DC8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  342 void CalculateIntegrationTimeZong(void)
//  343 {
CalculateIntegrationTimeZong:
        PUSH     {R7,LR}
//  344     PixelAverageValue_Zong = PixelAverage(128,Pixel_Z);/* ¼ÆËã128¸öÏñËØµãµÄÆ½¾ùADÖµ */
        LDR.W    R1,??DataTable11_14
        MOVS     R0,#+128
        BL       PixelAverage
        LDR.W    R1,??DataTable11_15
        STRB     R0,[R1, #+0]
//  345     PixelAverageVoltage_Zong = (uint8)((int)(PixelAverageValue_Zong * 25 / 128));/* ¼ÆËã128¸öÏñËØµãµÄÆ½¾ùµçÑ¹Öµ,Êµ¼ÊÖµµÄ10±¶ */
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        MOVS     R1,#+128
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_16
        STRB     R0,[R1, #+0]
//  346     PixelAverageVoltageError = TargetPixelAverageVoltage - PixelAverageVoltage_Zong;
        LDR.W    R0,??DataTable11_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_16
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable11_11
        STRH     R0,[R1, #+0]
//  347     if(PixelAverageVoltageError < -TargetPixelAverageVoltageAllowError)
        LDR.W    R0,??DataTable11_11
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        LDRSH    R1,[R1, #+0]
        CMN      R0,R1
        BGE.N    ??CalculateIntegrationTimeZong_0
//  348       IntegrationTime_Zong--;
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable11_17
        STRB     R0,[R1, #+0]
//  349     if(PixelAverageVoltageError > TargetPixelAverageVoltageAllowError)
??CalculateIntegrationTimeZong_0:
        LDR.W    R0,??DataTable11_12
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_11
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??CalculateIntegrationTimeZong_1
//  350       IntegrationTime_Zong++;
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_17
        STRB     R0,[R1, #+0]
//  351     if(IntegrationTime_Zong <= 1)
??CalculateIntegrationTimeZong_1:
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCS.N    ??CalculateIntegrationTimeZong_2
//  352       IntegrationTime_Zong = 1;
        LDR.W    R0,??DataTable11_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  353     if(IntegrationTime_Zong >= 3)
??CalculateIntegrationTimeZong_2:
        LDR.W    R0,??DataTable11_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BCC.N    ??CalculateIntegrationTimeZong_3
//  354       IntegrationTime_Zong = 3;
        LDR.W    R0,??DataTable11_17
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  355 }
??CalculateIntegrationTimeZong_3:
        POP      {R0,PC}          ;; return
//  356 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  357 uint8 PixelAverage(uint8 len, uint8 *data)
//  358 {
PixelAverage:
        PUSH     {R4}
//  359   uint8 i;
//  360   uint16 sum = 0;
        MOVS     R3,#+0
//  361   for(i = 0; i<len; i++)
        MOVS     R2,#+0
        B.N      ??PixelAverage_0
//  362   {
//  363      sum = sum + *data++;
??PixelAverage_1:
        LDRB     R4,[R1, #+0]
        UXTAB    R3,R3,R4
        ADDS     R1,R1,#+1
//  364   }
        ADDS     R2,R2,#+1
??PixelAverage_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BCC.N    ??PixelAverage_1
//  365   return ((uint8)(sum/len));
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SDIV     R0,R3,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  366 }
//  367 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  368 int Abs(int a)
//  369 {
//  370   int i;
//  371   i=a;
//  372   if(i<0) i=-a;
Abs:
        CMP      R0,#+0
        BPL.N    ??Abs_0
        RSBS     R0,R0,#+0
        B.N      ??Abs_1
//  373   else i=a;
//  374   return i;
??Abs_0:
??Abs_1:
        BX       LR               ;; return
//  375 }
//  376 
//  377 //CCD¶þÖµ»¯
//  378 extern  uint8  IT_ref;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  379 int16  bodong=0;
bodong:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  380 int16 high_aver_f=0,low_aver_f=0;
high_aver_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
low_aver_f:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  381 void binaryzation_F(unsigned char *point)
//  382 {
binaryzation_F:
        PUSH     {R3-R7,LR}
//  383   uint8 i,j,num_high_f=0,num_low_f=0,max_label=0,min_label=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R0,#+0
//  384   uint8 tb_fg=0;
        MOVS     R1,#+0
//  385   
//  386   front_max=Pixel_F[7];
        LDR.W    R2,??DataTable11_7
        LDRB     R2,[R2, #+7]
        LDR.W    R3,??DataTable11_18
        STRH     R2,[R3, #+0]
//  387   front_min=Pixel_F[7];
        LDR.W    R2,??DataTable11_7
        LDRB     R2,[R2, #+7]
        LDR.W    R3,??DataTable11_19
        STRH     R2,[R3, #+0]
//  388 
//  389   for(i=7;i<=120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_0
//  390   {
//  391     if(front_max<Pixel_F[i])
//  392     {
//  393       max_label=i;
//  394       front_max=Pixel_F[i];
//  395     }
//  396     else if(front_min>Pixel_F[i])
??binaryzation_F_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable11_19
        LDRSH    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??binaryzation_F_2
//  397     {
//  398       min_label=i;
        MOVS     R0,R7
//  399       front_min=Pixel_F[i];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable11_7
        LDRB     R1,[R7, R1]
        LDR.W    R2,??DataTable11_19
        STRH     R1,[R2, #+0]
//  400     }
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
//  401   }
//  402   if((front_max-Pixel_F[max_label-2]>10)&&(front_max-Pixel_F[max_label+2]>10)&&(Abs(Pixel_F[max_label-2]-Pixel_F[max_label+2])<10))
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
//  403   {
//  404     Pixel_F[max_label]=(Pixel_F[max_label-2]+Pixel_F[max_label+2])/2;
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
//  405     front_max=Pixel_F[max_label];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R6, R0]
        LDR.W    R1,??DataTable11_18
        STRH     R0,[R1, #+0]
//  406   }
//  407   Aver_F=(front_max+front_min)/2;
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
//  408   /*
//  409   //È·¶¨ÊÇ·ñ´æÔÚÌø±äÑØ
//  410   tb_fg=0;
//  411   for(i=7;i<120;i++)
//  412   {
//  413     if(Abs(Pixel_F[i]-Pixel_F[i+1])>(front_max-front_min)/5)
//  414     {
//  415       tb_fg=1;
//  416       break;
//  417     }
//  418   }
//  419   */
//  420   for(i=7;i<=120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_5
//  421   {
//  422     if(Pixel_F[i]>=Aver_F) 
//  423     {
//  424       high_aver_f+=Pixel_F[i];
//  425       num_high_f++;
//  426     }
//  427     else 
//  428     {
//  429       low_aver_f+=Pixel_F[i];
??binaryzation_F_6:
        LDR.W    R0,??DataTable11_21
        LDRH     R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable11_7
        LDRB     R1,[R7, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable11_21
        STRH     R0,[R1, #+0]
//  430       num_low_f++;
        ADDS     R5,R5,#+1
//  431     }
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
//  432   }
//  433   high_aver_f=high_aver_f/num_high_f;
??binaryzation_F_8:
        LDR.W    R0,??DataTable11_22
        LDRSH    R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SDIV     R0,R0,R4
        LDR.W    R1,??DataTable11_22
        STRH     R0,[R1, #+0]
//  434   low_aver_f=low_aver_f/num_low_f;
        LDR.W    R0,??DataTable11_21
        LDRSH    R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SDIV     R0,R0,R5
        LDR.W    R1,??DataTable11_21
        STRH     R0,[R1, #+0]
//  435   Aver_F=(high_aver_f+low_aver_f)/2;
        LDR.W    R0,??DataTable11_22
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable11_21
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_20
        STRH     R0,[R1, #+0]
//  436   //LCD_P8x16_number(10,4,high_aver_f);
//  437   //LCD_P8x16_number(70,4,low_aver_f);
//  438 
//  439   //tb_fg=0;
//  440   for(i=7;i<120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_9
//  441   {
//  442     bodong+=Abs(Pixel_F[i]-Aver_F);
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
//  443   }
        ADDS     R7,R7,#+1
??binaryzation_F_9:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+120
        BCC.N    ??binaryzation_F_10
//  444   bodong=bodong/114;
        LDR.W    R0,??DataTable11_23
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+114
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable11_23
        STRH     R0,[R1, #+0]
//  445   //ÈüµÀ
//  446   if(bodong>15)
        LDR.W    R0,??DataTable11_23
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??binaryzation_F_11
//  447   {
//  448     //Ö´ÐÐ¶þÖµ»¯
//  449     for(i=7;i<=120;i++)
        MOVS     R7,#+7
        B.N      ??binaryzation_F_12
//  450     {
//  451       if(Pixel_F[i]>=Aver_F) Pixel_F[i]=1;
//  452       else Pixel_F[i]=0;
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
//  453     }
//  454     
//  455     if(Pixel_F[7]==1)
??binaryzation_F_15:
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+7]
        CMP      R0,#+1
        BNE.N    ??binaryzation_F_16
//  456       for(i=0;i<=7;i++) Pixel_F[i]=1;
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
//  457     else
//  458       for(i=0;i<=7;i++) Pixel_F[i]=0;
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
//  459     
//  460     if(Pixel_F[120]==1)
??binaryzation_F_18:
        LDR.N    R0,??DataTable11_7
        LDRB     R0,[R0, #+120]
        CMP      R0,#+1
        BNE.N    ??binaryzation_F_21
//  461       for(i=120;i<=127;i++) Pixel_F[i]=1;
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
//  462     else
//  463       for(i=120;i<=127;i++) Pixel_F[i]=0;
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
//  464     
//  465   }
//  466   //Ã¤Çø
//  467   else if(bodong<=15)
??binaryzation_F_11:
        LDR.N    R0,??DataTable11_23
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+16
        BGE.N    ??binaryzation_F_23
//  468   {
//  469      if(IntegrationTime_Front>IT_ref)
        LDR.N    R0,??DataTable11_24
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable11_13
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??binaryzation_F_25
//  470        for(i=0;i<=127;i++) Pixel_F[i]=0;
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
//  471      else
//  472        for(i=0;i<=127;i++) Pixel_F[i]=1;
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
//  473   }
//  474   /*
//  475   if(tb_fg==1)
//  476   {
//  477     
//  478   }
//  479   */
//  480   //ÂË²¨
//  481   for(j=3;j<125;j++)
??binaryzation_F_23:
        MOVS     R0,#+3
        B.N      ??binaryzation_F_29
//  482   {
//  483     if( Pixel_F[j]==0)
??binaryzation_F_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_F_31
//  484     {
//  485       if((Pixel_F[j-1]==1)&&(Pixel_F[j+1]==1))
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
//  486         Pixel_F[j]=1;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  487     }
//  488     if(Pixel_F[j]==1)
??binaryzation_F_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_F_32
//  489     {
//  490       if((Pixel_F[j-1]==0)&&(Pixel_F[j+1]==0))
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
//  491         Pixel_F[j]=0;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_7
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  492     }
//  493   }
??binaryzation_F_32:
        ADDS     R0,R0,#+1
??binaryzation_F_29:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+125
        BCC.N    ??binaryzation_F_30
//  494 }
        POP      {R0,R4-R7,PC}    ;; return
//  495 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  496 int16 high_aver_z=0,low_aver_z=0;
high_aver_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
low_aver_z:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  497 void binaryzation_Z(unsigned char *point)
//  498 {
binaryzation_Z:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  499   uint8 i,j,num_high_z=0,num_low_z=0,max_label=0,min_label=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R0,#+0
//  500   zong_max=Pixel_Z[1];
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable11_25
        STRH     R1,[R2, #+0]
//  501   zong_min=Pixel_Z[1];
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable11_26
        STRH     R1,[R2, #+0]
//  502 
//  503   for(i=1;i<127;i++)
        MOVS     R1,#+1
        B.N      ??binaryzation_Z_0
//  504   {
//  505     if(zong_max<Pixel_Z[i])
//  506     {
//  507       max_label=i;
//  508       zong_max=Pixel_Z[i];
//  509     }
//  510     else if(zong_min>Pixel_Z[i])
??binaryzation_Z_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable11_14
        LDRB     R0,[R1, R0]
        LDR.N    R2,??DataTable11_26
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BGE.N    ??binaryzation_Z_2
//  511     {
//  512       min_label=i;
        MOVS     R0,R1
//  513       zong_min=Pixel_Z[i];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable11_14
        LDRB     R2,[R1, R2]
        LDR.N    R3,??DataTable11_26
        STRH     R2,[R3, #+0]
//  514     }
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
//  515   }
//  516   if((zong_max-Pixel_Z[max_label-2]>10)&&(zong_max-Pixel_Z[max_label+2]>10)&&(Abs(Pixel_Z[max_label-2]-Pixel_Z[max_label+2])<10))
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
//  517   {
//  518     Pixel_Z[max_label]=Pixel_Z[max_label-2]+Pixel_Z[max_label+2];
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
//  519     zong_max=Pixel_Z[max_label];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable11_14
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable11_25
        STRH     R0,[R1, #+0]
//  520   }
//  521   Aver_Z=(zong_max+zong_min)/2;
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
//  522   for(i=0;i<127;i++)
        MOVS     R1,#+0
        B.N      ??binaryzation_Z_5
//  523   {
//  524     if(Pixel_Z[i]>=Aver_Z) 
//  525     {
//  526       high_aver_z+=Pixel_Z[i];
//  527       num_high_z++;
//  528     }
//  529     else 
//  530     {
//  531       low_aver_z+=Pixel_Z[i];
??binaryzation_Z_6:
        LDR.N    R0,??DataTable11_28
        LDRH     R0,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable11_14
        LDRB     R2,[R1, R2]
        ADDS     R0,R0,R2
        LDR.N    R2,??DataTable11_28
        STRH     R0,[R2, #+0]
//  532       num_low_z++;
        ADDS     R6,R6,#+1
//  533     }
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
//  534   }
//  535   high_aver_z=high_aver_z/num_high_z;
??binaryzation_Z_8:
        LDR.N    R0,??DataTable11_29
        LDRSH    R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SDIV     R0,R0,R5
        LDR.N    R1,??DataTable11_29
        STRH     R0,[R1, #+0]
//  536   low_aver_z=low_aver_z/num_low_z;
        LDR.N    R0,??DataTable11_28
        LDRSH    R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SDIV     R0,R0,R6
        LDR.N    R1,??DataTable11_28
        STRH     R0,[R1, #+0]
//  537   Aver_Z=(high_aver_z+low_aver_z)/2;
        LDR.N    R0,??DataTable11_29
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable11_28
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable11_27
        STRH     R0,[R1, #+0]
//  538   //LCD_P8x16_number(10,4,high_aver_z);
//  539   //LCD_P8x16_number(70,4,low_aver_z);
//  540 
//  541   for(i=0;i<128;i++)
        MOVS     R1,#+0
        B.N      ??binaryzation_Z_9
//  542   {
//  543     if(*point>=Aver_Z)//PixelAverageValue_Front*0.6
//  544       *point=1;
//  545     else
//  546       *point=0;
??binaryzation_Z_10:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  547     point++;
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
//  548   }
//  549   //ÂË²¨
//  550   for(j=3;j<125;j++)
??binaryzation_Z_12:
        MOVS     R0,#+3
        B.N      ??binaryzation_Z_13
//  551   {
//  552     if( Pixel_Z[j]==0)
??binaryzation_Z_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BNE.N    ??binaryzation_Z_15
//  553     {
//  554       if((Pixel_Z[j-1]==1)&&(Pixel_Z[j+1]==1))
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
//  555         Pixel_Z[j]=1;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  556     }
//  557     if(Pixel_Z[j]==1)
??binaryzation_Z_15:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??binaryzation_Z_16
//  558     {
//  559       if((Pixel_Z[j-1]==0)&&(Pixel_Z[j+1]==0))
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
//  560         Pixel_Z[j]=0;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable11_14
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  561     }
//  562   }
??binaryzation_Z_16:
        ADDS     R0,R0,#+1
??binaryzation_Z_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+125
        BCC.N    ??binaryzation_Z_14
//  563   
//  564   //for(j=0;j<128;j++) Pixel_Z[j]=Pixel_Z[j]*100;
//  565 }
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
//  566 
//  567 //-----------------------------------------------------------------------------------------------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  568 int16   rensha_count=0;
rensha_count:
        DS8 2
//  569 extern float k_out;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  570 int16  lost_all_count=0;
lost_all_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  571 uint8  lost_all_flag=0,lost_left_flag=0,lost_right_flag=0;
lost_all_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
lost_left_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
lost_right_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  572 uint8  Rdiaotou_flag=0;
Rdiaotou_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  573 int16  Rdiaotou_count=0,Rqing_count=0;
Rdiaotou_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Rqing_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  574 uint8  Ldiaotou_flag=0;
Ldiaotou_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  575 int16  Ldiaotou_count=0,Lqing_count=0;
Ldiaotou_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Lqing_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  576 uint8  banma_flag=0;
banma_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  577 uint8  LHOLDdiao_flag=0,RHOLDdiao_flag=0;
LHOLDdiao_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
RHOLDdiao_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  578 uint8  Lendiao=0,Rendiao=0;
Lendiao:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rendiao:
        DS8 1
//  579 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  580 uint8  rzguo_flag=0;
rzguo_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  581 uint8  rzguo_count=0;
rzguo_count:
        DS8 1
//  582 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  583 int16   ZZ_count=0;
ZZ_count:
        DS8 2
//  584 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  585 int16 route_f[100]={0};
route_f:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  586 int16 chafang_f[100]={0};
chafang_f:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  587 int16 route_ave_f=0;
route_ave_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  588 int16 fangcha_f=0,fangcha_qian_f=0,fangcha_hou_f=0;
fangcha_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_qian_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_hou_f:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  589 int16 Rpre1=0,Rpre2=0,Rpre3=0,Rpre4=0,Lpre1=0,Lpre2=0,Lpre3=0,Lpre4=0;
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
//  590 int16 R_aver=0,L_aver=0;
R_aver:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
L_aver:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  591 int16 L_fch=0,R_fch=0;
L_fch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
R_fch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  592 int16 qpx_count=0;
qpx_count:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  593 uint8 rzop=1;
rzop:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  594 int16 front_l_fg_last=0,front_r_fg_last=0;
front_l_fg_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_fg_last:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  595 int16 front_l_flag=0,front_r_flag=0;
front_l_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
front_r_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  596 int16 real_l=0,real_r=0;
real_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
real_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  597 uint8 mq=0,mq_last=0;
mq:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
mq_last:
        DS8 1
//  598 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  599 int16 LR_count=0;
LR_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  600 int16 Lr_count=0;
Lr_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  601 int16 lR_count=0;
lR_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  602 int16 lr_count=0;
lr_count:
        DS8 2
//  603 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  604 int16 jiao_L=20,jiao_R=23;
jiao_L:
        DATA
        DC16 20

        SECTION `.data`:DATA:REORDER:NOROOT(1)
jiao_R:
        DATA
        DC16 23
//  605 
//  606 extern   int16      fch_dp1,fch_dp2,fch_dp3;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  607 uint8  ga_fg=0,gl_fg=0,gr_fg=0;
ga_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
gl_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
gr_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  608 uint8  ga_fg_last=0,gl_fg_last=0,gr_fg_last=0;
ga_fg_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
gl_fg_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
gr_fg_last:
        DS8 1
//  609 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  610 uint8  sz_in=0;
sz_in:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  611 uint8  sz_l=0,sz_r=0;
sz_l:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
sz_r:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  612 int16  sz_in_ct=0;
sz_in_ct:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  613 uint8  mq_look1=0,mq_look2=0,mq_look3=0,mq_look4=0;
mq_look1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
mq_look2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
mq_look3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
mq_look4:
        DS8 1
//  614 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  615 int16  OFFSET_keep=20;
OFFSET_keep:
        DATA
        DC16 20
//  616 extern uint8  CAR_GO;
//  617 /*
//  618 1-¶Ô³ÆÎÊÌâ
//  619   63
//  620 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  621 void get_front()
//  622 {
get_front:
        PUSH     {R4,LR}
//  623     int16 i,j;
//  624     
//  625     if(CAR_GO==1)
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_0
//  626     {
//  627       qpx_count++;
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_1
        STRH     R0,[R1, #+0]
//  628       if(qpx_count>35) qpx_count=36;
        LDR.W    R0,??DataTable12_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+36
        BLT.N    ??get_front_0
        LDR.W    R0,??DataTable12_1
        MOVS     R1,#+36
        STRH     R1,[R0, #+0]
//  629     }
//  630     
//  631     
//  632     ga_fg=0;
??get_front_0:
        LDR.W    R0,??DataTable13
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  633     gl_fg=0;
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  634     gr_fg=0;
        LDR.W    R0,??DataTable13_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  635 
//  636     mq=0;
        LDR.W    R0,??DataTable13_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  637     
//  638     if(LHOLDdiao_flag==0)
        LDR.W    R0,??DataTable13_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_1
//  639     {
//  640       Ldiaotou_flag=0;
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  641     }
//  642     if(RHOLDdiao_flag==0)
??get_front_1:
        LDR.W    R0,??DataTable13_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_2
//  643     {
//  644       Rdiaotou_flag=0;
        LDR.W    R0,??DataTable12_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  645     }
//  646     //Ñ°Ïß
//  647     for(i=121;i>=6;i--)
??get_front_2:
        MOVS     R0,#+121
        B.N      ??get_front_3
//  648     {
//  649       if((Pixel_F[i]==1)&&(Pixel_F[i-1]==0)&&(Pixel_F[i-2]==0)&&(Pixel_F[i-3]==0))
//  650       {
//  651         front_l = i-2;
//  652         front_l_flag = 1;
//  653         break;
//  654       }
//  655       front_l_flag = 0;
??get_front_4:
        LDR.W    R1,??DataTable12_3
        MOVS     R2,#+0
        STRH     R2,[R1, #+0]
        SUBS     R0,R0,#+1
??get_front_3:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+6
        BLT.N    ??get_front_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_front_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+0
        BNE.N    ??get_front_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+0
        BNE.N    ??get_front_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-3]
        CMP      R1,#+0
        BNE.N    ??get_front_4
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_3
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  656     }
//  657     for(j=6;j<=121;j++)
??get_front_5:
        MOVS     R0,#+6
        B.N      ??get_front_6
//  658     {
//  659        if((Pixel_F[j]==1)&&(Pixel_F[j+1]==0)&&(Pixel_F[j+2]==0)&&(Pixel_F[j+3]==0))
//  660       {
//  661         front_r = j+2;
//  662         front_r_flag = 1;
//  663         break;
//  664       }
//  665       front_r_flag = 0;
??get_front_7:
        LDR.W    R1,??DataTable13_8
        MOVS     R2,#+0
        STRH     R2,[R1, #+0]
        ADDS     R0,R0,#+1
??get_front_6:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+122
        BGE.N    ??get_front_8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_front_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+0
        BNE.N    ??get_front_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+0
        BNE.N    ??get_front_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable12_4
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+3]
        CMP      R1,#+0
        BNE.N    ??get_front_7
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable13_8
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  666     }
//  667     
//  668     /*Èç¹ûÏ¸ÖÂµÄ×ö²»µ½£¬²»·Á¼òµ¥»¯*/
//  669     //A.²Éµ½×óÓÒÊý¾Ý
//  670     if((front_l_flag == 1)&&(front_r_flag == 1))
??get_front_8:
        LDR.W    R0,??DataTable12_3
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_9
        LDR.W    R0,??DataTable13_8
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_9
//  671     {  
//  672       LR_count++;
        LDR.W    R0,??DataTable13_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_10
        STRH     R0,[R1, #+0]
//  673       Lr_count=0;
        LDR.W    R0,??DataTable13_11
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  674       lR_count=0;
        LDR.W    R0,??DataTable13_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  675       lr_count=0;
        LDR.W    R0,??DataTable13_13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  676       
//  677       //a.1.×óÖµ´óÓÚÓÒÖµ,ÓÐÇÒÖ»ÓÐÒ»ÌõÓÐÓÃ±ß
//  678       //--Ò×ÄªÃû³å³öÈüµÀ(29,98)
//  679       //  1-ÁÚ½üÊ®×Ö
//  680       //  2-³öÈË×Ö
//  681       //  3-³öÊ®×Ö
//  682       //  4-×¢Òâfront_widthÓë(front_r_last-front_l_last)Ö®¼äµÄÌø±ä
//  683       if(front_l>front_r)            
        LDR.W    R0,??DataTable13_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_10
//  684       { 
//  685         if(qpx_count>35)//·ÀÖ¹Æô¶¯Ê±Ö÷CCD²Éµ½ÆðÅÜÏß³ö´í
        LDR.W    R0,??DataTable12_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+36
        BLT.N    ??get_front_11
//  686         {
//  687           //------------------------------------------------------------------
//  688           if(mq_last==1)
        LDR.W    R0,??DataTable13_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_12
//  689           {
//  690             //mq=mq_last;
//  691             //if(ga_fg_last==1)  ga_fg=1;
//  692             //if(gl_fg_last==1)  gl_fg=1;
//  693             //if(gr_fg_last==1)  gr_fg=1;
//  694             
//  695             //front_l=front_l_last;
//  696             //front_r=front_r_last;
//  697             if((front_l_fg_last==1)&&(front_r_fg_last==0))  front_r=front_l+(front_r_last-front_l_last);
        LDR.W    R0,??DataTable14
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_13
        LDR.W    R0,??DataTable14_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_13
        LDR.W    R0,??DataTable13_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
//  698             if((front_l_fg_last==0)&&(front_r_fg_last==1))  front_l=front_r-(front_r_last-front_l_last);
??get_front_13:
        LDR.W    R0,??DataTable14
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??get_front_14
        LDR.W    R0,??DataTable14_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_14
        LDR.W    R0,??DataTable13_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  699             
//  700             //front_l_flag=front_l_fg_last;
//  701             //front_r_flag=front_r_fg_last;
//  702           }
//  703           else
//  704           {
//  705             //-m1-//
//  706             /*front_l=front_l_last;
//  707             front_r=front_r_last;*/
//  708             //-m2-//
//  709             /*if(Abs((front_l+front_l+front_width)/2-cl_f_pre)>Abs((front_r+front_r-front_width)/2-cl_f_pre)) 
//  710               front_l=front_r-front_width;
//  711             else 
//  712               front_r=front_l+front_width;*/
//  713             //-m3-//
//  714             if(Abs(front_l-front_l_last)<Abs(front_r-front_r_last))
??get_front_12:
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14_2
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        MOVS     R4,R0
        LDR.W    R0,??DataTable13_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R4,R0
        BGE.N    ??get_front_15
//  715               front_r = front_l+front_width;
        LDR.W    R0,??DataTable13_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_16
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  716             else
//  717               front_l = front_r-front_width;
??get_front_15:
        LDR.W    R0,??DataTable13_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_16
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  718             //-m4-//
//  719             /*if(gl_fg_last==1)
//  720             {
//  721               gl_fg=1;
//  722               front_r = front_l+front_width;
//  723             }
//  724         
//  725             if(gr_fg_last==1)
//  726             {
//  727               gr_fg=1;
//  728               front_l = front_r-front_width;
//  729             }
//  730             
//  731             if(ga_fg_last==1)
//  732             {
//  733               front_l=front_l_last;
//  734               front_r=front_r_last;
//  735             }*/
//  736             //-m5-//
//  737             //if(front_OFFSET_pre1<0)  front_l = front_r-(front_r-front_r_last);
//  738             //else front_r = front_l+(front_r-front_r_last);
//  739             //-m6-//
//  740           }
//  741         }
//  742         else
//  743         { 
//  744            /*if(ga_fg_last==1)  ga_fg=1;
//  745            if(gl_fg_last==1)  gl_fg=1;
//  746            if(gr_fg_last==1)  gr_fg=1;*/
//  747           
//  748            front_l=front_l_last;
??get_front_11:
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  749            front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_14
//  750         }
//  751       }
//  752       //a.2.ÓÒÖµ´óÓÚ×óÖµ,Õý³£
//  753       else
//  754       {
//  755         if(front_r-front_l<front_width-5) 
??get_front_10:
        LDR.W    R0,??DataTable13_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_7
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_16
        LDRSH    R1,[R1, #+0]
        SUBS     R1,R1,#+5
        CMP      R0,R1
        BLT.W    ??get_front_14
//  756         {
//  757           /*if(ga_fg_last==1)  ga_fg=1;
//  758           if(gl_fg_last==1)  gl_fg=1;
//  759           if(gr_fg_last==1)  gr_fg=1;*/
//  760           
//  761           //front_l=front_l_last;
//  762           //front_r=front_r_last;
//  763           //if((front_l+front_r)/2<front_reference) front_l=front_r-(front_r_last-front_l_last);
//  764           //else front_r = front_l+(front_r_last-front_l_last);
//  765         }
//  766         else if(front_r-front_l>=front_width-5)
        B.N      ??get_front_14
//  767         {
//  768           //ga_fg=1;
//  769           
//  770           /*if(qpx_count>25)
//  771           {
//  772             //ÓÐ¿ÉÄÜ³öÏÖÍêÈ«²Éµ½±ðµÄÈüµÀ
//  773             if(Abs((front_l+front_r)/2-cl_f_pre)>15)//´óÌø±ä
//  774             {
//  775               front_l=front_l_last;
//  776               front_r=front_r_last;
//  777             }
//  778             else
//  779               ga_fg=1;
//  780           }
//  781           else
//  782           {}*/
//  783         }
//  784       }  
//  785     }
//  786     //B.ÓÒÊý¾Ý¶ªÊ§
//  787     else if((front_l_flag == 1)&&(front_r_flag == 0))
??get_front_9:
        LDR.W    R0,??DataTable12_3
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_16
        LDR.W    R0,??DataTable13_8
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_16
//  788     {
//  789       LR_count=0;
        LDR.W    R0,??DataTable13_10
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  790       Lr_count++;
        LDR.W    R0,??DataTable13_11
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_11
        STRH     R0,[R1, #+0]
//  791       lR_count=0;
        LDR.W    R0,??DataTable13_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  792       lr_count=0;
        LDR.W    R0,??DataTable13_13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  793       
//  794       //È«¶ª
//  795       if(front_l>cl_f_pre)//cl_f_pre
        LDR.W    R0,??DataTable14_3
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_17
//  796       {
//  797         //gr_fg=1;
//  798         front_l=front_l_last;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  799         front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_14
//  800       }
//  801       //-m2-//ÒÔÈü¿íÅÐ¶Ï--------------
//  802       else if(front_l<=cl_f_pre)
??get_front_17:
        LDR.W    R0,??DataTable14_3
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.W    ??get_front_14
//  803       { 
//  804         //gl_fg=1;
//  805         //ÔÚ¡°Ê®×ÖÍä¡±´¦´óÆ«²î
//  806         if(front_l<127-front_width-15)//-10(29,69,98)
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_16
        LDRSH    R1,[R1, #+0]
        RSBS     R1,R1,#+112
        CMP      R0,R1
        BGE.N    ??get_front_18
//  807         {
//  808             Rdiaotou_flag=1;
        LDR.W    R0,??DataTable12_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  809           
//  810             Lpre4=Lpre3;
        LDR.W    R0,??DataTable14_4
        LDR.W    R1,??DataTable14_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  811             Lpre3=Lpre2;
        LDR.W    R0,??DataTable14_5
        LDR.W    R1,??DataTable14_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  812             Lpre2=Lpre1;
        LDR.W    R0,??DataTable14_6
        LDR.W    R1,??DataTable14_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  813             Lpre1=front_l;
        LDR.W    R0,??DataTable14_7
        LDR.W    R1,??DataTable13_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  814             //A.Êµ¼ÊÉÏfront_width²»ÊÇ´ËÊ±Êµ¼ÊµÄÈüµÀ¿í¶È
//  815             //B.´Ë´¦ÓÃÁËÀúÊ·Öµ£¬ÔÚ¹ýÈË×ÖÍäºó»áÊÜÓ°Ïì
//  816             //-m1-//
//  817             front_r =front_l+(front_r_last-front_l_last); 
        LDR.W    R0,??DataTable13_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  818             
//  819             //front_l=front_l-((front_r_last-front_l_last)-front_width)/2;
//  820             //front_r=front_r-((front_r_last-front_l_last)-front_width)/2;
//  821             //-m2-//
//  822             //front_l=front_l_last;
//  823             //front_r=front_r_last;
//  824         } 
//  825         else 
//  826         {   //-m1-//
//  827             front_r =front_l+(front_r_last-front_l_last);
??get_front_18:
        LDR.W    R0,??DataTable13_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  828             
//  829             //front_l=front_l-((front_r_last-front_l_last)-front_width)/2;
//  830             //front_r=front_r-((front_r_last-front_l_last)-front_width)/2;
//  831         }
//  832       }
//  833     }
//  834     //C.×óÊý¾Ý¶ª
//  835     else if((front_l_flag == 0)&&(front_r_flag == 1))
??get_front_16:
        LDR.W    R0,??DataTable12_3
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??get_front_19
        LDR.W    R0,??DataTable13_8
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_19
//  836     { 
//  837       LR_count=0;
        LDR.W    R0,??DataTable13_10
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  838       Lr_count=0;
        LDR.W    R0,??DataTable13_11
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  839       lR_count++;
        LDR.W    R0,??DataTable13_12
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_12
        STRH     R0,[R1, #+0]
//  840       lr_count=0;
        LDR.W    R0,??DataTable13_13
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  841       
//  842       if(front_r<cl_f_pre)//cl_f_pre
        LDR.W    R0,??DataTable13_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14_3
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_20
//  843       {
//  844         //gl_fg=1;
//  845         front_l=front_l_last;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  846         front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_14
//  847       }
//  848       //2.ÒÔÈü¿íÅÐ¶Ï
//  849       else if(front_r>=cl_f_pre)
??get_front_20:
        LDR.W    R0,??DataTable13_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable14_3
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.W    ??get_front_14
//  850       { //gr_fg=1;
//  851         //ÔÚ¡°Ê®×ÖÍä¡±´¦´óÆ«²î
//  852          if(front_r>front_width+15)//Â·¾¶£¬Ã¿´ÎÈëÍäµÄÐ§¹û£¬¾­Ñé´ó+10(29,69,98)
        LDR.W    R0,??DataTable13_16
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+15
        LDR.W    R1,??DataTable13_9
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_21
//  853          {
//  854            Ldiaotou_flag=1;
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  855            
//  856            Rpre4=Rpre3;
        LDR.W    R0,??DataTable14_8
        LDR.W    R1,??DataTable14_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  857            Rpre3=Rpre2;
        LDR.W    R0,??DataTable14_9
        LDR.W    R1,??DataTable14_10
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  858            Rpre2=Rpre1;
        LDR.W    R0,??DataTable14_10
        LDR.W    R1,??DataTable14_11
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  859            Rpre1=front_r;
        LDR.W    R0,??DataTable14_11
        LDR.W    R1,??DataTable13_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  860            //-m1-//
//  861            front_l=front_r-(front_r_last-front_l_last);
        LDR.W    R0,??DataTable13_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  862            
//  863            //front_l=front_l+((front_r_last-front_l_last)-front_width)/2;
//  864            //front_r=front_r+((front_r_last-front_l_last)-front_width)/2;
//  865            //-m2-//
//  866            //front_l=front_l_last;
//  867            //front_r=front_r_last;
//  868            
//  869          } 
//  870          else
//  871          { //-m1-//
//  872            front_l=front_r-(front_r_last-front_l_last);
??get_front_21:
        LDR.W    R0,??DataTable13_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
        B.N      ??get_front_14
//  873            
//  874            //front_l=front_l+((front_r_last-front_l_last)-front_width)/2;
//  875            //front_r=front_r+((front_r_last-front_l_last)-front_width)/2;
//  876          }
//  877       }
//  878     }
//  879     //D.Á½±ßÊý¾Ý¶¼¶ªÊ§
//  880     else if((front_l_flag == 0)&&(front_r_flag == 0))
??get_front_19:
        LDR.W    R0,??DataTable12_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_8
        LDRH     R1,[R1, #+0]
        ORRS     R0,R1,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_front_14
//  881     { 
//  882       //È«°×£¬Ö»ÓÐÊ®×ÖÍä
//  883       if(IntegrationTime_Front<IT_ref)
        LDR.W    R0,??DataTable14_12
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable14_13
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??get_front_22
//  884       {
//  885         //-m3-//-------------------
//  886         mq=1;
        LDR.W    R0,??DataTable13_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  887         
//  888         front_l_flag=front_l_fg_last;
        LDR.W    R0,??DataTable12_3
        LDR.W    R1,??DataTable14
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  889         front_r_flag=front_r_fg_last;
        LDR.W    R0,??DataTable13_8
        LDR.W    R1,??DataTable14_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  890         
//  891         front_l=front_l_reference;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_14
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  892         front_r=front_r_reference;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable14_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_23
//  893         
//  894         //front_l=front_l_last;
//  895         //front_r=front_r_last;
//  896         
//  897         //if(ga_fg_last==1)  ga_fg=1;
//  898         //if(gl_fg_last==1)  gl_fg=1;
//  899         //if(gr_fg_last==1)  gr_fg=1;  
//  900       }
//  901       //È«ºÚ£¬ÇúÂÊ´óµÄÍä´¦
//  902       else if(IntegrationTime_Front>IT_ref)
??get_front_22:
        LDR.W    R0,??DataTable14_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable14_12
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??get_front_23
//  903       {
//  904         front_l=front_l_last;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  905         front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  906         
//  907         /*if(ga_fg_last==1)  ga_fg=1;
//  908         if(gl_fg_last==1)  gl_fg=1;
//  909         if(gr_fg_last==1)  gr_fg=1;*/ 
//  910       }
//  911       
//  912       LR_count=0;
??get_front_23:
        LDR.W    R0,??DataTable13_10
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  913       Lr_count=0;
        LDR.W    R0,??DataTable13_11
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  914       lR_count=0;
        LDR.W    R0,??DataTable13_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  915       lr_count++;
        LDR.W    R0,??DataTable13_13
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_13
        STRH     R0,[R1, #+0]
//  916     }
//  917     
//  918     mq_last=mq;
??get_front_14:
        LDR.W    R0,??DataTable13_14
        LDR.W    R1,??DataTable13_3
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  919     
//  920     if(rzop==1)
        LDR.W    R0,??DataTable14_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??get_front_24
//  921     {
//  922     //-m2-//ÒÔÈüµÀ¿í¼°ÆäËûÅÐ¶ÏÈüµÀ¿í
//  923     //ÓÒµ÷Í·-----------------------¶æ»úµÄÖÐÖµ
//  924     if(Rdiaotou_flag==1)
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_25
//  925     {
//  926       //gl_fg=1;
//  927       
//  928       Rdiaotou_count++;
        LDR.W    R0,??DataTable14_17
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14_17
        STRH     R0,[R1, #+0]
//  929       if(Rdiaotou_count<=3)//2 
        LDR.W    R0,??DataTable14_17
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??get_front_25
//  930       {}
//  931       else if(Rdiaotou_count>3&&Rdiaotou_count<20)//30
        LDR.W    R0,??DataTable14_17
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+16
        BCS.N    ??get_front_26
//  932       {                                        
//  933         if((front_r_last-front_l_last)<=(front_width+5))//1-ÓëÖ±µÀÈëÊ®×ÖÓÐ³åÍ» 2-¶à´Î½øÈë
        LDR.W    R0,??DataTable13_16
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable13_15
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_2
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BLT.N    ??get_front_27
//  934           Rendiao=1;
        LDR.W    R0,??DataTable14_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  935         
//  936         if(Rendiao==1)
??get_front_27:
        LDR.W    R0,??DataTable14_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_25
//  937         {
//  938           RHOLDdiao_flag=1;
        LDR.W    R0,??DataTable13_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  939           if(Rdiaotou_count<22)//22
        LDR.W    R0,??DataTable14_17
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+22
        BGE.N    ??get_front_25
//  940           {
//  941             front_l=157-front_width/2;
        LDR.W    R0,??DataTable13_16
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        RSBS     R0,R0,#+157
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
//  942             front_r=157+front_width/2;
        LDR.W    R0,??DataTable13_16
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+157
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
        B.N      ??get_front_25
//  943           }
//  944         } 
//  945       }
//  946       else 
//  947       {
//  948         Rdiaotou_count=0;
??get_front_26:
        LDR.W    R0,??DataTable14_17
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  949         Rdiaotou_flag=0;
        LDR.W    R0,??DataTable12_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  950         Rendiao=0;
        LDR.W    R0,??DataTable14_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  951         RHOLDdiao_flag=0;
        LDR.W    R0,??DataTable13_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  952         rensha_count=0; 
        LDR.W    R0,??DataTable14_19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  953         //---
//  954         rzguo_flag=1;
        LDR.W    R0,??DataTable14_20
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  955       }
//  956     }
//  957     
//  958     if(Rdiaotou_flag==0&&RHOLDdiao_flag==0)
??get_front_25:
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_6
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??get_front_28
//  959     {
//  960         Rdiaotou_count=0;
        LDR.W    R0,??DataTable14_17
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  961     }
//  962 
//  963     //×óµ÷Í·
//  964     if(Ldiaotou_flag==1)
??get_front_28:
        LDR.W    R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_29
//  965     {
//  966       //gr_fg=1;
//  967       Ldiaotou_count++;
        LDR.W    R0,??DataTable14_21
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14_21
        STRH     R0,[R1, #+0]
//  968       if(Ldiaotou_count<=3) 
        LDR.W    R0,??DataTable14_21
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??get_front_29
//  969       {}
//  970       else if(Ldiaotou_count>3&&Ldiaotou_count<30)//30
        LDR.W    R0,??DataTable14_21
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+26
        BCS.N    ??get_front_30
//  971       {                                         
//  972         if((front_r_last-front_l_last)<=(front_width+5))//ÓëÖ±µÀÈëÊ®×ÖÓÐ³åÍ»
        LDR.W    R0,??DataTable13_16
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable13_15
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable14_2
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BLT.N    ??get_front_31
//  973           Lendiao=1;
        LDR.W    R0,??DataTable14_22
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  974         
//  975         if(Lendiao==1)
??get_front_31:
        LDR.W    R0,??DataTable14_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_29
//  976         {
//  977           LHOLDdiao_flag=1;
        LDR.W    R0,??DataTable13_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  978           if(Ldiaotou_count<22)//22
        LDR.W    R0,??DataTable14_21
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+22
        BGE.N    ??get_front_29
//  979           {
//  980             front_l=-30-front_width/2;
        MVNS     R0,#+29
        LDR.W    R1,??DataTable13_16
        LDRSH    R1,[R1, #+0]
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
//  981             front_r=-30+front_width/2;
        LDR.W    R0,??DataTable13_16
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+30
        LDR.W    R1,??DataTable13_9
        STRH     R0,[R1, #+0]
        B.N      ??get_front_29
//  982           } 
//  983         }
//  984       }
//  985       else 
//  986       {
//  987         Ldiaotou_count=0;
??get_front_30:
        LDR.W    R0,??DataTable14_21
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  988         Ldiaotou_flag=0;
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  989         Lendiao=0;
        LDR.W    R0,??DataTable14_22
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  990         LHOLDdiao_flag=0;
        LDR.W    R0,??DataTable13_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  991         rensha_count=0;
        LDR.W    R0,??DataTable14_19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  992         //---
//  993         rzguo_flag=1;
        LDR.W    R0,??DataTable14_20
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  994       }
//  995     }
//  996     
//  997     if(Ldiaotou_flag==0&&LHOLDdiao_flag==0)
??get_front_29:
        LDR.W    R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable13_4
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??get_front_24
//  998     {
//  999         Ldiaotou_count=0;//ÊÇÓÉÓÚÎ´ÄÜ¼°Ê±ÇåÁãÂð£¿
        LDR.W    R0,??DataTable14_21
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1000     }
// 1001   }
// 1002   
// 1003   //³öÊ®×Ö------------------------------------
// 1004   //-m1-//
// 1005   if((front_l+front_r)/2-front_reference>0)
??get_front_24:
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_9
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable15
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??get_front_32
// 1006   {
// 1007     if((front_l_flag == 0)&&(front_r_flag == 1))
        LDR.N    R0,??DataTable12_3
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_33
        LDR.W    R0,??DataTable13_8
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_33
// 1008     {
// 1009       front_l=front_l_last;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1010       front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_front_33
// 1011     }
// 1012   }
// 1013   else
// 1014   {
// 1015     if((front_l_flag == 1)&&(front_r_flag == 0))
??get_front_32:
        LDR.N    R0,??DataTable12_3
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_front_33
        LDR.W    R0,??DataTable13_8
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_front_33
// 1016     {
// 1017       front_l=front_l_last;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1018       front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1019     }
// 1020   }
// 1021 
// 1022   //!!!³ÌÐòbug,ÔÚÊ®×ÖÍäÐ±³å³öÈüµÀ
// 1023   if(front_l>front_r)
??get_front_33:
        LDR.W    R0,??DataTable13_9
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_front_34
// 1024   {
// 1025       front_l=front_l_last;
        LDR.W    R0,??DataTable13_7
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1026       front_r=front_r_last;
        LDR.W    R0,??DataTable13_9
        LDR.W    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1027   }
// 1028   //----------------------------------------------
// 1029   
// 1030   //Ö±µÀÈëÍä
// 1031   /*
// 1032   1-Éè¶¯Ì¬P
// 1033   2-Æ½ÒÆÏñËØµã
// 1034   */
// 1035   //-----------------------------------
// 1036     cl_f = (front_l+front_r)/2;
??get_front_34:
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable13_9
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable15_1
        STRH     R0,[R1, #+0]
// 1037     front_OFFSET = cl_f - front_reference;
        LDR.W    R0,??DataTable15_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable15_2
        STRH     R0,[R1, #+0]
// 1038 
// 1039     ga_fg_last=ga_fg;
        LDR.W    R0,??DataTable15_3
        LDR.N    R1,??DataTable13
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 1040     gl_fg_last=gl_fg;
        LDR.W    R0,??DataTable15_4
        LDR.N    R1,??DataTable13_1
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 1041     gr_fg_last=gr_fg;
        LDR.W    R0,??DataTable15_5
        LDR.N    R1,??DataTable13_2
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 1042     
// 1043     cl_f_pre = cl_f;
        LDR.W    R0,??DataTable14_3
        LDR.W    R1,??DataTable15_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1044     
// 1045     front_l_fg_last=front_l_flag;
        LDR.W    R0,??DataTable14
        LDR.N    R1,??DataTable12_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1046     front_r_fg_last=front_r_flag;
        LDR.W    R0,??DataTable14_1
        LDR.N    R1,??DataTable13_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1047     
// 1048     front_l_pre4=front_l_pre3;
        LDR.W    R0,??DataTable15_6
        LDR.W    R1,??DataTable15_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1049     front_r_pre4=front_r_pre3;
        LDR.W    R0,??DataTable15_8
        LDR.W    R1,??DataTable15_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1050     front_l_pre3=front_l_pre2;
        LDR.W    R0,??DataTable15_7
        LDR.W    R1,??DataTable15_10
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1051     front_r_pre3=front_r_pre2;
        LDR.W    R0,??DataTable15_9
        LDR.W    R1,??DataTable15_11
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1052     front_l_pre2=front_l_pre1;
        LDR.W    R0,??DataTable15_10
        LDR.W    R1,??DataTable15_12
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1053     front_r_pre2=front_r_pre1;
        LDR.W    R0,??DataTable15_11
        LDR.W    R1,??DataTable15_13
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1054     front_l_pre1=front_l_last;
        LDR.W    R0,??DataTable15_12
        LDR.W    R1,??DataTable14_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1055     front_r_pre1=front_r_last;
        LDR.W    R0,??DataTable15_13
        LDR.N    R1,??DataTable13_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1056     front_l_last=front_l;
        LDR.W    R0,??DataTable14_2
        LDR.N    R1,??DataTable13_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1057     front_r_last=front_r;
        LDR.N    R0,??DataTable13_15
        LDR.N    R1,??DataTable13_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1058     
// 1059     front_OFFSET_pre10 = front_OFFSET_pre9;
        LDR.W    R0,??DataTable16
        LDR.W    R1,??DataTable16_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1060     front_OFFSET_pre9 = front_OFFSET_pre8;
        LDR.W    R0,??DataTable16_1
        LDR.W    R1,??DataTable16_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1061     front_OFFSET_pre8 = front_OFFSET_pre7;
        LDR.W    R0,??DataTable16_2
        LDR.W    R1,??DataTable16_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1062     front_OFFSET_pre7 = front_OFFSET_pre6;
        LDR.W    R0,??DataTable16_3
        LDR.W    R1,??DataTable16_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1063     front_OFFSET_pre6 = front_OFFSET_pre5;
        LDR.W    R0,??DataTable16_4
        LDR.W    R1,??DataTable16_5
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1064     front_OFFSET_pre5 = front_OFFSET_pre4;
        LDR.W    R0,??DataTable16_5
        LDR.W    R1,??DataTable16_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1065     front_OFFSET_pre4 = front_OFFSET_pre3;
        LDR.W    R0,??DataTable16_6
        LDR.W    R1,??DataTable16_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1066     front_OFFSET_pre3 = front_OFFSET_pre2;
        LDR.W    R0,??DataTable16_7
        LDR.W    R1,??DataTable16_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1067     front_OFFSET_pre2 = front_OFFSET_pre1;
        LDR.W    R0,??DataTable16_8
        LDR.W    R1,??DataTable16_9
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1068     front_OFFSET_pre1 = front_OFFSET;
        LDR.W    R0,??DataTable16_9
        LDR.W    R1,??DataTable15_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1069     
// 1070     //d_err1 = front_OFFSET - front_OFFSET_pre1;ºãÎª0
// 1071     d_err1 = front_OFFSET_pre1 - front_OFFSET_pre2;
        LDR.W    R0,??DataTable16_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_8
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_10
        STRH     R0,[R1, #+0]
// 1072     d_err2 = front_OFFSET_pre2 - front_OFFSET_pre3;
        LDR.W    R0,??DataTable16_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_7
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_11
        STRH     R0,[R1, #+0]
// 1073     d_err3 = front_OFFSET_pre3 - front_OFFSET_pre4;
        LDR.W    R0,??DataTable16_7
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_12
        STRH     R0,[R1, #+0]
// 1074     d_err4 = front_OFFSET_pre4 - front_OFFSET_pre5;
        LDR.W    R0,??DataTable16_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_5
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_13
        STRH     R0,[R1, #+0]
// 1075     d_err5 = front_OFFSET_pre5 - front_OFFSET_pre6;
        LDR.W    R0,??DataTable16_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_4
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_14
        STRH     R0,[R1, #+0]
// 1076     d_err6 = front_OFFSET_pre6 - front_OFFSET_pre7;
        LDR.W    R0,??DataTable16_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_3
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_15
        STRH     R0,[R1, #+0]
// 1077     d_err7 = front_OFFSET_pre7 - front_OFFSET_pre8;
        LDR.W    R0,??DataTable16_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_16
        STRH     R0,[R1, #+0]
// 1078     d_err8 = front_OFFSET_pre8 - front_OFFSET_pre9;
        LDR.W    R0,??DataTable16_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable16_17
        STRH     R0,[R1, #+0]
// 1079     d_err9 = front_OFFSET_pre9 - front_OFFSET_pre10;   
        LDR.W    R0,??DataTable16_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable16
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18
        STRH     R0,[R1, #+0]
// 1080 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     CAR_GO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     qpx_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     Rdiaotou_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     front_l_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     Pixel_F
// 1081 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1082 void route_type_F()
// 1083 {
route_type_F:
        PUSH     {R4,R5}
// 1084   char i;
// 1085   char fch_first=3;//ÈüµÀ¹ý¶É
        MOVS     R0,#+3
// 1086   char label_count=6;
        MOVS     R1,#+6
// 1087   char fch_av_count=0;
        MOVS     R2,#+0
// 1088   
// 1089   fangcha_f=0;
        LDR.W    R3,??DataTable16_18
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1090   fangcha_qian_f=0;
        LDR.W    R3,??DataTable16_19
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1091   fangcha_hou_f=0;
        LDR.W    R3,??DataTable18_1
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1092   
// 1093   fch_av_count = label_count - fch_first+1;
        SUBS     R3,R1,R0
        ADDS     R3,R3,#+1
        MOVS     R2,R3
// 1094   //Ë¢ÐÂ
// 1095   route_f[0]=front_OFFSET;
        LDR.W    R3,??DataTable16_20
        LDR.W    R4,??DataTable15_2
        LDRH     R4,[R4, #+0]
        STRH     R4,[R3, #+0]
// 1096   for(i=100;i>0;i--)
        MOVS     R3,#+100
        B.N      ??route_type_F_0
// 1097   {
// 1098     route_f[i] = route_f[i-1];
??route_type_F_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable16_20
        ADDS     R4,R4,R3, LSL #+1
        LDRH     R4,[R4, #-2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_20
        STRH     R4,[R5, R3, LSL #+1]
// 1099   }
        SUBS     R3,R3,#+1
??route_type_F_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BCS.N    ??route_type_F_1
// 1100   //Ç°3
// 1101   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_2
// 1102   {
// 1103     route_ave_f += route_f[i]; 
??route_type_F_3:
        LDR.W    R4,??DataTable16_21
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_20
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable16_21
        STRH     R4,[R5, #+0]
// 1104   }
        ADDS     R3,R3,#+1
??route_type_F_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_F_3
// 1105   route_ave_f = route_ave_f/3;
        LDR.W    R3,??DataTable16_21
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable16_21
        STRH     R3,[R4, #+0]
// 1106   
// 1107   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_4
// 1108   {
// 1109     chafang_f[i] = route_f[i]*route_f[i];//changshi
??route_type_F_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable16_20
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_20
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_22
        STRH     R4,[R5, R3, LSL #+1]
// 1110   }
        ADDS     R3,R3,#+1
??route_type_F_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_F_5
// 1111   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_6
// 1112   {
// 1113     fangcha_f += chafang_f[i]; 
??route_type_F_7:
        LDR.W    R4,??DataTable16_18
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_22
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable16_18
        STRH     R4,[R5, #+0]
// 1114   }
        ADDS     R3,R3,#+1
??route_type_F_6:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_F_7
// 1115   fangcha_qian_f = fangcha_f/3;
        LDR.W    R3,??DataTable16_18
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable16_19
        STRH     R3,[R4, #+0]
// 1116   
// 1117   
// 1118   //Çå0
// 1119   route_ave_f=0;
        LDR.W    R3,??DataTable16_21
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1120   for(i=0;i<5;i++)
        MOVS     R3,#+0
        B.N      ??route_type_F_8
// 1121   {
// 1122     chafang_f[i] = 0;
??route_type_F_9:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable16_22
        MOVS     R5,#+0
        STRH     R5,[R4, R3, LSL #+1]
// 1123   }
        ADDS     R3,R3,#+1
??route_type_F_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+5
        BCC.N    ??route_type_F_9
// 1124   fangcha_f=0;
        LDR.W    R3,??DataTable16_18
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1125   
// 1126   //ºóÐø
// 1127   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_F_10
// 1128   {
// 1129     route_ave_f += route_f[i]; 
??route_type_F_11:
        LDR.W    R4,??DataTable16_21
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_20
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable16_21
        STRH     R4,[R5, #+0]
// 1130   }
        ADDS     R3,R3,#+1
??route_type_F_10:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_F_11
// 1131   route_ave_f = route_ave_f/label_count;
        LDR.W    R3,??DataTable16_21
        LDRSH    R3,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SDIV     R3,R3,R1
        LDR.W    R4,??DataTable16_21
        STRH     R3,[R4, #+0]
// 1132   
// 1133   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_F_12
// 1134   {
// 1135     chafang_f[i] = route_f[i]*route_f[i];
??route_type_F_13:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable16_20
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_20
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable16_22
        STRH     R4,[R5, R3, LSL #+1]
// 1136   }
        ADDS     R3,R3,#+1
??route_type_F_12:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_F_13
// 1137   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_F_14
// 1138   {
// 1139     fangcha_f += chafang_f[i]; 
??route_type_F_15:
        LDR.W    R0,??DataTable16_18
        LDRH     R0,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable16_22
        LDRH     R4,[R4, R3, LSL #+1]
        ADDS     R0,R4,R0
        LDR.W    R4,??DataTable16_18
        STRH     R0,[R4, #+0]
// 1140   }
        ADDS     R3,R3,#+1
??route_type_F_14:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_F_15
// 1141   fangcha_hou_f = fangcha_f/fch_av_count;
        LDR.W    R0,??DataTable16_18
        LDRSH    R0,[R0, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SDIV     R0,R0,R2
        LDR.W    R1,??DataTable18_1
        STRH     R0,[R1, #+0]
// 1142 }
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     ga_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     gl_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     gr_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     mq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     LHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     Ldiaotou_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     RHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     front_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     front_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     LR_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     Lr_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     lR_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     lr_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     mq_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     front_r_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     front_width
// 1143 //----------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1144 int16  stop_flag=0;
stop_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1145 int16  stop_count=0;
stop_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1146 int16  black_l=0,black_r=0,zheng=0;
black_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
black_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
zheng:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1147 int16  delay_count=0;
delay_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1148 int16  zhong=0;
zhong:
        DS8 2
// 1149 extern uint8  qpx_en;

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1150 void get_fu()
// 1151 {
get_fu:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
// 1152   int16 i,j,ii=0,jj=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
// 1153   int16 jiang_l[10]={0},jiang_r[10]={0};
        ADD      R0,SP,#+20
        MOVS     R1,#+20
        BL       __aeabi_memclr4
        ADD      R0,SP,#+0
        MOVS     R1,#+20
        BL       __aeabi_memclr4
// 1154   
// 1155   for(i=126;i>=2;i--)
        MOVS     R0,#+126
        B.N      ??get_fu_0
// 1156   {
// 1157     if(Pixel_Z[i+1]==1&&Pixel_Z[i]==1&&Pixel_Z[i-1]==0&&Pixel_Z[i-2]==0)
??get_fu_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+1
        BNE.N    ??get_fu_2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_fu_2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+0
        BNE.N    ??get_fu_2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+0
        BNE.N    ??get_fu_2
// 1158     {
// 1159       jiang_l[ii++]=i;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADD      R1,SP,#+20
        STRH     R0,[R1, R4, LSL #+1]
        ADDS     R4,R4,#+1
// 1160     }
// 1161   }
??get_fu_2:
        SUBS     R0,R0,#+1
??get_fu_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BGE.N    ??get_fu_1
// 1162   for(j=1;j<=125;j++)
        MOVS     R0,#+1
        B.N      ??get_fu_3
// 1163   {
// 1164     if(Pixel_Z[j-1]==1&&Pixel_Z[j]==1&&Pixel_Z[j+1]==0&&Pixel_Z[j+2]==0)
??get_fu_4:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+1
        BNE.N    ??get_fu_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??get_fu_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+0
        BNE.N    ??get_fu_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable18_2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+0
        BNE.N    ??get_fu_5
// 1165     {
// 1166       jiang_r[jj++]=j;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ADD      R1,SP,#+0
        STRH     R0,[R1, R5, LSL #+1]
        ADDS     R5,R5,#+1
// 1167     }
// 1168   }
??get_fu_5:
        ADDS     R0,R0,#+1
??get_fu_3:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+126
        BLT.N    ??get_fu_4
// 1169   
// 1170   if(ii==3&&jj==3)
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+3
        BNE.N    ??get_fu_6
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BNE.N    ??get_fu_6
// 1171   {
// 1172     black_l=jiang_l[1]-jiang_r[0];
        LDRH     R0,[SP, #+22]
        LDRH     R1,[SP, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18_3
        STRH     R0,[R1, #+0]
// 1173     black_r=jiang_l[0]-jiang_r[1];
        LDRH     R0,[SP, #+20]
        LDRH     R1,[SP, #+2]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18_4
        STRH     R0,[R1, #+0]
// 1174     
// 1175     zhong=jiang_r[1]-jiang_l[1];
        LDRH     R0,[SP, #+2]
        LDRH     R1,[SP, #+22]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18_5
        STRH     R0,[R1, #+0]
// 1176     
// 1177     zheng=(jiang_l[2]+jiang_r[2])/2;
        LDRSH    R0,[SP, #+24]
        LDRSH    R1,[SP, #+4]
        SXTAH    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable18_6
        STRH     R0,[R1, #+0]
// 1178     
// 1179     if(Abs(zong_reference-zheng)<10&&(zhong>=zong_width*9/40-5&&zhong<=zong_width*9/40+5))
        LDR.W    R0,??DataTable18_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable18_6
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       Abs
        CMP      R0,#+10
        BGE.N    ??get_fu_6
        LDR.W    R0,??DataTable18_8
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+9
        MULS     R0,R1,R0
        MOVS     R1,#+40
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+5
        LDR.W    R1,??DataTable18_5
        LDRSH    R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??get_fu_6
        LDR.W    R0,??DataTable18_8
        LDRSH    R0,[R0, #+0]
        MOVS     R1,#+9
        MULS     R0,R1,R0
        MOVS     R1,#+40
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable18_5
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??get_fu_6
// 1180       stop_flag=1;
        LDR.W    R0,??DataTable19
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
// 1181   }
// 1182  
// 1183   if(stop_flag==1) 
??get_fu_6:
        LDR.W    R0,??DataTable19
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_fu_7
// 1184   {
// 1185     if(delay_count++>15)
        LDR.W    R0,??DataTable19_1
        LDRSH    R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable19_1
        STRH     R1,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+16
        BLT.N    ??get_fu_7
// 1186     {
// 1187       delay_count=0;
        LDR.W    R0,??DataTable19_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1188       stop_flag=0;
        LDR.W    R0,??DataTable19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1189       ++stop_count;
        LDR.W    R0,??DataTable19_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable19_2
        STRH     R0,[R1, #+0]
// 1190     }
// 1191   } 
// 1192 }
??get_fu_7:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     front_l_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     front_r_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     front_l_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     cl_f_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     Lpre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     Lpre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     Lpre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     Lpre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     Rpre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     Rpre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     Rpre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     Rpre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     IntegrationTime_Front

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     IT_ref

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     front_l_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     front_r_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     rzop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     Rdiaotou_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     Rendiao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     rensha_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     rzguo_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     Ldiaotou_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     Lendiao
// 1193 
// 1194 //--------------------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1195 void get_zong()
// 1196 {
get_zong:
        PUSH     {R4}
// 1197     int16 i,j;
// 1198     int16 zong_l_flag,zong_r_flag;
// 1199     uint8 hold_flag=0;
        MOVS     R3,#+0
// 1200     
// 1201     hold_flag=0;
        MOVS     R1,#+0
        MOVS     R3,R1
// 1202     
// 1203     for(i=126;i>=4;i--)
        MOVS     R1,#+126
        B.N      ??get_zong_0
// 1204     {
// 1205       if((Pixel_Z[i]==1)&&(Pixel_Z[i-1]==0)&&(Pixel_Z[i-2]==0)&&(Pixel_Z[i-3]==0))
// 1206       {
// 1207         zong_l = i-2;
// 1208         zong_l_flag = 1;
// 1209         break;
// 1210       }
// 1211       zong_l_flag = 0;
??get_zong_1:
        MOVS     R2,#+0
        SUBS     R1,R1,#+1
??get_zong_0:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+4
        BLT.N    ??get_zong_2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable18_2
        LDRB     R2,[R1, R2]
        CMP      R2,#+1
        BNE.N    ??get_zong_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable18_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-1]
        CMP      R2,#+0
        BNE.N    ??get_zong_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable18_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-2]
        CMP      R2,#+0
        BNE.N    ??get_zong_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable18_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-3]
        CMP      R2,#+0
        BNE.N    ??get_zong_1
        SUBS     R2,R1,#+2
        LDR.W    R3,??DataTable19_3
        STRH     R2,[R3, #+0]
        MOVS     R2,#+1
// 1212     }
// 1213     for(j=1;j<123;j++)
??get_zong_2:
        MOVS     R3,#+1
        B.N      ??get_zong_3
// 1214     {
// 1215        if((Pixel_Z[j]==1)&&(Pixel_Z[j+1]==0)&&(Pixel_Z[j+2]==0)&&(Pixel_Z[j+3]==0))
// 1216       {
// 1217         zong_r = j+2;
// 1218         zong_r_flag = 1;
// 1219         break;
// 1220       }
// 1221       zong_r_flag = 0;
??get_zong_4:
        MOVS     R0,#+0
        ADDS     R3,R3,#+1
??get_zong_3:
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+123
        BGE.N    ??get_zong_5
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable18_2
        LDRB     R0,[R3, R0]
        CMP      R0,#+1
        BNE.N    ??get_zong_4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable18_2
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??get_zong_4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable18_2
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??get_zong_4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDR.W    R0,??DataTable18_2
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??get_zong_4
        ADDS     R0,R3,#+2
        LDR.W    R4,??DataTable19_4
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
// 1222     }
// 1223     //A.²Éµ½×óÓÒÊý¾Ý
// 1224     if((zong_l_flag == 1)&&(zong_r_flag == 1))
??get_zong_5:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+1
        BNE.N    ??get_zong_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.N    ??get_zong_6
// 1225     {  
// 1226       //a.µ±¿´µ½µÄÈ«²¿ÊÇ±³¾°Ê±,ÓÉÓÚ±³¾°»Ò¶ÈÖµ²»¾ùÔÈ,¶þÖµ»¯ºóÒÀÈ»ÄÜÎó²Éµ½ºÚ°×Ìø±ä 
// 1227       if((high_aver_f-low_aver_f)>45)
        LDR.W    R0,??DataTable19_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R2,??DataTable19_6
        LDRSH    R2,[R2, #+0]
        SUBS     R0,R0,R2
        CMP      R0,#+46
        BLT.N    ??get_zong_7
// 1228       {
// 1229         //a.1.×óÖµ´óÓÚÓÒÖµ,Á½±ßÊý¾Ý¶¼¶ªÊ§     
// 1230         if(zong_l>zong_r)            
        LDR.W    R0,??DataTable19_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R2,??DataTable19_3
        LDRSH    R2,[R2, #+0]
        CMP      R0,R2
        BGE.W    ??get_zong_8
// 1231         {  
// 1232           //ÏòÓÒ¹ÕÍäÊ±¿´µ½×ó±ßÈüµÀ,ÓÒ±ßÑØ·¢Éú½Ï´óÎ»ÒÆ,ÓÒÖµ¼ÙÏó,×óÖµÕæÊµ
// 1233           if(zong_r_last-zong_r>30)
        LDR.W    R0,??DataTable19_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R2,??DataTable19_4
        LDRSH    R2,[R2, #+0]
        SUBS     R0,R0,R2
        CMP      R0,#+31
        BLT.N    ??get_zong_9
// 1234           {
// 1235             zong_l=i-2;
        SUBS     R0,R1,#+2
        LDR.W    R1,??DataTable19_3
        STRH     R0,[R1, #+0]
// 1236             zong_r=zong_l+zong_width;
        LDR.W    R0,??DataTable19_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_8
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable19_4
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1237           }
// 1238           //Ïò×ó¹ÕÍäÊ±¿´µ½ÓÒ±ßÈüµÀ,×ó±ßÑØ·¢Éú½Ï´óÎ»ÒÆ,×óÖµ¼ÙÏó,ÓÒÖµÕæÊµ
// 1239           else if(zong_l-zong_l_last>30)
??get_zong_9:
        LDR.W    R0,??DataTable19_3
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable19_8
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+31
        BLT.W    ??get_zong_8
// 1240           {
// 1241             zong_r=j+2;
        ADDS     R0,R3,#+2
        LDR.W    R1,??DataTable19_4
        STRH     R0,[R1, #+0]
// 1242             zong_l=zong_r-zong_width;
        LDR.W    R0,??DataTable19_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_8
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_3
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1243           }         
// 1244         }       
// 1245         //a.2.ÓÒÖµ´óÓÚ×óÖµ,Õý³£
// 1246         else
// 1247         {}
// 1248       }
// 1249       //b.
// 1250       else
// 1251       {
// 1252         zong_l=zong_l_last;
??get_zong_7:
        LDR.W    R0,??DataTable19_3
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1253         zong_r=zong_r_last;
        LDR.W    R0,??DataTable19_4
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1254         //hold_flag=1;
// 1255       }   
// 1256     }
// 1257     //B.ÓÒÊý¾Ý¶ªÊ§
// 1258     else if((zong_l_flag == 1)&&(zong_r_flag == 0))
??get_zong_6:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+1
        BNE.N    ??get_zong_10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_zong_10
// 1259     {
// 1260       if((high_aver_f-low_aver_f)>45)
        LDR.W    R0,??DataTable19_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable19_6
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+46
        BLT.N    ??get_zong_11
// 1261       {
// 1262         if(zong_l>zong_r_last)
        LDR.W    R0,??DataTable19_7
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable19_3
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_zong_12
// 1263         {
// 1264           zong_l=zong_l_last;
        LDR.W    R0,??DataTable19_3
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1265           zong_r=zong_r_last;
        LDR.W    R0,??DataTable19_4
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1266           //hold_flag=1;
// 1267         }
// 1268         else 
// 1269         {
// 1270           zong_r =zong_l+zong_width; 
??get_zong_12:
        LDR.W    R0,??DataTable19_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_8
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable19_4
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1271         }
// 1272         /*
// 1273         else
// 1274         {
// 1275           //ÔÚ¡°Ê®×ÖÍä¡±´¦´óÆ«²î
// 1276           if(front_l<127-front_width)
// 1277           {
// 1278             front_l=front_l_last+1;
// 1279             front_r=front_r_last+1;
// 1280           } 
// 1281           else 
// 1282           {
// 1283             front_r =front_l+front_width; 
// 1284           }
// 1285         }
// 1286         */
// 1287       } 
// 1288       else
// 1289       {
// 1290         zong_l=zong_l_last;
??get_zong_11:
        LDR.W    R0,??DataTable19_3
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1291         zong_r=zong_r_last;
        LDR.W    R0,??DataTable19_4
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1292         //hold_flag=1;
// 1293       }
// 1294     }
// 1295     //C.×óÊý¾Ý¶ª
// 1296     else if((zong_l_flag == 0)&&(zong_r_flag == 1))
??get_zong_10:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??get_zong_13
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.N    ??get_zong_13
// 1297     {
// 1298       if((high_aver_f-low_aver_f)>45)
        LDR.W    R0,??DataTable19_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable19_6
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+46
        BLT.N    ??get_zong_14
// 1299       {
// 1300         if(zong_r<zong_l_last)
        LDR.W    R0,??DataTable19_4
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable19_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??get_zong_15
// 1301         {
// 1302           zong_l=zong_l_last;
        LDR.W    R0,??DataTable19_3
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1303           zong_r=zong_r_last;
        LDR.W    R0,??DataTable19_4
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1304           //hold_flag=1;
// 1305         }
// 1306         else
// 1307         {
// 1308            zong_l=front_r-zong_width;
??get_zong_15:
        LDR.W    R0,??DataTable19_9
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_8
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_3
        STRH     R0,[R1, #+0]
        B.N      ??get_zong_8
// 1309         }
// 1310         /*
// 1311         else
// 1312         {  //ÔÚ¡°Ê®×ÖÍä¡±´¦´óÆ«²î
// 1313            if(front_r>front_width)//Â·¾¶£¬Ã¿´ÎÈëÍäµÄÐ§¹û
// 1314            {
// 1315              front_l=front_l_last-1;
// 1316              front_r=front_r_last-1;
// 1317            } 
// 1318            else
// 1319            {
// 1320              front_l=front_r-front_width;
// 1321            }
// 1322         }
// 1323         */
// 1324       }
// 1325       else
// 1326       {
// 1327         zong_l=zong_l_last;
??get_zong_14:
        LDR.W    R0,??DataTable19_3
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1328         zong_r=zong_r_last;
        LDR.W    R0,??DataTable19_4
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1329         //hold_flag=1;
// 1330       }
// 1331     }
// 1332     //D.Á½±ßÊý¾Ý¶¼¶ªÊ§
// 1333     else if((zong_l_flag == 0)&&(zong_r_flag == 0))
??get_zong_13:
        ORRS     R0,R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_zong_8
// 1334     {
// 1335       if(zong_l_last>63||zong_r_last<64)
        LDR.W    R0,??DataTable19_8
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+64
        BGE.N    ??get_zong_16
        LDR.W    R0,??DataTable19_7
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+64
        BGE.N    ??get_zong_17
// 1336       {
// 1337         zong_l=zong_l_last;
??get_zong_16:
        LDR.W    R0,??DataTable19_3
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1338         zong_r=zong_r_last;
        LDR.W    R0,??DataTable19_4
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??get_zong_8
// 1339         //hold_flag=1;
// 1340       }
// 1341       else
// 1342       {
// 1343         zong_l=0;
??get_zong_17:
        LDR.W    R0,??DataTable19_3
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1344         zong_r=127;
        LDR.W    R0,??DataTable19_4
        MOVS     R1,#+127
        STRH     R1,[R0, #+0]
// 1345       }
// 1346     }
// 1347     cl_z = (zong_l+zong_r)/2;
??get_zong_8:
        LDR.W    R0,??DataTable19_3
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable19_4
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable19_10
        STRH     R0,[R1, #+0]
// 1348     zong_OFFSET = cl_z-zong_reference;
        LDR.W    R0,??DataTable19_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable18_7
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_11
        STRH     R0,[R1, #+0]
// 1349     
// 1350     //if(hold_flag==1) zong_OFFSET=zong_OFFSET*k_out;
// 1351       
// 1352     
// 1353     zong_l_last=zong_l;
        LDR.W    R0,??DataTable19_8
        LDR.W    R1,??DataTable19_3
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1354     zong_r_last=zong_r;
        LDR.W    R0,??DataTable19_7
        LDR.W    R1,??DataTable19_4
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1355     zong_l_pre=zong_l_last;
        LDR.W    R0,??DataTable19_12
        LDR.W    R1,??DataTable19_8
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1356     zong_r_pre=zong_r_last;
        LDR.W    R0,??DataTable19_13
        LDR.W    R1,??DataTable19_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1357     
// 1358     zong_OFFSET_pre10 = zong_OFFSET_pre9;
        LDR.W    R0,??DataTable19_14
        LDR.W    R1,??DataTable19_15
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1359     zong_OFFSET_pre9 = zong_OFFSET_pre8;
        LDR.W    R0,??DataTable19_15
        LDR.W    R1,??DataTable19_16
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1360     zong_OFFSET_pre8 = zong_OFFSET_pre7;
        LDR.W    R0,??DataTable19_16
        LDR.W    R1,??DataTable19_17
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1361     zong_OFFSET_pre7 = zong_OFFSET_pre6;
        LDR.W    R0,??DataTable19_17
        LDR.W    R1,??DataTable19_18
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1362     zong_OFFSET_pre6 = zong_OFFSET_pre5;
        LDR.W    R0,??DataTable19_18
        LDR.W    R1,??DataTable19_19
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1363     zong_OFFSET_pre5 = zong_OFFSET_pre4;
        LDR.W    R0,??DataTable19_19
        LDR.W    R1,??DataTable19_20
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1364     zong_OFFSET_pre4 = zong_OFFSET_pre3;
        LDR.W    R0,??DataTable19_20
        LDR.W    R1,??DataTable19_21
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1365     zong_OFFSET_pre3 = zong_OFFSET_pre2;
        LDR.W    R0,??DataTable19_21
        LDR.W    R1,??DataTable19_22
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1366     zong_OFFSET_pre2 = zong_OFFSET_pre1;
        LDR.W    R0,??DataTable19_22
        LDR.W    R1,??DataTable19_23
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1367     zong_OFFSET_pre1 = zong_OFFSET;
        LDR.W    R0,??DataTable19_23
        LDR.W    R1,??DataTable19_11
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1368     
// 1369     //d_err1 = front_OFFSET - front_OFFSET_pre1;ºãÎª0
// 1370     z_err1 = zong_OFFSET_pre1 - zong_OFFSET_pre2;
        LDR.W    R0,??DataTable19_23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_22
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_24
        STRH     R0,[R1, #+0]
// 1371     z_err2 = zong_OFFSET_pre2 - zong_OFFSET_pre3;
        LDR.W    R0,??DataTable19_22
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_21
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_25
        STRH     R0,[R1, #+0]
// 1372     z_err3 = zong_OFFSET_pre3 - zong_OFFSET_pre4;
        LDR.W    R0,??DataTable19_21
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_20
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_26
        STRH     R0,[R1, #+0]
// 1373     z_err4 = zong_OFFSET_pre4 - zong_OFFSET_pre5;
        LDR.W    R0,??DataTable19_20
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_19
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_27
        STRH     R0,[R1, #+0]
// 1374     z_err5 = zong_OFFSET_pre5 - zong_OFFSET_pre6;
        LDR.W    R0,??DataTable19_19
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_18
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_28
        STRH     R0,[R1, #+0]
// 1375     z_err6 = zong_OFFSET_pre6 - zong_OFFSET_pre7;
        LDR.W    R0,??DataTable19_18
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_17
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_29
        STRH     R0,[R1, #+0]
// 1376     z_err7 = zong_OFFSET_pre7 - zong_OFFSET_pre8;
        LDR.W    R0,??DataTable19_17
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_16
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_30
        STRH     R0,[R1, #+0]
// 1377     z_err8 = zong_OFFSET_pre8 - zong_OFFSET_pre9;
        LDR.W    R0,??DataTable19_16
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_31
        STRH     R0,[R1, #+0]
// 1378     z_err9 = zong_OFFSET_pre9 - zong_OFFSET_pre10;  
        LDR.W    R0,??DataTable19_15
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable19_14
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable19_32
        STRH     R0,[R1, #+0]
// 1379 }
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
        DC32     ga_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     gl_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     gr_fg_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     front_l_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     front_l_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     front_r_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     front_r_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     front_l_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     front_r_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     front_l_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     front_r_pre1
// 1380 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1381 int16 route_z[100]={0};
route_z:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1382 int16 chafang_z[100]={0};
chafang_z:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1383 int16 route_ave_z=0;
route_ave_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1384 int16 fangcha_z=0,fangcha_qian_z=0,fangcha_hou_z=0;
fangcha_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_qian_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
fangcha_hou_z:
        DS8 2
// 1385 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1386 void route_type_Z()
// 1387 {
route_type_Z:
        PUSH     {R4,R5}
// 1388   char i;
// 1389   char fch_first=3;//ÈüµÀ¹ý¶É
        MOVS     R0,#+3
// 1390   char label_count=6;
        MOVS     R1,#+6
// 1391   char fch_av_count=0;
        MOVS     R2,#+0
// 1392   
// 1393   fangcha_z=0;
        LDR.W    R3,??DataTable19_33
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1394   fangcha_qian_z=0;
        LDR.W    R3,??DataTable19_34
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1395   fangcha_hou_z=0;
        LDR.W    R3,??DataTable19_35
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1396   
// 1397   fch_av_count = label_count - fch_first+1;
        SUBS     R3,R1,R0
        ADDS     R3,R3,#+1
        MOVS     R2,R3
// 1398   //Ë¢ÐÂ
// 1399   route_z[0]=zong_OFFSET;
        LDR.W    R3,??DataTable19_36
        LDR.W    R4,??DataTable19_11
        LDRH     R4,[R4, #+0]
        STRH     R4,[R3, #+0]
// 1400   for(i=100;i>0;i--)
        MOVS     R3,#+100
        B.N      ??route_type_Z_0
// 1401   {
// 1402     route_z[i] = route_z[i-1];
??route_type_Z_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_36
        ADDS     R4,R4,R3, LSL #+1
        LDRH     R4,[R4, #-2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_36
        STRH     R4,[R5, R3, LSL #+1]
// 1403   }
        SUBS     R3,R3,#+1
??route_type_Z_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BCS.N    ??route_type_Z_1
// 1404   //Ç°3
// 1405   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_2
// 1406   {
// 1407     route_ave_z += route_z[i]; 
??route_type_Z_3:
        LDR.W    R4,??DataTable19_37
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_36
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable19_37
        STRH     R4,[R5, #+0]
// 1408   }
        ADDS     R3,R3,#+1
??route_type_Z_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_Z_3
// 1409   route_ave_z = route_ave_z/3;
        LDR.W    R3,??DataTable19_37
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable19_37
        STRH     R3,[R4, #+0]
// 1410   
// 1411   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_4
// 1412   {
// 1413     chafang_z[i] = route_z[i]*route_z[i];
??route_type_Z_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_36
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_36
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_38
        STRH     R4,[R5, R3, LSL #+1]
// 1414   }
        ADDS     R3,R3,#+1
??route_type_Z_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_Z_5
// 1415   for(i=0;i<3;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_6
// 1416   {
// 1417     fangcha_z += chafang_z[i]; 
??route_type_Z_7:
        LDR.W    R4,??DataTable19_33
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_38
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable19_33
        STRH     R4,[R5, #+0]
// 1418   }
        ADDS     R3,R3,#+1
??route_type_Z_6:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BCC.N    ??route_type_Z_7
// 1419   fangcha_qian_z = fangcha_z/3;
        LDR.W    R3,??DataTable19_33
        LDRSH    R3,[R3, #+0]
        MOVS     R4,#+3
        SDIV     R3,R3,R4
        LDR.W    R4,??DataTable19_34
        STRH     R3,[R4, #+0]
// 1420   
// 1421   
// 1422   //Çå0
// 1423   route_ave_z=0;
        LDR.W    R3,??DataTable19_37
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1424   for(i=0;i<5;i++)
        MOVS     R3,#+0
        B.N      ??route_type_Z_8
// 1425   {
// 1426     chafang_z[i] = 0;
??route_type_Z_9:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_38
        MOVS     R5,#+0
        STRH     R5,[R4, R3, LSL #+1]
// 1427   }
        ADDS     R3,R3,#+1
??route_type_Z_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+5
        BCC.N    ??route_type_Z_9
// 1428   fangcha_z=0;
        LDR.W    R3,??DataTable19_33
        MOVS     R4,#+0
        STRH     R4,[R3, #+0]
// 1429   
// 1430   //ºóÐø
// 1431   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_Z_10
// 1432   {
// 1433     route_ave_z += route_z[i]; 
??route_type_Z_11:
        LDR.W    R4,??DataTable19_37
        LDRH     R4,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_36
        LDRH     R5,[R5, R3, LSL #+1]
        ADDS     R4,R5,R4
        LDR.W    R5,??DataTable19_37
        STRH     R4,[R5, #+0]
// 1434   }
        ADDS     R3,R3,#+1
??route_type_Z_10:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_Z_11
// 1435   route_ave_z = route_ave_z/label_count;
        LDR.W    R3,??DataTable19_37
        LDRSH    R3,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SDIV     R3,R3,R1
        LDR.W    R4,??DataTable19_37
        STRH     R3,[R4, #+0]
// 1436   
// 1437   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_Z_12
// 1438   {
// 1439     chafang_z[i] = route_z[i]*route_z[i];
??route_type_Z_13:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_36
        LDRH     R4,[R4, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_36
        LDRH     R5,[R5, R3, LSL #+1]
        MULS     R4,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R5,??DataTable19_38
        STRH     R4,[R5, R3, LSL #+1]
// 1440   }
        ADDS     R3,R3,#+1
??route_type_Z_12:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_Z_13
// 1441   for(i=fch_first;i<label_count;i++)
        MOVS     R3,R0
        B.N      ??route_type_Z_14
// 1442   {
// 1443     fangcha_z += chafang_z[i]; 
??route_type_Z_15:
        LDR.W    R0,??DataTable19_33
        LDRH     R0,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.W    R4,??DataTable19_38
        LDRH     R4,[R4, R3, LSL #+1]
        ADDS     R0,R4,R0
        LDR.W    R4,??DataTable19_33
        STRH     R0,[R4, #+0]
// 1444   }
        ADDS     R3,R3,#+1
??route_type_Z_14:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCC.N    ??route_type_Z_15
// 1445   fangcha_hou_z = fangcha_z/fch_av_count;
        LDR.W    R0,??DataTable19_33
        LDRSH    R0,[R0, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SDIV     R0,R0,R2
        LDR.W    R1,??DataTable19_35
        STRH     R0,[R1, #+0]
// 1446 }
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     front_OFFSET_pre10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     front_OFFSET_pre9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     front_OFFSET_pre8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     front_OFFSET_pre7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     front_OFFSET_pre6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     front_OFFSET_pre5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     front_OFFSET_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     front_OFFSET_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     front_OFFSET_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_9:
        DC32     front_OFFSET_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_10:
        DC32     d_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_11:
        DC32     d_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_12:
        DC32     d_err3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_13:
        DC32     d_err4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_14:
        DC32     d_err5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_15:
        DC32     d_err6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_16:
        DC32     d_err7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_17:
        DC32     d_err8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_18:
        DC32     fangcha_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_19:
        DC32     fangcha_qian_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_20:
        DC32     route_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_21:
        DC32     route_ave_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_22:
        DC32     chafang_f
// 1447 
// 1448 
// 1449 //---------------------------------------¶æ»ú¿ØÖÆ------------------------------------------//
// 1450                

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1451          int32      pulse_count=0,pulse_count_pre=0;
pulse_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pulse_count_pre:
        DS8 4
// 1452 
// 1453 #define  bolang     (fangcha_qian_f>100&&fangcha_qian_f<250)
// 1454 extern   float      Kp,Kp_hold;
// 1455 extern   float      Kd,Kd_hold;
// 1456 extern   float      Ki,Ki_hold;
// 1457 extern   float      Kp_ZW,Kp_WW,Kp_WZ,Kp_ZZ,Kp_BL;
// 1458 extern   float      Kd_ZW,Kd_WW,Kd_WZ,Kd_ZZ,Kd_BL;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// 1459          float      k=0.02,t=0.0,chu=6.0;
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
// 1460          double     delta_p=0.0;
delta_p:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
// 1461          double     I_sumerr=0.0;
I_sumerr:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1462          int16      ZHONG=4440;
ZHONG:
        DATA
        DC16 4440
// 1463 //old1-×ó³ÔÁ¦-4455;//1-4500;//4-×óÊ®×Ö¼«²î-4550;//5-4525goodÒÑ»µ//6-4570-×óÓÒ¶¼²»¹»//7-4440good //8-4640ÓÒ²î//9-4510 not ok//10-4530-ok    

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1464          int16      xianfu=1300;
xianfu:
        DATA
        DC16 1300
// 1465          

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1466          uint8      shache_fg=0;
shache_fg:
        DS8 1
// 1467         
// 1468 extern   uint8      d_p;
// 1469 /*
// 1470 1- ×ó×ª±ÈÓÒ×ª¼±        
// 1471    µ÷Ç°ÂÖÍâÇã
// 1472 */
// 1473 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1474 void SetServoVoltage()
// 1475 {         
SetServoVoltage:
        PUSH     {R4,LR}
// 1476   front_OFFSET_KZ = front_OFFSET;//PÏî£¡£¡£¡²»ÄÜÃ³È»µØ¼ÓÆ«²î
        LDR.W    R0,??DataTable19_39
        LDR.W    R1,??DataTable19_40
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1477   
// 1478   if(d_p==1)
        LDR.W    R0,??DataTable19_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??SetServoVoltage_0
// 1479   {
// 1480     if(front_OFFSET_KZ>100)
        LDR.W    R0,??DataTable19_39
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+101
        BLT.N    ??SetServoVoltage_1
// 1481     front_OFFSET_KZ=100;
        LDR.W    R0,??DataTable19_39
        MOVS     R1,#+100
        STRH     R1,[R0, #+0]
// 1482     if(front_OFFSET_KZ<-100)
??SetServoVoltage_1:
        LDR.W    R0,??DataTable19_39
        LDRSH    R0,[R0, #+0]
        MVNS     R1,#+99
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_2
// 1483       front_OFFSET_KZ=-100;
        LDR.W    R0,??DataTable19_39
        MVNS     R1,#+99
        STRH     R1,[R0, #+0]
// 1484     
// 1485     t=k*front_OFFSET_KZ; 
??SetServoVoltage_2:
        LDR.W    R0,??DataTable19_39
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable19_42
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        STR      R0,[R1, #+0]
// 1486     delta_p=t-1/6*t*t*t+3*t*t*t*t*t;
        LDR.W    R0,??DataTable19_43
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable19_43
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable19_43
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable19_44  ;; 0x40400000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable19_43
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable19_45
        STRD     R0,R1,[R2, #+0]
// 1487     delta_p=delta_p/chu;
        LDR.W    R0,??DataTable19_46
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable19_45
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_ddiv
        LDR.W    R2,??DataTable19_45
        STRD     R0,R1,[R2, #+0]
// 1488     
// 1489     if(delta_p>20)
        LDR.W    R2,??DataTable19_45
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable20  ;; 0x40340000
        BL       __aeabi_cdrcmple
        BHI.N    ??SetServoVoltage_3
// 1490       delta_p=20;
        LDR.W    R0,??DataTable19_45
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20  ;; 0x40340000
        STRD     R2,R3,[R0, #+0]
// 1491     if(delta_p<-20)
??SetServoVoltage_3:
        LDR.W    R2,??DataTable19_45
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_1  ;; 0xc0340000
        BL       __aeabi_cdcmple
        BCS.N    ??SetServoVoltage_4
// 1492       delta_p=-20;
        LDR.W    R0,??DataTable19_45
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_1  ;; 0xc0340000
        STRD     R2,R3,[R0, #+0]
// 1493     
// 1494     if(delta_p<0) delta_p=-delta_p;
??SetServoVoltage_4:
        LDR.W    R2,??DataTable19_45
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??SetServoVoltage_5
        LDR.W    R0,??DataTable19_45
        LDR.W    R1,??DataTable19_45
        LDRD     R2,R3,[R1, #+0]
        EORS     R3,R3,#0x80000000
        STRD     R2,R3,[R0, #+0]
// 1495     
// 1496     Kp=Kp_hold+delta_p;
??SetServoVoltage_5:
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R4,??DataTable19_45
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable21_1
        STR      R0,[R1, #+0]
// 1497   }
// 1498 
// 1499   if(stop_flag==1)  
??SetServoVoltage_0:
        LDR.N    R0,??DataTable19
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SetServoVoltage_6
// 1500   {
// 1501     Kp=13;
        LDR.W    R0,??DataTable21_1
        LDR.W    R1,??DataTable21_2  ;; 0x41500000
        STR      R1,[R0, #+0]
// 1502     Kd=0;
        LDR.W    R0,??DataTable22
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1503   }
// 1504   
// 1505   D_err=front_OFFSET_KZ-front_OFFSET_KZ_pre;//DÏî
??SetServoVoltage_6:
        LDR.N    R0,??DataTable19_39
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable22_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable22_2
        STRH     R0,[R1, #+0]
// 1506   servo_duty=(int16)(ZHONG+Kp*front_OFFSET_KZ+Kd*D_err);
        LDR.W    R0,??DataTable23
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.N    R0,??DataTable19_39
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable21_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable22_2
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable26
        STRH     R0,[R1, #+0]
// 1507   front_OFFSET_KZ_pre=front_OFFSET_KZ;
        LDR.W    R0,??DataTable22_1
        LDR.N    R1,??DataTable19_39
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1508   
// 1509   //servo_duty=ZHONG;//+xianfu;
// 1510   //¶æ»úÏÞ·ù±£»¤
// 1511   if(LHOLDdiao_flag==1||RHOLDdiao_flag==1)
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??SetServoVoltage_7
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SetServoVoltage_8
// 1512   {
// 1513     if(servo_duty>ZHONG+xianfu+100)
??SetServoVoltage_7:
        LDR.W    R0,??DataTable23
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable24_2
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+100
        LDR.W    R1,??DataTable26
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_9
// 1514       servo_duty=ZHONG+xianfu+100;
        LDR.W    R0,??DataTable23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable24_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+100
        LDR.W    R1,??DataTable26
        STRH     R0,[R1, #+0]
// 1515     if(servo_duty<ZHONG-xianfu-100)
??SetServoVoltage_9:
        LDR.W    R0,??DataTable26
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable24_2
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        SUBS     R1,R1,#+100
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_10
// 1516       servo_duty=ZHONG-xianfu-100;
        LDR.W    R0,??DataTable23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable24_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+100
        LDR.W    R1,??DataTable26
        STRH     R0,[R1, #+0]
        B.N      ??SetServoVoltage_10
// 1517   }
// 1518   else
// 1519   {
// 1520     if(servo_duty>ZHONG+xianfu-130)
??SetServoVoltage_8:
        LDR.W    R0,??DataTable23
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable24_2
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+130
        LDR.W    R1,??DataTable26
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_11
// 1521       servo_duty=ZHONG+xianfu-130;
        LDR.W    R0,??DataTable23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable24_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+130
        LDR.W    R1,??DataTable26
        STRH     R0,[R1, #+0]
// 1522     if(servo_duty<ZHONG-xianfu+130)
??SetServoVoltage_11:
        LDR.W    R0,??DataTable26
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable23
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable24_2
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        ADDS     R1,R1,#+130
        CMP      R0,R1
        BGE.N    ??SetServoVoltage_10
// 1523       servo_duty=ZHONG-xianfu+130;
        LDR.W    R0,??DataTable23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable24_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+130
        LDR.W    R1,??DataTable26
        STRH     R0,[R1, #+0]
// 1524   }
// 1525   
// 1526   //¶æ»úÊä³ö
// 1527   FTM_PWM_ChangeDuty(0,2,servo_duty);//servo_duty±äÐ¡£¬¶æ»úÓÒ×ª£¬Ç°ÂÖ×óÆ«
??SetServoVoltage_10:
        LDR.W    R0,??DataTable26
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_ChangeDuty
// 1528 }
        POP      {R4,PC}          ;; return
// 1529 
// 1530 //-----------------------ËÙ¶È¿ØÖÆ-------------------------------------------------------//

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1531         uint8    qd_count=0;
qd_count:
        DS8 1
// 1532 extern  int16    speed;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1533         int16    speed_pwm=0;
speed_pwm:
        DS8 2
// 1534        
// 1535 extern  int16    shache_time;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1536         int16    bl_shache_time=0;
bl_shache_time:
        DS8 2
// 1537 extern  int16    speed;
// 1538 extern  int16    speed_H;
// 1539 extern  int16    speed_L;
// 1540 extern  int16    speed_B;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1541         int16    speed_F=0;
speed_F:
        DS8 2
// 1542 
// 1543 extern  int16    speed_jian;
// 1544 extern  int16    PMAX; 
// 1545 
// 1546 extern  float    k_B;
// 1547         

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1548         int16    Psha=60;
Psha:
        DATA
        DC16 60

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1549         uint8    shapo=0;
shapo:
        DS8 1
// 1550         

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1551         uint8    SHACHE_TIME_1=4;//5;
SHACHE_TIME_1:
        DATA
        DC8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1552         uint8    SHACHE_TIME_2=5;//5;
SHACHE_TIME_2:
        DATA
        DC8 5

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1553         uint8    SHACHE_TIME_3=6;//6;
SHACHE_TIME_3:
        DATA
        DC8 6

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1554         uint8    SHACHE_TIME_4=7;
SHACHE_TIME_4:
        DATA
        DC8 7

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1555         uint8    SHACHE_TIME_5=15;
SHACHE_TIME_5:
        DATA
        DC8 15

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1556         uint8    BL_SHACHE_TIME=15;
BL_SHACHE_TIME:
        DATA
        DC8 15
// 1557         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1558         uint8    guosha_flag=0;
guosha_flag:
        DS8 1
// 1559         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1560         uint8    ZZ_flag=0;
ZZ_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1561         uint8    WW_flag=0;
WW_flag:
        DS8 1
// 1562         
// 1563 extern  int16    Motor_Lock;
// 1564 extern  int16    Servo_Lock;
// 1565 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1566         uint8    jisha=1;
jisha:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// 1567         float    sp=10.0,sd=10.0;
`sp`:
        DATA
        DC32 41200000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sd:
        DATA
        DC32 41200000H
// 1568         

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1569         int16    qd_ct=0;
qd_ct:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1570         int16    Pset=165;//170
Pset:
        DATA
        DC16 165
// 1571         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1572         uint8    rzsc_fg=0;
rzsc_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1573         uint8    rshover_fg=0;
rshover_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1574         uint8    tisu_fg=0;
tisu_fg:
        DS8 1
// 1575         
// 1576         
// 1577 //----------------------------------²âËÙ---------------------------------------        

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1578 void GetMotorPulse()
// 1579 {
// 1580   uint32 nPulse;
// 1581   nPulse=FTM2_CNT;                     
GetMotorPulse:
        LDR.W    R0,??DataTable26_1  ;; 0x400b8004
        LDR      R0,[R0, #+0]
// 1582   g_nMotorPulse = (int32)nPulse;      
        LDR.W    R1,??DataTable25
        STRH     R0,[R1, #+0]
// 1583   g_nMotorPulseSigma +=g_nMotorPulse;
        LDR.W    R0,??DataTable25_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable25
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable25_1
        STRH     R0,[R1, #+0]
// 1584   FTM2_CNT=0;
        LDR.W    R0,??DataTable26_1  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1585 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     d_err9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     fangcha_hou_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     Pixel_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     black_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     black_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     zhong

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     zheng

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     zong_reference

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     zong_width
// 1586 
// 1587 //----------------------------------É²³µ1---------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1588 void shache1()//Ìõ¼þµÃ·â±Õ
// 1589 { 
// 1590   
// 1591   /*
// 1592   1-²¨ÀËÍä±à³Ì¼ÇÂ¼ZZ_countµÄÊýÄ¿
// 1593   */
// 1594   //Z>>W
// 1595   if(fangcha_qian_f>=fch_dp2)
shache1:
        LDR.W    R0,??DataTable25_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable25_3
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??shache1_0
// 1596   {
// 1597     WW_flag = 1;
        LDR.W    R0,??DataTable25_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1598     if(ZZ_count>10)//8
        LDR.W    R0,??DataTable26_2
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??shache1_1
// 1599     {
// 1600       if(pulse_count>Psha)  shache_fg=1;
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache1_2
        LDR.W    R0,??DataTable26_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??shache1_3
// 1601       else
// 1602       {
// 1603         ZZ_count=0;
??shache1_2:
        LDR.W    R0,??DataTable26_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1604         speed=speed_L;
        LDR.W    R0,??DataTable26_5
        LDR.W    R1,??DataTable26_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache1_3
// 1605       }
// 1606     }
// 1607     else 
// 1608     {
// 1609       ZZ_count=0;
??shache1_1:
        LDR.W    R0,??DataTable26_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1610       speed=speed_L;
        LDR.W    R0,??DataTable26_5
        LDR.W    R1,??DataTable26_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??shache1_3
// 1611     }
// 1612   }
// 1613   //Z>>Z
// 1614   else if(fangcha_qian_f<fch_dp2)
??shache1_0:
        LDR.W    R0,??DataTable25_2
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable25_3
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache1_3
// 1615   {
// 1616     if(WW_flag==1)
        LDR.W    R0,??DataTable25_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache1_4
// 1617     {
// 1618       WW_flag = 0;
        LDR.W    R0,??DataTable25_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1619       ZZ_count = 0;
        LDR.W    R0,??DataTable26_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1620     }
// 1621     ZZ_count++;
??shache1_4:
        LDR.W    R0,??DataTable26_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable26_2
        STRH     R0,[R1, #+0]
// 1622     if(ZZ_count>2) //¼õÉÙÎóÅÐÇé¿öÏÂµÄÎó¼ÓËÙ 
        LDR.W    R0,??DataTable26_2
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+3
        BLT.N    ??shache1_5
// 1623     {
// 1624       speed = speed_H;
        LDR.W    R0,??DataTable26_5
        LDR.W    R1,??DataTable26_7
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1625       if(pulse_count<Pset)  tisu_fg=1;
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable26_8
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??shache1_3
        LDR.W    R0,??DataTable26_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??shache1_3
// 1626     }   
// 1627     else speed = speed_L;
??shache1_5:
        LDR.W    R0,??DataTable26_5
        LDR.W    R1,??DataTable26_6
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
// 1628   }
// 1629   //ÈË×ÖÍä------------------------------------------------------------------
// 1630   if((LHOLDdiao_flag==1||RHOLDdiao_flag==1)&&(rshover_fg==0))
??shache1_3:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??shache1_6
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??shache1_7
??shache1_6:
        LDR.W    R0,??DataTable26_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??shache1_7
// 1631     rzsc_fg=1;
        LDR.W    R0,??DataTable26_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1632 }
??shache1_7:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     delay_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     stop_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     zong_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     zong_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     high_aver_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     low_aver_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     zong_r_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     zong_l_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     cl_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     zong_OFFSET

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_12:
        DC32     zong_l_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_13:
        DC32     zong_r_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_14:
        DC32     zong_OFFSET_pre10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_15:
        DC32     zong_OFFSET_pre9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_16:
        DC32     zong_OFFSET_pre8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_17:
        DC32     zong_OFFSET_pre7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_18:
        DC32     zong_OFFSET_pre6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_19:
        DC32     zong_OFFSET_pre5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_20:
        DC32     zong_OFFSET_pre4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_21:
        DC32     zong_OFFSET_pre3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_22:
        DC32     zong_OFFSET_pre2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_23:
        DC32     zong_OFFSET_pre1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_24:
        DC32     z_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_25:
        DC32     z_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_26:
        DC32     z_err3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_27:
        DC32     z_err4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_28:
        DC32     z_err5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_29:
        DC32     z_err6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_30:
        DC32     z_err7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_31:
        DC32     z_err8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_32:
        DC32     z_err9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_33:
        DC32     fangcha_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_34:
        DC32     fangcha_qian_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_35:
        DC32     fangcha_hou_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_36:
        DC32     route_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_37:
        DC32     route_ave_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_38:
        DC32     chafang_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_39:
        DC32     front_OFFSET_KZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_40:
        DC32     front_OFFSET

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_41:
        DC32     d_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_42:
        DC32     k

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_43:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_44:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_45:
        DC32     delta_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_46:
        DC32     chu
// 1633 //---------------------------------------------------------------
// 1634 extern  uint8   dir_fg;
// 1635 extern  int16   ceshi;
// 1636 extern  uint8   ceshi_fg;

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
// 1637         double  x=0.0,y=0.0;
x:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
y:
        DS8 8
// 1638         

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1639         int16   Pmax=250,Pmin=0;
Pmax:
        DATA
        DC16 250

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Pmin:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1640         uint8   ruwang_fg=0;  
ruwang_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1641         int16   sha_width=0;
sha_width:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1642         int16   maybe_bl_ct=0;
maybe_bl_ct:
        DS8 2
// 1643         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1644         uint8   xiao_fg=0,da_fg=0;
xiao_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
da_fg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1645         int16   xiao_ct=0,da_ct=0;
xiao_ct:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
da_ct:
        DS8 2
// 1646         
// 1647 extern  int16   Prz;
// 1648 extern  float   Kmax,Kmin;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1649         uint8   BLsha=0;
BLsha:
        DS8 1
// 1650         
// 1651 extern  int16   POsha;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 1652         int16   SHCH_CT=0;
SHCH_CT:
        DS8 2
// 1653         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1654         uint8   sh_x=0;
sh_x:
        DS8 1
// 1655         

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1656         uint8   POshaen=0;
POshaen:
        DS8 1
// 1657         

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 1658         uint8   shmode=1;
shmode:
        DATA
        DC8 1
// 1659 
// 1660 /*Ã»ÊµÏÖÔ¤ÆÚµÄÐ§¹ûµÄ³ÌÐò£¬¾ÍÒ»ÌõÒ»ÌõµØµ÷ÊÔ*/        

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1661 void Speed_PID()
// 1662 {
Speed_PID:
        PUSH     {R4-R6,LR}
// 1663     
// 1664     pulse_count=g_nMotorPulseSigma; 
        LDR.W    R0,??DataTable26_3
        LDR.W    R1,??DataTable25_1
        LDRSH    R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 1665     g_nMotorPulseSigma=0;
        LDR.W    R0,??DataTable25_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1666 
// 1667     //É²³µ¿ØÖÆ,²Éµ½·½ÏòÊý¾ÝµÄµÚÒ»¸ö5ms²Å»á½øÈë
// 1668     if(dir_fg==1)
        LDR.W    R0,??DataTable26_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_0
// 1669     {
// 1670       dir_fg=0;
        LDR.W    R0,??DataTable26_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1671       if(front_r-front_l>front_width-10)//·ÀÕÏ°­ÎóÉ²
        LDR.W    R0,??DataTable26_13
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable26_14
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable26_15
        LDRSH    R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Speed_PID_0
// 1672         shache1(); 
        BL       shache1
// 1673     }
// 1674     
// 1675     //²¨ÀËÍäÖ±½Ó´óÍäµÀ£¬É²³µ
// 1676     if(BLsha==1)
??Speed_PID_0:
        LDR.W    R0,??DataTable26_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_1
// 1677     {
// 1678       if(front_l>=6&&front_r<=121)
        LDR.W    R0,??DataTable26_15
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??Speed_PID_2
        LDR.W    R0,??DataTable26_14
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+122
        BGE.N    ??Speed_PID_2
// 1679       {
// 1680         if(fangcha_qian_f<=fch_dp2)
        LDR.W    R0,??DataTable25_3
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable25_2
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_3
// 1681         {
// 1682           xiao_fg=1;
        LDR.W    R0,??DataTable26_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1683           if(da_fg==1)
        LDR.W    R0,??DataTable26_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_1
// 1684           {
// 1685             da_fg=0;
        LDR.W    R0,??DataTable26_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1686             xiao_ct++;
        LDR.W    R0,??DataTable26_19
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable26_19
        STRH     R0,[R1, #+0]
        B.N      ??Speed_PID_1
// 1687           }
// 1688         }
// 1689         else
// 1690         {
// 1691           da_fg=1;
??Speed_PID_3:
        LDR.W    R0,??DataTable26_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1692           if(xiao_fg==1)  
        LDR.W    R0,??DataTable26_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_1
// 1693           {
// 1694             xiao_fg=0;
        LDR.W    R0,??DataTable26_17
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1695             da_ct++;
        LDR.W    R0,??DataTable26_20
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable26_20
        STRH     R0,[R1, #+0]
        B.N      ??Speed_PID_1
// 1696           }
// 1697         }
// 1698       }
// 1699       else
// 1700       {
// 1701         if(xiao_ct>=2&&da_ct>=2)  
??Speed_PID_2:
        LDR.W    R0,??DataTable26_19
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Speed_PID_4
        LDR.W    R0,??DataTable26_20
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Speed_PID_4
// 1702         {
// 1703           shache_fg=1;
        LDR.W    R0,??DataTable26_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1704         }
// 1705         
// 1706         xiao_ct=0;
??Speed_PID_4:
        LDR.W    R0,??DataTable26_19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1707         xiao_fg=0;
        LDR.W    R0,??DataTable26_17
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1708         da_ct=0;
        LDR.W    R0,??DataTable26_20
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1709         da_fg=0;
        LDR.W    R0,??DataTable26_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1710       }
// 1711     }
// 1712     
// 1713     //Æô¶¯¼ÓËÙ
// 1714     //if(qd_count++<60) speed=1000;
// 1715     //else qd_count=60;
// 1716     
// 1717     //×î¸ßËÙ¶ÈÏÞÖÆ
// 1718     if(pulse_count>PMAX) 
??Speed_PID_1:
        LDR.W    R0,??DataTable26_21
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_5
// 1719       speed = speed-speed_jian;//¿ØÖÆÐ§¹ûÃ÷ÏÔ
        LDR.W    R0,??DataTable26_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable26_22
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable26_5
        STRH     R0,[R1, #+0]
// 1720   
// 1721     //Éè¶¨PIDÊäÈëÖµ
// 1722     /*
// 1723     1-Ó¦¸ÃÍ¬Ê±ÏÔÊ¾speed_pwmÓëspeed
// 1724       Èç¹û²¨¶¯»òÓÐ¾²²î¶¼²»ºÏÊÊ
// 1725     2-ÀûÓÃpulse_count¼ÇÂ¼Àï³Ì
// 1726       Èç¹û¹»×¼È· ¿ÉÓÃÀ´Í£³µ
// 1727     3-ÏÔÊ¾¿ªÊ¼É²³µÓë½áÊøÉ²³µÊ±µÄÂö³å
// 1728       É²³µÔÚÓÚ ¼°Ê±+ÊÊµ±
// 1729     */
// 1730     
// 1731     //É²³µº¯Êý-------
// 1732     //-m1-//
// 1733     x=(double)((Psha-pulse_count)/((Pmax-Pmin)/3));
??Speed_PID_5:
        LDR.W    R0,??DataTable26_23
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_24
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable25_5
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable26_3
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        SDIV     R0,R1,R0
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable26_25
        STRD     R0,R1,[R2, #+0]
// 1734     //y=(double)((Pset-pulse_count)/((Pmax-Pmin)/3));
// 1735     speed_B=(int16)((x-1/6*x*x*x+3*x*x*x*x*x)-300);//250
        LDR.W    R0,??DataTable26_25
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        MOVS     R1,#+0
        BL       __aeabi_dmul
        LDR.W    R4,??DataTable26_25
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_dmul
        LDR.W    R4,??DataTable26_25
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable26_25
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable26_25
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable26_26  ;; 0x40080000
        BL       __aeabi_dmul
        LDR.W    R6,??DataTable26_25
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        LDR.W    R6,??DataTable26_25
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        LDR.W    R6,??DataTable26_25
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        LDR.W    R6,??DataTable26_25
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??DataTable26_27  ;; 0xc072c000
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable26_28
        STRH     R0,[R1, #+0]
// 1736     //speed_F=(int16)((y-1/6*y*y*y+3*y*y*y*y*y)+400);
// 1737     /*//-m2-//
// 1738     x=-(double)((pulse_count-Psha)/((Pmax-Pmin)/10));
// 1739     speed_B=(int16)(x*x*x-200);*/
// 1740     //-m3-//
// 1741     //speed_B=-(pulse_count-Psha)*3;
// 1742     //---------------------------------------------
// 1743     if(shache_fg==1) 
        LDR.W    R0,??DataTable26_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Speed_PID_6
// 1744     { 
// 1745       
// 1746       if(shmode==1)
        LDR.W    R0,??DataTable26_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_7
// 1747       {
// 1748         if(pulse_count>Psha)  speed_pwm=speed_B;
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_8
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_28
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_7
// 1749         else 
// 1750         {
// 1751           shache_fg=0;
??Speed_PID_8:
        LDR.W    R0,??DataTable26_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1752           ZZ_count=0;
        LDR.W    R0,??DataTable26_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1753           qd_ct=0;
        LDR.W    R0,??DataTable26_31
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1754           speed_pwm=0;
        LDR.W    R0,??DataTable26_30
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1755         }
// 1756       }
// 1757       
// 1758       if(shmode==2)
??Speed_PID_7:
        LDR.W    R0,??DataTable26_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Speed_PID_9
// 1759       {
// 1760         //Èç´Ë·Ö¶ÎÐ§¹ûÏÔÖø£¬¿ÉÒÔ´ËÐÞ¸Äº¯Êý£¬Ìá¸ß»ùÖ·£¬Ôö´óÐ±ÂÊ
// 1761         if(pulse_count>Psha+100)  speed_pwm=-800;
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+100
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_10
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_32  ;; 0xfffffce0
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1762         else if(pulse_count>Psha+80&&pulse_count<=Psha+100)  speed_pwm=-600;
??Speed_PID_10:
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+80
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_11
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+100
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_11
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_33  ;; 0xfffffda8
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1763         else if(pulse_count>Psha+60&&pulse_count<=Psha+80)  speed_pwm=-500;
??Speed_PID_11:
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+60
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_12
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+80
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_12
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_34  ;; 0xfffffe0c
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1764         else if(pulse_count>Psha+40&&pulse_count<=Psha+60)  speed_pwm=-400;
??Speed_PID_12:
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+40
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_13
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+60
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_13
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_35  ;; 0xfffffe70
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1765         else if(pulse_count>Psha+20&&pulse_count<=Psha+40)  speed_pwm=-300;
??Speed_PID_13:
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+20
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_14
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+40
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_14
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_36  ;; 0xfffffed4
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1766         else if(pulse_count>Psha+10&&pulse_count<=Psha+20)  speed_pwm=-200;
??Speed_PID_14:
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_15
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+20
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_15
        LDR.W    R0,??DataTable26_30
        MVNS     R1,#+199
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1767         else if(pulse_count>Psha&&pulse_count<=Psha+10)  speed_pwm=-150;
??Speed_PID_15:
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_16
        LDR.W    R0,??DataTable25_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+10
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_16
        LDR.W    R0,??DataTable26_30
        MVNS     R1,#+149
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1768         else 
// 1769         {
// 1770           shache_fg=0;
??Speed_PID_16:
        LDR.W    R0,??DataTable26_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1771           ZZ_count=0;
        LDR.W    R0,??DataTable26_2
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1772           qd_ct=0;
        LDR.W    R0,??DataTable26_31
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1773           speed_pwm=0;
        LDR.W    R0,??DataTable26_30
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1774         }
// 1775       }
// 1776     }
// 1777     else
// 1778     {
// 1779       if(speed==speed_H)
??Speed_PID_6:
        LDR.W    R0,??DataTable26_5
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_7
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Speed_PID_17
// 1780       {
// 1781         if(pulse_count<Pset*Kmax)  speed_pwm=1250;
        LDR.W    R0,??DataTable26_8
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable26_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R4,R1
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_18
        LDR.W    R0,??DataTable26_30
        MOVW     R1,#+1250
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1782         else
// 1783         {
// 1784           PID_SetPoint(speed_H);
??Speed_PID_18:
        LDR.W    R0,??DataTable26_7
        LDRSH    R0,[R0, #+0]
        BL       PID_SetPoint
// 1785           speed_pwm=(int16)(speed_H+IncPID_Calculate((pulse_count*19/10)));
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+19
        MULS     R0,R1,R0
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        BL       IncPID_Calculate
        LDR.W    R1,??DataTable26_7
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable26_30
        STRH     R0,[R1, #+0]
        B.N      ??Speed_PID_9
// 1786         }
// 1787       }
// 1788       else
// 1789       { 
// 1790         if(pulse_count<Pset*Kmin)  speed_pwm=800;
??Speed_PID_17:
        LDR.W    R0,??DataTable26_8
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable26_38
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R4,R1
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_19
        LDR.W    R0,??DataTable26_30
        MOV      R1,#+800
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_9
// 1791         else
// 1792         {
// 1793           PID_SetPoint(speed_L);
??Speed_PID_19:
        LDR.W    R0,??DataTable26_6
        LDRSH    R0,[R0, #+0]
        BL       PID_SetPoint
// 1794           speed_pwm=(int16)(speed_L+IncPID_Calculate((pulse_count*19/10)));
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+19
        MULS     R0,R1,R0
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        BL       IncPID_Calculate
        LDR.W    R1,??DataTable26_6
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable26_30
        STRH     R0,[R1, #+0]
// 1795         }
// 1796       }
// 1797     }
// 1798     
// 1799     //¾¡ÔçÌáËÙ
// 1800     if(shache_fg==0)
??Speed_PID_9:
        LDR.W    R0,??DataTable26_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Speed_PID_20
// 1801     { //Ö±µÀ¾¡ÔçÌáËÙ
// 1802       if(front_r-front_l<front_width+10&&fangcha_qian_f<=fch_dp3)
        LDR.W    R0,??DataTable26_14
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_15
        LDRSH    R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable26_13
        LDRSH    R1,[R1, #+0]
        ADDS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Speed_PID_20
        LDR.W    R0,??DataTable26_39
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable25_2
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Speed_PID_20
// 1803       {
// 1804         if(pulse_count<Pset*Kmax)  speed_pwm=1250;//1000
        LDR.W    R0,??DataTable26_8
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable26_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R4,R1
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_21
        LDR.W    R0,??DataTable26_30
        MOVW     R1,#+1250
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_20
// 1805         else
// 1806         {
// 1807           PID_SetPoint(speed_H);
??Speed_PID_21:
        LDR.W    R0,??DataTable26_7
        LDRSH    R0,[R0, #+0]
        BL       PID_SetPoint
// 1808           speed_pwm=(int16)(speed_H+IncPID_Calculate((pulse_count*19/10)));
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+19
        MULS     R0,R1,R0
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        BL       IncPID_Calculate
        LDR.W    R1,??DataTable26_7
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable26_30
        STRH     R0,[R1, #+0]
// 1809         }
// 1810       }
// 1811       //ÍäµÀ¾¡ÔçÌáËÙ
// 1812     }
// 1813     
// 1814     //·ÀÖ¹É²³µÊ±¼ä¹ý³¤
// 1815     if(sh_x==1)
??Speed_PID_20:
        LDR.W    R0,??DataTable26_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_22
// 1816     {
// 1817       if(shache_fg==1)
        LDR.W    R0,??DataTable26_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_23
// 1818       {
// 1819         SHCH_CT++;
        LDR.W    R0,??DataTable26_41
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable26_41
        STRH     R0,[R1, #+0]
// 1820         if(SHCH_CT>80)  
        LDR.W    R0,??DataTable26_41
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+81
        BLT.N    ??Speed_PID_22
// 1821         {
// 1822           SHCH_CT=0;
        LDR.W    R0,??DataTable26_41
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1823           shache_fg=0;
        LDR.W    R0,??DataTable26_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Speed_PID_22
// 1824         }
// 1825       }
// 1826       else  SHCH_CT=0;
??Speed_PID_23:
        LDR.W    R0,??DataTable26_41
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1827     }
// 1828     
// 1829     //ÆÂµÀÉ²³µ
// 1830     if(POshaen==1)
??Speed_PID_22:
        LDR.W    R0,??DataTable26_42
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_24
// 1831     {
// 1832       if(shapo==1)
        LDR.W    R0,??DataTable26_43
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_24
// 1833       {
// 1834         if(pulse_count>POsha)  speed_pwm=speed_B;
        LDR.W    R0,??DataTable26_44
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_25
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_28
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_24
// 1835         else
// 1836         {
// 1837           shapo=0;
??Speed_PID_25:
        LDR.W    R0,??DataTable26_43
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1838           speed_pwm=800;
        LDR.W    R0,??DataTable26_30
        MOV      R1,#+800
        STRH     R1,[R0, #+0]
// 1839         }
// 1840       }
// 1841     }
// 1842     
// 1843     //ÈË×ÖÉ²³µ
// 1844     if(rzsc_fg==1)
??Speed_PID_24:
        LDR.W    R0,??DataTable26_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_26
// 1845     {
// 1846       if(pulse_count>Prz)  speed_pwm=-1250;
        LDR.W    R0,??DataTable26_45
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Speed_PID_27
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_46  ;; 0xfffffb1e
        STRH     R1,[R0, #+0]
        B.N      ??Speed_PID_26
// 1847       else
// 1848       {
// 1849         rzsc_fg=0;
??Speed_PID_27:
        LDR.W    R0,??DataTable26_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1850         rshover_fg=1;
        LDR.W    R0,??DataTable26_10
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1851         speed_pwm=0;
        LDR.W    R0,??DataTable26_30
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1852       }
// 1853     }
// 1854     
// 1855     //ÆðÅÜÏß¼ì²â
// 1856     if(stop_flag==1) 
??Speed_PID_26:
        LDR.W    R0,??DataTable26_47
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_28
// 1857     {
// 1858       if(jisha==1)  speed_pwm=-500;
        LDR.W    R0,??DataTable26_48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Speed_PID_29
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_34  ;; 0xfffffe0c
        STRH     R1,[R0, #+0]
// 1859       if(pulse_count<5||jisha==2)
??Speed_PID_29:
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??Speed_PID_30
        LDR.W    R0,??DataTable26_48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Speed_PID_28
// 1860       {
// 1861         jisha=2;
??Speed_PID_30:
        LDR.W    R0,??DataTable26_48
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
// 1862         speed_pwm=(int16)(-sp*pulse_count+sd*(pulse_count-pulse_count_pre));
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable26_49
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable26_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable26_50
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable26_51
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable26_30
        STRH     R0,[R1, #+0]
// 1863       }
// 1864     }
// 1865     pulse_count_pre=pulse_count;
??Speed_PID_28:
        LDR.W    R0,??DataTable26_50
        LDR.N    R1,??DataTable26_3
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 1866 
// 1867     //ÏÞ·ù
// 1868     if(speed_pwm>1250)
        LDR.W    R0,??DataTable26_30
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+1251
        CMP      R0,R1
        BLT.N    ??Speed_PID_31
// 1869       speed_pwm=1250;
        LDR.W    R0,??DataTable26_30
        MOVW     R1,#+1250
        STRH     R1,[R0, #+0]
// 1870     if(speed_pwm<-1250)
??Speed_PID_31:
        LDR.W    R0,??DataTable26_30
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable26_46  ;; 0xfffffb1e
        CMP      R0,R1
        BGE.N    ??Speed_PID_32
// 1871       speed_pwm=-1250;
        LDR.W    R0,??DataTable26_30
        LDR.W    R1,??DataTable26_46  ;; 0xfffffb1e
        STRH     R1,[R0, #+0]
// 1872     
// 1873     //Êä³ö
// 1874     if(speed_pwm>0) 
??Speed_PID_32:
        LDR.W    R0,??DataTable26_30
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Speed_PID_33
// 1875     {
// 1876       gpio_init(PORTB, 9, 1,0);//DIL_B;
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.W    R0,??DataTable26_52  ;; 0x400ff040
        BL       gpio_init
// 1877       FTM1_C0V=speed_pwm;
        LDR.W    R0,??DataTable26_53  ;; 0x40039010
        LDR.N    R1,??DataTable26_30
        LDRSH    R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??Speed_PID_34
// 1878     }
// 1879     else 
// 1880     {
// 1881       gpio_init(PORTB, 9, 1,1);//DIL_F;
??Speed_PID_33:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+9
        LDR.W    R0,??DataTable26_52  ;; 0x400ff040
        BL       gpio_init
// 1882       FTM1_C0V=1250+speed_pwm;
        LDR.N    R0,??DataTable26_30
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+1250
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable26_53  ;; 0x40039010
        STR      R0,[R1, #+0]
// 1883     }
// 1884 }
??Speed_PID_34:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0xc0340000
// 1885 
// 1886 //----------------------------¸øCCDView·¢ËÍÍ¼Ïñ------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1887 void SendImageData(uint8 * ImageData)
// 1888 {
SendImageData:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
// 1889     unsigned char i;
// 1890     unsigned char crc = 0;
        MOVS     R6,#+0
// 1891     /* Send Data */
// 1892     uart_send1(UART3,'*');
        MOVS     R1,#+42
        LDR.W    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1893     uart_send1(UART3,'L');
        MOVS     R1,#+76
        LDR.W    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1894     uart_send1(UART3,'D');
        MOVS     R1,#+68
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1895 
// 1896     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1897     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1898     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1899     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
// 1900 
// 1901     for(i=0; i<128; i++)
        MOVS     R5,#+0
        B.N      ??SendImageData_0
// 1902     {
// 1903         SendHex(*ImageData ++);
??SendImageData_1:
        LDRB     R0,[R4, #+0]
        BL       SendHex
        ADDS     R4,R4,#+1
// 1904     }
        ADDS     R5,R5,#+1
??SendImageData_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BCC.N    ??SendImageData_1
// 1905     SendHex(crc);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SendHex
// 1906     uart_send1(UART3,'#');
        MOVS     R1,#+35
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1907 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     Kp_hold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     Kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     0x41500000
// 1908 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1909 void SendHex(unsigned char hex)
// 1910 {
SendHex:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1911   unsigned char temp;
// 1912   temp = hex >> 4;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
// 1913   if(temp < 10)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BCS.N    ??SendHex_0
// 1914   {
// 1915    uart_send1(UART3,temp + '0');
        ADDS     R1,R0,#+48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
        B.N      ??SendHex_1
// 1916   }
// 1917   else
// 1918   {
// 1919    uart_send1(UART3,temp - 10 + 'A');
??SendHex_0:
        ADDS     R1,R0,#+55
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1920   }
// 1921   temp = hex & 0x0F;
??SendHex_1:
        ANDS     R0,R4,#0xF
// 1922   if(temp < 10)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BCS.N    ??SendHex_2
// 1923   {
// 1924    uart_send1(UART3,temp + '0');
        ADDS     R1,R0,#+48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
        B.N      ??SendHex_3
// 1925   }
// 1926   else
// 1927   {
// 1928    uart_send1(UART3,temp - 10 + 'A');
??SendHex_2:
        ADDS     R1,R0,#+55
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1929   }
// 1930 }
??SendHex_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     Kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     front_OFFSET_KZ_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     D_err
// 1931 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1932 void SamplingDelay(void)//CCDÑÓÊ±³ÌÐò 200ns
// 1933 {
SamplingDelay:
        SUB      SP,SP,#+4
// 1934    volatile uint8 i;
// 1935    for(i=0;i<1;i++)
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        B.N      ??SamplingDelay_0
// 1936    {
// 1937     asm("nop");
??SamplingDelay_1:
        nop              
// 1938     asm("nop");
        nop              
// 1939    }
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
??SamplingDelay_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BCC.N    ??SamplingDelay_1
// 1940 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
// 1941 //--------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1942 void Clear()
// 1943 {
// 1944     g_lnInputVoltageSigma[0]=0;
Clear:
        LDR.N    R0,??DataTable26_55
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1945     g_lnInputVoltageSigma[1]=0;
        LDR.N    R0,??DataTable26_55
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1946     g_lnInputVoltageSigma[2]=0;
        LDR.N    R0,??DataTable26_55
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1947 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     ZHONG
// 1948 
// 1949 /****************************ÐéÄâÊ¾²¨Æ÷Ä£¿é******************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1950 void virtual_scope_show(void)
// 1951 {
// 1952       OutData[0]=0;
virtual_scope_show:
        LDR.N    R0,??DataTable26_56
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1953       OutData[1]=0;
        LDR.N    R0,??DataTable26_56
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
// 1954       OutData[2]=0;
        LDR.N    R0,??DataTable26_56
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 1955       OutData[3]=0;
        LDR.N    R0,??DataTable26_56
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
// 1956 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     LHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     RHOLDdiao_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     xianfu
// 1957 
// 1958 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1959 void serial_Txd()//´«ÊäµÄÒ»Ö¡Êý¾Ý£¬°üÀ¨ÈçÏÂµÄÄÚÈÝ
// 1960 {
serial_Txd:
        PUSH     {R4,LR}
        SUB      SP,SP,#+16
// 1961         uint8 temp[10]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
// 1962         uint8 i,j;
// 1963         //Ö¡Í·Êý¾Ý
// 1964         uart_send1 (UART3, 0xa5);
        MOVS     R1,#+165
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1965         uart_send1 (UART3, 0x5a);
        MOVS     R1,#+90
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1966 	
// 1967        //µÚÒ»ÌõÇúÏßµÄÊý¾Ý
// 1968         for(i=0;i<3;i++)
        MOVS     R0,#+0
        B.N      ??serial_Txd_0
// 1969         {
// 1970            temp[i*2]=(int)OutData[i]/10;
??serial_Txd_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable26_56
        LDRSH    R1,[R1, R0, LSL #+1]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+0
        STRB     R1,[R2, R0, LSL #+1]
// 1971            temp[i*2+1]=(int)OutData[i]%10;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable26_56
        LDRSH    R1,[R1, R0, LSL #+1]
        MOVS     R2,#+10
        SDIV     R3,R1,R2
        MLS      R1,R2,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,SP,#+0
        ADDS     R2,R2,R0, LSL #+1
        STRB     R1,[R2, #+1]
// 1972         }
        ADDS     R0,R0,#+1
??serial_Txd_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BCC.N    ??serial_Txd_1
// 1973        for(j=0;j<6;j++)
        MOVS     R4,#+0
        B.N      ??serial_Txd_2
// 1974        {
// 1975           uart_send1 (UART3, temp[j]);
??serial_Txd_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
// 1976        }
        ADDS     R4,R4,#+1
??serial_Txd_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCC.N    ??serial_Txd_3
// 1977         delay_ms(10);
        MOVS     R0,#+10
        BL       delay_ms
// 1978 }
        POP      {R0-R4,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     g_nMotorPulse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     g_nMotorPulseSigma

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     fangcha_qian_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     fch_dp2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_4:
        DC32     WW_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_5:
        DC32     Psha
// 1979 
// 1980 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1981 unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
// 1982 {
CRC_CHECK:
        PUSH     {R4,R5}
// 1983     unsigned short CRC_Temp;
// 1984     unsigned char i,j;
// 1985     CRC_Temp = 0xffff;
        MOVW     R2,#+65535
// 1986 
// 1987     for (i=0;i<CRC_CNT; i++)
        MOVS     R3,#+0
        B.N      ??CRC_CHECK_0
??CRC_CHECK_1:
        ADDS     R3,R3,#+1
??CRC_CHECK_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCS.N    ??CRC_CHECK_2
// 1988     {
// 1989         CRC_Temp ^= Buf[i];
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R4,[R3, R0]
        EORS     R2,R4,R2
// 1990         for (j=0;j<8;j++)
        MOVS     R4,#+0
        B.N      ??CRC_CHECK_3
// 1991         {
// 1992             if (CRC_Temp & 0x01)
// 1993                 CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
// 1994             else
// 1995                 CRC_Temp = CRC_Temp >> 1;
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
// 1996         }
// 1997     }
// 1998     return(CRC_Temp);
??CRC_CHECK_2:
        MOVS     R0,R2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
// 1999 }
// 2000 
// 2001 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2002 void OutPut_Data(void)
// 2003 {
OutPut_Data:
        PUSH     {R4,LR}
        SUB      SP,SP,#+48
// 2004   int temp[4] = {0};
        ADD      R0,SP,#+28
        MOVS     R1,#+16
        BL       __aeabi_memclr4
// 2005   unsigned int temp1[4] = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+16
        BL       __aeabi_memclr4
// 2006   unsigned char databuf[10] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
// 2007   unsigned char i;
// 2008   unsigned short CRC16 = 0;
        MOVS     R0,#+0
// 2009   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_0
// 2010   {
// 2011     temp[i]  = (int16)OutData[i];
??OutPut_Data_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+28
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable26_56
        LDRSH    R1,[R1, R4, LSL #+1]
        STR      R1,[R0, R4, LSL #+2]
// 2012     temp1[i] = (uint16)temp[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+28
        LDRH     R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
// 2013   }
        ADDS     R4,R4,#+1
??OutPut_Data_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCC.N    ??OutPut_Data_1
// 2014 
// 2015   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_2
// 2016   {
// 2017     databuf[i*2]   = (int8)(temp1[i]%256);
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
// 2018     databuf[i*2+1] = (int8)(temp1[i]/256);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        LSRS     R0,R0,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+0
        ADDS     R1,R1,R4, LSL #+1
        STRB     R0,[R1, #+1]
// 2019   }
        ADDS     R4,R4,#+1
??OutPut_Data_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCC.N    ??OutPut_Data_3
// 2020 
// 2021   CRC16 = CRC_CHECK(databuf,8);
        MOVS     R1,#+8
        ADD      R0,SP,#+0
        BL       CRC_CHECK
// 2022   databuf[8] = CRC16%256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        STRB     R2,[SP, #+8]
// 2023   databuf[9] = CRC16/256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R0,R0,R1
        STRB     R0,[SP, #+9]
// 2024 
// 2025   for(i=0;i<10;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_4
// 2026   uart_send1 (UART3,databuf[i]);
??OutPut_Data_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable26_54  ;; 0x4006d000
        BL       uart_send1
        ADDS     R4,R4,#+1
??OutPut_Data_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BCC.N    ??OutPut_Data_5
// 2027 }
        ADD      SP,SP,#+48
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     servo_duty

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     ZZ_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_3:
        DC32     pulse_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_4:
        DC32     shache_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_5:
        DC32     speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_6:
        DC32     speed_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_7:
        DC32     speed_H

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_8:
        DC32     Pset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_9:
        DC32     tisu_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_10:
        DC32     rshover_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_11:
        DC32     rzsc_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_12:
        DC32     dir_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_13:
        DC32     front_width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_14:
        DC32     front_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_15:
        DC32     front_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_16:
        DC32     BLsha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_17:
        DC32     xiao_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_18:
        DC32     da_fg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_19:
        DC32     xiao_ct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_20:
        DC32     da_ct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_21:
        DC32     PMAX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_22:
        DC32     speed_jian

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_23:
        DC32     Pmax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_24:
        DC32     Pmin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_25:
        DC32     x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_26:
        DC32     0x40080000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_27:
        DC32     0xc072c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_28:
        DC32     speed_B

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_29:
        DC32     shmode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_30:
        DC32     speed_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_31:
        DC32     qd_ct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_32:
        DC32     0xfffffce0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_33:
        DC32     0xfffffda8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_34:
        DC32     0xfffffe0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_35:
        DC32     0xfffffe70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_36:
        DC32     0xfffffed4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_37:
        DC32     Kmax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_38:
        DC32     Kmin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_39:
        DC32     fch_dp3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_40:
        DC32     sh_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_41:
        DC32     SHCH_CT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_42:
        DC32     POshaen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_43:
        DC32     shapo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_44:
        DC32     POsha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_45:
        DC32     Prz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_46:
        DC32     0xfffffb1e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_47:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_48:
        DC32     jisha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_49:
        DC32     `sp`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_50:
        DC32     pulse_count_pre

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_51:
        DC32     sd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_52:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_53:
        DC32     0x40039010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_54:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_55:
        DC32     g_lnInputVoltageSigma

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_56:
        DC32     OutData

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
// 2028 
// 2029 
// 
//  1 283 bytes in section .bss
//     57 bytes in section .data
//     96 bytes in section .rodata
// 12 386 bytes in section .text
// 
// 12 386 bytes of CODE  memory
//     96 bytes of CONST memory
//  1 340 bytes of DATA  memory
//
//Errors: none
//Warnings: 4
