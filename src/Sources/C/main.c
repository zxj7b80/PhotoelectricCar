//ͷ�ļ�
#include "includes.h"

//ȫ�ֱ�������
extern  int16  periph_clk_khz;

extern  int16  cl_f,cl_f_pre;//�������ֵ��������ظ�����
extern  int16  front_l,front_r;
        int16  cl_f_long,front_l_long,front_r_long,IT_long;
extern  int16  front_reference,front_l_reference,front_r_reference;
        uint8  IT_ref=10;
extern  int16  front_max,front_min;
        int16  lost_all_count_max=0;
extern  int16  lost_all_count;
extern  uint8  lost_all_flag;
extern  int16  Aver_F,high_aver_f,low_aver_f;
extern  int16  R_aver,L_aver;
extern  uint8  Ldiaotou_flag,Rdiaotou_flag;
extern  int16  Ldiaotou_count,Rdiaotou_count;

extern  int16  front_l_flag,front_r_flag;

extern  int16  bodong;

extern  int16  cl_z;
extern  int16  zong_l,zong_r;
        int16  cl_z_long,zong_l_long,zong_r_long;
extern  int16  zong_reference,zong_l_reference,zong_r_reference;
extern  int16  zong_max,zong_min;

extern  uint8  Pixel_F[128],Pixel_Z[128];
extern  uint8  IntegrationTime_Front,IntegrationTime_Zong;
extern  uint8  integration_piont_Front,integration_piont_Zong;
extern  uint8  pit0_1ms_flag;
extern  uint8  TIME1flag_20ms,TIME1flag_20ms_Z;
extern  int16  speedflag;
        int16  Motor_Lock=1;
        int16  Servo_Lock=1;

extern  int16  delta_l,delta_r;
extern  int16  fangcha_f,fangcha_qian_f,fangcha_hou_f;
extern  int16  fangcha_z,fangcha_qian_z,fangcha_hou_z;
        int16  fch_dp1=256,fch_dp2=81,fch_dp3=625;


        /*ǰհ��ߣ��������������ڶ�ʮ�ֺã�����3.25����75��30.97��*/
        float  Kp=19.0;//���ʵ�ǰհ����õģ�
        float  Ki=0.0;
        float  Kd=21.0;
        float  Kp_hold=19.0;
        float  Ki_hold=0.0;
        float  Kd_hold=21.0;
       
        float  Kp_ZW=18.0,Kp_WW=13.0,Kp_WZ=13.5,Kp_ZZ=16.5,Kp_BL=0.5;
        float  Kd_ZW=20.0,Kd_WW=18.5,Kd_WZ=18.5,Kd_ZZ=23.0,Kd_BL=20.0;

        float   Kmax=0.8,Kmin=0.6;
        
extern  float  sp,sd;
       
        uint8  d_p=0;
extern  float  chu;
       

        float  k_out=1.5;
        float  k_B=1.0;
       
        int16  shache_time=0;
extern  int16  ZZ_count;
        int16  ZZ_count_max=0;
extern  int16  bl_count;
extern  uint8  bl_flag;
extern  int16  stop_flag;
extern  int16  stop_count;
extern  int16  black_l,black_r;
extern  int16  Psha;
extern  int16  ZHONG;
extern  int16  xianfu;

        uint8  mode=1;        
        uint8  fch_mo=1;
extern  uint8  shmode;

       /*������*/
       //�����������ʼ�յ������õĲ������ٴ���
        int16  speed=365;
        int16  speed_H=360;
        int16  speed_L=280;
        int16  speed_B=300;
        int16  speed_jian=20;
        int16  PMAX=175;
extern  int16  Pmax;
        int16  Prz=-10;
        int16  POsha=100;
       
extern  int16  d_err1,d_err2,d_err3,d_err4,d_err5,d_err6,d_err7,d_err8,d_err9;
        int16  d_err1_max=0;
extern  int16  z_err1,z_err2,z_err3,z_err4,z_err5,z_err6,z_err7,z_err8,z_err9;
extern  int16  front_OFFSET,front_OFFSET_pre;
extern  int16  zong_OFFSET;

        uint8  a=0;
        uint8  showcnt=0;
extern  int16  front_width;
extern  int16  zong_width;

        int16  FRONT_WIDTH;
        int16  ZONG_WIDTH;


        uint8  key_num=255;
        uint8  key_no=255;
        uint8  zhming=1;
        uint8  BK=255;
extern  int16  g_nMotorPulseSigma;
extern  int32  pulse_count;
        int32  pulse_count_max=0;

        float  Sp=1.7,Si=0.05,Sd=0.3;//��������ǿ�ٶȿ���
       
extern  uint8  CAR_GO;
extern  uint8  rzop;
extern  uint8  qpx_en;
extern  int16  QPX_SET;

extern  int16  jiao_L,jiao_R;

extern  uint8  mq,mq_last;
extern  uint8  mq_look1,mq_look2,mq_look3,mq_look4;

extern  int16  gravity,voltage_gravity;
extern  int16  g_nInputVoltage[5];
        uint8  dazhi=0;
        uint8  guopo=0;
        int16  po_count=0,PO_ct=39;
       
        int16  hongwai_l=0,hongwai_r=0;
        int16  HONGWAI_L=0,HONGWAI_R=0;
        int16  hongwai_l_count=0,hongwai_r_count=0;
        uint8  hw_l_fg=0,hw_r_fg=0;
       
        uint8  dir_fg=0;
       

extern  int16  OFFSET_keep;

        uint8  polook=0;
        uint8  po_gap=0;
        int16  po_gap_ct=0;
        
extern  int16  sha_width;
extern  uint8  shapo;
extern  uint8  BLsha;

extern  uint8   sh_x;
extern  uint8   POshaen;
        uint8   HWPO=0;
        int16   HWPO_ct=0;
       
//��������
void  system_init();
//������
void main()
{
   int8   j;
   uint8  *pixel_pt;
   uint8  send_data_cnt = 0;
   int16  LCD_Average_Flag=0,LCD_Average_Flag_Z=0;
   
   pixel_pt = Pixel_F;
   for(j=0; j<128+10; j++){*pixel_pt++ = 0;}
   
   pixel_pt = Pixel_Z;
   for(j=0; j<128+10; j++){*pixel_pt++ = 0;}
   
   system_init();
   /*
   serial_choose();
   uart_send1(UART3 ,  gravity );//PTC16�Ӵ���ģ���uart3_RX��PTC17�Ӵ���ģ���uart3_TX
   uart_send1(UART3 , gyro );
   */
   //-----------------------------------------------------------------
   //--------------------------ģʽ ��������--------------------------
   //-----------------------------------------------------------------
   while(1)
   { 
      
      //user GUI
      LCD_P8x16Str(0,0,"mode:1");
      LCD_P8x16Str(60,0,"s_H:2");
      LCD_P8x16Str(0,2,"s_L:3");
      LCD_P8x16Str(60,2,"Kp:4");
      LCD_P8x16Str(0,4,"Kd:5");
      LCD_P8x16Str(60,4,"QPX_SET:6");
      
      matrix_keyboard_init();
      key_no=keyboard_scan();
      
      delay_ms(110);

      //1�Ű������µ�ʱ�����mode
      if(key_no==1)
       {
        key_no=255;
        BK=1;
        LCD_CLS();
        while(BK==1)
        {
          LCD_P8x16Str(0,0,"mode:");
          LCD_P8x16_number_4(60,0,mode);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            mode=mode+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            mode=mode-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;
          }
        }
        LCD_CLS();
      }
      
      //ģʽ------------------
      if(mode==1)
      {
        speed_H=360;
        speed_L=280;
        Kp=19.7;
        Kd=21.0;
        Psha=60;
        Prz=-20;
        
        Kmax=0.8;
        Kmin=0.6;
        
        
      }
      else if(mode==2)
      {
        speed_H=350;
        speed_L=270;
        Kp=18.0;
        Kd=21.0;
        Psha=80;
        Prz=0;
        
        Kmax=0.7;
        Kmin=0.5;
      }
      else if(mode==3)
      {
        speed_H=340;
        speed_L=260;
        Kp=17.0;
        Kd=21.0;
        Psha=90;
        Prz=0;
        
        Kmax=0.6;
        Kmin=0.4;
      }
      //------------------
      
      //2�Ű������µ�ʱ�����Speed_H
      if(key_no==2)
       {
        key_no=255;
        BK=2;
        LCD_CLS();
        while(BK==2)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Speed_H:");
          LCD_P8x16_num3wei(60,0,speed_H);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            speed_H=speed_H+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            speed_H=speed_H-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //3�Ű������µ�ʱ�����Speed_L
      if(key_no==3)
       {
        key_no=255;
        BK=3;
        LCD_CLS();
        while(BK==3)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Speed_L:");
          LCD_P8x16_num3wei(60,0,speed_L);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            speed_L=speed_L+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            speed_L=speed_L-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      
      //4�Ű������µ�ʱ�����Kp
      if(key_no==4)
       {
        key_no=255;
        BK=4;
        LCD_CLS();
        while(BK==4)
        {
          LCD_P8x16Str(0,0,"Kp:");
          LCD_P8x16_num3wei(60,0,(uint16)(Kp*10));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            Kp=Kp+0.1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Kp=Kp-0.1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;//ע���������
          }
        }
        LCD_CLS();
      }
      //5�Ű������µ�ʱ�����Kd
      if(key_no==5)
       {
        key_no=255;
        BK=5;
        LCD_CLS();
        while(BK==5)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Kd:");
          LCD_P8x16_num3wei(60,0,(uint16)(Kd*10));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Kd=Kd+0.1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Kd=Kd-0.1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //6�Ű������µ�ʱ�����QPX_SET
      if(key_no==6)
       {
        key_no=255;
        BK=6;
        LCD_CLS();
        while(BK==6)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"QPX_S:");
          LCD_P8x16_num3wei(60,0,QPX_SET);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            QPX_SET=QPX_SET+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            QPX_SET=QPX_SET-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
     //10�Ű������� �ɼ�����
     if(key_no==10)
     {
       key_no=255;
       LCD_CLS();
       break;
     }
   }   
   
   PID_SetKpid(Sp,Si,Sd);
   
   //-----------------------------------------------------------------
   //--------------------------һ�� ��������--------------------------
   //-----------------------------------------------------------------
   while(1)
   { 
      //��ֹ��һ�ֵ���
      delay_ms(250);
      //user GUI
      LCD_P8x16Str(0,0,"Psha:1");
      LCD_P8x16Str(60,0,"Prz:2");
      LCD_P8x16Str(0,2,"PMAX:3");
      LCD_P8x16Str(0,4,"ZHONG:4");
      LCD_P8x16Str(60,4,"xianfu:5");
      LCD_P8x16Str(0,6,"PO_ct:6");
      
      matrix_keyboard_init();
      key_no=keyboard_scan();
      
      delay_ms(110);

      //1�Ű������µ�ʱ�����Psha
      if(key_no==1)
       {
        key_no=255;
        BK=1;
        LCD_CLS();
        while(BK==1)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Psha:");
          LCD_P8x16_num3wei(60,0,Psha);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Psha=Psha+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Psha=Psha-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      
      //2�Ű������µ�ʱ�����Prz
      if(key_no==2)
       {
        key_no=255;
        BK=2;
        LCD_CLS();
        while(BK==2)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Prz:");
          LCD_P8x16_num3wei(60,0,Abs(Prz));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Prz=Prz+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Prz=Prz-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      
      //3�Ű������µ�ʱ�����PMAX
      if(key_no==3)
       {
        key_no=255;
        BK=3;
        LCD_CLS();
        while(BK==3)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"PMAX:");
          LCD_P8x16_num3wei(60,0,PMAX);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            PMAX=PMAX+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            PMAX=PMAX-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //4�Ű������µ�ʱ�����ZHONG
      if(key_no==4)
       {
        key_no=255;
        BK=4;
        LCD_CLS();
        while(BK==4)
        {
          LCD_P8x16Str(0,0,"ZHONG:");
          LCD_P8x16_number_4(60,0,(uint16)ZHONG);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            ZHONG=ZHONG+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            ZHONG=ZHONG-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;//ע���������
          }
        }
        LCD_CLS();
      }
      //5�Ű������µ�ʱ�����xianfu
      if(key_no==5)
       {
        key_no=255;
        BK=5;
        LCD_CLS();
        while(BK==5)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"xianfu:");
          LCD_P8x16_number_4(60,0,xianfu);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            xianfu=xianfu+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            xianfu=xianfu-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //6�Ű������µ�ʱ�����PO_ct
      if(key_no==6)
       {
        key_no=255;
        BK=6;
        LCD_CLS();
        while(BK==6)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"PO_ct:");
          LCD_P8x16_num3wei(60,0,PO_ct);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            PO_ct=PO_ct+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            PO_ct=PO_ct-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
     //10�Ű������� �ɼ�����
     if(key_no==10)
     {
       key_no=255;
       LCD_CLS();
       break;
     }
   }
   
   
   //-----------------------------------------------------------------
   //--------------------------�ڶ��� ��������--------------------------
   //-----------------------------------------------------------------
   while(1)
   { 
     //��ֹ�����ֵ���
      delay_ms(250);
      
      //user GUI
      LCD_P8x16Str(0,0,"d_p:1");
      LCD_P8x16Str(60,0,"chu:2");
      LCD_P8x16Str(0,2,"BLsha:3");
      LCD_P8x16Str(60,2,"Kmax");
      LCD_P8x16Str(0,4,"Kmin");
      LCD_P8x16Str(60,4,"Pmax:6");
      
      matrix_keyboard_init();
      key_no=keyboard_scan();
      
      delay_ms(110);

      //1�Ű������µ�ʱ�����d_p
      if(key_no==1)
       {
        key_no=255;
        BK=1;
        LCD_CLS();
        while(BK==1)
        {
          LCD_P8x16Str(0,0,"d_p:");
          LCD_P8x16_number_4(60,0,d_p);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            d_p=d_p+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            d_p=d_p-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;
          }
        }
        LCD_CLS();
      }
      
      //2�Ű������µ�ʱ�����chu
      if(key_no==2)
       {
        key_no=255;
        BK=2;
        LCD_CLS();
        while(BK==2)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"chu:");
          LCD_P8x16_num3wei(60,0,(uint16)(chu*10));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            chu=chu+0.1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            chu=chu-0.1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //3�Ű������µ�ʱ�����BLsha
      if(key_no==3)
       {
        key_no=255;
        BK=3;
        LCD_CLS();
        while(BK==3)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"BLsha:");
          LCD_P8x16_num3wei(60,0,BLsha);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            BLsha=BLsha+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            BLsha=BLsha-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      
      //4�Ű������µ�ʱ�����Kmax
      if(key_no==4)
       {
        key_no=255;
        BK=4;
        LCD_CLS();
        while(BK==4)
        {
          LCD_P8x16Str(0,0,"Kmax:");
          LCD_P8x16_num3wei(60,0,(uint16)(Kmax*100));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            Kmax=Kmax+0.01;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Kmax=Kmax-0.01;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;//ע���������
          }
        }
        LCD_CLS();
      }
      //5�Ű������µ�ʱ�����Kmin
      if(key_no==5)
       {
        key_no=255;
        BK=5;
        LCD_CLS();
        while(BK==5)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Kmin:");
          LCD_P8x16_num3wei(60,0,(uint16)(Kmin*100));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Kmin=Kmin+0.01;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Kmin=Kmin-0.01;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //6�Ű������µ�ʱ�����Pmax
      if(key_no==6)
       {
        key_no=255;
        BK=6;
        LCD_CLS();
        while(BK==6)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Pmax:");
          LCD_P8x16_num3wei(60,0,Pmax);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Pmax=Pmax+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Pmax=Pmax-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
     //10�Ű������� �ɼ�����
     if(key_no==10)
     {
       key_no=255;
       LCD_CLS();
       break;
     }
   }   
   //-----------------------------------------------------------------
   //--------------------------������ ��������--------------------------
   //-----------------------------------------------------------------
   while(1)
   { 
     //��ֹ�����ֵ���
      delay_ms(250);
      
      //user GUI
      LCD_P8x16Str(0,0,"sh_x:1");
      LCD_P8x16Str(60,0,"fch_mo:2");
      LCD_P8x16Str(0,2,"POshen:3");
      LCD_P8x16Str(60,2,"shmode:4");
      //LCD_P8x16Str(0,4,"Kmin");
      //LCD_P8x16Str(60,4,"Pmax:6");
      
      matrix_keyboard_init();
      key_no=keyboard_scan();
      
      delay_ms(110);

      //1�Ű������µ�ʱ�����sh_x
      if(key_no==1)
       {
        key_no=255;
        BK=1;
        LCD_CLS();
        while(BK==1)
        {
          LCD_P8x16Str(0,0,"sh_x:");
          LCD_P8x16_number_4(60,0,sh_x);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            sh_x=sh_x+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            sh_x=sh_x-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;
          }
        }
        LCD_CLS();
      }
      
      //2�Ű������µ�ʱ�����fch_mo
      if(key_no==2)
       {
        key_no=255;
        BK=2;
        LCD_CLS();
        while(BK==2)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"fch_mo:");
          LCD_P8x16_num3wei(60,0,fch_mo);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            fch_mo=fch_mo+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            fch_mo=fch_mo-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      
      if(fch_mo==1)
        fch_dp2=81;
      else if(fch_mo==2)
        fch_dp2=100;
      else if(fch_mo==3)
        fch_dp2=121;
      else if(fch_mo==4)
        fch_dp2=144;
      else if(fch_mo==5)
        fch_dp2=169;
      else if(fch_mo==6)
        fch_dp2=196;
      else if(fch_mo==7)
        fch_dp2=225;
      
      //3�Ű������µ�ʱ�����POshaen
      if(key_no==3)
       {
        key_no=255;
        BK=3;
        LCD_CLS();
        while(BK==3)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"POshaen:");
          LCD_P8x16_num3wei(60,0,POshaen);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            POshaen=POshaen+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            POshaen=POshaen-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      
      //4�Ű������µ�ʱ�����shmode
      if(key_no==4)
       {
        key_no=255;
        BK=4;
        LCD_CLS();
        while(BK==4)
        {
          LCD_P8x16Str(0,0,"shmode:");
          LCD_P8x16_num3wei(60,0,shmode);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key7");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key8");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key9");
          
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          

          if(key_no==7)
          {
            shmode=shmode+1;
            key_no=255;
          }
        
          if(key_no==8)
          {
            shmode=shmode-1;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
            key_num=255;//ע���������
          }
        }
        LCD_CLS();
      }
      //5�Ű������µ�ʱ�����Kmin
      /*if(key_no==5)
       {
        key_no=255;
        BK=5;
        LCD_CLS();
        while(BK==5)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Kmin:");
          LCD_P8x16_num3wei(60,0,(uint16)(Kmin*100));
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Kmin=Kmin+0.01;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Kmin=Kmin-0.01;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }
      //6�Ű������µ�ʱ�����Pmax
      if(key_no==6)
       {
        key_no=255;
        BK=6;
        LCD_CLS();
        while(BK==6)
        {
          delay_ms(110);
          matrix_keyboard_init();
          key_num=keyboard_scan();
          if(key_num!=255)
          {
            key_no=key_num;
          }          
          LCD_P8x16Str(0,0,"Pmax:");
          LCD_P8x16_num3wei(60,0,Pmax);
          LCD_P8x16Str(0,2,"+:");
          LCD_P8x16Str(60,2,"Key4");
          LCD_P8x16Str(0,4,"-:");
          LCD_P8x16Str(60,4,"Key5");
          LCD_P8x16Str(0,6,"Re:");
          LCD_P8x16Str(60,6,"Key6");
          
          if(key_no==7)
          {
            Pmax=Pmax+5;
            key_no=255;
          }
        
          if(key_no==8)
          {
            Pmax=Pmax-5;
            key_no=255;
          }
        
          if(key_no==9)
          {
            BK=255;
            key_no=255;
          }
        }
        LCD_CLS();
       }*/
     //10�Ű������� �ɼ�����
     if(key_no==10)
     {
       key_no=255;
       LCD_CLS();
       break;
     }
   }   

   //------------------------------------------------------------
   //-------------------��ʼ�ɼ�ѭ�����ȴ�1ms�ж�------------------
   //------------------------------------------------------------
   while(1)
   {  
     if(zhming==1)
     {
      LCD_P8x16Str(0,0,"cj");
      delay_ms(250);
      LCD_CLS();
     }
     zhming=2;

    Motor_Lock = 1;
    Servo_Lock = 1;
    
    if(TIME1flag_20ms == 1)
    {
       TIME1flag_20ms = 0;

       binaryzation_F(Pixel_F);
       get_front();
       
       cl_f_long += cl_f;
       front_l_long += front_l;
       front_r_long += front_r;
       IT_long += IntegrationTime_Front;
       /*
       if(++send_data_cnt >= 5)//ÿ100ms��CCDview��������
       {
          send_data_cnt = 0;
          //SendImageData(Pixel_F);
          SendImageData(Pixel_Z); 
       }*/
       if(++LCD_Average_Flag>9)
       {
         LCD_Average_Flag = 0;
         front_reference = (int16)(cl_f_long/10);
         front_l_reference = (int16)(front_l_long/10);
         front_r_reference = (int16)(front_r_long/10);
         IT_ref = (int16)(IT_long/10);
         IT_long = 0;
         cl_f_long = 0;
         front_l_long = 0;
         front_r_long = 0; 
         FRONT_WIDTH = front_r_reference-front_l_reference;
         front_width = FRONT_WIDTH;

         LCD_P8x16_number(10,0,front_reference);
         LCD_P8x16_number(10,2,front_l_reference);
         LCD_P8x16_number(70,2,front_r_reference);
       }
    }
    /*
    if(TIME1flag_20ms_Z == 1)
    {
       TIME1flag_20ms_Z = 0;
       binaryzation_Z(Pixel_Z);
       get_zong();
       cl_z_long += cl_z;
       zong_l_long += zong_l;
       zong_r_long += zong_r;
       if(++LCD_Average_Flag_Z>9)
       {
         LCD_Average_Flag_Z = 0;
         
         zong_reference = (int16)(cl_z_long/10);
         zong_l_reference = (int16)(zong_l_long/10);
         zong_r_reference = (int16)(zong_r_long/10);
         cl_z_long = 0;
         zong_l_long = 0;
         zong_r_long = 0; 
         ZONG_WIDTH = zong_r_reference-zong_l_reference;
         zong_width = ZONG_WIDTH;
        
         LCD_P8x16_number(10,4,zong_reference);
         LCD_P8x16_number(10,6,zong_l_reference);
         LCD_P8x16_number(70,6,zong_r_reference);     
       }
    }*/
       //����������ʼ��ѭ��
       matrix_keyboard_init();
       key_num=keyboard_scan();
       if(key_num!=255)
       {
         key_no=key_num;
       }
       //12�Ű������µ�ʱ�����ѭ��
       if(key_no==12)
       { 
         key_no=255;
         BK=12;
         LCD_CLS();
         while(BK==12)
         {
           delay_ms(110);
           matrix_keyboard_init();
           key_num=keyboard_scan();
           if(key_num!=255)
           {
             key_no=key_num;
           }   
           if(key_no==12)
           {
             BK=255;
             key_no=255;
           }
           LCD_CLS();
         }
         zhming=1;   
         break;
       }
   }
   //------------------------------------------------------------------
   //-----------------------��ѭ�����ȴ�1ms�ж�------------------------
   //------------------------------------------------------------------
   while(1)
   { 
    if(zhming==1)
    {
      LCD_P8x16Str(60,6,"go");
      delay_ms(1000);
      LCD_CLS();
      
      
      Motor_Lock = 0;
      Servo_Lock = 0;
      CAR_GO=1;
    }
    zhming =2;

    //ͼ��ɼ�
    if(TIME1flag_20ms == 1)//20ms�ڸ�������ĳ����ǿ���ִ����ģ�
    {
       TIME1flag_20ms = 0;
 
       binaryzation_F(Pixel_F);
       get_front();
       route_type_F();
       dir_fg=1;
       
       //�µ�--------------��ߺ������ڹ���
       if((front_l_flag == 1)&&(front_r_flag == 1)&&(front_r-front_l)>front_width+22)
       {
         if(guopo==0) 
         {
           dazhi=1;
           guopo=1;
           po_gap=1;
           shapo=1;
           HWPO=1;
         } 
       }
         
       if(dazhi==1)
       { 
         if(po_count++<PO_ct)
         {
           if(Abs(front_OFFSET-front_OFFSET_pre)<20)
           {}
           else
             front_OFFSET=front_OFFSET_pre;//front_OFFSET_pre;δ����
         }
         else
           dazhi=0;
       }
       
       if(po_gap==1)
       {
         po_gap_ct++;
         if(po_gap_ct>150)
         {
           po_gap=0;
           po_gap_ct=0;
           po_count=0;
           guopo=0;
         }
       }
       
       if(HWPO==1)
       {
         HWPO_ct++;
         if(HWPO_ct>35)  HWPO=0;
       }
       //--------------------------------------------------------
       //�������
       SetServoVoltage();

       //LCD_CLS();
       //̫������������Ӧ�����Ǽ��������⣬���������
       //delay_ms(20);//�ڴ�������ʱ���Ͳ���������㣡����ͼ��ɼ��ŵ�����������˴�����ʱ
       LCD_P8x16_number(10,0,front_l_flag);
       LCD_P8x16_number(70,0,front_r_flag);
       LCD_P8x16_number(10,2,front_l);
       LCD_P8x16_number(70,2,front_r);
       //LCD_P8x16_number_4(0,4,hongwai_l);//LCD_P8x16_number(0,4,IT_ref);//LCD_P8x16_number(0,4,cl_f_pre);
       LCD_P8x16_number_4(70,4,fangcha_qian_f);//LCD_P8x16_number_4(70,4,hongwai_r);//LCD_P8x16_number(70,4,sha_width); //LCD_P8x16_number(70,4,IntegrationTime_Front);//LCD_P8x16_number(70,4,(front_l+front_r)/2);//LCD_P8x16_number(70,4,polook);//LCD_P8x16_number(70,4,mq_look1+mq_look2);
       LCD_P8x16_number(0,6,front_width);//LCD_P8x16_number_4(0,6,HONGWAI_L);//
       LCD_P8x16_number(70,6,front_r-front_l);//LCD_P8x16_number_4(70,6,HONGWAI_R);//
    } 
    
    //�ٶȿ���
    if(speedflag==1)
    {
      speedflag=0;
      GetMotorPulse();
      Speed_PID();
    }
    
    //����ͣ��
    /*if(gpio_read(PORTC,8)==1) 
    {
      stop_flag=1;
      LCD_P8x16Str(0,4,"stop");
    }*/
   } 
}

void system_init()
{   
    int i;
    //�ر����ж�
    DisableInterrupts;                          
    //���ڳ�ʼ��
    uart_init(UART3,periph_clk_khz,115200);     
    //UART_C2_REG(UART3)|=UART_C2_RIE_MASK;     //����UART�����ж�
    //enable_irq(51);			        //���������ŵ�IRQ�ж� 
    //set_irq_priority (51, 0);
    
    //gpio_init (PORTC,8,0,0);                    //���߽���
    
    
    //���Ƶ�ʳ�ʼ��
    FTM_PWM_Init(0,300);                         //���Ƶ�ʳ�ʼ�� pwmƵ��Ϊ300Hz������3.3ms
    FTM_PWM_Open(0,2,ZHONG);
    
    //�����ʼ�� 
    FTM_PWM_Init(1,10000);                       //���Ƶ�ʳ�ʼ�� pwmƵ��Ϊ10kHz������0.1ms
    Motor_init();                                
    
    //����������ٳ�ʼ��
    FTM2_QUAD_Iint();                           
    
    //CCD��ʼ��
    CCD_init();
    
    //OLEDҺ����ʼ��
    LCD_Init();                                 
    
    PID_SetKpid(1.7,0.05,0.3);                   //�ٶ�PID��ʼ����������
    PID_SetPoint(1000);                          //��ʼ�ٶ��趨
    
    hw_adc_init(0);
    hw_adc_init(1);
    for(i=0;i<200;i++)
    {
      GetSamplezhi();                           //������ѹֵ
    }
    GetOFFSET();                                //�õ���ƫֵ
    delay_ms(50);
    
    hw_pit_init(0,60000);                       //����pit��ʱ��0,1ms�ж�(60000)
    enable_pit_interrupt(0);                    //��pit�ж�0ͨ��
    EnableInterrupts;                           //�������ж�,�жϿ����󣬴˿̾ͽ���1ms�Ķ�ʱ��
}
