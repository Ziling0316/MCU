;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module Computer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SaveNumber_PARM_3
	.globl _SaveNumber_PARM_2
	.globl _Restart_PARM_7
	.globl _Restart_PARM_6
	.globl _Restart_PARM_5
	.globl _Restart_PARM_4
	.globl _Restart_PARM_3
	.globl _Restart_PARM_2
	.globl _main
	.globl _clean
	.globl _Base_timer
	.globl _Base_init
	.globl _Keypad_Debounce
	.globl _Keypad_Debounce_init
	.globl _Calculate
	.globl _Update_Expression
	.globl _SaveNumber
	.globl _Restart
	.globl _Counter
	.globl _Show_History
	.globl _Show_Ans
	.globl _Show
	.globl _ReadKeypad
	.globl _Keypad_flag
	.globl _cal_flag
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _base_flag
	.globl _start
	.globl _history_count
	.globl _base_index
	.globl _negative_base
	.globl _Base_num
	.globl _history_start
	.globl _history
	.globl _flag
	.globl _buffer
	.globl _Calculate_PARM_6
	.globl _Calculate_PARM_5
	.globl _Calculate_PARM_4
	.globl _Calculate_PARM_3
	.globl _Calculate_PARM_2
	.globl _Update_Expression_PARM_5
	.globl _Update_Expression_PARM_4
	.globl _Update_Expression_PARM_3
	.globl _Update_Expression_PARM_2
	.globl _num1_counter
	.globl _number
	.globl _timer_count
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_cal_flag::
	.ds 1
_Keypad_flag::
	.ds 1
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timer_count::
	.ds 1
_number::
	.ds 1
_num1_counter::
	.ds 1
_Update_Expression_PARM_2:
	.ds 3
_Update_Expression_PARM_3:
	.ds 3
_Update_Expression_PARM_4:
	.ds 3
_Update_Expression_PARM_5:
	.ds 3
_Update_Expression_num_1_10000_13:
	.ds 3
_Update_Expression_sloc0_1_0:
	.ds 3
_Calculate_PARM_2:
	.ds 2
_Calculate_PARM_3:
	.ds 1
_Calculate_PARM_4:
	.ds 2
_Calculate_PARM_5:
	.ds 2
_Calculate_PARM_6:
	.ds 3
_Calculate_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_Restart_PARM_2:
	.ds 3
_Restart_PARM_3:
	.ds 3
_Restart_PARM_4:
	.ds 3
_Restart_PARM_5:
	.ds 3
_Restart_PARM_6:
	.ds 3
_Restart_PARM_7:
	.ds 3
	.area	OSEG    (OVR,DATA)
_SaveNumber_PARM_2:
	.ds 1
_SaveNumber_PARM_3:
	.ds 3
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_buffer::
	.ds 8
_flag::
	.ds 1
_history::
	.ds 10
_history_start::
	.ds 10
_Base_num::
	.ds 10
_negative_base::
	.ds 5
_base_index::
	.ds 1
_history_count::
	.ds 1
_start::
	.ds 1
_base_flag::
	.ds 1
_main_num_1_10000_38:
	.ds 2
_main_num_2_10000_38:
	.ds 2
_main_ans_10000_38:
	.ds 2
_main_op_10000_38:
	.ds 1
_main_negative_num1_10000_38:
	.ds 2
_main_negative_num2_10000_38:
	.ds 2
_main_negative_ans_10000_38:
	.ds 2
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Keypad_Debounce
	.ds	5
	reti
	.ds	7
	ljmp	_Base_timer
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	Computer.c:16: char timer_count = 0, number, num1_counter = 0;
	mov	_timer_count,#0x00
;	Computer.c:16: __sbit cal_flag = 0;
	mov	_num1_counter,#0x00
;	Computer.c:5: __idata unsigned char buffer[8] = {-1};
	mov	r0,#_buffer
	mov	@r0,#0xff
;	Computer.c:6: __idata unsigned char flag = 0;
	mov	r0,#_flag
	mov	@r0,#0x00
;	Computer.c:7: __idata unsigned char history[10] = {-1};
	mov	r0,#_history
	mov	@r0,#0xff
;	Computer.c:8: __idata unsigned char history_start[10] = {-1};
	mov	r0,#_history_start
	mov	@r0,#0xff
;	Computer.c:9: __idata unsigned int Base_num[5] = {0};
	mov	r0,#_Base_num
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	Computer.c:10: __idata unsigned char negative_base[5] = {0};
	mov	r0,#_negative_base
	mov	@r0,#0x00
;	Computer.c:11: __idata unsigned char base_index = 0;
	mov	r0,#_base_index
	mov	@r0,#0x00
;	Computer.c:12: __idata unsigned char history_count = 0;
	mov	r0,#_history_count
	mov	@r0,#0x00
;	Computer.c:13: __idata unsigned char start = 0;
	mov	r0,#_start
	mov	@r0,#0x00
;	Computer.c:14: __idata unsigned char base_flag = 0;
	mov	r0,#_base_flag
	mov	@r0,#0x00
;	Computer.c:17: __sbit cal_flag = 0;
;	assignBit
	clr	_cal_flag
;	Computer.c:18: __sbit Keypad_flag = 0;
;	assignBit
	clr	_Keypad_flag
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Restart'
;------------------------------------------------------------
;num_2                     Allocated with name '_Restart_PARM_2'
;op                        Allocated with name '_Restart_PARM_3'
;ans                       Allocated with name '_Restart_PARM_4'
;negative_num1             Allocated with name '_Restart_PARM_5'
;negative_num2             Allocated with name '_Restart_PARM_6'
;negative_ans              Allocated with name '_Restart_PARM_7'
;num_1                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	Computer.c:20: void Restart(int *num_1, int *num_2, char *op, int *ans, int *negative_num1, int *negative_num2, int *negative_ans)
;	-----------------------------------------
;	 function Restart
;	-----------------------------------------
_Restart:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Computer.c:22: *num_1 = 0;
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:23: *num_2 = 0;
	mov	r5,_Restart_PARM_2
	mov	r6,(_Restart_PARM_2 + 1)
	mov	r7,(_Restart_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:24: *op = '$';
	mov	r5,_Restart_PARM_3
	mov	r6,(_Restart_PARM_3 + 1)
	mov	r7,(_Restart_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x24
	lcall	__gptrput
;	Computer.c:25: *ans = 0;
	mov	r5,_Restart_PARM_4
	mov	r6,(_Restart_PARM_4 + 1)
	mov	r7,(_Restart_PARM_4 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:26: cal_flag = 0;
;	assignBit
	clr	_cal_flag
;	Computer.c:27: *negative_ans = 0;
	mov	r5,_Restart_PARM_7
	mov	r6,(_Restart_PARM_7 + 1)
	mov	r7,(_Restart_PARM_7 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:28: *negative_num1 = -1;
	mov	r5,_Restart_PARM_5
	mov	r6,(_Restart_PARM_5 + 1)
	mov	r7,(_Restart_PARM_5 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	dec	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:29: *negative_num2 = -1;
	mov	r5,_Restart_PARM_6
	mov	r6,(_Restart_PARM_6 + 1)
	mov	r7,(_Restart_PARM_6 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:30: num1_counter = 0;
	mov	_num1_counter,#0x00
;	Computer.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SaveNumber'
;------------------------------------------------------------
;start                     Allocated with name '_SaveNumber_PARM_2'
;b                         Allocated with name '_SaveNumber_PARM_3'
;n                         Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	Computer.c:32: void SaveNumber(char n, char start, char *b)
;	-----------------------------------------
;	 function SaveNumber
;	-----------------------------------------
_SaveNumber:
	mov	r7, dpl
;	Computer.c:34: for (char i = start; i > 0; i--)
	mov	r6,_SaveNumber_PARM_2
00103$:
	mov	a,r6
	jz	00101$
;	Computer.c:36: b[i] = b[i - 1];
	mov	a,r6
	add	a, _SaveNumber_PARM_3
	mov	r3,a
	clr	a
	addc	a, (_SaveNumber_PARM_3 + 1)
	mov	r4,a
	mov	r5,(_SaveNumber_PARM_3 + 2)
	mov	ar1,r6
	mov	r2,#0x00
	dec	r1
	cjne	r1,#0xff,00123$
	dec	r2
00123$:
	mov	a,r1
	add	a, _SaveNumber_PARM_3
	mov	r1,a
	mov	a,r2
	addc	a, (_SaveNumber_PARM_3 + 1)
	mov	r0,a
	mov	r2,(_SaveNumber_PARM_3 + 2)
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
;	Computer.c:34: for (char i = start; i > 0; i--)
	dec	r6
	sjmp	00103$
00101$:
;	Computer.c:38: b[0] = n;
	mov	r4,_SaveNumber_PARM_3
	mov	r5,(_SaveNumber_PARM_3 + 1)
	mov	r6,(_SaveNumber_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	Computer.c:39: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'Update_Expression'
;------------------------------------------------------------
;num_2                     Allocated with name '_Update_Expression_PARM_2'
;op                        Allocated with name '_Update_Expression_PARM_3'
;negative_num1             Allocated with name '_Update_Expression_PARM_4'
;negative_num2             Allocated with name '_Update_Expression_PARM_5'
;num_1                     Allocated with name '_Update_Expression_num_1_10000_13'
;sloc0                     Allocated with name '_Update_Expression_sloc0_1_0'
;------------------------------------------------------------
;	Computer.c:42: void Update_Expression(int *num_1, int *num_2, char *op, int *negative_num1, int *negative_num2)
;	-----------------------------------------
;	 function Update_Expression
;	-----------------------------------------
_Update_Expression:
	mov	_Update_Expression_num_1_10000_13,dpl
	mov	(_Update_Expression_num_1_10000_13 + 1),dph
	mov	(_Update_Expression_num_1_10000_13 + 2),b
;	Computer.c:45: if (buffer[0] >= 0 && buffer[0] <= 9)
	mov	r0,#_buffer
	mov	a,@r0
	mov	r4,a
	add	a,#0xff - 0x09
	jnc	00199$
	ljmp	00122$
00199$:
;	Computer.c:47: if (*op == '$')
	mov	_Update_Expression_sloc0_1_0,_Update_Expression_PARM_3
	mov	(_Update_Expression_sloc0_1_0 + 1),(_Update_Expression_PARM_3 + 1)
	mov	(_Update_Expression_sloc0_1_0 + 2),(_Update_Expression_PARM_3 + 2)
	mov	dpl,_Update_Expression_sloc0_1_0
	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
	mov	b,(_Update_Expression_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x24,00102$
;	Computer.c:49: *num_1 = *num_1 * 10 + (int)buffer[0];
	mov	dpl,_Update_Expression_num_1_10000_13
	mov	dph,(_Update_Expression_num_1_10000_13 + 1)
	mov	b,(_Update_Expression_num_1_10000_13 + 2)
	lcall	__gptrget
	mov	__mulint_PARM_2,a
	inc	dptr
	lcall	__gptrget
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar4
	lcall	__mulint
	mov	r2, dpl
	mov	r3, dph
	pop	ar4
	mov	ar6,r4
	mov	r7,#0x00
	mov	a,r6
	add	a, r2
	mov	r2,a
	mov	a,r7
	addc	a, r3
	mov	r3,a
	mov	dpl,_Update_Expression_num_1_10000_13
	mov	dph,(_Update_Expression_num_1_10000_13 + 1)
	mov	b,(_Update_Expression_num_1_10000_13 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	Computer.c:50: num1_counter++;
	inc	_num1_counter
00102$:
;	Computer.c:52: if (*op != '$')
	mov	dpl,_Update_Expression_sloc0_1_0
	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
	mov	b,(_Update_Expression_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x24,00202$
	ret
00202$:
;	Computer.c:54: *num_2 = *num_2 * 10 + (int)buffer[0];
	mov	r5,_Update_Expression_PARM_2
	mov	r6,(_Update_Expression_PARM_2 + 1)
	mov	r7,(_Update_Expression_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	__mulint_PARM_2,a
	inc	dptr
	lcall	__gptrget
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	_Update_Expression_sloc0_1_0,dpl
	mov	(_Update_Expression_sloc0_1_0 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_buffer
	mov	ar3,@r0
	mov	r2,#0x00
	mov	a,r3
	add	a, _Update_Expression_sloc0_1_0
	mov	r3,a
	mov	a,r2
	addc	a, (_Update_Expression_sloc0_1_0 + 1)
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	ljmp	__gptrput
00122$:
;	Computer.c:57: else if (buffer[0] == 13 && num1_counter == 0)
	clr	a
	cjne	r4,#0x0d,00203$
	inc	a
00203$:
	mov	r7,a
	jz	00118$
	mov	a,_num1_counter
	jnz	00118$
;	Computer.c:59: *negative_num1 = 1;
	mov	r3,_Update_Expression_PARM_4
	mov	r5,(_Update_Expression_PARM_4 + 1)
	mov	r6,(_Update_Expression_PARM_4 + 2)
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	ljmp	__gptrput
00118$:
;	Computer.c:61: else if (buffer[0] >= 12 && buffer[0] <= 15 && num1_counter != 0 && *op == '$')
	cjne	r4,#0x0c,00207$
00207$:
	jc	00112$
	mov	a,r4
	add	a,#0xff - 0x0f
	jc	00112$
	mov	a,_num1_counter
	jz	00112$
	mov	r3,_Update_Expression_PARM_3
	mov	r5,(_Update_Expression_PARM_3 + 1)
	mov	r6,(_Update_Expression_PARM_3 + 2)
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x24,00112$
;	Computer.c:63: *op = buffer[0];
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r4
	ljmp	__gptrput
00112$:
;	Computer.c:65: else if (buffer[0] == 13 && *op != '$')
	mov	a,r7
	jz	00108$
	mov	r5,_Update_Expression_PARM_3
	mov	r6,(_Update_Expression_PARM_3 + 1)
	mov	r7,(_Update_Expression_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x24,00214$
	sjmp	00108$
00214$:
;	Computer.c:67: *negative_num2 = 1;
	mov	r5,_Update_Expression_PARM_5
	mov	r6,(_Update_Expression_PARM_5 + 1)
	mov	r7,(_Update_Expression_PARM_5 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	ljmp	__gptrput
00108$:
;	Computer.c:69: else if (buffer[0] == 11)
	cjne	r4,#0x0b,00125$
;	Computer.c:71: cal_flag = 1;
;	assignBit
	setb	_cal_flag
00125$:
;	Computer.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Calculate'
;------------------------------------------------------------
;num2                      Allocated with name '_Calculate_PARM_2'
;op                        Allocated with name '_Calculate_PARM_3'
;negative_num1             Allocated with name '_Calculate_PARM_4'
;negative_num2             Allocated with name '_Calculate_PARM_5'
;ans                       Allocated with name '_Calculate_PARM_6'
;num1                      Allocated to registers r6 r7 
;sloc0                     Allocated with name '_Calculate_sloc0_1_0'
;------------------------------------------------------------
;	Computer.c:76: void Calculate(int num1, int num2, char op, int negative_num1, int negative_num2, int *ans)
;	-----------------------------------------
;	 function Calculate
;	-----------------------------------------
_Calculate:
	mov	r6, dpl
	mov	r7, dph
;	Computer.c:78: switch (op)
	mov	a,#0x0c
	cjne	a,_Calculate_PARM_3,00132$
	sjmp	00101$
00132$:
	mov	a,#0x0d
	cjne	a,_Calculate_PARM_3,00133$
	sjmp	00102$
00133$:
	mov	a,#0x0e
	cjne	a,_Calculate_PARM_3,00134$
	ljmp	00103$
00134$:
	mov	a,#0x0f
	cjne	a,_Calculate_PARM_3,00135$
	ljmp	00104$
00135$:
	ret
;	Computer.c:80: case 12:
00101$:
;	Computer.c:81: *ans = (((-1) * negative_num1) * num1) + (((-1) * negative_num2) * num2);
	mov	r3,_Calculate_PARM_6
	mov	r4,(_Calculate_PARM_6 + 1)
	mov	r5,(_Calculate_PARM_6 + 2)
	clr	c
	clr	a
	subb	a,_Calculate_PARM_4
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_4 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	_Calculate_sloc0_1_0,dpl
	mov	(_Calculate_sloc0_1_0 + 1),dph
	clr	c
	clr	a
	subb	a,_Calculate_PARM_5
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_5 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,_Calculate_PARM_2
	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
	lcall	__mulint
	mov	r0, dpl
	mov	r2, dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r0
	add	a, _Calculate_sloc0_1_0
	mov	r0,a
	mov	a,r2
	addc	a, (_Calculate_sloc0_1_0 + 1)
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
;	Computer.c:82: break;
	ljmp	__gptrput
;	Computer.c:83: case 13:
00102$:
;	Computer.c:84: *ans = (((-1) * negative_num1) * num1) - (((-1) * negative_num2) * num2);
	mov	r3,_Calculate_PARM_6
	mov	r4,(_Calculate_PARM_6 + 1)
	mov	r5,(_Calculate_PARM_6 + 2)
	clr	c
	clr	a
	subb	a,_Calculate_PARM_4
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_4 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	_Calculate_sloc0_1_0,dpl
	mov	(_Calculate_sloc0_1_0 + 1),dph
	clr	c
	clr	a
	subb	a,_Calculate_PARM_5
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_5 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,_Calculate_PARM_2
	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
	lcall	__mulint
	mov	r0, dpl
	mov	r2, dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,_Calculate_sloc0_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_Calculate_sloc0_1_0 + 1)
	subb	a,r2
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
;	Computer.c:85: break;
	ljmp	__gptrput
;	Computer.c:86: case 14:
00103$:
;	Computer.c:87: *ans = (((-1) * negative_num1) * num1) * (((-1) * negative_num2) * num2);
	mov	r3,_Calculate_PARM_6
	mov	r4,(_Calculate_PARM_6 + 1)
	mov	r5,(_Calculate_PARM_6 + 2)
	clr	c
	clr	a
	subb	a,_Calculate_PARM_4
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_4 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r1, dpl
	mov	r2, dph
	clr	c
	clr	a
	subb	a,_Calculate_PARM_5
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_5 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,_Calculate_PARM_2
	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
	push	ar2
	push	ar1
	lcall	__mulint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	pop	ar1
	pop	ar2
	mov	dpl, r1
	mov	dph, r2
	lcall	__mulint
	mov	r1, dpl
	mov	r2, dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
;	Computer.c:88: break;
	ljmp	__gptrput
;	Computer.c:89: case 15:
00104$:
;	Computer.c:90: *ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
	mov	r3,_Calculate_PARM_6
	mov	r4,(_Calculate_PARM_6 + 1)
	mov	r5,(_Calculate_PARM_6 + 2)
	clr	c
	clr	a
	subb	a,_Calculate_PARM_4
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_4 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r6, dpl
	mov	r7, dph
	pop	ar3
	pop	ar4
	pop	ar5
	clr	c
	clr	a
	subb	a,_Calculate_PARM_5
	mov	dpl,a
	clr	a
	subb	a,(_Calculate_PARM_5 + 1)
	mov	dph,a
	mov	__mulint_PARM_2,_Calculate_PARM_2
	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	__divsint_PARM_2,dpl
	mov	(__divsint_PARM_2 + 1),dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl, r6
	mov	dph, r7
	push	ar5
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
;	Computer.c:92: }
;	Computer.c:93: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'Keypad_Debounce_init'
;------------------------------------------------------------
;	Computer.c:96: void Keypad_Debounce_init(void)
;	-----------------------------------------
;	 function Keypad_Debounce_init
;	-----------------------------------------
_Keypad_Debounce_init:
;	Computer.c:98: IE = 0x8a;
	mov	_IE,#0x8a
;	Computer.c:100: TMOD = 0x01;
	mov	_TMOD,#0x01
;	Computer.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Keypad_Debounce'
;------------------------------------------------------------
;	Computer.c:104: void Keypad_Debounce(void) __interrupt(1) __using(1)
;	-----------------------------------------
;	 function Keypad_Debounce
;	-----------------------------------------
_Keypad_Debounce:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	psw
;	Computer.c:106: TH0 = (65536 - 50000) / 256;
	mov	_TH0,#0x3c
;	Computer.c:107: TL0 = (65536 - 50000) % 256;
	mov	_TL0,#0xb0
;	Computer.c:108: timer_count++;
	inc	_timer_count
;	Computer.c:109: if (timer_count == 20)
	mov	a,#0x14
	cjne	a,_timer_count,00103$
;	Computer.c:111: Keypad_flag = 1;
;	assignBit
	setb	_Keypad_flag
;	Computer.c:112: TF0 = 0;
;	assignBit
	clr	_TF0
;	Computer.c:114: TR0 = 0;
;	assignBit
	clr	_TR0
;	Computer.c:116: timer_count = 0;
	mov	_timer_count,#0x00
00103$:
;	Computer.c:118: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Base_init'
;------------------------------------------------------------
;	Computer.c:120: void Base_init(void)
;	-----------------------------------------
;	 function Base_init
;	-----------------------------------------
_Base_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Computer.c:122: IE = 0x8a;
	mov	_IE,#0x8a
;	Computer.c:124: TMOD = 0x10;
	mov	_TMOD,#0x10
;	Computer.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Base_timer'
;------------------------------------------------------------
;	Computer.c:128: void Base_timer(void) __interrupt(3) __using(2)
;	-----------------------------------------
;	 function Base_timer
;	-----------------------------------------
_Base_timer:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	psw
	mov	psw,#0x10
;	Computer.c:130: TH1 = (65536 - 50000) / 256;
	mov	_TH1,#0x3c
;	Computer.c:131: TL1 = (65536 - 50000) % 256;
	mov	_TL1,#0xb0
;	Computer.c:132: base_flag = 1;
	mov	r0,#_base_flag
	mov	@r0,#0x01
;	Computer.c:133: TF1 = 0;
;	assignBit
	clr	_TF1
;	Computer.c:135: TR1 = 0;
;	assignBit
	clr	_TR1
;	Computer.c:137: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'clean'
;------------------------------------------------------------
;f                         Allocated to registers r7 
;------------------------------------------------------------
;	Computer.c:139: void clean()
;	-----------------------------------------
;	 function clean
;	-----------------------------------------
_clean:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Computer.c:141: flag = 0;
	mov	r0,#_flag
	mov	@r0,#0x00
;	Computer.c:142: for (char f = 0; f < 8; f++)
	mov	r7,#0x00
00103$:
	cjne	r7,#0x08,00120$
00120$:
	jnc	00105$
;	Computer.c:144: buffer[f] = -1;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0xff
;	Computer.c:142: for (char f = 0; f < 8; f++)
	inc	r7
	sjmp	00103$
00105$:
;	Computer.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;count                     Allocated to registers r7 
;m                         Allocated to registers r6 
;i                         Allocated to registers r7 
;m                         Allocated to registers r7 
;m                         Allocated to registers r7 
;m                         Allocated to registers r7 
;m                         Allocated to registers r7 
;count                     Allocated to registers 
;m                         Allocated to registers r7 
;num_1                     Allocated with name '_main_num_1_10000_38'
;num_2                     Allocated with name '_main_num_2_10000_38'
;ans                       Allocated with name '_main_ans_10000_38'
;op                        Allocated with name '_main_op_10000_38'
;negative_num1             Allocated with name '_main_negative_num1_10000_38'
;negative_num2             Allocated with name '_main_negative_num2_10000_38'
;negative_ans              Allocated with name '_main_negative_ans_10000_38'
;------------------------------------------------------------
;	Computer.c:148: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Computer.c:150: __idata int num_1 = 0, num_2 = 0, ans = 0;
	mov	r0,#_main_num_1_10000_38
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,#_main_num_2_10000_38
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,#_main_ans_10000_38
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	Computer.c:151: __idata char op = '$';
	mov	r0,#_main_op_10000_38
	mov	@r0,#0x24
;	Computer.c:153: __idata int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
	mov	r0,#_main_negative_num1_10000_38
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
	mov	r0,#_main_negative_num2_10000_38
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
	mov	r0,#_main_negative_ans_10000_38
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	Computer.c:154: Base_init();
	lcall	_Base_init
;	Computer.c:156: Keypad_Debounce_init();
	lcall	_Keypad_Debounce_init
;	Computer.c:159: while (1)
00131$:
;	Computer.c:161: TR0 = 1;
;	assignBit
	setb	_TR0
;	Computer.c:163: number = ReadKeypad();
	lcall	_ReadKeypad
;	Computer.c:165: if (number >= 0 && number <= 15)
	mov	a,dpl
	mov	_number,a
	add	a,#0xff - 0x0f
	jnc	00313$
	ljmp	00128$
00313$:
;	Computer.c:168: if (number == 10)
	mov	a,#0x0a
	cjne	a,_number,00103$
;	Computer.c:170: TR1 = 1;
;	assignBit
	setb	_TR1
;	Computer.c:172: char count = history_start[history_count];
	mov	r0,#_history_count
	mov	a,@r0
	add	a, #_history_start
	mov	r1,a
	mov	ar7,@r1
;	Computer.c:173: for (char m = 0; m < 100; m++)
	mov	r6,#0x00
00134$:
	cjne	r6,#0x64,00316$
00316$:
	jnc	00101$
;	Computer.c:175: Show_History(history, start, count);
	mov	r0,#_start
	mov	_Show_History_PARM_2,@r0
	mov	_Show_History_PARM_3,r7
	mov	dptr,#_history
	mov	b, #0x40
	push	ar7
	push	ar6
	lcall	_Show_History
	pop	ar6
	pop	ar7
;	Computer.c:173: for (char m = 0; m < 100; m++)
	inc	r6
	sjmp	00134$
00101$:
;	Computer.c:177: start += count;
	mov	r0,#_start
	mov	a,r7
	add	a, @r0
	mov	@r0,a
;	Computer.c:178: history_count++;
	mov	r0,#_history_count
	inc	@r0
00103$:
;	Computer.c:182: if (base_flag == 1)
	mov	r0,#_base_flag
	cjne	@r0,#0x01,00318$
	sjmp	00319$
00318$:
	ljmp	00125$
00319$:
;	Computer.c:184: for (char i = 0; i < 8; i++)
	mov	r7,#0x00
00137$:
	cjne	r7,#0x08,00320$
00320$:
	jnc	00104$
;	Computer.c:186: flag <<= 1;
	mov	r0,#_flag
	mov	ar6,@r0
	mov	r0,#_flag
	mov	a,r6
	add	a,r6
	mov	@r0,a
;	Computer.c:187: flag |= Base_num[base_index - 1] & 1;
	mov	r0,#_base_index
	mov	ar6,@r0
	dec	r6
	mov	a,r6
	add	a,r6
	add	a, #_Base_num
	mov	r1,a
	mov	ar6,@r1
	anl	ar6,#0x01
	mov	r0,#_flag
	mov	acc,@r0
	orl	a,r6
	mov	r0,#_flag
	mov	@r0,a
;	Computer.c:188: Base_num[base_index - 1] >>= 1;
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	dec	r1
;	Computer.c:184: for (char i = 0; i < 8; i++)
	inc	r7
	sjmp	00137$
00104$:
;	Computer.c:190: if (negative_base[base_index - 1] == 1)
	mov	r0,#_base_index
	mov	a,@r0
	dec	a
	add	a, #_negative_base
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x01,00169$
;	Computer.c:192: flag = ~flag;
	mov	r0,#_flag
	mov	a,@r0
	cpl	a
	mov	@r0,a
;	Computer.c:193: flag += 1;
	mov	r0,#_flag
	mov	ar7,@r0
	mov	r0,#_flag
	mov	a,r7
	inc	a
	mov	@r0,a
;	Computer.c:194: for (char m = 0; m < 8; m++)
	mov	r7,#0x00
00140$:
	cjne	r7,#0x08,00324$
00324$:
	jnc	00105$
;	Computer.c:196: SaveNumber(flag & 1, 7, buffer);
	mov	r0,#_flag
	mov	acc,@r0
	anl	a,#0x01
	mov	dpl,a
	mov	_SaveNumber_PARM_3,#_buffer
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x07
	push	ar7
	lcall	_SaveNumber
	pop	ar7
;	Computer.c:197: flag >>= 1;
	mov	r0,#_flag
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
;	Computer.c:194: for (char m = 0; m < 8; m++)
	inc	r7
	sjmp	00140$
00105$:
;	Computer.c:199: for (char m = 0; m < 100; m++)
	mov	r7,#0x00
00143$:
	cjne	r7,#0x64,00326$
00326$:
	jnc	00111$
;	Computer.c:201: Show_Ans(buffer, 0xff);
	mov	_Show_Ans_PARM_2,#0xff
	mov	dptr,#_buffer
	mov	b, #0x40
	push	ar7
	lcall	_Show_Ans
	pop	ar7
;	Computer.c:199: for (char m = 0; m < 100; m++)
	inc	r7
;	Computer.c:206: for (char m = 0; m < 8; m++)
	sjmp	00143$
00169$:
	mov	r7,#0x00
00146$:
	cjne	r7,#0x08,00328$
00328$:
	jnc	00107$
;	Computer.c:208: SaveNumber(flag & 1, 7, buffer);
	mov	r0,#_flag
	mov	acc,@r0
	anl	a,#0x01
	mov	dpl,a
	mov	_SaveNumber_PARM_3,#_buffer
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x07
	push	ar7
	lcall	_SaveNumber
	pop	ar7
;	Computer.c:209: flag >>= 1;
	mov	r0,#_flag
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
;	Computer.c:206: for (char m = 0; m < 8; m++)
	inc	r7
	sjmp	00146$
00107$:
;	Computer.c:211: for (char m = 0; m < 100; m++)
	mov	r7,#0x00
00149$:
	cjne	r7,#0x64,00330$
00330$:
	jnc	00111$
;	Computer.c:213: Show(buffer, 0xff);
	mov	_Show_PARM_2,#0xff
	mov	dptr,#_buffer
	mov	b, #0x40
	push	ar7
	lcall	_Show
	pop	ar7
;	Computer.c:211: for (char m = 0; m < 100; m++)
	inc	r7
	sjmp	00149$
00111$:
;	Computer.c:217: base_flag = 0;
	mov	r0,#_base_flag
	mov	@r0,#0x00
;	Computer.c:218: base_index--;
	mov	r0,#_base_index
	dec	@r0
;	Computer.c:219: clean();
	lcall	_clean
	ljmp	00128$
00125$:
;	Computer.c:222: else if (Keypad_flag == 1)
	jb	_Keypad_flag,00332$
	ljmp	00128$
00332$:
;	Computer.c:226: flag <<= 1;
	mov	r0,#_flag
	mov	ar7,@r0
	mov	r0,#_flag
	mov	a,r7
	add	a,r7
	mov	@r0,a
;	Computer.c:227: flag |= 0x01;
	mov	r0,#_flag
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	Computer.c:229: SaveNumber(number, 7, buffer);
	mov	_SaveNumber_PARM_3,#_buffer
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x07
	mov	dpl, _number
	lcall	_SaveNumber
;	Computer.c:231: Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
	mov	_Update_Expression_PARM_2,#_main_num_2_10000_38
	mov	(_Update_Expression_PARM_2 + 1),#0x00
	mov	(_Update_Expression_PARM_2 + 2),#0x40
	mov	_Update_Expression_PARM_3,#_main_op_10000_38
	mov	(_Update_Expression_PARM_3 + 1),#0x00
	mov	(_Update_Expression_PARM_3 + 2),#0x40
	mov	_Update_Expression_PARM_4,#_main_negative_num1_10000_38
	mov	(_Update_Expression_PARM_4 + 1),#0x00
	mov	(_Update_Expression_PARM_4 + 2),#0x40
	mov	_Update_Expression_PARM_5,#_main_negative_num2_10000_38
	mov	(_Update_Expression_PARM_5 + 1),#0x00
	mov	(_Update_Expression_PARM_5 + 2),#0x40
	mov	dptr,#_main_num_1_10000_38
	mov	b, #0x40
	lcall	_Update_Expression
;	Computer.c:233: if (cal_flag == 1)
	jb	_cal_flag,00333$
	ljmp	00121$
00333$:
;	Computer.c:236: Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
	mov	_Calculate_PARM_6,#_main_ans_10000_38
	mov	(_Calculate_PARM_6 + 1),#0x00
	mov	(_Calculate_PARM_6 + 2),#0x40
	mov	r0,#_main_num_2_10000_38
	mov	_Calculate_PARM_2,@r0
	inc	r0
	mov	(_Calculate_PARM_2 + 1),@r0
	mov	r0,#_main_op_10000_38
	mov	_Calculate_PARM_3,@r0
	mov	r0,#_main_negative_num1_10000_38
	mov	_Calculate_PARM_4,@r0
	inc	r0
	mov	(_Calculate_PARM_4 + 1),@r0
	mov	r0,#_main_negative_num2_10000_38
	mov	_Calculate_PARM_5,@r0
	inc	r0
	mov	(_Calculate_PARM_5 + 1),@r0
	mov	r0,#_main_num_1_10000_38
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	lcall	_Calculate
;	Computer.c:239: if (ans < 0)
	mov	r0,#(_main_ans_10000_38 + 1)
	mov	a,@r0
	jnb	acc.7,00113$
;	Computer.c:241: ans = -ans;
	mov	r0,#_main_ans_10000_38
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
;	Computer.c:242: negative_ans = 1;
	mov	r0,#_main_negative_ans_10000_38
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	Computer.c:243: negative_base[base_index] = 1;
	mov	r0,#_base_index
	mov	a,@r0
	add	a, #_negative_base
	mov	r0,a
	mov	@r0,#0x01
00113$:
;	Computer.c:245: Base_num[base_index] = ans;
	mov	r0,#_base_index
	mov	a,@r0
	add	a,acc
	add	a, #_Base_num
	mov	r0,a
	mov	r1,#_main_ans_10000_38
	mov	a,@r1
	mov	@r0,a
	inc	r0
	inc	r1
	mov	a,@r1
	mov	@r0,a
;	Computer.c:246: base_index++;
	mov	r0,#_base_index
	inc	@r0
;	Computer.c:248: clean();
	lcall	_clean
;	Computer.c:250: do
00114$:
;	Computer.c:252: SaveNumber(ans % 10, 9, history);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	r0,#_main_ans_10000_38
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	lcall	__modsint
	mov	_SaveNumber_PARM_3,#_history
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x09
	lcall	_SaveNumber
;	Computer.c:253: SaveNumber(ans % 10, 7, buffer);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	r0,#_main_ans_10000_38
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	lcall	__modsint
	mov	_SaveNumber_PARM_3,#_buffer
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x07
	lcall	_SaveNumber
;	Computer.c:254: ans /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	r0,#_main_ans_10000_38
	mov	dpl, @r0
	inc	r0
	mov	dph, @r0
	lcall	__divsint
	mov	a, dpl
	mov	b, dph
	mov	r0,#_main_ans_10000_38
	mov	@r0,a
	inc	r0
	mov	@r0,b
;	Computer.c:255: flag <<= 1;
	mov	r0,#_flag
	mov	ar7,@r0
	mov	r0,#_flag
	mov	a,r7
	add	a,r7
	mov	@r0,a
;	Computer.c:256: flag |= 0x01;
	mov	r0,#_flag
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	Computer.c:257: } while (ans);
	mov	r0,#_main_ans_10000_38
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
;	Computer.c:259: if (negative_ans == 1)
	mov	r0,#_main_negative_ans_10000_38
	cjne	@r0,#0x01,00118$
	inc	r0
	cjne	@r0,#0x00,00118$
;	Computer.c:261: SaveNumber(13, 9, history);
	mov	_SaveNumber_PARM_3,#_history
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x09
	mov	dpl, #0x0d
	lcall	_SaveNumber
;	Computer.c:262: SaveNumber(13, 7, buffer);
	mov	_SaveNumber_PARM_3,#_buffer
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x07
	mov	dpl, #0x0d
	lcall	_SaveNumber
;	Computer.c:263: flag <<= 1;
	mov	r0,#_flag
	mov	ar7,@r0
	mov	r0,#_flag
	mov	a,r7
	add	a,r7
	mov	@r0,a
;	Computer.c:264: flag |= 0x01;
	mov	r0,#_flag
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
00118$:
;	Computer.c:267: char count = Counter(flag);
	mov	r0,#_flag
	mov	dpl, @r0
	lcall	_Counter
;	Computer.c:268: SaveNumber(count, 9, history_start);
	mov	_SaveNumber_PARM_3,#_history_start
	mov	(_SaveNumber_PARM_3 + 1),#0x00
	mov	(_SaveNumber_PARM_3 + 2),#0x40
	mov	_SaveNumber_PARM_2,#0x09
	lcall	_SaveNumber
;	Computer.c:269: for (char m = 0; m < 100; m++)
	mov	r7,#0x00
00152$:
	cjne	r7,#0x64,00338$
00338$:
	jnc	00119$
;	Computer.c:271: Show_Ans(buffer, flag);
	mov	r0,#_flag
	mov	_Show_Ans_PARM_2,@r0
	mov	dptr,#_buffer
	mov	b, #0x40
	push	ar7
	lcall	_Show_Ans
	pop	ar7
;	Computer.c:269: for (char m = 0; m < 100; m++)
	inc	r7
	sjmp	00152$
00119$:
;	Computer.c:274: clean();
	lcall	_clean
;	Computer.c:275: Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
	mov	_Restart_PARM_2,#_main_num_2_10000_38
	mov	(_Restart_PARM_2 + 1),#0x00
	mov	(_Restart_PARM_2 + 2),#0x40
	mov	_Restart_PARM_3,#_main_op_10000_38
	mov	(_Restart_PARM_3 + 1),#0x00
	mov	(_Restart_PARM_3 + 2),#0x40
	mov	_Restart_PARM_4,#_main_ans_10000_38
	mov	(_Restart_PARM_4 + 1),#0x00
	mov	(_Restart_PARM_4 + 2),#0x40
	mov	_Restart_PARM_5,#_main_negative_num1_10000_38
	mov	(_Restart_PARM_5 + 1),#0x00
	mov	(_Restart_PARM_5 + 2),#0x40
	mov	_Restart_PARM_6,#_main_negative_num2_10000_38
	mov	(_Restart_PARM_6 + 1),#0x00
	mov	(_Restart_PARM_6 + 2),#0x40
	mov	_Restart_PARM_7,#_main_negative_ans_10000_38
	mov	(_Restart_PARM_7 + 1),#0x00
	mov	(_Restart_PARM_7 + 2),#0x40
	mov	dptr,#_main_num_1_10000_38
	mov	b, #0x40
	lcall	_Restart
00121$:
;	Computer.c:278: Keypad_flag = 0;
;	assignBit
	clr	_Keypad_flag
00128$:
;	Computer.c:281: Show(buffer, flag);
	mov	r0,#_flag
	mov	_Show_PARM_2,@r0
	mov	dptr,#_buffer
	mov	b, #0x40
	lcall	_Show
;	Computer.c:283: }
	ljmp	00131$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
