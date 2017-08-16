#include "includes.h"

//-----------
#define SI_SetVal()                         gpio_init (PORTE , 0, 1, 1)
#define SI_ClrVal()                         gpio_init (PORTE , 0, 1, 0)
#define CLK_SetVal()                        gpio_init (PORTE , 1, 1, 1)
#define CLK_ClrVal()                        gpio_init (PORTE , 1, 1, 0)
#define SI_SetVal_1()                       gpio_init (PORTA , 12, 1, 1)
#define SI_ClrVal_1()                       gpio_init (PORTA , 12, 1, 0)
#define CLK_SetVal_1()                      gpio_init (PORTA , 13, 1, 1)
#define CLK_ClrVal_1()                      gpio_init (PORTA , 13, 1, 0)
#define DIR_DEFAULT_MIN                     50
#define DIRECTION_CONTROL_PERIOD            20
#define DIR_CONTROL_P                       0.017
#define DIR_CONTROL_D                       0.0007
#define GATE                                45
#define DIRECTION_CONTROL_DEADVALUE         0
#define DIRECTION_CONTROL_OUT_MAX	    MOTOR_OUT_MAX
#define DIRECTION_CONTROL_OUT_MIN	    MOTOR_OUT_MIN

//------------
#define MOTOR_OUT_DEAD_VAL                  0
#define MOTOR_SPEED_POSITIVE	            (g_fMotorOut > 0)
#define MOTOR_OUT_MAX                       1.0
#define MOTOR_OUT_MIN                      -1.0
//------------------------------------------------------------------------------
int16   g_nInputVoltage[5]={0};
int32	g_lnInputVoltageSigma[5]={0};    	
#define VOLTAGE_GRAVITY                     g_nInputVoltage[0]
#define VOLTAGE_GYRO                        g_nInputVoltage[1]
#define VOLTAGE_LEFT                        g_nInputVoltage[2]
#define VOLTAGE_RIGHT                       g_nInputVoltage[3]		
#define DIR_CONTROL_D_VALUE                 g_nInputVoltage[4]
#define key_1                               (((GPIO_PDIR_REG(PTA_BASE_PTR))>>(19))&1)
//------------------------------------------------------------------------------

//-----------
float g_fCarSpeed=0;
float g_fCarSpeedstart=0;
int16 g_nMotorPulse=0;
int16 g_nRightMotorPulse=0;
float g_fSpeedControlIntegral=0;
float g_fSpeedControlOutOld =0;
float g_fSpeedControlOutNew =0;
float g_fSpeedControlOut =0;
uint8 g_nSpeedControlPeriod =0;

//-----------
float g_fDirectionControlOutOld=0;
float g_fDirectionControlOutNew =0;
float g_fDirectionControlOut=0;
int16 g_nDirectionControlPeriod=0;


int16 front_l=0,front_r=127;
int16 route_view;
int16 route_mid;
int16 front_l_view,front_r_view;
int16 front_max=0;
int16 front_min=0;
int16 Aver_F=0;
int16 delta_l=0,delta_r=0;
int16 front_l_last=0,front_r_last=0;
int16 front_l_pre1=0,front_r_pre1=0,front_l_pre2=0,front_r_pre2=0,front_l_pre3=0,front_r_pre3=0,front_l_pre4=0,front_r_pre4=0;
int16 front_width=0;
int16 cl_f=0,cl_f_pre=0;
int16 Lfch=0,Rfch=0;

int16 front_l_reference=0,front_r_reference=128;
int16 front_OFFSET_KZ=0;
int16 front_reference;
int16 front_OFFSET_KZ_pre=0,front_OFFSET=0,front_OFFSET_pre=0,front_OFFSET_pre1=0,front_OFFSET_pre2=0,front_OFFSET_pre3=0,front_OFFSET_pre4=0,front_OFFSET_pre5=0,front_OFFSET_pre6=0,front_OFFSET_pre7=0,front_OFFSET_pre8=0,front_OFFSET_pre9=0,front_OFFSET_pre10=0;//��һ��λ��ƫ��
int16 d_err1=0,d_err2=0,d_err3=0,d_err4=0,d_err5=0,d_err6=0,d_err7=0,d_err8=0,d_err9=0;


int16 zong_l=0,zong_r=127;

int16 zong_l_view,zong_r_view;
int16 zong_max=0;
int16 zong_min=0;
int16 Aver_Z=0;
int16 zong_l_last=0,zong_r_last=0;
int16 zong_l_pre=0,zong_r_pre=0;
int16 zong_width=0;
int16 cl_z=0;

int16 zong_l_reference=0,zong_r_reference=128;
int16 zong_OFFSET_KZ=0;
int16 zong_reference;
int16 zong_OFFSET_KZ_pre=0,zong_OFFSET=0,zong_OFFSET_pre=0,zong_OFFSET_pre1=0,zong_OFFSET_pre2=0,zong_OFFSET_pre3=0,zong_OFFSET_pre4=0,zong_OFFSET_pre5=0,zong_OFFSET_pre6=0,zong_OFFSET_pre7=0,zong_OFFSET_pre8=0,zong_OFFSET_pre9=0,zong_OFFSET_pre10=0;//��һ��λ��ƫ��
int16 z_err1=0,z_err2=0,z_err3=0,z_err4=0,z_err5=0,z_err6=0,z_err7=0,z_err8=0,z_err9=0;

int16 servo_duty=4780;//���ռ�ձ�

int16 D_err=0;

//------------
float g_fMotorOut=0;
int16 g_nMotorPulseSigma =0;
extern int16 OutData[4] = { 0 };//����ʾ�������
extern uint8 a,b;
extern int16 speedflag;
//----------------------------------------------------------------------------------------------------
int16   gravity,voltage_gravity;
extern  int16   hongwai_l,hongwai_r;
extern  int16   HONGWAI_L,HONGWAI_R;

void GetSamplezhi()
{
  g_lnInputVoltageSigma[0]+= hw_ad_ave(0,17,12,20);//��1   
  g_lnInputVoltageSigma[1]+= hw_ad_ave(1,7,12,20);//��1
  //g_lnInputVoltageSigma[2]+= hw_ad_ave(0,12,12,20);
}

void GetOFFSET()
{
  HONGWAI_L=g_lnInputVoltageSigma[0]/200;
  HONGWAI_R=g_lnInputVoltageSigma[1]/200;
  //gyro_direction= g_lnInputVoltageSigma[2]/200;  
}

void get_ad()
{
  hongwai_l = hw_ad_ave(0,17,12,20);              
  hongwai_r = hw_ad_ave(1,7,12,20);                   
  //DIR_CONTROL_D_VALUE = hw_ad_ave(0,12,12,20);            //---------��ת�������ǵ�ѹ�ź�(PTB2)
}

//-------------------------------------�������-------------------------------
void CCD_init(void)
{
  gpio_init (PORTE , 0, 1, 1);
  gpio_init (PORTE , 1, 1, 1);
  gpio_init (PORTA , 12, 1, 1);
  gpio_init (PORTA , 13, 1, 1);
  hw_adc_init(1);
}
/*
void button_init()
{
   SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;    //��PORTD�˿ڵ�ʱ��
   PORTA_PCR19=(0|PORT_PCR_MUX(1));
   gpio_init (PORTA,19, 0,0);
}
*/
void ADC0_stop(void)

{
  hw_adc_convertstop(0,8);
  hw_adc_convertstop(0,9);
  hw_adc_convertstop(0,12);
}

void ADC0_start(void)
{
  hw_adc_convertstart(0,8,12);
  hw_adc_convertstart(0,9,12);
  hw_adc_convertstart(0,12,12);
}


void StartIntegrationFront(void)
{
  unsigned char i;

  SI_SetVal();            /* SI  = 1 */
  SamplingDelay();
  CLK_SetVal();           /* CLK = 1 */
  SamplingDelay();
  SI_ClrVal();            /* SI  = 0 */
  SamplingDelay();
  CLK_ClrVal();           /* CLK = 0 */

  for(i=0; i<127; i++)
  {
      SamplingDelay();
      SamplingDelay();
      CLK_SetVal();       /* CLK = 1 */
      SamplingDelay();
      SamplingDelay();
      CLK_ClrVal();       /* CLK = 0 */
  }
  SamplingDelay();
  SamplingDelay();
  CLK_SetVal();           /* CLK = 1 */
  SamplingDelay();
  SamplingDelay();
  CLK_ClrVal();           /* CLK = 0 */
}

void StartIntegrationZong(void)
{
  unsigned char i;

  //SI_SetVal();            /* SI  = 1 */
  SI_SetVal_1();
  SamplingDelay();
  //CLK_SetVal();           /* CLK = 1 */
  CLK_SetVal_1();
  SamplingDelay();
  //SI_ClrVal();            /* SI  = 0 */
  SI_ClrVal_1();
  SamplingDelay();
  //CLK_ClrVal();           /* CLK = 0 */
  CLK_ClrVal_1();

  for(i=0; i<127; i++)
  {
      SamplingDelay();
      SamplingDelay();
      //CLK_SetVal();       /* CLK = 1 */
      CLK_SetVal_1();
      SamplingDelay();
      SamplingDelay();
      //CLK_ClrVal();       /* CLK = 0 */
      CLK_ClrVal_1();
  }
  SamplingDelay();
  SamplingDelay();
  //CLK_SetVal();           /* CLK = 1 */
  CLK_SetVal_1();
  SamplingDelay();
  SamplingDelay();
  //CLK_ClrVal();           /* CLK = 0 */
  CLK_ClrVal_1();
}



void ImageCapture_F(uint8 * ImageData_F)
{
    unsigned char i;
    extern uint8 AtemP;

    SI_SetVal();            
    SamplingDelay();
    CLK_SetVal();          
    SamplingDelay();
    SI_ClrVal();           
    SamplingDelay();
    
    //Delay 10us for sample the first pixel
    for(i = 0; i < 150; i++)//��10us��Ϊ10*8/5us
    {
      SamplingDelay();  //200ns
    }
    //Sampling Pixel_F 1
    *ImageData_F =  hw_ad_once(1, 6, 8);
    ImageData_F ++ ;
    CLK_ClrVal();          
    
    for(i=0; i<127; i++)
    {
        SamplingDelay();
        SamplingDelay();
        CLK_SetVal();       
        SamplingDelay();
        SamplingDelay();

        //Sampling Pixel_F 2~128
        *ImageData_F = hw_ad_once(1, 6, 8);
        ImageData_F ++;
        CLK_ClrVal();      
    }
    SamplingDelay();
    SamplingDelay();
    CLK_SetVal();          
    SamplingDelay();
    SamplingDelay();
    CLK_ClrVal();          
}

void ImageCapture_Z(uint8 * ImageData_Z)
{
    unsigned char i;
    extern uint8 AtemP;

    SI_SetVal_1();
    SamplingDelay();
    CLK_SetVal_1();
    SamplingDelay();
    SI_ClrVal_1();
    SamplingDelay();
    //Delay 10us for sample the first pixel
    for(i = 0; i < 80; i++)//��10us��Ϊ10*10/5us
    {
      SamplingDelay();  //200ns
    }
    //Sampling Pixel_Z 1
    *ImageData_Z= hw_ad_once(1, 14, 8);
    ImageData_Z ++;
    CLK_ClrVal_1();

    for(i=0; i<127; i++)
    {
        SamplingDelay();
        SamplingDelay();
        CLK_SetVal_1();
        SamplingDelay();
        SamplingDelay();
        
        //Sampling Pixel_F 2~128
        *ImageData_Z= hw_ad_once(1, 14, 8);
        ImageData_Z++;
        CLK_ClrVal_1();
    }
    SamplingDelay();
    SamplingDelay();
    CLK_SetVal_1();
    SamplingDelay();
    SamplingDelay();
    CLK_ClrVal_1();
}

int16  TargetPixelAverageVoltage = 30;                          //�趨Ŀ��ƽ����ѹֵ��ʵ�ʵ�ѹ��10�� 
int16  PixelAverageVoltageError = 0;                            //�趨Ŀ��ƽ����ѹֵ��ʵ��ֵ��ƫ�ʵ�ʵ�ѹ��10�� 
int16  TargetPixelAverageVoltageAllowError = 2;                 //�趨Ŀ��ƽ����ѹֵ�����ƫ�ʵ�ʵ�ѹ��10�� 

extern uint8 Pixel_F[128];
uint8        PixelAverageValue_Front=0;                                       //128�����ص��ƽ��ADֵ 
uint8        PixelAverageVoltage_Front=0;                                     //128�����ص��ƽ����ѹֵ��10�� 
uint8        IntegrationTime_Front=10;                                        //�ع�ʱ�䣬��λms 
void CalculateIntegrationTimeFront(void)
{
    PixelAverageValue_Front = PixelAverage(128,Pixel_F);/* ����128�����ص��ƽ��ADֵ */
    PixelAverageVoltage_Front = (uint8)((int)(PixelAverageValue_Front * 25 / 128));/* ����128�����ص��ƽ����ѹֵ,ʵ��ֵ��10�� */
    PixelAverageVoltageError = TargetPixelAverageVoltage - PixelAverageVoltage_Front;
    if(PixelAverageVoltageError < -TargetPixelAverageVoltageAllowError)
      IntegrationTime_Front--;//����Ŀ��ֵ���ع�ʱ�����
    if(PixelAverageVoltageError > TargetPixelAverageVoltageAllowError)
      IntegrationTime_Front++;//����Ŀ��ֵ���ع�ʱ��С��
    if(IntegrationTime_Front <= 1)
      IntegrationTime_Front = 1;
    if(IntegrationTime_Front >= 20)
      IntegrationTime_Front = 20;
}

extern uint8 Pixel_Z[128];
uint8        PixelAverageValue_Zong=0;
uint8        PixelAverageVoltage_Zong=0;
uint8        IntegrationTime_Zong = 2;                              // �ع�ʱ�䣬��λms
void CalculateIntegrationTimeZong(void)
{
    PixelAverageValue_Zong = PixelAverage(128,Pixel_Z);/* ����128�����ص��ƽ��ADֵ */
    PixelAverageVoltage_Zong = (uint8)((int)(PixelAverageValue_Zong * 25 / 128));/* ����128�����ص��ƽ����ѹֵ,ʵ��ֵ��10�� */
    PixelAverageVoltageError = TargetPixelAverageVoltage - PixelAverageVoltage_Zong;
    if(PixelAverageVoltageError < -TargetPixelAverageVoltageAllowError)
      IntegrationTime_Zong--;
    if(PixelAverageVoltageError > TargetPixelAverageVoltageAllowError)
      IntegrationTime_Zong++;
    if(IntegrationTime_Zong <= 1)
      IntegrationTime_Zong = 1;
    if(IntegrationTime_Zong >= 3)
      IntegrationTime_Zong = 3;
}

uint8 PixelAverage(uint8 len, uint8 *data)
{
  uint8 i;
  uint16 sum = 0;
  for(i = 0; i<len; i++)
  {
     sum = sum + *data++;
  }
  return ((uint8)(sum/len));
}

int Abs(int a)
{
  int i;
  i=a;
  if(i<0) i=-a;
  else i=a;
  return i;
}

//CCD��ֵ��
extern  uint8  IT_ref;
int16  bodong=0;
int16 high_aver_f=0,low_aver_f=0;
void binaryzation_F(unsigned char *point)
{
  uint8 i,j,num_high_f=0,num_low_f=0,max_label=0,min_label=0;
  uint8 tb_fg=0;
  
  front_max=Pixel_F[7];
  front_min=Pixel_F[7];

  for(i=7;i<=120;i++)
  {
    if(front_max<Pixel_F[i])
    {
      max_label=i;
      front_max=Pixel_F[i];
    }
    else if(front_min>Pixel_F[i])
    {
      min_label=i;
      front_min=Pixel_F[i];
    }
  }
  if((front_max-Pixel_F[max_label-2]>10)&&(front_max-Pixel_F[max_label+2]>10)&&(Abs(Pixel_F[max_label-2]-Pixel_F[max_label+2])<10))
  {
    Pixel_F[max_label]=(Pixel_F[max_label-2]+Pixel_F[max_label+2])/2;
    front_max=Pixel_F[max_label];
  }
  Aver_F=(front_max+front_min)/2;
  /*
  //ȷ���Ƿ����������
  tb_fg=0;
  for(i=7;i<120;i++)
  {
    if(Abs(Pixel_F[i]-Pixel_F[i+1])>(front_max-front_min)/5)
    {
      tb_fg=1;
      break;
    }
  }
  */
  for(i=7;i<=120;i++)
  {
    if(Pixel_F[i]>=Aver_F) 
    {
      high_aver_f+=Pixel_F[i];
      num_high_f++;
    }
    else 
    {
      low_aver_f+=Pixel_F[i];
      num_low_f++;
    }
  }
  high_aver_f=high_aver_f/num_high_f;
  low_aver_f=low_aver_f/num_low_f;
  Aver_F=(high_aver_f+low_aver_f)/2;
  //LCD_P8x16_number(10,4,high_aver_f);
  //LCD_P8x16_number(70,4,low_aver_f);

  //tb_fg=0;
  for(i=7;i<120;i++)
  {
    bodong+=Abs(Pixel_F[i]-Aver_F);
  }
  bodong=bodong/114;
  //����
  if(bodong>15)
  {
    //ִ�ж�ֵ��
    for(i=7;i<=120;i++)
    {
      if(Pixel_F[i]>=Aver_F) Pixel_F[i]=1;
      else Pixel_F[i]=0;
    }
    
    if(Pixel_F[7]==1)
      for(i=0;i<=7;i++) Pixel_F[i]=1;
    else
      for(i=0;i<=7;i++) Pixel_F[i]=0;
    
    if(Pixel_F[120]==1)
      for(i=120;i<=127;i++) Pixel_F[i]=1;
    else
      for(i=120;i<=127;i++) Pixel_F[i]=0;
    
  }
  //ä��
  else if(bodong<=15)
  {
     if(IntegrationTime_Front>IT_ref)
       for(i=0;i<=127;i++) Pixel_F[i]=0;
     else
       for(i=0;i<=127;i++) Pixel_F[i]=1;
  }
  /*
  if(tb_fg==1)
  {
    
  }
  */
  //�˲�
  for(j=3;j<125;j++)
  {
    if( Pixel_F[j]==0)
    {
      if((Pixel_F[j-1]==1)&&(Pixel_F[j+1]==1))
        Pixel_F[j]=1;
    }
    if(Pixel_F[j]==1)
    {
      if((Pixel_F[j-1]==0)&&(Pixel_F[j+1]==0))
        Pixel_F[j]=0;
    }
  }
}

int16 high_aver_z=0,low_aver_z=0;
void binaryzation_Z(unsigned char *point)
{
  uint8 i,j,num_high_z=0,num_low_z=0,max_label=0,min_label=0;
  zong_max=Pixel_Z[1];
  zong_min=Pixel_Z[1];

  for(i=1;i<127;i++)
  {
    if(zong_max<Pixel_Z[i])
    {
      max_label=i;
      zong_max=Pixel_Z[i];
    }
    else if(zong_min>Pixel_Z[i])
    {
      min_label=i;
      zong_min=Pixel_Z[i];
    }
  }
  if((zong_max-Pixel_Z[max_label-2]>10)&&(zong_max-Pixel_Z[max_label+2]>10)&&(Abs(Pixel_Z[max_label-2]-Pixel_Z[max_label+2])<10))
  {
    Pixel_Z[max_label]=Pixel_Z[max_label-2]+Pixel_Z[max_label+2];
    zong_max=Pixel_Z[max_label];
  }
  Aver_Z=(zong_max+zong_min)/2;
  for(i=0;i<127;i++)
  {
    if(Pixel_Z[i]>=Aver_Z) 
    {
      high_aver_z+=Pixel_Z[i];
      num_high_z++;
    }
    else 
    {
      low_aver_z+=Pixel_Z[i];
      num_low_z++;
    }
  }
  high_aver_z=high_aver_z/num_high_z;
  low_aver_z=low_aver_z/num_low_z;
  Aver_Z=(high_aver_z+low_aver_z)/2;
  //LCD_P8x16_number(10,4,high_aver_z);
  //LCD_P8x16_number(70,4,low_aver_z);

  for(i=0;i<128;i++)
  {
    if(*point>=Aver_Z)//PixelAverageValue_Front*0.6
      *point=1;
    else
      *point=0;
    point++;
  }
  //�˲�
  for(j=3;j<125;j++)
  {
    if( Pixel_Z[j]==0)
    {
      if((Pixel_Z[j-1]==1)&&(Pixel_Z[j+1]==1))
        Pixel_Z[j]=1;
    }
    if(Pixel_Z[j]==1)
    {
      if((Pixel_Z[j-1]==0)&&(Pixel_Z[j+1]==0))
        Pixel_Z[j]=0;
    }
  }
  
  //for(j=0;j<128;j++) Pixel_Z[j]=Pixel_Z[j]*100;
}

//-----------------------------------------------------------------------------------------------------------------------
int16   rensha_count=0;
extern float k_out;
int16  lost_all_count=0;
uint8  lost_all_flag=0,lost_left_flag=0,lost_right_flag=0;
uint8  Rdiaotou_flag=0;
int16  Rdiaotou_count=0,Rqing_count=0;
uint8  Ldiaotou_flag=0;
int16  Ldiaotou_count=0,Lqing_count=0;
uint8  banma_flag=0;
uint8  LHOLDdiao_flag=0,RHOLDdiao_flag=0;
uint8  Lendiao=0,Rendiao=0;

uint8  rzguo_flag=0;
uint8  rzguo_count=0;

int16   ZZ_count=0;

int16 route_f[100]={0};
int16 chafang_f[100]={0};
int16 route_ave_f=0;
int16 fangcha_f=0,fangcha_qian_f=0,fangcha_hou_f=0;
int16 Rpre1=0,Rpre2=0,Rpre3=0,Rpre4=0,Lpre1=0,Lpre2=0,Lpre3=0,Lpre4=0;
int16 R_aver=0,L_aver=0;
int16 L_fch=0,R_fch=0;
int16 qpx_count=0;
uint8 rzop=1;
int16 front_l_fg_last=0,front_r_fg_last=0;
int16 front_l_flag=0,front_r_flag=0;
int16 real_l=0,real_r=0;
uint8 mq=0,mq_last=0;

int16 LR_count=0;
int16 Lr_count=0;
int16 lR_count=0;
int16 lr_count=0;

int16 jiao_L=20,jiao_R=23;

extern   int16      fch_dp1,fch_dp2,fch_dp3;
uint8  ga_fg=0,gl_fg=0,gr_fg=0;
uint8  ga_fg_last=0,gl_fg_last=0,gr_fg_last=0;

uint8  sz_in=0;
uint8  sz_l=0,sz_r=0;
int16  sz_in_ct=0;
uint8  mq_look1=0,mq_look2=0,mq_look3=0,mq_look4=0;

int16  OFFSET_keep=20;
extern uint8  CAR_GO;
/*
1-�Գ�����
  63
*/
void get_front()
{
    int16 i,j;
    
    if(CAR_GO==1)
    {
      qpx_count++;
      if(qpx_count>35) qpx_count=36;
    }
    
    
    ga_fg=0;
    gl_fg=0;
    gr_fg=0;

    mq=0;
    
    if(LHOLDdiao_flag==0)
    {
      Ldiaotou_flag=0;
    }
    if(RHOLDdiao_flag==0)
    {
      Rdiaotou_flag=0;
    }
    //Ѱ��
    for(i=121;i>=6;i--)
    {
      if((Pixel_F[i]==1)&&(Pixel_F[i-1]==0)&&(Pixel_F[i-2]==0)&&(Pixel_F[i-3]==0))
      {
        front_l = i-2;
        front_l_flag = 1;
        break;
      }
      front_l_flag = 0;
    }
    for(j=6;j<=121;j++)
    {
       if((Pixel_F[j]==1)&&(Pixel_F[j+1]==0)&&(Pixel_F[j+2]==0)&&(Pixel_F[j+3]==0))
      {
        front_r = j+2;
        front_r_flag = 1;
        break;
      }
      front_r_flag = 0;
    }
    
    /*���ϸ�µ��������������򵥻�*/
    //A.�ɵ���������
    if((front_l_flag == 1)&&(front_r_flag == 1))
    {  
      LR_count++;
      Lr_count=0;
      lR_count=0;
      lr_count=0;
      
      //a.1.��ֵ������ֵ,����ֻ��һ�����ñ�
      //--��Ī���������(29,98)
      //  1-�ڽ�ʮ��
      //  2-������
      //  3-��ʮ��
      //  4-ע��front_width��(front_r_last-front_l_last)֮�������
      if(front_l>front_r)            
      { 
        if(qpx_count>35)//��ֹ����ʱ��CCD�ɵ������߳���
        {
          //------------------------------------------------------------------
          if(mq_last==1)
          {
            //mq=mq_last;
            //if(ga_fg_last==1)  ga_fg=1;
            //if(gl_fg_last==1)  gl_fg=1;
            //if(gr_fg_last==1)  gr_fg=1;
            
            //front_l=front_l_last;
            //front_r=front_r_last;
            if((front_l_fg_last==1)&&(front_r_fg_last==0))  front_r=front_l+(front_r_last-front_l_last);
            if((front_l_fg_last==0)&&(front_r_fg_last==1))  front_l=front_r-(front_r_last-front_l_last);
            
            //front_l_flag=front_l_fg_last;
            //front_r_flag=front_r_fg_last;
          }
          else
          {
            //-m1-//
            /*front_l=front_l_last;
            front_r=front_r_last;*/
            //-m2-//
            /*if(Abs((front_l+front_l+front_width)/2-cl_f_pre)>Abs((front_r+front_r-front_width)/2-cl_f_pre)) 
              front_l=front_r-front_width;
            else 
              front_r=front_l+front_width;*/
            //-m3-//
            if(Abs(front_l-front_l_last)<Abs(front_r-front_r_last))
              front_r = front_l+front_width;
            else
              front_l = front_r-front_width;
            //-m4-//
            /*if(gl_fg_last==1)
            {
              gl_fg=1;
              front_r = front_l+front_width;
            }
        
            if(gr_fg_last==1)
            {
              gr_fg=1;
              front_l = front_r-front_width;
            }
            
            if(ga_fg_last==1)
            {
              front_l=front_l_last;
              front_r=front_r_last;
            }*/
            //-m5-//
            //if(front_OFFSET_pre1<0)  front_l = front_r-(front_r-front_r_last);
            //else front_r = front_l+(front_r-front_r_last);
            //-m6-//
          }
        }
        else
        { 
           /*if(ga_fg_last==1)  ga_fg=1;
           if(gl_fg_last==1)  gl_fg=1;
           if(gr_fg_last==1)  gr_fg=1;*/
          
           front_l=front_l_last;
           front_r=front_r_last;
        }
      }
      //a.2.��ֵ������ֵ,����
      else
      {
        if(front_r-front_l<front_width-5) 
        {
          /*if(ga_fg_last==1)  ga_fg=1;
          if(gl_fg_last==1)  gl_fg=1;
          if(gr_fg_last==1)  gr_fg=1;*/
          
          //front_l=front_l_last;
          //front_r=front_r_last;
          //if((front_l+front_r)/2<front_reference) front_l=front_r-(front_r_last-front_l_last);
          //else front_r = front_l+(front_r_last-front_l_last);
        }
        else if(front_r-front_l>=front_width-5)
        {
          //ga_fg=1;
          
          /*if(qpx_count>25)
          {
            //�п��ܳ�����ȫ�ɵ��������
            if(Abs((front_l+front_r)/2-cl_f_pre)>15)//������
            {
              front_l=front_l_last;
              front_r=front_r_last;
            }
            else
              ga_fg=1;
          }
          else
          {}*/
        }
      }  
    }
    //B.�����ݶ�ʧ
    else if((front_l_flag == 1)&&(front_r_flag == 0))
    {
      LR_count=0;
      Lr_count++;
      lR_count=0;
      lr_count=0;
      
      //ȫ��
      if(front_l>cl_f_pre)//cl_f_pre
      {
        //gr_fg=1;
        front_l=front_l_last;
        front_r=front_r_last;
      }
      //-m2-//�������ж�--------------
      else if(front_l<=cl_f_pre)
      { 
        //gl_fg=1;
        //�ڡ�ʮ���䡱����ƫ��
        if(front_l<127-front_width-15)//-10(29,69,98)
        {
            Rdiaotou_flag=1;
          
            Lpre4=Lpre3;
            Lpre3=Lpre2;
            Lpre2=Lpre1;
            Lpre1=front_l;
            //A.ʵ����front_width���Ǵ�ʱʵ�ʵ��������
            //B.�˴�������ʷֵ���ڹ�����������Ӱ��
            //-m1-//
            front_r =front_l+(front_r_last-front_l_last); 
            
            //front_l=front_l-((front_r_last-front_l_last)-front_width)/2;
            //front_r=front_r-((front_r_last-front_l_last)-front_width)/2;
            //-m2-//
            //front_l=front_l_last;
            //front_r=front_r_last;
        } 
        else 
        {   //-m1-//
            front_r =front_l+(front_r_last-front_l_last);
            
            //front_l=front_l-((front_r_last-front_l_last)-front_width)/2;
            //front_r=front_r-((front_r_last-front_l_last)-front_width)/2;
        }
      }
    }
    //C.�����ݶ�
    else if((front_l_flag == 0)&&(front_r_flag == 1))
    { 
      LR_count=0;
      Lr_count=0;
      lR_count++;
      lr_count=0;
      
      if(front_r<cl_f_pre)//cl_f_pre
      {
        //gl_fg=1;
        front_l=front_l_last;
        front_r=front_r_last;
      }
      //2.�������ж�
      else if(front_r>=cl_f_pre)
      { //gr_fg=1;
        //�ڡ�ʮ���䡱����ƫ��
         if(front_r>front_width+15)//·����ÿ�������Ч���������+10(29,69,98)
         {
           Ldiaotou_flag=1;
           
           Rpre4=Rpre3;
           Rpre3=Rpre2;
           Rpre2=Rpre1;
           Rpre1=front_r;
           //-m1-//
           front_l=front_r-(front_r_last-front_l_last);
           
           //front_l=front_l+((front_r_last-front_l_last)-front_width)/2;
           //front_r=front_r+((front_r_last-front_l_last)-front_width)/2;
           //-m2-//
           //front_l=front_l_last;
           //front_r=front_r_last;
           
         } 
         else
         { //-m1-//
           front_l=front_r-(front_r_last-front_l_last);
           
           //front_l=front_l+((front_r_last-front_l_last)-front_width)/2;
           //front_r=front_r+((front_r_last-front_l_last)-front_width)/2;
         }
      }
    }
    //D.�������ݶ���ʧ
    else if((front_l_flag == 0)&&(front_r_flag == 0))
    { 
      //ȫ�ף�ֻ��ʮ����
      if(IntegrationTime_Front<IT_ref)
      {
        //-m3-//-------------------
        mq=1;
        
        front_l_flag=front_l_fg_last;
        front_r_flag=front_r_fg_last;
        
        front_l=front_l_reference;
        front_r=front_r_reference;
        
        //front_l=front_l_last;
        //front_r=front_r_last;
        
        //if(ga_fg_last==1)  ga_fg=1;
        //if(gl_fg_last==1)  gl_fg=1;
        //if(gr_fg_last==1)  gr_fg=1;  
      }
      //ȫ�ڣ����ʴ���䴦
      else if(IntegrationTime_Front>IT_ref)
      {
        front_l=front_l_last;
        front_r=front_r_last;
        
        /*if(ga_fg_last==1)  ga_fg=1;
        if(gl_fg_last==1)  gl_fg=1;
        if(gr_fg_last==1)  gr_fg=1;*/ 
      }
      
      LR_count=0;
      Lr_count=0;
      lR_count=0;
      lr_count++;
    }
    
    mq_last=mq;
    
    if(rzop==1)
    {
    //-m2-//�������������ж�������
    //�ҵ�ͷ-----------------------�������ֵ
    if(Rdiaotou_flag==1)
    {
      //gl_fg=1;
      
      Rdiaotou_count++;
      if(Rdiaotou_count<=3)//2 
      {}
      else if(Rdiaotou_count>3&&Rdiaotou_count<20)//30
      {                                        
        if((front_r_last-front_l_last)<=(front_width+5))//1-��ֱ����ʮ���г�ͻ 2-��ν���
          Rendiao=1;
        
        if(Rendiao==1)
        {
          RHOLDdiao_flag=1;
          if(Rdiaotou_count<22)//22
          {
            front_l=157-front_width/2;
            front_r=157+front_width/2;
          }
        } 
      }
      else 
      {
        Rdiaotou_count=0;
        Rdiaotou_flag=0;
        Rendiao=0;
        RHOLDdiao_flag=0;
        rensha_count=0; 
        //---
        rzguo_flag=1;
      }
    }
    
    if(Rdiaotou_flag==0&&RHOLDdiao_flag==0)
    {
        Rdiaotou_count=0;
    }

    //���ͷ
    if(Ldiaotou_flag==1)
    {
      //gr_fg=1;
      Ldiaotou_count++;
      if(Ldiaotou_count<=3) 
      {}
      else if(Ldiaotou_count>3&&Ldiaotou_count<30)//30
      {                                         
        if((front_r_last-front_l_last)<=(front_width+5))//��ֱ����ʮ���г�ͻ
          Lendiao=1;
        
        if(Lendiao==1)
        {
          LHOLDdiao_flag=1;
          if(Ldiaotou_count<22)//22
          {
            front_l=-30-front_width/2;
            front_r=-30+front_width/2;
          } 
        }
      }
      else 
      {
        Ldiaotou_count=0;
        Ldiaotou_flag=0;
        Lendiao=0;
        LHOLDdiao_flag=0;
        rensha_count=0;
        //---
        rzguo_flag=1;
      }
    }
    
    if(Ldiaotou_flag==0&&LHOLDdiao_flag==0)
    {
        Ldiaotou_count=0;//������δ�ܼ�ʱ������
    }
  }
  
  //��ʮ��------------------------------------
  //-m1-//
  if((front_l+front_r)/2-front_reference>0)
  {
    if((front_l_flag == 0)&&(front_r_flag == 1))
    {
      front_l=front_l_last;
      front_r=front_r_last;
    }
  }
  else
  {
    if((front_l_flag == 1)&&(front_r_flag == 0))
    {
      front_l=front_l_last;
      front_r=front_r_last;
    }
  }

  //!!!����bug,��ʮ����б�������
  if(front_l>front_r)
  {
      front_l=front_l_last;
      front_r=front_r_last;
  }
  //----------------------------------------------
  
  //ֱ������
  /*
  1-�趯̬P
  2-ƽ�����ص�
  */
  //-----------------------------------
    cl_f = (front_l+front_r)/2;
    front_OFFSET = cl_f - front_reference;

    ga_fg_last=ga_fg;
    gl_fg_last=gl_fg;
    gr_fg_last=gr_fg;
    
    cl_f_pre = cl_f;
    
    front_l_fg_last=front_l_flag;
    front_r_fg_last=front_r_flag;
    
    front_l_pre4=front_l_pre3;
    front_r_pre4=front_r_pre3;
    front_l_pre3=front_l_pre2;
    front_r_pre3=front_r_pre2;
    front_l_pre2=front_l_pre1;
    front_r_pre2=front_r_pre1;
    front_l_pre1=front_l_last;
    front_r_pre1=front_r_last;
    front_l_last=front_l;
    front_r_last=front_r;
    
    front_OFFSET_pre10 = front_OFFSET_pre9;
    front_OFFSET_pre9 = front_OFFSET_pre8;
    front_OFFSET_pre8 = front_OFFSET_pre7;
    front_OFFSET_pre7 = front_OFFSET_pre6;
    front_OFFSET_pre6 = front_OFFSET_pre5;
    front_OFFSET_pre5 = front_OFFSET_pre4;
    front_OFFSET_pre4 = front_OFFSET_pre3;
    front_OFFSET_pre3 = front_OFFSET_pre2;
    front_OFFSET_pre2 = front_OFFSET_pre1;
    front_OFFSET_pre1 = front_OFFSET;
    
    //d_err1 = front_OFFSET - front_OFFSET_pre1;��Ϊ0
    d_err1 = front_OFFSET_pre1 - front_OFFSET_pre2;
    d_err2 = front_OFFSET_pre2 - front_OFFSET_pre3;
    d_err3 = front_OFFSET_pre3 - front_OFFSET_pre4;
    d_err4 = front_OFFSET_pre4 - front_OFFSET_pre5;
    d_err5 = front_OFFSET_pre5 - front_OFFSET_pre6;
    d_err6 = front_OFFSET_pre6 - front_OFFSET_pre7;
    d_err7 = front_OFFSET_pre7 - front_OFFSET_pre8;
    d_err8 = front_OFFSET_pre8 - front_OFFSET_pre9;
    d_err9 = front_OFFSET_pre9 - front_OFFSET_pre10;   
}

void route_type_F()
{
  char i;
  char fch_first=3;//��������
  char label_count=6;
  char fch_av_count=0;
  
  fangcha_f=0;
  fangcha_qian_f=0;
  fangcha_hou_f=0;
  
  fch_av_count = label_count - fch_first+1;
  //ˢ��
  route_f[0]=front_OFFSET;
  for(i=100;i>0;i--)
  {
    route_f[i] = route_f[i-1];
  }
  //ǰ3
  for(i=0;i<3;i++)
  {
    route_ave_f += route_f[i]; 
  }
  route_ave_f = route_ave_f/3;
  
  for(i=0;i<3;i++)
  {
    chafang_f[i] = route_f[i]*route_f[i];//changshi
  }
  for(i=0;i<3;i++)
  {
    fangcha_f += chafang_f[i]; 
  }
  fangcha_qian_f = fangcha_f/3;
  
  
  //��0
  route_ave_f=0;
  for(i=0;i<5;i++)
  {
    chafang_f[i] = 0;
  }
  fangcha_f=0;
  
  //����
  for(i=fch_first;i<label_count;i++)
  {
    route_ave_f += route_f[i]; 
  }
  route_ave_f = route_ave_f/label_count;
  
  for(i=fch_first;i<label_count;i++)
  {
    chafang_f[i] = route_f[i]*route_f[i];
  }
  for(i=fch_first;i<label_count;i++)
  {
    fangcha_f += chafang_f[i]; 
  }
  fangcha_hou_f = fangcha_f/fch_av_count;
}
//----------------------------------
int16  stop_flag=0;
int16  stop_count=0;
int16  black_l=0,black_r=0,zheng=0;
int16  delay_count=0;
int16  zhong=0;
extern uint8  qpx_en;
void get_fu()
{
  int16 i,j,ii=0,jj=0;
  int16 jiang_l[10]={0},jiang_r[10]={0};
  
  for(i=126;i>=2;i--)
  {
    if(Pixel_Z[i+1]==1&&Pixel_Z[i]==1&&Pixel_Z[i-1]==0&&Pixel_Z[i-2]==0)
    {
      jiang_l[ii++]=i;
    }
  }
  for(j=1;j<=125;j++)
  {
    if(Pixel_Z[j-1]==1&&Pixel_Z[j]==1&&Pixel_Z[j+1]==0&&Pixel_Z[j+2]==0)
    {
      jiang_r[jj++]=j;
    }
  }
  
  if(ii==3&&jj==3)
  {
    black_l=jiang_l[1]-jiang_r[0];
    black_r=jiang_l[0]-jiang_r[1];
    
    zhong=jiang_r[1]-jiang_l[1];
    
    zheng=(jiang_l[2]+jiang_r[2])/2;
    
    if(Abs(zong_reference-zheng)<10&&(zhong>=zong_width*9/40-5&&zhong<=zong_width*9/40+5))
      stop_flag=1;
  }
 
  if(stop_flag==1) 
  {
    if(delay_count++>15)
    {
      delay_count=0;
      stop_flag=0;
      ++stop_count;
    }
  } 
}

//--------------------------------------------------------------------------------------------------------------------------------
void get_zong()
{
    int16 i,j;
    int16 zong_l_flag,zong_r_flag;
    uint8 hold_flag=0;
    
    hold_flag=0;
    
    for(i=126;i>=4;i--)
    {
      if((Pixel_Z[i]==1)&&(Pixel_Z[i-1]==0)&&(Pixel_Z[i-2]==0)&&(Pixel_Z[i-3]==0))
      {
        zong_l = i-2;
        zong_l_flag = 1;
        break;
      }
      zong_l_flag = 0;
    }
    for(j=1;j<123;j++)
    {
       if((Pixel_Z[j]==1)&&(Pixel_Z[j+1]==0)&&(Pixel_Z[j+2]==0)&&(Pixel_Z[j+3]==0))
      {
        zong_r = j+2;
        zong_r_flag = 1;
        break;
      }
      zong_r_flag = 0;
    }
    //A.�ɵ���������
    if((zong_l_flag == 1)&&(zong_r_flag == 1))
    {  
      //a.��������ȫ���Ǳ���ʱ,���ڱ����Ҷ�ֵ������,��ֵ������Ȼ����ɵ��ڰ����� 
      if((high_aver_f-low_aver_f)>45)
      {
        //a.1.��ֵ������ֵ,�������ݶ���ʧ     
        if(zong_l>zong_r)            
        {  
          //���ҹ���ʱ�����������,�ұ��ط����ϴ�λ��,��ֵ����,��ֵ��ʵ
          if(zong_r_last-zong_r>30)
          {
            zong_l=i-2;
            zong_r=zong_l+zong_width;
          }
          //�������ʱ�����ұ�����,����ط����ϴ�λ��,��ֵ����,��ֵ��ʵ
          else if(zong_l-zong_l_last>30)
          {
            zong_r=j+2;
            zong_l=zong_r-zong_width;
          }         
        }       
        //a.2.��ֵ������ֵ,����
        else
        {}
      }
      //b.
      else
      {
        zong_l=zong_l_last;
        zong_r=zong_r_last;
        //hold_flag=1;
      }   
    }
    //B.�����ݶ�ʧ
    else if((zong_l_flag == 1)&&(zong_r_flag == 0))
    {
      if((high_aver_f-low_aver_f)>45)
      {
        if(zong_l>zong_r_last)
        {
          zong_l=zong_l_last;
          zong_r=zong_r_last;
          //hold_flag=1;
        }
        else 
        {
          zong_r =zong_l+zong_width; 
        }
        /*
        else
        {
          //�ڡ�ʮ���䡱����ƫ��
          if(front_l<127-front_width)
          {
            front_l=front_l_last+1;
            front_r=front_r_last+1;
          } 
          else 
          {
            front_r =front_l+front_width; 
          }
        }
        */
      } 
      else
      {
        zong_l=zong_l_last;
        zong_r=zong_r_last;
        //hold_flag=1;
      }
    }
    //C.�����ݶ�
    else if((zong_l_flag == 0)&&(zong_r_flag == 1))
    {
      if((high_aver_f-low_aver_f)>45)
      {
        if(zong_r<zong_l_last)
        {
          zong_l=zong_l_last;
          zong_r=zong_r_last;
          //hold_flag=1;
        }
        else
        {
           zong_l=front_r-zong_width;
        }
        /*
        else
        {  //�ڡ�ʮ���䡱����ƫ��
           if(front_r>front_width)//·����ÿ�������Ч��
           {
             front_l=front_l_last-1;
             front_r=front_r_last-1;
           } 
           else
           {
             front_l=front_r-front_width;
           }
        }
        */
      }
      else
      {
        zong_l=zong_l_last;
        zong_r=zong_r_last;
        //hold_flag=1;
      }
    }
    //D.�������ݶ���ʧ
    else if((zong_l_flag == 0)&&(zong_r_flag == 0))
    {
      if(zong_l_last>63||zong_r_last<64)
      {
        zong_l=zong_l_last;
        zong_r=zong_r_last;
        //hold_flag=1;
      }
      else
      {
        zong_l=0;
        zong_r=127;
      }
    }
    cl_z = (zong_l+zong_r)/2;
    zong_OFFSET = cl_z-zong_reference;
    
    //if(hold_flag==1) zong_OFFSET=zong_OFFSET*k_out;
      
    
    zong_l_last=zong_l;
    zong_r_last=zong_r;
    zong_l_pre=zong_l_last;
    zong_r_pre=zong_r_last;
    
    zong_OFFSET_pre10 = zong_OFFSET_pre9;
    zong_OFFSET_pre9 = zong_OFFSET_pre8;
    zong_OFFSET_pre8 = zong_OFFSET_pre7;
    zong_OFFSET_pre7 = zong_OFFSET_pre6;
    zong_OFFSET_pre6 = zong_OFFSET_pre5;
    zong_OFFSET_pre5 = zong_OFFSET_pre4;
    zong_OFFSET_pre4 = zong_OFFSET_pre3;
    zong_OFFSET_pre3 = zong_OFFSET_pre2;
    zong_OFFSET_pre2 = zong_OFFSET_pre1;
    zong_OFFSET_pre1 = zong_OFFSET;
    
    //d_err1 = front_OFFSET - front_OFFSET_pre1;��Ϊ0
    z_err1 = zong_OFFSET_pre1 - zong_OFFSET_pre2;
    z_err2 = zong_OFFSET_pre2 - zong_OFFSET_pre3;
    z_err3 = zong_OFFSET_pre3 - zong_OFFSET_pre4;
    z_err4 = zong_OFFSET_pre4 - zong_OFFSET_pre5;
    z_err5 = zong_OFFSET_pre5 - zong_OFFSET_pre6;
    z_err6 = zong_OFFSET_pre6 - zong_OFFSET_pre7;
    z_err7 = zong_OFFSET_pre7 - zong_OFFSET_pre8;
    z_err8 = zong_OFFSET_pre8 - zong_OFFSET_pre9;
    z_err9 = zong_OFFSET_pre9 - zong_OFFSET_pre10;  
}

int16 route_z[100]={0};
int16 chafang_z[100]={0};
int16 route_ave_z=0;
int16 fangcha_z=0,fangcha_qian_z=0,fangcha_hou_z=0;

void route_type_Z()
{
  char i;
  char fch_first=3;//��������
  char label_count=6;
  char fch_av_count=0;
  
  fangcha_z=0;
  fangcha_qian_z=0;
  fangcha_hou_z=0;
  
  fch_av_count = label_count - fch_first+1;
  //ˢ��
  route_z[0]=zong_OFFSET;
  for(i=100;i>0;i--)
  {
    route_z[i] = route_z[i-1];
  }
  //ǰ3
  for(i=0;i<3;i++)
  {
    route_ave_z += route_z[i]; 
  }
  route_ave_z = route_ave_z/3;
  
  for(i=0;i<3;i++)
  {
    chafang_z[i] = route_z[i]*route_z[i];
  }
  for(i=0;i<3;i++)
  {
    fangcha_z += chafang_z[i]; 
  }
  fangcha_qian_z = fangcha_z/3;
  
  
  //��0
  route_ave_z=0;
  for(i=0;i<5;i++)
  {
    chafang_z[i] = 0;
  }
  fangcha_z=0;
  
  //����
  for(i=fch_first;i<label_count;i++)
  {
    route_ave_z += route_z[i]; 
  }
  route_ave_z = route_ave_z/label_count;
  
  for(i=fch_first;i<label_count;i++)
  {
    chafang_z[i] = route_z[i]*route_z[i];
  }
  for(i=fch_first;i<label_count;i++)
  {
    fangcha_z += chafang_z[i]; 
  }
  fangcha_hou_z = fangcha_z/fch_av_count;
}


//---------------------------------------�������------------------------------------------//
               
         int32      pulse_count=0,pulse_count_pre=0;

#define  bolang     (fangcha_qian_f>100&&fangcha_qian_f<250)
extern   float      Kp,Kp_hold;
extern   float      Kd,Kd_hold;
extern   float      Ki,Ki_hold;
extern   float      Kp_ZW,Kp_WW,Kp_WZ,Kp_ZZ,Kp_BL;
extern   float      Kd_ZW,Kd_WW,Kd_WZ,Kd_ZZ,Kd_BL;
         float      k=0.02,t=0.0,chu=6.0;
         double     delta_p=0.0;
         double     I_sumerr=0.0;
         int16      ZHONG=4440;
//old1-�����-4455;//1-4500;//4-��ʮ�ּ���-4550;//5-4525good�ѻ�//6-4570-���Ҷ�����//7-4440good //8-4640�Ҳ�//9-4510 not ok//10-4530-ok    
         int16      xianfu=1300;
         
         uint8      shache_fg=0;
        
extern   uint8      d_p;
/*
1- ��ת����ת��        
   ��ǰ������
*/

void SetServoVoltage()
{         
  front_OFFSET_KZ = front_OFFSET;//P���������óȻ�ؼ�ƫ��
  
  if(d_p==1)
  {
    if(front_OFFSET_KZ>100)
    front_OFFSET_KZ=100;
    if(front_OFFSET_KZ<-100)
      front_OFFSET_KZ=-100;
    
    t=k*front_OFFSET_KZ; 
    delta_p=t-1/6*t*t*t+3*t*t*t*t*t;
    delta_p=delta_p/chu;
    
    if(delta_p>20)
      delta_p=20;
    if(delta_p<-20)
      delta_p=-20;
    
    if(delta_p<0) delta_p=-delta_p;
    
    Kp=Kp_hold+delta_p;
  }

  if(stop_flag==1)  
  {
    Kp=13;
    Kd=0;
  }
  
  D_err=front_OFFSET_KZ-front_OFFSET_KZ_pre;//D��
  servo_duty=(int16)(ZHONG+Kp*front_OFFSET_KZ+Kd*D_err);
  front_OFFSET_KZ_pre=front_OFFSET_KZ;
  
  //servo_duty=ZHONG;//+xianfu;
  //����޷�����
  if(LHOLDdiao_flag==1||RHOLDdiao_flag==1)
  {
    if(servo_duty>ZHONG+xianfu+100)
      servo_duty=ZHONG+xianfu+100;
    if(servo_duty<ZHONG-xianfu-100)
      servo_duty=ZHONG-xianfu-100;
  }
  else
  {
    if(servo_duty>ZHONG+xianfu-130)
      servo_duty=ZHONG+xianfu-130;
    if(servo_duty<ZHONG-xianfu+130)
      servo_duty=ZHONG-xianfu+130;
  }
  
  //������
  FTM_PWM_ChangeDuty(0,2,servo_duty);//servo_duty��С�������ת��ǰ����ƫ
}

//-----------------------�ٶȿ���-------------------------------------------------------//
        uint8    qd_count=0;
extern  int16    speed;
        int16    speed_pwm=0;
       
extern  int16    shache_time;
        int16    bl_shache_time=0;
extern  int16    speed;
extern  int16    speed_H;
extern  int16    speed_L;
extern  int16    speed_B;
        int16    speed_F=0;

extern  int16    speed_jian;
extern  int16    PMAX; 

extern  float    k_B;
        
        int16    Psha=60;
        uint8    shapo=0;
        
        uint8    SHACHE_TIME_1=4;//5;
        uint8    SHACHE_TIME_2=5;//5;
        uint8    SHACHE_TIME_3=6;//6;
        uint8    SHACHE_TIME_4=7;
        uint8    SHACHE_TIME_5=15;
        uint8    BL_SHACHE_TIME=15;
        
        uint8    guosha_flag=0;
        
        uint8    ZZ_flag=0;
        uint8    WW_flag=0;
        
extern  int16    Motor_Lock;
extern  int16    Servo_Lock;

        uint8    jisha=1;
        float    sp=10.0,sd=10.0;
        
        int16    qd_ct=0;
        int16    Pset=165;//170
        
        uint8    rzsc_fg=0;
        uint8    rshover_fg=0;
        uint8    tisu_fg=0;
        
        
//----------------------------------����---------------------------------------        
void GetMotorPulse()
{
  uint32 nPulse;
  nPulse=FTM2_CNT;                     
  g_nMotorPulse = (int32)nPulse;      
  g_nMotorPulseSigma +=g_nMotorPulse;
  FTM2_CNT=0;
}

//----------------------------------ɲ��1---------------------------------------
void shache1()//�����÷��
{ 
  
  /*
  1-�������̼�¼ZZ_count����Ŀ
  */
  //Z>>W
  if(fangcha_qian_f>=fch_dp2)
  {
    WW_flag = 1;
    if(ZZ_count>10)//8
    {
      if(pulse_count>Psha)  shache_fg=1;
      else
      {
        ZZ_count=0;
        speed=speed_L;
      }
    }
    else 
    {
      ZZ_count=0;
      speed=speed_L;
    }
  }
  //Z>>Z
  else if(fangcha_qian_f<fch_dp2)
  {
    if(WW_flag==1)
    {
      WW_flag = 0;
      ZZ_count = 0;
    }
    ZZ_count++;
    if(ZZ_count>2) //������������µ������ 
    {
      speed = speed_H;
      if(pulse_count<Pset)  tisu_fg=1;
    }   
    else speed = speed_L;
  }
  //������------------------------------------------------------------------
  if((LHOLDdiao_flag==1||RHOLDdiao_flag==1)&&(rshover_fg==0))
    rzsc_fg=1;
}
//---------------------------------------------------------------
extern  uint8   dir_fg;
extern  int16   ceshi;
extern  uint8   ceshi_fg;
        double  x=0.0,y=0.0;
        
        int16   Pmax=250,Pmin=0;
        uint8   ruwang_fg=0;  
        int16   sha_width=0;
        int16   maybe_bl_ct=0;
        
        uint8   xiao_fg=0,da_fg=0;
        int16   xiao_ct=0,da_ct=0;
        
extern  int16   Prz;
extern  float   Kmax,Kmin;
        uint8   BLsha=0;
        
extern  int16   POsha;
        int16   SHCH_CT=0;
        
        uint8   sh_x=0;
        
        uint8   POshaen=0;
        
        uint8   shmode=1;

/*ûʵ��Ԥ�ڵ�Ч���ĳ��򣬾�һ��һ���ص���*/        
void Speed_PID()
{
    
    pulse_count=g_nMotorPulseSigma; 
    g_nMotorPulseSigma=0;

    //ɲ������,�ɵ��������ݵĵ�һ��5ms�Ż����
    if(dir_fg==1)
    {
      dir_fg=0;
      if(front_r-front_l>front_width-10)//���ϰ���ɲ
        shache1(); 
    }
    
    //������ֱ�Ӵ������ɲ��
    if(BLsha==1)
    {
      if(front_l>=6&&front_r<=121)
      {
        if(fangcha_qian_f<=fch_dp2)
        {
          xiao_fg=1;
          if(da_fg==1)
          {
            da_fg=0;
            xiao_ct++;
          }
        }
        else
        {
          da_fg=1;
          if(xiao_fg==1)  
          {
            xiao_fg=0;
            da_ct++;
          }
        }
      }
      else
      {
        if(xiao_ct>=2&&da_ct>=2)  
        {
          shache_fg=1;
        }
        
        xiao_ct=0;
        xiao_fg=0;
        da_ct=0;
        da_fg=0;
      }
    }
    
    //��������
    //if(qd_count++<60) speed=1000;
    //else qd_count=60;
    
    //����ٶ�����
    if(pulse_count>PMAX) 
      speed = speed-speed_jian;//����Ч������
  
    //�趨PID����ֵ
    /*
    1-Ӧ��ͬʱ��ʾspeed_pwm��speed
      ����������о��������
    2-����pulse_count��¼���
      �����׼ȷ ������ͣ��
    3-��ʾ��ʼɲ�������ɲ��ʱ������
      ɲ������ ��ʱ+�ʵ�
    */
    
    //ɲ������-------
    //-m1-//
    x=(double)((Psha-pulse_count)/((Pmax-Pmin)/3));
    //y=(double)((Pset-pulse_count)/((Pmax-Pmin)/3));
    speed_B=(int16)((x-1/6*x*x*x+3*x*x*x*x*x)-300);//250
    //speed_F=(int16)((y-1/6*y*y*y+3*y*y*y*y*y)+400);
    /*//-m2-//
    x=-(double)((pulse_count-Psha)/((Pmax-Pmin)/10));
    speed_B=(int16)(x*x*x-200);*/
    //-m3-//
    //speed_B=-(pulse_count-Psha)*3;
    //---------------------------------------------
    if(shache_fg==1) 
    { 
      
      if(shmode==1)
      {
        if(pulse_count>Psha)  speed_pwm=speed_B;
        else 
        {
          shache_fg=0;
          ZZ_count=0;
          qd_ct=0;
          speed_pwm=0;
        }
      }
      
      if(shmode==2)
      {
        //��˷ֶ�Ч�����������Դ��޸ĺ�������߻�ַ������б��
        if(pulse_count>Psha+100)  speed_pwm=-800;
        else if(pulse_count>Psha+80&&pulse_count<=Psha+100)  speed_pwm=-600;
        else if(pulse_count>Psha+60&&pulse_count<=Psha+80)  speed_pwm=-500;
        else if(pulse_count>Psha+40&&pulse_count<=Psha+60)  speed_pwm=-400;
        else if(pulse_count>Psha+20&&pulse_count<=Psha+40)  speed_pwm=-300;
        else if(pulse_count>Psha+10&&pulse_count<=Psha+20)  speed_pwm=-200;
        else if(pulse_count>Psha&&pulse_count<=Psha+10)  speed_pwm=-150;
        else 
        {
          shache_fg=0;
          ZZ_count=0;
          qd_ct=0;
          speed_pwm=0;
        }
      }
    }
    else
    {
      if(speed==speed_H)
      {
        if(pulse_count<Pset*Kmax)  speed_pwm=1250;
        else
        {
          PID_SetPoint(speed_H);
          speed_pwm=(int16)(speed_H+IncPID_Calculate((pulse_count*19/10)));
        }
      }
      else
      { 
        if(pulse_count<Pset*Kmin)  speed_pwm=800;
        else
        {
          PID_SetPoint(speed_L);
          speed_pwm=(int16)(speed_L+IncPID_Calculate((pulse_count*19/10)));
        }
      }
    }
    
    //��������
    if(shache_fg==0)
    { //ֱ����������
      if(front_r-front_l<front_width+10&&fangcha_qian_f<=fch_dp3)
      {
        if(pulse_count<Pset*Kmax)  speed_pwm=1250;//1000
        else
        {
          PID_SetPoint(speed_H);
          speed_pwm=(int16)(speed_H+IncPID_Calculate((pulse_count*19/10)));
        }
      }
      //�����������
    }
    
    //��ֹɲ��ʱ�����
    if(sh_x==1)
    {
      if(shache_fg==1)
      {
        SHCH_CT++;
        if(SHCH_CT>80)  
        {
          SHCH_CT=0;
          shache_fg=0;
        }
      }
      else  SHCH_CT=0;
    }
    
    //�µ�ɲ��
    if(POshaen==1)
    {
      if(shapo==1)
      {
        if(pulse_count>POsha)  speed_pwm=speed_B;
        else
        {
          shapo=0;
          speed_pwm=800;
        }
      }
    }
    
    //����ɲ��
    if(rzsc_fg==1)
    {
      if(pulse_count>Prz)  speed_pwm=-1250;
      else
      {
        rzsc_fg=0;
        rshover_fg=1;
        speed_pwm=0;
      }
    }
    
    //�����߼��
    if(stop_flag==1) 
    {
      if(jisha==1)  speed_pwm=-500;
      if(pulse_count<5||jisha==2)
      {
        jisha=2;
        speed_pwm=(int16)(-sp*pulse_count+sd*(pulse_count-pulse_count_pre));
      }
    }
    pulse_count_pre=pulse_count;

    //�޷�
    if(speed_pwm>1250)
      speed_pwm=1250;
    if(speed_pwm<-1250)
      speed_pwm=-1250;
    
    //���
    if(speed_pwm>0) 
    {
      gpio_init(PORTB, 9, 1,0);//DIL_B;
      FTM1_C0V=speed_pwm;
    }
    else 
    {
      gpio_init(PORTB, 9, 1,1);//DIL_F;
      FTM1_C0V=1250+speed_pwm;
    }
}

//----------------------------��CCDView����ͼ��------------------------//
void SendImageData(uint8 * ImageData)
{
    unsigned char i;
    unsigned char crc = 0;
    /* Send Data */
    uart_send1(UART3,'*');
    uart_send1(UART3,'L');
    uart_send1(UART3,'D');

    SendHex(0);
    SendHex(0);
    SendHex(0);
    SendHex(0);

    for(i=0; i<128; i++)
    {
        SendHex(*ImageData ++);
    }
    SendHex(crc);
    uart_send1(UART3,'#');
}

void SendHex(unsigned char hex)
{
  unsigned char temp;
  temp = hex >> 4;
  if(temp < 10)
  {
   uart_send1(UART3,temp + '0');
  }
  else
  {
   uart_send1(UART3,temp - 10 + 'A');
  }
  temp = hex & 0x0F;
  if(temp < 10)
  {
   uart_send1(UART3,temp + '0');
  }
  else
  {
   uart_send1(UART3,temp - 10 + 'A');
  }
}

void SamplingDelay(void)//CCD��ʱ���� 200ns
{
   volatile uint8 i;
   for(i=0;i<1;i++)
   {
    asm("nop");
    asm("nop");
   }
}
//--------------------------------------------------------------------------------------------------------
void Clear()
{
    g_lnInputVoltageSigma[0]=0;
    g_lnInputVoltageSigma[1]=0;
    g_lnInputVoltageSigma[2]=0;
}

/****************************����ʾ����ģ��******************************/
void virtual_scope_show(void)
{
      OutData[0]=0;
      OutData[1]=0;
      OutData[2]=0;
      OutData[3]=0;
}


void serial_Txd()//�����һ֡���ݣ��������µ�����
{
        uint8 temp[10]={0};
        uint8 i,j;
        //֡ͷ����
        uart_send1 (UART3, 0xa5);
        uart_send1 (UART3, 0x5a);
	
       //��һ�����ߵ�����
        for(i=0;i<3;i++)
        {
           temp[i*2]=(int)OutData[i]/10;
           temp[i*2+1]=(int)OutData[i]%10;
        }
       for(j=0;j<6;j++)
       {
          uart_send1 (UART3, temp[j]);
       }
        delay_ms(10);
}


unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
{
    unsigned short CRC_Temp;
    unsigned char i,j;
    CRC_Temp = 0xffff;

    for (i=0;i<CRC_CNT; i++)
    {
        CRC_Temp ^= Buf[i];
        for (j=0;j<8;j++)
        {
            if (CRC_Temp & 0x01)
                CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
            else
                CRC_Temp = CRC_Temp >> 1;
        }
    }
    return(CRC_Temp);
}


void OutPut_Data(void)
{
  int temp[4] = {0};
  unsigned int temp1[4] = {0};
  unsigned char databuf[10] = {0};
  unsigned char i;
  unsigned short CRC16 = 0;
  for(i=0;i<4;i++)
  {
    temp[i]  = (int16)OutData[i];
    temp1[i] = (uint16)temp[i];
  }

  for(i=0;i<4;i++)
  {
    databuf[i*2]   = (int8)(temp1[i]%256);
    databuf[i*2+1] = (int8)(temp1[i]/256);
  }

  CRC16 = CRC_CHECK(databuf,8);
  databuf[8] = CRC16%256;
  databuf[9] = CRC16/256;

  for(i=0;i<10;i++)
  uart_send1 (UART3,databuf[i]);
}


