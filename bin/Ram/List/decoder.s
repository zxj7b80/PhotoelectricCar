///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      28/Feb/2014  18:56:17 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectric /
//                    Car V1.1\src\Sources\C\Component_C\decoder.c            /
//    Command line =  "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectri /
//                    cCar V1.1\src\Sources\C\Component_C\decoder.c" -D IAR   /
//                    -D TWR_K60N512 -lCN "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾ /
//                    Å)\³ÌÐò\PhotoelectricCar V1.1\bin\Ram\List\" -lB        /
//                    "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectri /
//                    cCar V1.1\bin\Ram\List\" -o                             /
//                    "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectri /
//                    cCar V1.1\bin\Ram\Obj\" --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    E:\IAREW6.3\arm\INC\c\DLib_Config_Normal.h -I           /
//                    "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectri /
//                    cCar V1.1\src\Sources\H\" -I                            /
//                    "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectri /
//                    cCar V1.1\src\Sources\H\Component_H\" -I                /
//                    "D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectri /
//                    cCar V1.1\src\Sources\H\Frame_H\" -Ol --use_c++_inline  /
//    List file    =  D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\Photoelectric /
//                    Car V1.1\bin\Ram\List\decoder.s                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME decoder

        #define SHT_PROGBITS 0x1

        PUBLIC FTM_QUAD_init

// D:\FREESCALEÖÇÄÜ³µ¾ºÈü\freescale(¾Å)\³ÌÐò\PhotoelectricCar V1.1\src\Sources\C\Component_C\decoder.c
//    1 #include "common.h"
//    2 #include "decoder.h"
//    3 /*==============================================================================
//    4 ¹¦ÄÜ£ºFTM1¡¢FTM2Ä£¿éË«Â·Õý½»Âö³å¼ÆÊý
//    5 Òý½Å£ºPTA12¡¢PTA13¡¢PTB18¡¢PTB19
//    6 ÄÚÈÝ£º³õÊ¼»¯FTM1¡¢FTM2µÄÕý½»½âÂë¹¦ÄÜ
//    7 ²ÎÊý£ºÎÞ
//    8 E6A2-CW3C¹âµç±àÂëÆ÷Òý½Å£º
//    9          À¶É«£ºGND
//   10          ×ØÉ«£ºVCC
//   11          ºÚÉ«£ºAÏà
//   12          °×É«£ºBÏà
//   13 ==============================================================================*/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   14 void FTM_QUAD_init()
//   15 {
//   16   /*Ê¹ÄÜFTM1¡¢FTM2Ê±ÖÓ*/
//   17   SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;
FTM_QUAD_init:
        LDR.N    R0,??FTM_QUAD_init_0  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??FTM_QUAD_init_0  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   18   SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;
        LDR.N    R0,??FTM_QUAD_init_0+0x4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??FTM_QUAD_init_0+0x4  ;; 0x40048030
        STR      R0,[R1, #+0]
//   19   /*¿ªÆô¶Ë¿ÚÊ±ÖÓ*/
//   20   SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        LDR.N    R0,??FTM_QUAD_init_0+0x8  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??FTM_QUAD_init_0+0x8  ;; 0x40048038
        STR      R0,[R1, #+0]
//   21   
//   22   /*Ñ¡Ôñ¹Ü½Å¸´ÓÃ¹¦ÄÜ*/
//   23   PORTA_PCR12 = PORT_PCR_MUX(7);                          //ÌØ¶¨Ð¾Æ¬ÊÇÊ²Ã´¹¦ÄÜ
        LDR.N    R0,??FTM_QUAD_init_0+0xC  ;; 0x40049030
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//   24   PORTA_PCR13 = PORT_PCR_MUX(7);
        LDR.N    R0,??FTM_QUAD_init_0+0x10  ;; 0x40049034
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//   25 
//   26   PORTB_PCR18 = PORT_PCR_MUX(6);
        LDR.N    R0,??FTM_QUAD_init_0+0x14  ;; 0x4004a048
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   27   PORTB_PCR19 = PORT_PCR_MUX(6);
        LDR.N    R0,??FTM_QUAD_init_0+0x18  ;; 0x4004a04c
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   28  
//   29   FTM1_CNTIN = 0;                                          //FTM1³õÊ¼Öµ
        LDR.N    R0,??FTM_QUAD_init_0+0x1C  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   30   FTM2_CNTIN = 0;                                          //FTM2³õÊ¼Öµ
        LDR.N    R0,??FTM_QUAD_init_0+0x20  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   31   FTM1_MOD = 65535;                                        //¿É¸ù¾ÝÐèÒªÉèÖÃ½áÊøÖµ
        LDR.N    R0,??FTM_QUAD_init_0+0x24  ;; 0x40039008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//   32   FTM2_MOD = 65535;                                        
        LDR.N    R0,??FTM_QUAD_init_0+0x28  ;; 0x400b8008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//   33   
//   34   FTM1_MODE |= FTM_MODE_WPDIS_MASK;                        //½ûÖ¹Ð´±£»¤
        LDR.N    R0,??FTM_QUAD_init_0+0x2C  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??FTM_QUAD_init_0+0x2C  ;; 0x40039054
        STR      R0,[R1, #+0]
//   35   FTM2_MODE |= FTM_MODE_WPDIS_MASK;                        //½ûÖ¹Ð´±£»¤
        LDR.N    R0,??FTM_QUAD_init_0+0x30  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??FTM_QUAD_init_0+0x30  ;; 0x400b8054
        STR      R0,[R1, #+0]
//   36  
//   37   FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;                   //ABÏàÍ¬Ê±È·¶¨·½ÏòºÍ¼ÆÊýÖµ  
        LDR.N    R0,??FTM_QUAD_init_0+0x34  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??FTM_QUAD_init_0+0x34  ;; 0x40039080
        STR      R0,[R1, #+0]
//   38   FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;                   //ABÏàÍ¬Ê±È·¶¨·½ÏòºÍ¼ÆÊýÖµ  
        LDR.N    R0,??FTM_QUAD_init_0+0x38  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??FTM_QUAD_init_0+0x38  ;; 0x400b8080
        STR      R0,[R1, #+0]
//   39   //FTM2_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK;                //Ñ¡¶¨±àÂëÄ£Ê½ÎªAÏàÓëBÏà±àÂëÄ£Ê½
//   40   //FTM1_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK;                //Ñ¡¶¨±àÂëÄ£Ê½ÎªAÏàÓëBÏà±àÂëÄ£Ê½
//   41   //FTM1_SC |= FTM_SC_CLKS(3);                               //Ñ¡ÔñÍâ²¿Ê±ÖÓ
//   42   //FTM1_CONF |=FTM_CONF_BDMMODE(3);                         //¿É¸ù¾ÝÐèÒªÑ¡Ôñ
//   43   //FTM2_SC |= FTM_SC_CLKS(3);
//   44   //FTM2_CONF |=FTM_CONF_BDMMODE(3);
//   45   FTM1_QDCTRL |= FTM_QDCTRL_QUADEN_MASK;                   //Ê¹ÄÜÕý½»½âÂëÄ£Ê½
        LDR.N    R0,??FTM_QUAD_init_0+0x34  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??FTM_QUAD_init_0+0x34  ;; 0x40039080
        STR      R0,[R1, #+0]
//   46   FTM2_QDCTRL |= FTM_QDCTRL_QUADEN_MASK;                   //Ê¹ÄÜÕý½»½âÂëÄ£Ê½
        LDR.N    R0,??FTM_QUAD_init_0+0x38  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??FTM_QUAD_init_0+0x38  ;; 0x400b8080
        STR      R0,[R1, #+0]
//   47   
//   48   FTM1_MODE |= FTM_MODE_FTMEN_MASK;                        //FTMEN=1,¹Ø±ÕTPM¼æÈÝÄ£Ê½£¬¿ªÆôFTMËùÓÐ¹¦ÄÜ
        LDR.N    R0,??FTM_QUAD_init_0+0x2C  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??FTM_QUAD_init_0+0x2C  ;; 0x40039054
        STR      R0,[R1, #+0]
//   49   FTM2_MODE |= FTM_MODE_FTMEN_MASK;                        //FTMEN=1,¹Ø±ÕTPM¼æÈÝÄ£Ê½£¬¿ªÆôFTMËùÓÐ¹¦ÄÜ
        LDR.N    R0,??FTM_QUAD_init_0+0x30  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??FTM_QUAD_init_0+0x30  ;; 0x400b8054
        STR      R0,[R1, #+0]
//   50   
//   51   FTM1_CNT=0; 
        LDR.N    R0,??FTM_QUAD_init_0+0x3C  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   52   FTM2_CNT=0; 
        LDR.N    R0,??FTM_QUAD_init_0+0x40  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   53 }
        BX       LR               ;; return
        DATA
??FTM_QUAD_init_0:
        DC32     0x4004803c
        DC32     0x40048030
        DC32     0x40048038
        DC32     0x40049030
        DC32     0x40049034
        DC32     0x4004a048
        DC32     0x4004a04c
        DC32     0x4003904c
        DC32     0x400b804c
        DC32     0x40039008
        DC32     0x400b8008
        DC32     0x40039054
        DC32     0x400b8054
        DC32     0x40039080
        DC32     0x400b8080
        DC32     0x40039004
        DC32     0x400b8004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   54 
//   55 
//   56 
//   57 /*************************************************************************
//   58 *  º¯ÊýÃû³Æ£ºFTM2_QUAD_DIR_init
//   59 *  ¹¦ÄÜËµÃ÷£ºÕý½»½âÂë ·½Ïò¼ÆÊýÄ£Ê½³õÊ¼»¯º¯Êý
//   60 *  º¯Êý·µ»Ø£ºÎÞ
//   61 *  ÐÞ¸ÄÊ±¼ä£º2012-1-26
//   62 *  ±¸    ×¢£º
//   63              ¸ÃÀý³ÌÊ¹ÓÃ A10 ºÍA11 Òý½ÅÊäÈë×÷ÎªÐý×ª±àÂëÆ÷µÄ AÏàºÍB ÏàÊäÈë¡£ 
//   64               BÂ·¿ØÖÆ¼ÆÊýÆ÷·½Ïò  ¸ßµçÆ½Ê±¼ÆÊýÆ÷ÕýÏò¼ÆÊý
//   65               AÂ·¼ÆÊýÂö³å
//   66               ¶ÔBÂ·Ä¬ÈÏÉÏÀ­
//   67 *************************************************************************/
//   68 /*void FTM_QUAD_DIR_init()
//   69 {
//   70    
//   71     SIM_SCGC6 |=SIM_SCGC6_FTM1_MASK;                             //Ê¹ÄÜFTM1Ê±ÖÓ
//   72     SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //Ê¹ÄÜFTM2Ê±ÖÓ
//   73     
//   74     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//   75     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//   76     
//   77     PORT_PCR_REG(PORTA_BASE_PTR, 12) = (0|PORT_PCR_MUX(7)|0x10);     // PTA12
//   78     PORT_PCR_REG(PORTA_BASE_PTR, 13) = (0|PORT_PCR_MUX(7)|0x13);     // PTA13
//   79     PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(6);              // PTB18
//   80     PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(6);              // PTB19
//   81       
//   82     FTM_MODE_REG(FTM1_BASE_PTR)    |= FTM_MODE_WPDIS_MASK;           //Ð´±£»¤½ûÖ¹
//   83     FTM_QDCTRL_REG(FTM1_BASE_PTR)  &=~FTM_QDCTRL_QUADMODE_MASK;       //ABÏàÍ¬Ê±È·¶¨·½ÏòºÍ¼ÆÊýÖµ
//   84     FTM_CNTIN_REG(FTM1_BASE_PTR)    = 0;                             //FTM1¼ÆÊýÆ÷³õÊ¼ÖµÎª0
//   85     FTM_MOD_REG(FTM1_BASE_PTR)      = 0xFFFF;                        //FTM1¼ÆÊýÆ÷ÖÕÖµÎª0
//   86     
//   87     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_WPDIS_MASK;           //Ð´±£»¤½ûÖ¹
//   88     FTM_QDCTRL_REG(FTM2_BASE_PTR)  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB Õý½»½âÂëÄ£Ê½
//   89     FTM_CNTIN_REG(FTM2_BASE_PTR)    = 0;                             //FTM¼ÆÊýÆ÷³õÊ¼ÖµÎª0
//   90     FTM_MOD_REG(FTM2_BASE_PTR)      = 0xFFFF;                        //FTM¼ÆÊýÆ÷³õÊ¼ÖµÎª0
//   91     
//   92     FTM_QDCTRL_REG(FTM1_BASE_PTR)  |=FTM_QDCTRL_QUADEN_MASK;         //Ê¹ÄÜFTM1Õý½»½âÂëÄ£Ê½
//   93     FTM_MODE_REG(FTM1_BASE_PTR)    |= FTM_MODE_FTMEN_MASK;           //FTM1EN=1	
//   94     FTM_CNT_REG(FTM1_BASE_PTR)     = 0; 
//   95     
//   96     FTM_QDCTRL_REG(FTM2_BASE_PTR)  |=FTM_QDCTRL_QUADEN_MASK;         //Ê¹ÄÜFTM2Õý½»½âÂëÄ£Ê½
//   97     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_FTMEN_MASK;           //FTM2EN=1	
//   98     FTM_CNT_REG(FTM2_BASE_PTR)     = 0; 	
//   99 }*/
//  100 
//  101 
//  102 
//  103 /*************************************************************************
//  104 *  º¯ÊýÃû³Æ£ºFTM2_init
//  105 *  ¹¦ÄÜËµÃ÷£ºÕý½»½âÂë ·½Ïò¼ÆÊýÄ£Ê½³õÊ¼»¯º¯Êý
//  106 *  º¯Êý·µ»Ø£ºÎÞ
//  107 *  ÐÞ¸ÄÊ±¼ä£º2012-1-26
//  108 *  ±¸    ×¢£ºCH0~CH3¿ÉÒÔÊ¹ÓÃ¹ýÂËÆ÷£¬Î´Ìí¼ÓÕâ¹¦ÄÜ
//  109              ¸ÃÀý³ÌÊ¹ÓÃ A10 ºÍA11 Òý½ÅÊäÈë×÷ÎªÐý×ª±àÂëÆ÷µÄ AÏàºÍB ÏàÊäÈë¡£ 
//  110 *************************************************************************
//  111 void FTM_QUAD_init()
//  112 {
//  113     SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                                 //Ê¹ÄÜFTM2Ê±ÖÓ
//  114 
//  115     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  116     PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(6);               // PTB18
//  117     PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(6);               // PTB19
//  118        
//  119     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_WPDIS_MASK;           //Ð´±£»¤½ûÖ¹
//  120     FTM_QDCTRL_REG(FTM2_BASE_PTR)  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB Õý½»½âÂëÄ£Ê½
//  121     FTM_CNTIN_REG(FTM2_BASE_PTR)    = 0;                             //FTM¼ÆÊýÆ÷³õÊ¼ÖµÎª0
//  122     FTM_MOD_REG(FTM2_BASE_PTR)      = 0xFFFF;                        //FTM¼ÆÊýÆ÷³õÊ¼ÖµÎª0
//  123    
//  124     FTM_QDCTRL_REG(FTM2_BASE_PTR)  |=FTM_QDCTRL_QUADEN_MASK;         //Ê¹ÄÜFTM2Õý½»½âÂëÄ£Ê½
//  125     FTM_MODE_REG(FTM2_BASE_PTR)    |= FTM_MODE_FTMEN_MASK;                             //FTM2EN=1	
//  126     FTM_CNT_REG(FTM2_BASE_PTR)    = 0; 	
//  127 }*/
// 
// 276 bytes in section .text
// 
// 276 bytes of CODE memory
//
//Errors: none
//Warnings: none
