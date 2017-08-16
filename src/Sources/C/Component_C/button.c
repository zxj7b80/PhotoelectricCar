
//��������  ������� ��������
//Ӳ��ƽ̨��MK60DN512ZVLL10
//����������IAR V6.3
//����޸ĺ�ע���ʱ�䣺
//                     2012.8.26
#include "includes.h"
#include "button.h"
#include "gpio.h"
#include "LQ12864.h"


#define  keyport       PORTD
#define  keyport_clk   SIM_SCGC5_PORTD_MASK
#define  pin_begin     0  

/********************************************************
*��������   void button_init(void)
*���ܣ�     �������ⲿ����
*��ڲ���:  ��
*���ڲ���:  ��
*˵����     ʹ�õ����ţ�PC7��PC8��PC9
*********************************************************/
void button_init(void)
{   
     /*
     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;    //��PORTC�˿ڵ�ʱ��
     
     PORTC_DFER|=PORT_DFER_DFE_MASK;   //enable filter
     PORTC_DFCR|=PORT_DFCR_CS_MASK;    //select LDO as Filter Clock
     PORTC_DFWR=PORT_DFWR_FILT(10);     //10ms
     
     PORTC_PCR7=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTC_PCR8=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTC_PCR9=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     */
  
     SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;    //��PORTD�˿ڵ�ʱ��
     
     //PORTD_DFER|=PORT_DFER_DFE_MASK;   //enable filter
     //PORTD_DFCR|=PORT_DFCR_CS_MASK;    //select LDO as Filter Clock
     //PORTD_DFWR=PORT_DFWR_FILT(1);     //10ms
     
     PORTD_PCR0=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR1=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR2=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR3=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR4=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR5=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR6=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
     PORTD_PCR7=PORT_PCR_MUX(1)|PORT_PCR_IRQC(0xA)|PORT_PCR_PE_MASK|PORT_PCR_PS_MASK;  //����  �������ж�
}


/********************************************************
*��������   void matrix_keyboard_init()
*���ܣ�     �������ⲿ����
*��ڲ���:  ��
*���ڲ���:  ��
*˵����     ʹ�õ����ţ�PD0~PD7
*********************************************************/
void matrix_keyboard_init()
{
  SIM_SCGC5 |= keyport_clk;    //��keyport�˿ڵ�ʱ��
  
  gpio_init (keyport,pin_begin,0,0);
  gpio_init (keyport,(pin_begin+1),0,0);
  gpio_init (keyport,(pin_begin+2),0,0);
  gpio_init (keyport,(pin_begin+3),0,0);
  gpio_init (keyport,(pin_begin+4),0,1);
  gpio_init (keyport,(pin_begin+5),0,1);
  gpio_init (keyport,(pin_begin+6),0,1);
  gpio_init (keyport,(pin_begin+7),0,0);
}

/***************************************************************
*��������uint8 keyboard_scan()
*���ܣ�ɨ�谴����ֵ
*��ڲ�������
*���ڲ�������ֵ
*˵������
***************************************************************/
uint8 keyboard_scan()
{
     uint8 temp=0;
     uint8 key_num=255;
     //������-------------------------
     gpio_init (keyport,pin_begin,1,0);
     gpio_init (keyport,(pin_begin+1),1,1);
     gpio_init (keyport,(pin_begin+2),1,1);
     gpio_init (keyport,(pin_begin+3),1,1);
        
     temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
     
     if(temp!=0x70)
	{
	   delay_ms(10);
                
	   temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
           
           if(temp!=0x70)
	      {
                 switch(temp)
                 {
                
		 case 0x60:	
                           key_num=10;                          //10�ż�������
                           //LCD_P8x16_number(10,6,12);
			   //LCD_P8x16_num3wei(0,0,12);  ;				
			   break;
		 case 0x50:
                           key_num=11;                         //11�ż�������
                           //LCD_P8x16_number(10,6,13);
		           //LCD_P8x16_num3wei(0,0,13); ;
	  		   break;
		 case 0x30:
                           key_num=12;                          //12�ż�������
                           //LCD_P8x16_number(10,6,14);
		           //LCD_P8x16_num3wei(0,0,14); ;
			   break;
                           /*
		 case 0x70:
                           key_num=15;                         //4�ż�������
                           //LCD_P8x16_number(10,6,15);
		           //LCD_P8x16_num3wei(0,0,15); ;
	  		   break;
                           */
                           
                 }
	       }			 	   
	}

     //������--------------------------
     gpio_init (keyport,pin_begin,1,1);
     gpio_init (keyport,(pin_begin+1),1,0);
     gpio_init (keyport,(pin_begin+2),1,1);
     gpio_init (keyport,(pin_begin+3),1,1);
        
     temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        
     if(temp!=0x70)
	{
	    delay_ms(10);
                
	   temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
                
	    if(temp!=0x70)
		{
                   switch(temp)
                    {
		    case 0x60:	
                              key_num=7;                    //7�ż�������
                              //LCD_P8x16_number(10,6,8);
			      //LCD_P8x16_num3wei(0,0,8);					
	           	      break;
		    case 0x50:
                              key_num=8;                    //8�ż�������
                              //LCD_P8x16_number(10,6,9);
		              //LCD_P8x16_num3wei(0,0,9);
			      break;
		    case 0x30:
                              key_num=9;                     //9�ż�������
                              //LCD_P8x16_number(10,6,10);
		              //LCD_P8x16_num3wei(0,0,10);
			      break;
                              /*
		    case 0x70:			             //8�ż�������
		              key_num=11;
                              //LCD_P8x16_number(10,6,11);
                              //LCD_P8x16_num3wei(0,0,11);
			      break;
                              */
                    }
		}			 	   
	}
     //�ڶ���------------------------
     gpio_init (keyport,pin_begin,1,1);
     gpio_init (keyport,(pin_begin+1),1,1);
     gpio_init (keyport,(pin_begin+2),1,0);
     gpio_init (keyport,(pin_begin+3),1,1);
        
     temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
     
     if(temp!=0x70)
	{
	    delay_ms(10);
                
	    temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
                
	    if(temp!=0x70)
	         {
                    switch(temp)
                    {
		    case 0x60:
                              key_num=4;                         //4�ż�������
                              //LCD_P8x16_number(10,6,4);
			      //LCD_P8x16_num3wei(0,0,4);;					
	           	      break;
		    case 0x50:
                              key_num=5;                        //5�ż�������
                              //LCD_P8x16_number(10,6,5);
		              //LCD_P8x16_num3wei(0,0,5); ;
			      break;
		    case 0x30:
                              key_num=6;                        //6�ż�������
                              //LCD_P8x16_number(10,6,6);
		              //LCD_P8x16_num3wei(0,0,6);  ;
			      break;
                              /*
		    case 0x70:
                              key_num=7;                         //12�ż�������
                              //LCD_P8x16_number(10,6,7);
		              //LCD_P8x16_num3wei(0,0,7); ;
			      break;
                              */
                    }
		 }			 	   
	}
       //��һ��------------------------------
       gpio_init (keyport,pin_begin,1,1);
       gpio_init (keyport,(pin_begin+1),1,1);
       gpio_init (keyport,(pin_begin+2),1,1);
       gpio_init (keyport,(pin_begin+3),1,0);
        
	temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
        
	if(temp!=0x70)
	{
	    delay_ms(10);
                
	    temp=(gpio_read(keyport,(pin_begin+4))<<4)+(gpio_read(keyport,(pin_begin+5))<<5)+(gpio_read(keyport,(pin_begin+6))<<6)+(gpio_read(keyport,(pin_begin+7))<<7);
                
	    if(temp!=0x70)
		 {
                     switch(temp)
                     {
		     case 0x60:
                               key_num=1;                           //1�ż�������
                               //LCD_P8x16_number(10,6,0);
	                       //LCD_P8x16_num3wei(0,0,0);  ;					
		               break;
		     case 0x50:
                               key_num=2;                           //2�ż�������
                               //LCD_P8x16_number(10,6,1);
			       //LCD_P8x16_num3wei(0,0,1); ;
	        	       break;
		     case  0x30:
                                key_num=3;                           //3�ż�������
                                //LCD_P8x16_number(10,6,2);
		                //LCD_P8x16_num3wei(0,0,2); ;
		       	        break;
                                /*
		     case  0x70:
                                key_num=3;                            //16�ż�������
                                //LCD_P8x16_number(10,6,3);
			        //LCD_P8x16_num3wei(0,0,3); ;
	       		        break;
                                */
                     }
		  }			 	   
	} 
        return(key_num);     
}
