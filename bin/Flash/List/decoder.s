///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       30/Dec/2015  17:14:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\C\Component_C\decoder.c
//    Command line =  
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\C\Component_C\decoder.c"
//        -D IAR -D TWR_K60N512 -lCN
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\bin\Flash\List\"
//        -lB
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\bin\Flash\List\"
//        -o
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\bin\Flash\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\MyProgramFiles\IAR
//        7.10.3\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\H\"
//        -I
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\H\Component_H\"
//        -I
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\H\Frame_H\"
//        -Ol --use_c++_inline
//    List file    =  
//        G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\bin\Flash\List\decoder.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1



        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\C\Component_C\decoder.c
//    1 #include "common.h"
//    2 #include "decoder.h"
//    3 /*==============================================================================
//    4 ���ܣ�FTM1��FTM2ģ��˫·�����������
//    5 ���ţ�PTA12��PTA13��PTB18��PTB19
//    6 ���ݣ���ʼ��FTM1��FTM2���������빦��
//    7 ��������
//    8 E6A2-CW3C�����������ţ�
//    9          ��ɫ��GND
//   10          ��ɫ��VCC
//   11          ��ɫ��A��
//   12          ��ɫ��B��
//   13 ==============================================================================*/
//   14 /*
//   15 void FTM_QUAD_init()
//   16 {
//   17   
//   18   SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;//ʹ��FTM1��FTM2ʱ��
//   19   SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;
//   20   
//   21   SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;//�����˿�ʱ��
//   22   
//   23  
//   24   PORTA_PCR12 = PORT_PCR_MUX(7);  // ѡ��ܽŸ��ù���                      //�ض�оƬ��ʲô����
//   25   PORTA_PCR13 = PORT_PCR_MUX(7);
//   26 
//   27   PORTB_PCR18 = PORT_PCR_MUX(6);
//   28   PORTB_PCR19 = PORT_PCR_MUX(6);
//   29  
//   30   FTM1_CNTIN = 0;                                          //FTM1��ʼֵ
//   31   FTM2_CNTIN = 0;                                          //FTM2��ʼֵ
//   32   FTM1_MOD = 65535;                                        //�ɸ�����Ҫ���ý���ֵ
//   33   FTM2_MOD = 65535;                                        
//   34   
//   35   FTM1_MODE |= FTM_MODE_WPDIS_MASK;                        //��ֹд����
//   36   FTM2_MODE |= FTM_MODE_WPDIS_MASK;                        //��ֹд����
//   37  
//   38   FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;                   //AB��ͬʱȷ������ͼ���ֵ  
//   39   FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;                   //AB��ͬʱȷ������ͼ���ֵ  
//   40 
//   41   FTM1_QDCTRL |= FTM_QDCTRL_QUADEN_MASK;                   //ʹ����������ģʽ
//   42   FTM2_QDCTRL |= FTM_QDCTRL_QUADEN_MASK;                   //ʹ����������ģʽ
//   43   
//   44   FTM1_MODE |= FTM_MODE_FTMEN_MASK;                        //FTMEN=1,�ر�TPM����ģʽ������FTM���й���
//   45   FTM2_MODE |= FTM_MODE_FTMEN_MASK;                        //FTMEN=1,�ر�TPM����ģʽ������FTM���й���
//   46   
//   47   FTM1_CNT=0; 
//   48   FTM2_CNT=0; 
//   49 }
//   50 
//   51 */
//   52 
//   53 /*************************************************************************
//   54 *  �������ƣ�FTM2_QUAD_DIR_init
//   55 *  ����˵������������ �������ģʽ��ʼ������
//   56 *  �������أ���
//   57 *  �޸�ʱ�䣺2012-1-26
//   58 *  ��    ע��
//   59              ������ʹ�� A10 ��A11 ����������Ϊ��ת�������� A���B �����롣 
//   60               B·���Ƽ���������  �ߵ�ƽʱ�������������
//   61               A·��������
//   62               ��B·Ĭ������
//   63 *************************************************************************/
//   64 /*void FTM_QUAD_DIR_init()
//   65 {
//   66    
//   67     SIM_SCGC6 |=SIM_SCGC6_FTM1_MASK;                             //ʹ��FTM1ʱ��
//   68     SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
//   69     
//   70     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//   71     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//   72     
//   73     PORT_PCR_REG(PORTA_BASE_PTR, 12) = (0|PORT_PCR_MUX(7)|0x10);     // PTA12
//   74     PORT_PCR_REG(PORTA_BASE_PTR, 13) = (0|PORT_PCR_MUX(7)|0x13);     // PTA13
//   75     PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(6);              // PTB18
//   76     PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(6);              // PTB19
//   77       
//   78     FTM_MODE_REG(FTM1_BASE_PTR)    |= FTM_MODE_WPDIS_MASK;           //д������ֹ
//   79     FTM_QDCTRL_REG(FTM1_BASE_PTR)  &=~FTM_QDCTRL_QUADMODE_MASK;       //AB��ͬʱȷ������ͼ���ֵ
//   80     FTM_CNTIN_REG(FTM1_BASE_PTR)    = 0;                             //FTM1��������ʼֵΪ0
//   81     FTM_MOD_REG(FTM1_BASE_PTR)      = 0xFFFF;                        //FTM1��������ֵΪ0
//   82     
//   83     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_WPDIS_MASK;           //д������ֹ
//   84     FTM_QDCTRL_REG(FTM2_BASE_PTR)  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB ��������ģʽ
//   85     FTM_CNTIN_REG(FTM2_BASE_PTR)    = 0;                             //FTM��������ʼֵΪ0
//   86     FTM_MOD_REG(FTM2_BASE_PTR)      = 0xFFFF;                        //FTM��������ʼֵΪ0
//   87     
//   88     FTM_QDCTRL_REG(FTM1_BASE_PTR)  |=FTM_QDCTRL_QUADEN_MASK;         //ʹ��FTM1��������ģʽ
//   89     FTM_MODE_REG(FTM1_BASE_PTR)    |= FTM_MODE_FTMEN_MASK;           //FTM1EN=1	
//   90     FTM_CNT_REG(FTM1_BASE_PTR)     = 0; 
//   91     
//   92     FTM_QDCTRL_REG(FTM2_BASE_PTR)  |=FTM_QDCTRL_QUADEN_MASK;         //ʹ��FTM2��������ģʽ
//   93     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_FTMEN_MASK;           //FTM2EN=1	
//   94     FTM_CNT_REG(FTM2_BASE_PTR)     = 0; 	
//   95 }*/
//   96 
//   97 
//   98 
//   99 /*************************************************************************
//  100 *  �������ƣ�FTM2_init
//  101 *  ����˵������������ �������ģʽ��ʼ������
//  102 *  �������أ���
//  103 *  �޸�ʱ�䣺2012-1-26
//  104 *  ��    ע��CH0~CH3����ʹ�ù�������δ�����⹦��
//  105              ������ʹ�� A10 ��A11 ����������Ϊ��ת�������� A���B �����롣 
//  106 *************************************************************************
//  107 void FTM_QUAD_init()
//  108 {
//  109     SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                                 //ʹ��FTM2ʱ��
//  110 
//  111     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  112     PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(6);               // PTB18
//  113     PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(6);               // PTB19
//  114        
//  115     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_WPDIS_MASK;           //д������ֹ
//  116     FTM_QDCTRL_REG(FTM2_BASE_PTR)  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB ��������ģʽ
//  117     FTM_CNTIN_REG(FTM2_BASE_PTR)    = 0;                             //FTM��������ʼֵΪ0
//  118     FTM_MOD_REG(FTM2_BASE_PTR)      = 0xFFFF;                        //FTM��������ʼֵΪ0
//  119    
//  120     FTM_QDCTRL_REG(FTM2_BASE_PTR)  |=FTM_QDCTRL_QUADEN_MASK;         //ʹ��FTM2��������ģʽ
//  121     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_FTMEN_MASK;                             //FTM2EN=1	
//  122     FTM_CNT_REG(FTM2_BASE_PTR)    = 0; 	
//  123 }*/
// 
//
// 
//
//
//Errors: none
//Warnings: none