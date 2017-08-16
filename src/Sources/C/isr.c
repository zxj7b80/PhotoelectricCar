//-------------------------------------------------------------------------*
// �ļ���: isr.c                                                           *
// ˵  ��: �жϴ������                                                    *
//-------------------------------------------------------------------------*

#include "includes.h"
extern uint8  IntegrationTime_Front,IntegrationTime_Zong;
       uint8  integration_piont_Front,integration_piont_Zong;
       uint8  Pixel_F[128]={0},Pixel_Z[128]={0};
       uint8  TimerCnt20ms =0,TimerCnt20ms_Z =0;
       uint8  TIME1flag_20ms=0,TIME1flag_20ms_Z=0;
       
       uint8  g_n1msEventCount =0;
       uint8  g_nSpeedControlCount =0;       
       int16  speedflag=0;

extern int16  Motor_Lock;
extern int16  Servo_Lock;
extern int16  servo_duty;
extern int16  speed_pwm;
extern int16  speed_H;
extern int16  speed_L;
extern int32  pulse_count;

       int32  qpx_delay=0;
       int16  QPX=0,QPX_SET=12;
       uint8  qpx_en=0,CAR_GO=0;
       
extern int16  stop_count,stop_flag;   

extern int16  hongwai_l,hongwai_r;
extern int16  HONGWAI_L,HONGWAI_R;
extern int16  hongwai_l_count,hongwai_r_count;
extern uint8  hw_l_fg,hw_r_fg;

       int16  hw_l_CT=0,hw_r_CT=0;

       int16  ceshi=0;
       uint8  ceshi_fg=0;
extern uint8  HWPO;


//���жϺ���ִ��ʱ���Ƕ���?
void pit0_isr(void)                      //��ʱ��1ms�жϺ���
{
         DisableInterrupts;              //�����ж�
         //-----------------
         if(ceshi++>1000)
         {
           ceshi=0;
           ceshi_fg=1;
         }
         //-------------------------------------------
         if(CAR_GO==1)
         {
           qpx_delay++;
           if(qpx_delay==1000) 
           {
             qpx_delay=0;
             QPX++;
           }
           if(QPX>=QPX_SET) qpx_en=1;
         }
         if(qpx_en==1&&HWPO==0)
         {
           //-----------------
           get_ad();  
           //---------------------------------------
           //������
           if(hongwai_l<HONGWAI_L-800)  hw_l_fg=1;
           if(hongwai_r<HONGWAI_R-800)  hw_r_fg=1;
           
           if(stop_flag==0)
           {
             if(hw_l_fg==1)
             {
               hongwai_l_count++;
               if(hongwai_l_count>15) hw_l_fg=0;//��ʱ����
             }
             else  hongwai_l_count=0;
             
             if(hw_r_fg==1)
             {
               hongwai_r_count++;
               if(hongwai_r_count>15) hw_r_fg=0;
             }
             else  hongwai_r_count=0;
           }
           
           if((hw_l_fg==1&&hw_r_fg==1)&&Abs(hongwai_l_count-hongwai_r_count)<10)
             stop_flag=1;
         }
         
         //-------------------------------------------
         integration_piont_Front = 20 - IntegrationTime_Front;
         if(integration_piont_Front >= 2)//�ع��С��2�������ع�
         {
           if(integration_piont_Front == TimerCnt20ms)
             StartIntegrationFront();
         }
         /*
         integration_piont_Zong = 3 - IntegrationTime_Zong;
         if(integration_piont_Zong >= 1)//�ع��С��2�������ع�
         {
           if(integration_piont_Zong == TimerCnt20ms)
             StartIntegrationZong();
         }*/
         
         TimerCnt20ms++;
         if(TimerCnt20ms>=20)
         {
           TimerCnt20ms=0;
           ImageCapture_F(Pixel_F);//��������J-link,�ö�ʱ�����о�����ִ��ʱ�䣬������Էŵ���ѭ����
           CalculateIntegrationTimeFront();
           TIME1flag_20ms=1;
         }
         /*
         TimerCnt20ms_Z++;
         if(TimerCnt20ms_Z>=3)
         {
           TimerCnt20ms_Z=0;
           ImageCapture_Z(Pixel_Z);
           CalculateIntegrationTimeZong();
           TIME1flag_20ms_Z=1;
         }*/

         g_n1msEventCount++;
         switch(g_n1msEventCount)
         {
           case 1:
             if(Motor_Lock == 0)
             {  
               speedflag=1;
             }
             break;
           case 2:
             break;
           case 3: 
             break;  
           case 4:      
             break;
           case 5:
             g_n1msEventCount = 0;
             break;
         }

         PIT_TFLG(0)|=PIT_TFLG_TIF_MASK;          //���жϱ�־λ
         enable_pit_interrupt(0);                 //ʹ��PIT�ж�
         EnableInterrupts;                        //�����ж�
}
