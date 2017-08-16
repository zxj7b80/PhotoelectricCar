//-------------------------------------------------------------------------*
// �ļ���: uart.c                                                          *
// ˵  ��: uart����Դ�ļ�                                                  *
//-------------------------------------------------------------------------*

#include "uart.h"
extern   void delay_ms(uint32 count_val);

//-------------------------------------------------------------------------*
//������: uart_init                                                        *
//��  ��: ��ʼ��uartxģ�顣                                                *
//��  ��: uartch:���ں�                                                    *
//        sysclk:ϵͳ����ʱ�ӣ���MHzΪ��λ                                 *
//        baud:�����ʣ���9600��38400�ȣ�һ����˵���ٶ�Խ����ͨ��Խ��       *
//��  ��: ��                                                               *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
void uart_init (UART_MemMapPtr uartch, uint32 sysclk, uint32 baud)
{
	register uint16 sbr, brfa;
	uint8 temp;

	//ʹ������
	if (uartch == UART0_BASE_PTR)
	{
		//��PTD6��ʹ��UART0_TXD����
		PORTD_PCR6 = PORT_PCR_MUX(0x3);
		//��PTD7��ʹ��UART0_RXD
		PORTD_PCR7 = PORT_PCR_MUX(0x3); 
	}else if (uartch == UART1_BASE_PTR)
	{
		//��PTC4��ʹ��UART1_TXD����
		PORTC_PCR4 = PORT_PCR_MUX(0x3); 
		
		//��PTC3��ʹ��UART1_RXD
		PORTC_PCR3 = PORT_PCR_MUX(0x3); 
	}else if (uartch == UART2_BASE_PTR)
	{
		//��PTD3��ʹ��UART2_TXD����
		PORTD_PCR3 = PORT_PCR_MUX(0x3); 
		//��PTD2��ʹ��UART2_RXD
		PORTD_PCR2 = PORT_PCR_MUX(0x3); 
	}else if (uartch == UART3_BASE_PTR)
	{
		//��PTC17��ʹ��UART3_TXD����
		PORTC_PCR17 = PORT_PCR_MUX(0x3); 
		//��PTC16��ʹ��UART3_RXD
		PORTC_PCR16 = PORT_PCR_MUX(0x3); 
	}else if (uartch == UART4_BASE_PTR)
	{
		//��PTE24��ʹ��UART4_TXD����
		PORTE_PCR24 = PORT_PCR_MUX(0x3); 
		//��PTE25��ʹ��UART4_RXD
		PORTE_PCR25 = PORT_PCR_MUX(0x3); 
	}else if (uartch == UART5_BASE_PTR)
	{
		//��PTE8��ʹ��UART5_TXD����
		PORTE_PCR8 = PORT_PCR_MUX(0x3); 
		//��PTE9��ʹ��UART5_RXD
		PORTE_PCR9 = PORT_PCR_MUX(0x3); 
	}
	 
	//ʹ�ܴ���ʱ��    
	if(uartch == UART0_BASE_PTR)
		SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
	else
		if (uartch == UART1_BASE_PTR)
			SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
		else
			if (uartch == UART2_BASE_PTR)
				SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
			else
				if(uartch == UART3_BASE_PTR)
					SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
				else
					if(uartch == UART4_BASE_PTR)
						SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
					else
						SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
								
	//��ֹ���ͽ���
	UART_C2_REG(uartch) &= ~(UART_C2_TE_MASK
				| UART_C2_RE_MASK );
	
	//���ó�8λ��У��ģʽ
	UART_C1_REG(uartch) = 0;
	
	//���㲨���ʣ�����0��1ʹ���ں�ʱ�ӣ���������ʹ������ʱ�ӣ�ϵͳʱ��Ϊ
	//����ʱ�ӵ�2��
	if ((uartch == UART0_BASE_PTR) | (uartch == UART1_BASE_PTR))//
		sysclk+=sysclk;
	
	sbr = (uint16)((sysclk*1000)/(baud * 16));
	temp = UART_BDH_REG(uartch) & ~(UART_BDH_SBR(0x1F));
	UART_BDH_REG(uartch) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
	UART_BDL_REG(uartch) = (uint8)(sbr & UART_BDL_SBR_MASK);
	brfa = (((sysclk*32000)/(baud * 16)) - (sbr * 32));
	temp = UART_C4_REG(uartch) & ~(UART_C4_BRFA(0x1F));
	UART_C4_REG(uartch) = temp |  UART_C4_BRFA(brfa);    
	
	//ʹ�ܷ��ͽ���
	UART_C2_REG(uartch) |= (UART_C2_TE_MASK
				| UART_C2_RE_MASK );
}

//-------------------------------------------------------------------------*
//������: uart_re1                                                         *
//��  ��: ���н���1���ֽ�                                                  *
//��  ��: uartch: ���ں�                                                   *
//         ch:    ���յ����ֽ�                                             *
//��  ��: �ɹ�:1;ʧ��:0                                                    *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
uint8 uart_re1 (UART_MemMapPtr uartch,uint8 *ch)
{
    uint32 k;
    
    for (k = 0; k < 0xfbbb; k++)//��ʱ������
		if((UART_S1_REG(uartch) & UART_S1_RDRF_MASK)!= 0)//�жϽ��ջ������Ƿ���
		{
			*ch = UART_D_REG(uartch);
			return 1; 			//���ܳɹ�
		} 
	if(k>=0xfbbb) 
	{
		return 0;			//����ʧ��
	} 
    return 0;
}

//-------------------------------------------------------------------------*
//������: uart_send1                                                       *
//��  ��: ���з���1���ֽ�                                                  *
//��  ��: uartch: ���ں�                                                   *
//         ch:    Ҫ���͵��ֽ�                                             *
//��  ��: ��                                                               *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
void uart_send1 (UART_MemMapPtr uartch, uint8 ch)
{
    //�ȴ����ͻ�������
    while(!(UART_S1_REG(uartch) & UART_S1_TDRE_MASK));
    //��������
    UART_D_REG(uartch) = (uint8)ch;
 }

//-------------------------------------------------------------------------*
//������: uart_reN                                                         *
//��  ��: ���� ����n���ֽ�                                                 *
//��  ��: uartch: ���ں�                                                   *
//        buff: ���ջ�����                                                 *
//		  len:���ճ���                                             *
//��  ��: 1:�ɹ�;0:ʧ��                                                    *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
uint8 uart_reN (UART_MemMapPtr uartch ,uint8* buff,uint16 len)
{
    uint16 m=0; 
    while (m < len)
    { 	          
  	    if(0==uart_re1(uartch,&buff[m]))
  	    	return 0;  //����ʧ��
  	    else m++;
    } 
    
    return 1;          //���ճɹ�
    
}

//-------------------------------------------------------------------------*
//������: uart_sendN                                                       *
//��  ��: ���� ����n���ֽ�                                                 *
//��  ��: uartch: ���ں�                                                   *
//        buff: ���ͻ�����                                                 *
//		  len:���ͳ���                                             *
//��  ��: ��                                                               *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
void uart_sendN (UART_MemMapPtr uartch ,uint8* buff,uint16 len)
{
    int i;
	for(i=0;i<len;i++)
    {
		uart_send1(uartch,buff[i]);
    }
}

//-------------------------------------------------------------------------*
//������: enableuartreint                                                  *
//��  ��: �����ڽ����ж�                                                   *
//��  ��: uartch: ���ں�                                                   *
//        irqno: ��Ӧirq��                                                 *
//��  ��: ��                                                               *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
void enableuartreint(UART_MemMapPtr uartch,uint8 irqno)
{
	UART_C2_REG(uartch)|=UART_C2_RIE_MASK;   //����UART�����ж�
	enable_irq(irqno);			 //���������ŵ�IRQ�ж�
}

//-------------------------------------------------------------------------*
//������: disableuartreint                                                 *
//��  ��: �ش��ڽ����ж�                                                   *
//��  ��: uartch: ���ں�                                                   *
//        irqno: ��Ӧirq��                                                 *
//��  ��: ��                                                               *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
void disableuartreint(UART_MemMapPtr uartch,uint8 irqno)
{
	UART_C2_REG(uartch)&=~UART_C2_RIE_MASK;   //��ֹUART�����ж�
	disable_irq(irqno);			  //�ؽ������ŵ�IRQ�ж�
}




//-------------------------------------------------------------------------
//�������ƣ�hw_uart_sendstring                                               
//���ܸ�Ҫ���ش��ڽ����ж�                                                   
//����˵����uartch: ���ں�                                                   
//           buff: Ҫ���͵�ֵ                                                 
//�������أ� ��                                                               
//-------------------------------------------------------------------------
void uart_sendstring (UART_MemMapPtr uartch ,uint8* buff)
{
    int i;

    for(i=0;buff[i] != 0;i++)
    {
       uart_send1(uartch,buff[i]);
    }
}
//-------------------------------------------------------------------------
//�������ƣ�hw_get_byte_array_from_number                                               
//���ܸ�Ҫ��������numberת����ASCII�����ʽ�ŵ�������                                                
//����˵����number: Ҫת��������                                                   
//          length: ����        
//           array: ת����Ľ������
//�������أ� ��                                                               
//-------------------------------------------------------------------------
uint8 get_byte_array_from_number(uint8 array [], int * length, int number)
{
    int i = 0;
    int j = 0;
    uint8 pBuff [10];
    if(number < 0)
    {
        return 1;
    }
    i = 0;
    if(number == 0) //���������0
    {
        i = 1;
        *length = i;
        array[0] = '0';
        return 0;
    }
    
    while(number > 0)
    {
        pBuff[i++] = number % 10;
        number = number/10; 
    }
    
    *length = i;
    //��������ASCII�����ݴ����array��
    for(j = 0; j < i; j++)
    {
        array[j] = pBuff[i - j - 1] + '0';
    }
    //array[j] = '\0';
    return 0;
}


//-------------------------------------------------------------------------
//�������ƣ�hw_uart_sendnumber                                               
//���ܸ�Ҫ��������ת�����ַ������ͳ�ȥ  ��123ת����"123"���ͳ�ȥ                                                
//����˵����uartch: ���ں�                                                   
//           buff: Ҫ���͵�ֵ                                                 
//�������أ� ��                                                               
//-------------------------------------------------------------------------
uint8 uart_sendnumber(UART_MemMapPtr uartch , uint8 number)
{
    uint8 array[10];
    int len = 0;
    if(get_byte_array_from_number(array, &len, number) == 0)
    {
    	uart_sendN(uartch, (uint8*)array, len);
    }
    else
    {
        return 0;
    } 
    return 1;
}

void uart3_send ( char ch)
{
    //�ȴ����ͻ�������
    while(!(UART_S1_REG(UART3) & UART_S1_TDRE_MASK));
    //��������
    UART_D_REG(UART3) = (uint8)ch;
}

//���MiniIMU AHRS����Ĳ������ڲ��β���
void Uart_Test(uint16 ax,uint16 ay,uint16 az,uint16 gx,uint16 gy,uint16 gz,
					uint16 hx,uint16 hy,uint16 hz)
{
 	unsigned int temp=0xaF+9;
	char ctemp;
	uart3_send(0xa5);
	uart3_send(0x5a);
	uart3_send(14+8);
	uart3_send(0xA2);
        
	ctemp=ax>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=ax;
	uart3_send(ctemp);
	temp+=ctemp;

	ctemp=ay>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=ay;
	uart3_send(ctemp);
	temp+=ctemp;
        
	ctemp=az>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=az;
	uart3_send(ctemp);
	temp+=ctemp;

	ctemp=gx>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=gx;
	uart3_send(ctemp);
	temp+=ctemp;
//-----------------------------
	ctemp=gy>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=gy;
	uart3_send(ctemp);
	temp+=ctemp;
        
	ctemp=gz>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=gz;
	uart3_send(ctemp);
	temp+=ctemp;
//--------------------------
        
	ctemp=hx>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=hx;
	uart3_send(ctemp);
	temp+=ctemp;
        
	ctemp=hy>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=hy;
	uart3_send(ctemp);
	temp+=ctemp;

	ctemp=hz>>8;
	uart3_send(ctemp);
	temp+=ctemp;
	ctemp=hz;
	uart3_send(ctemp);
	temp+=ctemp;

	uart3_send(temp%256);
	uart3_send(0xaa);
}
//���ڷ�������
void serial_choose()
{

    //֡ͷ����
    uart_send1 (UART3, 0xa5);

    uart_send1 (UART3, 0x5a);

	//ѡ�������
	//�˴�ѡ���˵�һ,��,������

    uart_send1 (UART3, 0x01);
    uart_send1 (UART3, 0x01);
    uart_send1 (UART3, 0x01);
    uart_send1 (UART3, 0x00);
    uart_send1 (UART3, 0x00);
    delay_ms(10);
}













