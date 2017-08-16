///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       30/Dec/2015  17:14:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\C\Frame_C\sysinit.c
//    Command line =  
//        "G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\C\Frame_C\sysinit.c"
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
//        G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\bin\Flash\List\sysinit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC core_clk_khz
        PUBLIC core_clk_mhz
        PUBLIC fb_clk_init
        PUBLIC periph_clk_khz
        PUBLIC pll_init
        PUBLIC set_sys_dividers
        PUBLIC sysinit
        PUBLIC trace_clk_init

// G:\FREESCALE���ܳ�����\freescale(��)\����\�ܾ�����������21.22.23\2014.08.22\src\Sources\C\Frame_C\sysinit.c
//    1 //-------------------------------------------------------------------------*
//    2 // �ļ���:sysinit.c                                                        *
//    3 // ˵  ��: ϵͳ�����ļ�                                                    *
//    4 //-------------------------------------------------------------------------*
//    5 
//    6 #include "sysinit.h"	//ͷ�ļ�
//    7 
//    8 //ȫ�ֱ�������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 int core_clk_khz;
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 int core_clk_mhz;
core_clk_mhz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int periph_clk_khz;
periph_clk_khz:
        DS8 4
//   12 
//   13 //-------------------------------------------------------------------------*
//   14 //������: sysinit                                                          *
//   15 //��  ��: ϵͳ����                                                         * 
//   16 //��  ��: ��						  	           *	
//   17 //��  ��: ��                                                               *
//   18 //˵  ��: ��                                                               *
//   19 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void sysinit (void)
//   21 {
sysinit:
        PUSH     {R7,LR}
//   22     //ʹ��IO�˿�ʱ��    
//   23     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   24                               | SIM_SCGC5_PORTB_MASK
//   25                               | SIM_SCGC5_PORTC_MASK
//   26                               | SIM_SCGC5_PORTD_MASK
//   27                               | SIM_SCGC5_PORTE_MASK );
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   28 
//   29     //����ϵͳʱ��
//   30     core_clk_mhz = pll_init(CORE_CLK_MHZ, REF_CLK);
        MOVS     R1,#+16
        MOVS     R0,#+5
        BL       pll_init
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   31     //ͨ��pll_init�����ķ���ֵ�������ں�ʱ�Ӻ�����ʱ��
//   32     core_clk_khz = core_clk_mhz * 1000;
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   33     periph_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24)+ 1);
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_3  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+0]
//   34     //ʹ�ܸ���ʱ�ӣ����ڵ���
//   35     trace_clk_init();	
        BL       trace_clk_init
//   36     //FlexBusʱ�ӳ�ʼ��
//   37     fb_clk_init();
        BL       fb_clk_init
//   38 
//   39 }
        POP      {R0,PC}          ;; return
//   40 
//   41 //-------------------------------------------------------------------------*
//   42 //������: trace_clk_init                                                   *
//   43 //��  ��: ����ʱ�ӳ�ʼ��                                                   * 
//   44 //��  ��: ��							  	   *	
//   45 //��  ��: ��                                                               *
//   46 //˵  ��: ���ڵ���                                                         *
//   47 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void trace_clk_init(void)
//   49 {
//   50     //���ø���ʱ��Ϊ�ں�ʱ��
//   51     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
trace_clk_init:
        LDR.N    R0,??DataTable3_5  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable3_5  ;; 0x40048004
        STR      R0,[R1, #+0]
//   52     //��PTA6������ʹ��TRACE_CLKOU����
//   53     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
        MOV      R0,#+1792
        LDR.N    R1,??DataTable3_6  ;; 0x40049018
        STR      R0,[R1, #+0]
//   54 }
        BX       LR               ;; return
//   55 
//   56 //-------------------------------------------------------------------------*
//   57 //������: fb_clk_init                                                      *
//   58 //��  ��: FlexBusʱ�ӳ�ʼ��                                                * 
//   59 //��  ��: ��								   *	
//   60 //��  ��: ��                                                               *
//   61 //˵  ��:                                                                  *
//   62 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void fb_clk_init(void)
//   64 {
//   65     //ʹ��FlexBusģ��ʱ��
//   66     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
fb_clk_init:
        LDR.N    R0,??DataTable3_7  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_7  ;; 0x40048040
        STR      R0,[R1, #+0]
//   67     //��PTA6������ʹ��FB_CLKOUT����
//   68     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        MOV      R0,#+1280
        LDR.N    R1,??DataTable3_8  ;; 0x4004b00c
        STR      R0,[R1, #+0]
//   69 }
        BX       LR               ;; return
//   70 
//   71 //-------------------------------------------------------------------------*
//   72 //������: pll_init                                                         *
//   73 //��  ��: pll��ʼ��                                                        * 
//   74 //��  ��: clk_option:ʱ��ѡ��						   * 
//   75 //        crystal_val:ʱ��ֵ                                               *	
//   76 //��  ��: ʱ��Ƶ��ֵ                                                       *
//   77 //˵  ��:                                                                  *
//   78 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 unsigned char pll_init(unsigned char clk_option, unsigned char crystal_val)
//   80 {
pll_init:
        PUSH     {R7,LR}
        MOVS     R2,R1
//   81     unsigned char pll_freq;
//   82     
//   83     if (clk_option > 8) {return 0;}   //���û��ѡ����õ�ѡ���򷵻�0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??pll_init_0
        MOVS     R0,#+0
        B.N      ??pll_init_1
//   84     if (crystal_val > 16) {return 1;} // ���������õľ���ѡ������򷵻�1
??pll_init_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+17
        BLT.N    ??pll_init_2
        MOVS     R0,#+1
        B.N      ??pll_init_1
//   85     
//   86     //���ﴦ��Ĭ�ϵ�FEIģʽ
//   87     //�����ƶ���FBEģʽ
//   88     
//   89     #if (defined(K60_CLK))   
//   90              MCG_C2 = 0;
??pll_init_2:
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_9  ;; 0x40064001
        STRB     R2,[R3, #+0]
//   91     #else
//   92     
//   93              //ʹ���ⲿ����
//   94              MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//   95     #endif
//   96     
//   97     //��ʼ��������ͷ�����״̬��������GPIO
//   98     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R2,??DataTable3_10  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x10000000
        LDR.N    R3,??DataTable3_10  ;; 0x40048034
        STR      R2,[R3, #+0]
//   99     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R2,??DataTable3_11  ;; 0x4007c008
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.N    R3,??DataTable3_11  ;; 0x4007c008
        STRB     R2,[R3, #+0]
//  100     
//  101     //ѡ���ⲿ���񣬲ο���Ƶ������IREFS�������ⲿ����
//  102     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        MOVS     R2,#+152
        LDR.N    R3,??DataTable3_12  ;; 0x40064000
        STRB     R2,[R3, #+0]
//  103     
//  104     //�ȴ������ȶ�	
//  105     #if (!defined(K60_CLK))
//  106     while (!(MCG_S & MCG_S_OSCINIT_MASK)){};  
//  107     #endif
//  108     
//  109     //�ȴ��ο�ʱ��״̬λ����
//  110     while (MCG_S & MCG_S_IREFST_MASK){}; 
??pll_init_3:
        LDR.N    R2,??DataTable3_13  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BMI.N    ??pll_init_3
//  111     //�ȴ�ʱ��״̬λ��ʾʱ��Դ�����ⲿ�ο�ʱ��
//  112     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; 
??pll_init_4:
        LDR.N    R2,??DataTable3_13  ;; 0x40064006
        LDRB     R2,[R2, #+0]
        UBFX     R2,R2,#+2,#+2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??pll_init_4
//  113     
//  114     //����FBEģʽ
//  115     
//  116     #if (defined(K60_CLK))          //ʹ���ⲿ��50M���� 
//  117   //MCG_C5 = MCG_C5_PRDIV(0x18);    //��Ȼ��Ҫ25��Ƶ���ڱ�������û��XTAL50�����Ը��˸�K60_CLK����ʾ�����ⲿ��50M
//  118   //MCG_C5 = MCG_C5_PRDIV(0x13);    //20��Ƶ��50M����2.5M  
//  119   //MCG_C5 = MCG_C5_PRDIV(12);      //13��Ƶ  3.846M  150Mʱ��Ƶ��ʹ��
//  120   //MCG_C5 = MCG_C5_PRDIV(3);       //�ⲿʹ�õ���8M�����״��   1:2��Ƶ  3:4��Ƶ
//  121     MCG_C5 = MCG_C5_PRDIV(0x0e);    //180M
        MOVS     R2,#+14
        LDR.N    R3,??DataTable3_14  ;; 0x40064004
        STRB     R2,[R3, #+0]
//  122   // MCG_C5 = MCG_C5_PRDIV(0x0C);    //207M
//  123   //MCG_C5 = MCG_C5_PRDIV(0x0b);    //225M
//  124     #else
//  125     
//  126     //����PLL��Ƶ����ƥ�����õľ���
//  127     MCG_C5 = MCG_C5_PRDIV(crystal_val); 
//  128     #endif
//  129     
//  130     //ȷ��MCG_C6���ڸ�λ״̬����ֹLOLIE��PLL����ʱ�ӿ���������PLL VCO��Ƶ��
//  131     MCG_C6 = 0x0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_15  ;; 0x40064005
        STRB     R2,[R3, #+0]
//  132     //ѡ��PLL VCO��Ƶ����ϵͳʱ�ӷ�Ƶ��ȡ����ʱ��ѡ��
//  133     switch (clk_option) {
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??pll_init_5
        CMP      R0,#+2
        BEQ.N    ??pll_init_6
        BCC.N    ??pll_init_7
        CMP      R0,#+4
        BEQ.N    ??pll_init_8
        BCC.N    ??pll_init_9
        CMP      R0,#+6
        BEQ.N    ??pll_init_10
        BCC.N    ??pll_init_11
        CMP      R0,#+7
        BEQ.N    ??pll_init_12
        B.N      ??pll_init_13
//  134     case 0:
//  135       //����ϵͳ��Ƶ��
//  136       //MCG=PLL, core = MCG, bus = MCG, FlexBus = MCG, Flash clock= MCG/2
//  137       set_sys_dividers(0,0,0,1);
??pll_init_5:
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       set_sys_dividers
//  138       //����VCO��Ƶ����ʹ��PLLΪ50MHz, LOLIE=0, PLLS=1, CME=0, VDIV=1
//  139       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(1); //VDIV = 1 (x25)
        MOVS     R0,#+65
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  140       pll_freq = 50;
        MOVS     R1,#+50
//  141       break;
        B.N      ??pll_init_13
//  142     case 1:
//  143       //����ϵͳ��Ƶ��
//  144       //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
//  145       set_sys_dividers(0,1,1,3);
??pll_init_7:
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       set_sys_dividers
//  146       //����VCO��Ƶ����ʹ��PLLΪ100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//  147       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26); //VDIV = 26 (x50)
        MOVS     R0,#+90
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  148       pll_freq = 100;
        MOVS     R1,#+100
//  149       break;
        B.N      ??pll_init_13
//  150     case 2:
//  151       //����ϵͳ��Ƶ��
//  152       //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/4
//  153       set_sys_dividers(0,1,1,3);
??pll_init_6:
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       set_sys_dividers
//  154       //����VCO��Ƶ����ʹ��PLLΪ96MHz, LOLIE=0, PLLS=1, CME=0, VDIV=24
//  155       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(24); //VDIV = 24 (x48)
        MOVS     R0,#+88
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  156       pll_freq =120;
        MOVS     R1,#+120
//  157       break;
        B.N      ??pll_init_13
//  158     case 3:
//  159       //����ϵͳ��Ƶ��
//  160       //MCG=PLL, core = MCG, bus = MCG, FlexBus = MCG, Flash clock= MCG/2
//  161       set_sys_dividers(0,0,0,1);
??pll_init_9:
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       set_sys_dividers
//  162       //����VCO��Ƶ����ʹ��PLLΪ48MHz, LOLIE=0, PLLS=1, CME=0, VDIV=0
//  163       MCG_C6 = MCG_C6_PLLS_MASK; //VDIV = 0 (x24)
        MOVS     R0,#+64
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  164       pll_freq = 48;
        MOVS     R1,#+48
//  165       break;
        B.N      ??pll_init_13
//  166     case 4:
//  167       set_sys_dividers(0,2,2,5);  //core=150M, bus=50M, FlexBus=50M, Flash Clk=25M
??pll_init_8:
        MOVS     R3,#+5
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       set_sys_dividers
//  168       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(15); //VDIV = 15 (3.846x39) 150MHz
        MOVS     R0,#+79
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  169       pll_freq = 150;
        MOVS     R1,#+150
//  170       break;
        B.N      ??pll_init_13
//  171     case 5:
//  172       set_sys_dividers(0,2,2,7);  //core=180M, bus=60M, FlexBus=60M, Flash Clk=30M
??pll_init_11:
        MOVS     R3,#+7
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       set_sys_dividers
//  173       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30); //VDIV = 15 (3.846x39) 150MHz
        MOVS     R0,#+94
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  174       pll_freq = 180;
        MOVS     R1,#+180
//  175       break;
        B.N      ??pll_init_13
//  176     case 6:
//  177       set_sys_dividers(0,2,2,7);  //core=180M, bus=60M, FlexBus=60M, Flash Clk=30M
??pll_init_10:
        MOVS     R3,#+7
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       set_sys_dividers
//  178       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30); //VDIV = 15 (3.846x39) 150MHz
        MOVS     R0,#+94
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  179       pll_freq = 207;
        MOVS     R1,#+207
//  180       break;
        B.N      ??pll_init_13
//  181     case 7:
//  182       set_sys_dividers(0,2,2,8);  //core=180M, bus=60M, FlexBus=60M, Flash Clk=30M
??pll_init_12:
        MOVS     R3,#+8
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       set_sys_dividers
//  183       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30); //VDIV = 15 (3.846x39) 150MHz
        MOVS     R0,#+94
        LDR.N    R1,??DataTable3_15  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  184       pll_freq = 225;
        MOVS     R1,#+225
//  185       break;
//  186     }
//  187     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??pll_init_13:
        LDR.N    R0,??DataTable3_13  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pll_init_13
//  188     
//  189     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??pll_init_14:
        LDR.N    R0,??DataTable3_13  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pll_init_14
//  190     
//  191     //����PBEģʽ
//  192     
//  193     //ͨ������CLKSλ������PEEģʽ
//  194     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  195     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable3_12  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R2,??DataTable3_12  ;; 0x40064000
        STRB     R0,[R2, #+0]
//  196     
//  197     //�ȴ�ʱ��״̬λ����
//  198     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pll_init_15:
        LDR.N    R0,??DataTable3_13  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pll_init_15
//  199     
//  200     //��ʼ����PEEģʽ
//  201     
//  202     return pll_freq;
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??pll_init_1:
        POP      {R1,PC}          ;; return
//  203 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x4007c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x40064005
//  204 
//  205 //-------------------------------------------------------------------------*
//  206 //������: set_sys_dividers                                                 *
//  207 //��  ��: ����ϵϵͳ��Ƶ��                                                 * 
//  208 //��  ��: Ԥ��Ƶֵ   							   *	
//  209 //��  ��: ��                                                               *
//  210 //˵  ��: �˺����������RAM��ִ�У�������������e2448����FLASHʱ�ӷ�Ƶ�ı�* 
//  211 //        ʱ�������ֹFLASH��Ԥȡ���ܡ���ʱ�ӷ�Ƶ�ı�֮�󣬱�����ʱһС��ʱ*
//  212 //	 ��ſ��Դ���ʹ��Ԥȡ���ܡ�                                        * 
//  213 //-------------------------------------------------------------------------*

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  214 __ramfunc void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  215 {
set_sys_dividers:
        PUSH     {R4-R6}
//  216     uint32 temp_reg;
//  217     uint8 i;
//  218     //����FMC_PFAPR��ǰ��ֵ
//  219     temp_reg = FMC_PFAPR;
        LDR.N    R4,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R4,[R4, #+0]
//  220     
//  221     //ͨ��M&PFD��λM0PFD����ֹԤȡ����
//  222     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  223                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  224                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R5,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xFF0000
        LDR.N    R6,??set_sys_dividers_0  ;; 0x4001f000
        STR      R5,[R6, #+0]
//  225     
//  226     //��ʱ�ӷ�Ƶ����������ֵ  
//  227     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  228                       | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R0,R1,R0, LSL #+28
        LSLS     R1,R2,#+20
        ANDS     R1,R1,#0xF00000
        ORRS     R0,R1,R0
        LSLS     R1,R3,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        LDR.N    R1,??set_sys_dividers_0+0x4  ;; 0x40048044
        STR      R0,[R1, #+0]
//  229     
//  230     //�ȴ���Ƶ���ı�
//  231     for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R0,#+0
        B.N      ??set_sys_dividers_1
??set_sys_dividers_2:
        ADDS     R0,R0,#+1
??set_sys_dividers_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R3
        BCC.N    ??set_sys_dividers_2
//  232     {}
//  233     
//  234     //���´�FMC_PFAPR��ԭʼֵ
//  235     FMC_PFAPR = temp_reg; 
        LDR.N    R0,??set_sys_dividers_0  ;; 0x4001f000
        STR      R4,[R0, #+0]
//  236     
//  237     return;
        POP      {R4-R6}
        BX       LR               ;; return
        DATA
??set_sys_dividers_0:
        DC32     0x4001f000
        DC32     0x40048044
//  238 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  239 
//  240 
//  241 
//  242 
//  243 
//  244 
// 
//  12 bytes in section .bss
// 526 bytes in section .text
//  76 bytes in section .textrw
// 
// 602 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
