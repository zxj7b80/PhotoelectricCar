///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      04/May/2013  10:25:55 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\hp\Desktop\balance car\src\Sources\C\I2C.c     /
//    Command line =  "C:\Users\hp\Desktop\balance car\src\Sources\C\I2C.c"   /
//                    -D IAR -D TWR_K60N512 -lCN                              /
//                    "C:\Users\hp\Desktop\balance car\bin\Ram\List\" -lB     /
//                    "C:\Users\hp\Desktop\balance car\bin\Ram\List\" -o      /
//                    "C:\Users\hp\Desktop\balance car\bin\Ram\Obj\"          /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config F:\iar\arm\INC\c\DLib_Config_Normal.h -I  /
//                    "C:\Users\hp\Desktop\balance car\src\Sources\H\" -I     /
//                    "C:\Users\hp\Desktop\balance                            /
//                    car\src\Sources\H\Component_H\" -I                      /
//                    "C:\Users\hp\Desktop\balance                            /
//                    car\src\Sources\H\Frame_H\" -Ol --use_c++_inline        /
//    List file    =  C:\Users\hp\Desktop\balance car\bin\Ram\List\I2C.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME I2C

        #define SHT_PROGBITS 0x1

        PUBLIC hw_i2c_init
        PUBLIC hw_iic_read1
        PUBLIC hw_iic_readn
        PUBLIC hw_iic_write1
        PUBLIC hw_iic_writen
        PUBLIC hw_send_signal
        PUBLIC hw_wait

// C:\Users\hp\Desktop\balance car\src\Sources\C\I2C.c
//    1 //============================================================================
//    2 // �ļ����ƣ�hw_i2c.h                                                          
//    3 // ���ܸ�Ҫ��uart����ͷ�ļ�
//    4 // ��Ȩ����: ���ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//    5 // �汾����:    ʱ��                         �汾                     ����                          �޸�
//    6 //           2011-11-17     V1.0       stone    ��д��K60��i2c����
//    7 //============================================================================
//    8 
//    9 
//   10 #ifndef __I2C_H__
//   11 #define __I2C_H__
//   12 	
//   13 #include "common.h"
//   14 #include "i2c.h"
//   15 
//   16 //============================================================================
//   17 //�������ƣ�hw_i2c_init                                                        
//   18 //���ܸ�Ҫ����ʼ��IICXģ�顣                                                
//   19 //����˵����num:ģ���                                                         
//   20 //�������أ���                                                                  
//   21 //============================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void hw_i2c_init(I2C_MemMapPtr num)
//   23 {
//   24 	
//   25 	if(num == I2C0)
hw_i2c_init:
        LDR.N    R1,??DataTable1  ;; 0x40066000
        CMP      R0,R1
        BNE.N    ??hw_i2c_init_0
//   26 	{
//   27 		//��I2C0ģ��ʱ��
//   28 		SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK; 
        LDR.N    R0,??DataTable1_1  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable1_1  ;; 0x40048034
        STR      R0,[R1, #+0]
//   29 		//�������Ÿ���ΪI2C0����
//   30 		//I2C0 SCLʹ��PTD8
//   31 		//I2C0 SDAʹ��PTD9
//   32 		PORTD_PCR9 = PORT_PCR_MUX(2);
        LDR.N    R0,??DataTable1_2  ;; 0x4004c024
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   33 		PORTD_PCR8 = PORT_PCR_MUX(2);
        LDR.N    R0,??DataTable1_3  ;; 0x4004c020
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   34 		//���� MULT �� ICR   
//   35 		//оƬ�ֲ��Ƽ�����100K�Լ�СMCU����
//   36 		//k60��MCU����Ƶ��Ϊ48M���������Ϸ�Ƶ
//   37 		I2C0_F  = 0x65;   
        LDR.N    R0,??DataTable1_4  ;; 0x40066001
        MOVS     R1,#+101
        STRB     R1,[R0, #+0]
//   38 		//ʹ��I2C0��������Ӧ���ź�
//   39 		I2C0_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;      
        LDR.N    R0,??DataTable1_5  ;; 0x40066002
        MOVS     R1,#+136
        STRB     R1,[R0, #+0]
        B.N      ??hw_i2c_init_1
//   40 	}
//   41 	else
//   42 	{
//   43 		//��I2C1ģ��ʱ��
//   44 		SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK; 
??hw_i2c_init_0:
        LDR.N    R0,??DataTable1_1  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable1_1  ;; 0x40048034
        STR      R0,[R1, #+0]
//   45 		//�������Ÿ���ΪI2C1����
//   46 		//I2C1 SCLʹ��PTC10
//   47 		//I2C1 SDAʹ��PTC11
//   48 		PORTC_PCR10 = PORT_PCR_MUX(2);
        LDR.N    R0,??DataTable1_6  ;; 0x4004b028
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   49 		PORTC_PCR11 = PORT_PCR_MUX(2);
        LDR.N    R0,??DataTable1_7  ;; 0x4004b02c
        MOV      R1,#+512
        STR      R1,[R0, #+0]
//   50 		//���� MULT �� ICR   
//   51 		//оƬ�ֲ��Ƽ�����100K�Լ�СMCU����
//   52 		//k60��MCU����Ƶ��Ϊ48M���������Ϸ�Ƶ
//   53 		I2C1_F  = 0x65;   
        LDR.N    R0,??DataTable1_8  ;; 0x40067001
        MOVS     R1,#+101
        STRB     R1,[R0, #+0]
//   54 		//ʹ��I2C1��������Ӧ���ź�
//   55 		I2C1_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;      
        LDR.N    R0,??DataTable1_9  ;; 0x40067002
        MOVS     R1,#+136
        STRB     R1,[R0, #+0]
//   56 	}
//   57 }
??hw_i2c_init_1:
        BX       LR               ;; return
//   58 
//   59 //============================================================================
//   60 //�������ƣ�hw_send_signal                                                        
//   61 //���ܸ�Ҫ��������Ҫ������ʼ��ֹͣ�ź�   ��                                                
//   62 //����˵����         num:ģ���       
//   63 //          Signal: 'S'(Start),������ʼ�ź�      'O'(Over),  ����ֹͣ�ź�               
//   64 //�������أ���                                                                  
//   65 //============================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 void hw_send_signal(uint8 Signal,I2C_MemMapPtr num)
//   67 {
//   68 	
//   69 	if(num == I2C0)//ģ��0
hw_send_signal:
        LDR.N    R2,??DataTable1  ;; 0x40066000
        CMP      R1,R2
        BNE.N    ??hw_send_signal_0
//   70 	{
//   71 		if (Signal == 'S')    
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+83
        BNE.N    ??hw_send_signal_1
//   72 		{
//   73 		  i2c0_Start(); //����ģʽѡ��λMST��0��Ϊ1,���Բ�����ʼ�ź�  
        LDR.N    R0,??DataTable1_5  ;; 0x40066002
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable1_5  ;; 0x40066002
        STRB     R0,[R1, #+0]
        B.N      ??hw_send_signal_2
//   74 		}
//   75 		else if (Signal == 'O')
??hw_send_signal_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+79
        BNE.N    ??hw_send_signal_2
//   76 		{
//   77 		  i2c0_Stop();//����ģʽѡ��λMST��1��Ϊ0,���Բ���ֹͣ�ź�
        LDR.N    R0,??DataTable1_5  ;; 0x40066002
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xDF
        LDR.N    R1,??DataTable1_5  ;; 0x40066002
        STRB     R0,[R1, #+0]
        B.N      ??hw_send_signal_2
//   78 		}
//   79 	}
//   80 	else if(num == I2C1)//ģ��1
??hw_send_signal_0:
        LDR.N    R2,??DataTable1_10  ;; 0x40067000
        CMP      R1,R2
        BNE.N    ??hw_send_signal_2
//   81 	{
//   82 		if (Signal == 'S')    
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+83
        BNE.N    ??hw_send_signal_3
//   83 		{
//   84 		  i2c1_Start(); //����ģʽѡ��λMST��0��Ϊ1,���Բ�����ʼ�ź�  
        LDR.N    R0,??DataTable1_9  ;; 0x40067002
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable1_9  ;; 0x40067002
        STRB     R0,[R1, #+0]
        B.N      ??hw_send_signal_2
//   85 		}
//   86 		else if (Signal == 'O')
??hw_send_signal_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+79
        BNE.N    ??hw_send_signal_2
//   87 		{
//   88 		  i2c1_Stop();//����ģʽѡ��λMST��1��Ϊ0,���Բ���ֹͣ�ź�
        LDR.N    R0,??DataTable1_9  ;; 0x40067002
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xDF
        LDR.N    R1,??DataTable1_9  ;; 0x40067002
        STRB     R0,[R1, #+0]
//   89 		}
//   90 	}
//   91 	        
//   92                                               
//   93       
//   94 }
??hw_send_signal_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40066001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40066002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x40067001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x40067002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x40067000
//   95 
//   96 
//   97 
//   98 //============================================================================
//   99 //�������ƣ�hw_wait                                                        
//  100 //���ܸ�Ҫ�� ��ʱ����,ѭ��������Ӧ���־λ,������ɱ�־λ,�ж�MCU         
//  101 //          �Ƿ���յ�Ӧ���źŻ�һ���ֽ��Ƿ����������ϴ������                                            
//  102 //����˵����         num:ģ���       
//  103 //               x:x = 'A'(Ack),�ȴ�Ӧ��;x = 'T'(Transmission),�ȴ�һ���ֽ�        
//  104 //                 ���ݴ������                   
//  105 //�������أ�0:�յ�Ӧ���źŻ�һ���ֽڴ������;
//  106 //         1:δ�յ�Ӧ���źŻ�һ�� �ֽ�û������                                                                                                                            
//  107 //============================================================================
//  108 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 uint8 hw_wait(uint8 x,I2C_MemMapPtr num)
//  110 {
hw_wait:
        PUSH     {R4}
//  111     uint16 ErrTime, i;
//  112     ErrTime = 255*10;            //�����ѯ��ʱʱ��
        MOVW     R2,#+2550
//  113 
//  114 	for (i = 0;i < ErrTime;i++)
        MOVS     R3,#+0
        B.N      ??hw_wait_0
??hw_wait_1:
        ADDS     R3,R3,#+1
??hw_wait_0:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R3,R2
        BCS.N    ??hw_wait_2
//  115 	{
//  116 		if (x == 'A')           //�ȴ�Ӧ���ź�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+65
        BNE.N    ??hw_wait_3
//  117 		{
//  118 			  if(( I2C_S_REG(num)  & I2C_S_RXAK_MASK)==0)
        LDRB     R4,[R1, #+3]
        LSLS     R4,R4,#+31
        BMI.N    ??hw_wait_1
//  119 				 return 0;      //������һ���ֽں�,�յ��˴ӻ���Ӧ���ź�               
        MOVS     R0,#+0
        B.N      ??hw_wait_4
//  120 		}
//  121 		else if (x == 'T')      //�ȴ��������һ���ֽ��ź�
??hw_wait_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+84
        BNE.N    ??hw_wait_1
//  122 		{
//  123 			if ((I2C_S_REG(num) & I2C_S_IICIF_MASK) != 0)    
        LDRB     R4,[R1, #+3]
        LSLS     R4,R4,#+30
        BPL.N    ??hw_wait_1
//  124 			{
//  125 				(I2C_S_REG(num) |=(0 | I2C_S_IICIF_MASK));  //��IICIF��־λ
        LDRB     R0,[R1, #+3]
        ORRS     R0,R0,#0x2
        STRB     R0,[R1, #+3]
//  126 				return 0;       //�ɹ�������һ���ֽ�
        MOVS     R0,#+0
        B.N      ??hw_wait_4
//  127 			}       
//  128 		}
//  129 	}
//  130 	if (i >= ErrTime)
??hw_wait_2:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R3,R2
        BCC.N    ??hw_wait_5
//  131 		return 1;               //��ʱ,û���յ�Ӧ���źŻ�����һ���ֽ�   	
        MOVS     R0,#+1
        B.N      ??hw_wait_4
//  132 }
??hw_wait_5:
??hw_wait_4:
        POP      {R4}
        BX       LR               ;; return
//  133 
//  134 
//  135 //============================================================================
//  136 //�������ƣ�hw_iic_read1                                                        
//  137 //���ܸ�Ҫ���Ӵӻ���1���ֽ�����                                            
//  138 //����˵����  num:ģ���       
//  139 //          DeviceAddr:�豸��ַ    
//  140 //          AccessAddr:���ʵ�ַ
//  141 //          Data:�����յ���һ���ֽ�����  
//  142 //�������أ�Ϊ0,�ɹ���һ���ֽ�;Ϊ1,��һ���ֽ�ʧ��  
//  143 //����˵��: �ڲ����� hw_send_signal,hw_wait  
//  144 //============================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 uint8 hw_iic_read1(I2C_MemMapPtr num,uint8 DeviceAddr, uint8 AccessAddr, uint8 *Data)
//  146 {      
hw_iic_read1:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOVS     R6,R3
//  147       
//  148 	I2C_C1_REG(num)     |= 0x10;           //TX = 1,MCU����Ϊ����ģʽ
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x10
        STRB     R0,[R4, #+2]
//  149 	hw_send_signal('S',num);               //���Ϳ�ʼ�ź� 
        MOVS     R1,R4
        MOVS     R0,#+83
        BL       hw_send_signal
//  150 	I2C_D_REG(num)  = DeviceAddr & 0xfe;   //�����豸��ַ,��֪ͨ�ӻ���������
        ANDS     R0,R5,#0xFE
        STRB     R0,[R4, #+4]
//  151 	 
//  152 	if (hw_wait('T',num))                  //�ȴ�һ���ֽ����ݴ������  
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_0
//  153 	{      
//  154 
//  155 		return 1;                         //û�д��ͳɹ�,��һ���ֽ�ʧ��   
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  156 	}
//  157 	if (hw_wait('A',num))                 //�ȴ��ӻ�Ӧ���ź� 
??hw_iic_read1_0:
        MOVS     R1,R4
        MOVS     R0,#+65
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_2
//  158 	{
//  159 
//  160 		return 1;                         //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ�� 
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  161 	}
//  162 	I2C_D_REG(num)  = AccessAddr;        //���ͷ��ʵ�ַ    
??hw_iic_read1_2:
        STRB     R7,[R4, #+4]
//  163 	if (hw_wait('T',num))                //�ȴ�һ���ֽ����ݴ������ 
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_3
//  164 	{
//  165 	 
//  166 		return 1;                        //û�д��ͳɹ�,��һ���ֽ�ʧ��
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  167 	}
//  168 	if (hw_wait('A',num))                //�ȴ��ӻ�Ӧ���ź�   
??hw_iic_read1_3:
        MOVS     R1,R4
        MOVS     R0,#+65
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_4
//  169 	{
//  170 	  
//  171 		return 1;                        //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��  
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  172 	}
//  173 	I2C_C1_REG(num) |= 0x04;//��MCU������ģ ʽ�£����λд1������һ�����¿�ʼ�ź�  
??hw_iic_read1_4:
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x4
        STRB     R0,[R4, #+2]
//  174 	I2C_D_REG(num) = DeviceAddr | 0x01; //֪ͨ�ӻ���Ϊ��������    
        ORRS     R0,R5,#0x1
        STRB     R0,[R4, #+4]
//  175 	if (hw_wait('T',num))               //�ȴ�һ���ֽ����ݴ������  
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_5
//  176 	{
//  177 	 
//  178 		return 1;                       //û�д��ͳɹ�,��һ���ֽ�ʧ�� 
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  179 	}
//  180 	if (hw_wait('A',num))               //�ȴ��ӻ�Ӧ���ź�  
??hw_iic_read1_5:
        MOVS     R1,R4
        MOVS     R0,#+65
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_6
//  181 	{
//  182 	 
//  183 		return 1;                      //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  184 	}
//  185 	I2C_C1_REG(num) &= 0xef;           //TX = 0,MCU����Ϊ����ģʽ    
??hw_iic_read1_6:
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xEF
        STRB     R0,[R4, #+2]
//  186 	*Data = I2C_D_REG(num);            //����IIC1D,׼����������   
        LDRB     R0,[R4, #+4]
        STRB     R0,[R6, #+0]
//  187 	if (hw_wait('T',num))              //�ȴ�һ���ֽ����ݴ������  
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_read1_7
//  188 	{  
//  189 	 
//  190 		return 1;                      //û�д��ͳɹ�,��һ���ֽ�ʧ��  
        MOVS     R0,#+1
        B.N      ??hw_iic_read1_1
//  191 	}
//  192 	hw_send_signal('O',num);           //����ֹͣ�ź�    
??hw_iic_read1_7:
        MOVS     R1,R4
        MOVS     R0,#+79
        BL       hw_send_signal
//  193 	*Data = I2C_D_REG(num);            //�������յ���һ������    
        LDRB     R0,[R4, #+4]
        STRB     R0,[R6, #+0]
//  194 	
//  195 	return 0;                          //��ȷ���յ�һ���ֽ�����
        MOVS     R0,#+0
??hw_iic_read1_1:
        POP      {R1,R4-R7,PC}    ;; return
//  196 	
//  197 }
//  198 
//  199 //============================================================================
//  200 //�������ƣ�hw_iic_write1                                                        
//  201 //���ܸ�Ҫ����ӻ�д1���ֽ�����                                           
//  202 //����˵����  num:ģ���       
//  203 //          DeviceAddr:�豸��ַ    
//  204 //          AccessAddr:���ʵ�ַ
//  205 //          Data:Ҫ�����ӻ���1���ֽ�����  
//  206 //�������أ�Ϊ0,�ɹ�дһ���ֽ�;Ϊ1,дһ���ֽ�ʧ�� 
//  207 //����˵��: �ڲ����� hw_send_signal,hw_wait  
//  208 //============================================================================
//  209 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 uint8 hw_iic_write1(I2C_MemMapPtr num,uint8 DeviceAddr, uint8 AccessAddr, uint8 Data)
//  211 {
hw_iic_write1:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  212 	I2C_C1_REG(num) |= 0x10;             //TX = 1,MCU����Ϊ����ģʽ
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x10
        STRB     R0,[R4, #+2]
//  213     hw_send_signal('S',num);             //���Ϳ�ʼ�ź�
        MOVS     R1,R4
        MOVS     R0,#+83
        BL       hw_send_signal
//  214     I2C_D_REG(num) = DeviceAddr & 0xfe;  //�����豸��ַ,��֪ͨ�ӻ���������
        ANDS     R0,R5,#0xFE
        STRB     R0,[R4, #+4]
//  215     if (hw_wait('T',num))                //�ȴ�һ���ֽ����ݴ������
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_write1_0
//  216         return 1;                        //û�д��ͳɹ�,дһ���ֽ�ʧ��
        MOVS     R0,#+1
        B.N      ??hw_iic_write1_1
//  217     if (hw_wait('A',num))               //�ȴ��ӻ�Ӧ���ź�
??hw_iic_write1_0:
        MOVS     R1,R4
        MOVS     R0,#+65
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_write1_2
//  218         return 1;                       //û�еȵ�Ӧ���ź�,дһ���ֽ�ʧ��   
        MOVS     R0,#+1
        B.N      ??hw_iic_write1_1
//  219     I2C_D_REG(num) = AccessAddr;         //���ͷ��ʵ�ַ
??hw_iic_write1_2:
        STRB     R6,[R4, #+4]
//  220     if (hw_wait('T',num))               //�ȴ�һ���ֽ����ݴ������
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_write1_3
//  221         return 1;                       //û�д��ͳɹ�,дһ���ֽ�ʧ��
        MOVS     R0,#+1
        B.N      ??hw_iic_write1_1
//  222     if (hw_wait('A',num))               //�ȴ��ӻ�Ӧ���ź�
??hw_iic_write1_3:
        MOVS     R1,R4
        MOVS     R0,#+65
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_write1_4
//  223         return 1;                      //û�еȵ�Ӧ���ź�,дһ���ֽ�ʧ��   
        MOVS     R0,#+1
        B.N      ??hw_iic_write1_1
//  224     I2C_D_REG(num) = Data;             //д����
??hw_iic_write1_4:
        STRB     R7,[R4, #+4]
//  225     if (hw_wait('T',num))              //�ȴ�һ���ֽ����ݴ������
        MOVS     R1,R4
        MOVS     R0,#+84
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_write1_5
//  226         return 1;                      //û�д��ͳɹ�,дһ���ֽ�ʧ��
        MOVS     R0,#+1
        B.N      ??hw_iic_write1_1
//  227     if (hw_wait('A',num))              //�ȴ��ӻ�Ӧ���ź�
??hw_iic_write1_5:
        MOVS     R1,R4
        MOVS     R0,#+65
        BL       hw_wait
        CMP      R0,#+0
        BEQ.N    ??hw_iic_write1_6
//  228         return 1;                      //û�еȵ�Ӧ���ź�,дһ���ֽ�ʧ��   
        MOVS     R0,#+1
        B.N      ??hw_iic_write1_1
//  229     hw_send_signal('O',num);           //����ֹͣ�ź�
??hw_iic_write1_6:
        MOVS     R1,R4
        MOVS     R0,#+79
        BL       hw_send_signal
//  230     return 0;
        MOVS     R0,#+0
??hw_iic_write1_1:
        POP      {R1,R4-R7,PC}    ;; return
//  231 }
//  232 
//  233 
//  234 //============================================================================
//  235 //�������ƣ�hw_iic_readn                                                        
//  236 //���ܸ�Ҫ�� �Ӵӻ���N���ֽ�����                                             
//  237 //����˵����  num:ģ���       
//  238 //          DeviceAddr:�豸��ַ    
//  239 //          AccessAddr:���ʵ�ַ
//  240 //          Data:�������ݵĻ�����
//  241 //          N:�Ӵӻ������ֽڸ��� 
//  242 //�������أ� Ϊ0,�ɹ���N���ֽ�;Ϊ1,��N���ֽ�ʧ��  
//  243 //����˵��: �ڲ�����hw_iic_read1  
//  244 //============================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 uint8 hw_iic_readn(I2C_MemMapPtr num,uint8 DeviceAddr, uint8 AccessAddr, uint8 Data[], uint8 N)
//  246 {
hw_iic_readn:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  247     uint16 i, j;
//  248     for (i = 0;i < N;i++)
        MOVS     R9,#+0
        B.N      ??hw_iic_readn_0
??hw_iic_readn_1:
        ADDS     R9,R9,#+1
??hw_iic_readn_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R9,R0
        BCS.N    ??hw_iic_readn_2
//  249     {
//  250         for(j = 0;j <15*40 ;j++); //��С��ʱ(���͵�ÿ���ֽ�֮��Ҫ��ʱ����)
        MOVS     R0,#+0
        B.N      ??hw_iic_readn_3
??hw_iic_readn_4:
        ADDS     R0,R0,#+1
??hw_iic_readn_3:
        MOV      R1,#+600
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCC.N    ??hw_iic_readn_4
//  251         if (hw_iic_read1(num,DeviceAddr, AccessAddr + i, &Data[i]))  
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        ADDS     R3,R9,R8
        ADDS     R2,R9,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       hw_iic_read1
        CMP      R0,#+0
        BEQ.N    ??hw_iic_readn_1
//  252             return 1;             //����һ���ֽ�û�н��յ�,����ʧ�ܱ�־:1
        MOVS     R0,#+1
        B.N      ??hw_iic_readn_5
//  253     }
//  254     if (i >= N)
??hw_iic_readn_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R9,R4
        BCC.N    ??hw_iic_readn_6
//  255         return 0;                 //�ɹ�����N������,���سɹ���־:0
        MOVS     R0,#+0
        B.N      ??hw_iic_readn_5
//  256 }
??hw_iic_readn_6:
??hw_iic_readn_5:
        POP      {R1,R4-R9,PC}    ;; return
//  257 
//  258 
//  259 //============================================================================
//  260 //�������ƣ�hw_iic_writen                                                        
//  261 //���ܸ�Ҫ�� ��ӻ�дN���ֽ�����                                              
//  262 //����˵����  num:ģ���       
//  263 //          DeviceAddr:�豸��ַ    
//  264 //          AccessAddr:���ʵ�ַ
//  265 //          Data:Ҫд�������  
//  266 //          N:�Ӵӻ������ֽڸ��� 
//  267 //�������أ� Ϊ0,�ɹ�дN���ֽ�;Ϊ1,дN���ֽ�ʧ��
//  268 //����˵��: �ڲ�����hw_iic_write1   
//  269 //============================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 uint8 hw_iic_writen(I2C_MemMapPtr num,uint8 DeviceAddr, uint8 AccessAddr,uint8 Data[], uint8 N)
//  271 {
hw_iic_writen:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  272     uint16 i, j;
//  273     for (i = 0;i < N;i++)
        MOVS     R9,#+0
        B.N      ??hw_iic_writen_0
??hw_iic_writen_1:
        ADDS     R9,R9,#+1
??hw_iic_writen_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R9,R0
        BCS.N    ??hw_iic_writen_2
//  274     {
//  275         for(j = 0;j < 15*40;j++); //��С��ʱ(���͵�ÿ���ֽ�֮��Ҫ��ʱ����)
        MOVS     R0,#+0
        B.N      ??hw_iic_writen_3
??hw_iic_writen_4:
        ADDS     R0,R0,#+1
??hw_iic_writen_3:
        MOV      R1,#+600
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCC.N    ??hw_iic_writen_4
//  276         if (hw_iic_write1(num,DeviceAddr, AccessAddr + i, Data[i]))
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R3,[R9, R8]
        ADDS     R2,R9,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       hw_iic_write1
        CMP      R0,#+0
        BEQ.N    ??hw_iic_writen_1
//  277             return 1;            //����һ���ֽ�û�з��ͳ�ȥ,����ʧ�ܱ�־:1
        MOVS     R0,#+1
        B.N      ??hw_iic_writen_5
//  278     }
//  279     if (i >= N)
??hw_iic_writen_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R9,R4
        BCC.N    ??hw_iic_writen_6
//  280         return 0;                //�ɹ�����N������,���سɹ���־:0
        MOVS     R0,#+0
        B.N      ??hw_iic_writen_5
//  281 }
??hw_iic_writen_6:
??hw_iic_writen_5:
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  282 
//  283 #endif 
// 
// 846 bytes in section .text
// 
// 846 bytes of CODE memory
//
//Errors: none
//Warnings: 3
