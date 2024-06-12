;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module Computer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SaveAns_PARM_2
	.globl _Restart_PARM_7
	.globl _Restart_PARM_6
	.globl _Restart_PARM_5
	.globl _Restart_PARM_4
	.globl _Restart_PARM_3
	.globl _Restart_PARM_2
	.globl _main
	.globl _Keypad_Debounce
	.globl _Keypad_Debounce_init
	.globl _Calculate
	.globl _Update_Expression
	.globl _SaveAns
	.globl _SaveNumber
	.globl _Restart
	.globl _Counter
	.globl _Show_Ans
	.globl _Show_Reverse
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
	.globl _start
	.globl _history_count
	.globl _start_count
	.globl _history
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
	.globl _timer_count
	.globl _flag
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_flag::
	.ds 1
_timer_count::
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
_Update_Expression_num_1_10000_17:
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
_main_num_1_10000_35:
	.ds 2
_main_num_2_10000_35:
	.ds 2
_main_ans_10000_35:
	.ds 2
_main_op_10000_35:
	.ds 1
_main_negative_num1_10000_35:
	.ds 2
_main_negative_num2_10000_35:
	.ds 2
_main_negative_ans_10000_35:
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
	.area	OSEG    (OVR,DATA)
_SaveAns_PARM_2:
	.ds 3
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
_history::
	.ds 50
_start_count::
	.ds 50
_history_count::
	.ds 1
_start::
	.ds 1
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
;	Computer.c:6: char flag = 0;
	mov	_flag,#0x00
;	Computer.c:12: char timer_count = 0;
	mov	_timer_count,#0x00
;	Computer.c:15: char num1_counter = 0;
	mov	_num1_counter,#0x00
;	Computer.c:5: __idata unsigned char buffer[8] = {-1};
	mov	r0,#_buffer
	mov	@r0,#0xff
;	Computer.c:7: __idata unsigned char history[50] = {0};
	mov	r0,#_history
	mov	@r0,#0x00
;	Computer.c:8: __idata unsigned char start_count[50] = {0};
	mov	r0,#_start_count
	mov	@r0,#0x00
;	Computer.c:9: __idata unsigned char history_count = 0;
	mov	r0,#_history_count
	mov	@r0,#0x00
;	Computer.c:10: __idata unsigned char start = 0;
	mov	r0,#_start
	mov	@r0,#0x00
;	Computer.c:13: __sbit cal_flag = 0;
;	assignBit
	clr	_cal_flag
;	Computer.c:14: __sbit Keypad_flag = 0;
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
;	Computer.c:17: void Restart(int *num_1, int *num_2, char *op, int *ans, int *negative_num1, int *negative_num2, int *negative_ans)
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
;	Computer.c:19: *num_1 = 0;
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:20: *num_2 = 0;
	mov	r5,_Restart_PARM_2
	mov	r6,(_Restart_PARM_2 + 1)
	mov	r7,(_Restart_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:21: *op = '$';
	mov	r5,_Restart_PARM_3
	mov	r6,(_Restart_PARM_3 + 1)
	mov	r7,(_Restart_PARM_3 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x24
	lcall	__gptrput
;	Computer.c:22: *ans = 0;
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
;	Computer.c:23: cal_flag = 0;
;	assignBit
	clr	_cal_flag
;	Computer.c:24: *negative_ans = 0;
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
;	Computer.c:25: *negative_num1 = -1;
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
;	Computer.c:26: *negative_num2 = -1;
	mov	r5,_Restart_PARM_6
	mov	r6,(_Restart_PARM_6 + 1)
	mov	r7,(_Restart_PARM_6 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	Computer.c:27: num1_counter = 0;
	mov	_num1_counter,#0x00
;	Computer.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SaveNumber'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	Computer.c:29: void SaveNumber(char n)
;	-----------------------------------------
;	 function SaveNumber
;	-----------------------------------------
_SaveNumber:
	mov	r7, dpl
;	Computer.c:31: for (char i = 7; i > 0; i--)
	mov	r6,#0x07
00103$:
	mov	a,r6
	jz	00101$
;	Computer.c:33: buffer[i] = buffer[i - 1];
	mov	a,r6
	add	a, #_buffer
	mov	r1,a
	mov	ar5,r6
	mov	a,r5
	dec	a
	add	a, #_buffer
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
;	Computer.c:31: for (char i = 7; i > 0; i--)
	dec	r6
	sjmp	00103$
00101$:
;	Computer.c:35: buffer[0] = n;
	mov	r0,#_buffer
	mov	@r0,ar7
;	Computer.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SaveAns'
;------------------------------------------------------------
;b                         Allocated with name '_SaveAns_PARM_2'
;n                         Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	Computer.c:39: void SaveAns(char n, char* b)
;	-----------------------------------------
;	 function SaveAns
;	-----------------------------------------
_SaveAns:
	mov	r7, dpl
;	Computer.c:41: for (char i = 49; i > 0; i--)
	mov	r6,#0x31
00103$:
	mov	a,r6
	jz	00101$
;	Computer.c:43: b[i] = b[i - 1];
	mov	a,r6
	add	a, _SaveAns_PARM_2
	mov	r3,a
	clr	a
	addc	a, (_SaveAns_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_SaveAns_PARM_2 + 2)
	mov	ar1,r6
	mov	r2,#0x00
	dec	r1
	cjne	r1,#0xff,00123$
	dec	r2
00123$:
	mov	a,r1
	add	a, _SaveAns_PARM_2
	mov	r1,a
	mov	a,r2
	addc	a, (_SaveAns_PARM_2 + 1)
	mov	r0,a
	mov	r2,(_SaveAns_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
;	Computer.c:41: for (char i = 49; i > 0; i--)
	dec	r6
	sjmp	00103$
00101$:
;	Computer.c:45: b[0] = n;
	mov	r4,_SaveAns_PARM_2
	mov	r5,(_SaveAns_PARM_2 + 1)
	mov	r6,(_SaveAns_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	Computer.c:46: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'Update_Expression'
;------------------------------------------------------------
;num_2                     Allocated with name '_Update_Expression_PARM_2'
;op                        Allocated with name '_Update_Expression_PARM_3'
;negative_num1             Allocated with name '_Update_Expression_PARM_4'
;negative_num2             Allocated with name '_Update_Expression_PARM_5'
;num_1                     Allocated with name '_Update_Expression_num_1_10000_17'
;sloc0                     Allocated with name '_Update_Expression_sloc0_1_0'
;------------------------------------------------------------
;	Computer.c:50: void Update_Expression(int *num_1, int *num_2, char *op, int *negative_num1, int *negative_num2)
;	-----------------------------------------
;	 function Update_Expression
;	-----------------------------------------
_Update_Expression:
	mov	_Update_Expression_num_1_10000_17,dpl
	mov	(_Update_Expression_num_1_10000_17 + 1),dph
	mov	(_Update_Expression_num_1_10000_17 + 2),b
;	Computer.c:53: if (buffer[0] >= 0 && buffer[0] <= 9)
	mov	r0,#_buffer
	mov	a,@r0
	mov	r4,a
	add	a,#0xff - 0x09
	jnc	00199$
	ljmp	00122$
00199$:
;	Computer.c:55: if (*op == '$')
	mov	_Update_Expression_sloc0_1_0,_Update_Expression_PARM_3
	mov	(_Update_Expression_sloc0_1_0 + 1),(_Update_Expression_PARM_3 + 1)
	mov	(_Update_Expression_sloc0_1_0 + 2),(_Update_Expression_PARM_3 + 2)
	mov	dpl,_Update_Expression_sloc0_1_0
	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
	mov	b,(_Update_Expression_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x24,00102$
;	Computer.c:57: *num_1 = *num_1 * 10 + (int)buffer[0];
	mov	dpl,_Update_Expression_num_1_10000_17
	mov	dph,(_Update_Expression_num_1_10000_17 + 1)
	mov	b,(_Update_Expression_num_1_10000_17 + 2)
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
	mov	dpl,_Update_Expression_num_1_10000_17
	mov	dph,(_Update_Expression_num_1_10000_17 + 1)
	mov	b,(_Update_Expression_num_1_10000_17 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	Computer.c:58: num1_counter++;
	inc	_num1_counter
00102$:
;	Computer.c:60: if (*op != '$')
	mov	dpl,_Update_Expression_sloc0_1_0
	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
	mov	b,(_Update_Expression_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x24,00202$
	ret
00202$:
;	Computer.c:62: *num_2 = *num_2 * 10 + (int)buffer[0];
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
;	Computer.c:65: else if (buffer[0] == 13 && num1_counter == 0)
	clr	a
	cjne	r4,#0x0d,00203$
	inc	a
00203$:
	mov	r7,a
	jz	00118$
	mov	a,_num1_counter
	jnz	00118$
;	Computer.c:67: *negative_num1 = 1;
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
;	Computer.c:69: else if (buffer[0] >= 12 && buffer[0] <= 15 && num1_counter != 0 && *op == '$')
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
;	Computer.c:71: *op = buffer[0];
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r4
	ljmp	__gptrput
00112$:
;	Computer.c:73: else if (buffer[0] == 13 && *op != '$')
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
;	Computer.c:75: *negative_num2 = 1;
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
;	Computer.c:77: else if (buffer[0] == 11)
	cjne	r4,#0x0b,00125$
;	Computer.c:79: cal_flag = 1;
;	assignBit
	setb	_cal_flag
00125$:
;	Computer.c:81: }
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
;	Computer.c:84: void Calculate(int num1, int num2, char op, int negative_num1, int negative_num2, int *ans)
;	-----------------------------------------
;	 function Calculate
;	-----------------------------------------
_Calculate:
	mov	r6, dpl
	mov	r7, dph
;	Computer.c:86: switch (op)
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
;	Computer.c:88: case 12:
00101$:
;	Computer.c:89: *ans = (((-1) * negative_num1) * num1) + (((-1) * negative_num2) * num2);
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
;	Computer.c:90: break;
	ljmp	__gptrput
;	Computer.c:91: case 13:
00102$:
;	Computer.c:92: *ans = (((-1) * negative_num1) * num1) - (((-1) * negative_num2) * num2);
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
;	Computer.c:93: break;
	ljmp	__gptrput
;	Computer.c:94: case 14:
00103$:
;	Computer.c:95: *ans = (((-1) * negative_num1) * num1) * (((-1) * negative_num2) * num2);
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
;	Computer.c:96: break;
	ljmp	__gptrput
;	Computer.c:97: case 15:
00104$:
;	Computer.c:98: *ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
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
;	Computer.c:100: }
;	Computer.c:101: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'Keypad_Debounce_init'
;------------------------------------------------------------
;	Computer.c:104: void Keypad_Debounce_init(void)
;	-----------------------------------------
;	 function Keypad_Debounce_init
;	-----------------------------------------
_Keypad_Debounce_init:
;	Computer.c:106: IE = 0x8a;
	mov	_IE,#0x8a
;	Computer.c:108: TMOD = 0x01;
	mov	_TMOD,#0x01
;	Computer.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Keypad_Debounce'
;------------------------------------------------------------
;	Computer.c:112: void Keypad_Debounce(void) __interrupt(1) __using(1)
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
;	Computer.c:114: TH0 = (65536 - 50000) / 256;
	mov	_TH0,#0x3c
;	Computer.c:115: TL0 = (65536 - 50000) % 256;
	mov	_TL0,#0xb0
;	Computer.c:116: timer_count++;
	inc	_timer_count
;	Computer.c:117: if (timer_count == 20)
	mov	a,#0x14
	cjne	a,_timer_count,00103$
;	Computer.c:119: Keypad_flag = 1;
;	assignBit
	setb	_Keypad_flag
;	Computer.c:120: TF0 = 0;
;	assignBit
	clr	_TF0
;	Computer.c:122: TR0 = 0;
;	assignBit
	clr	_TR0
;	Computer.c:123: timer_count = 0;
	mov	_timer_count,#0x00
00103$:
;	Computer.c:125: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;num_1                     Allocated with name '_main_num_1_10000_35'
;num_2                     Allocated with name '_main_num_2_10000_35'
;ans                       Allocated with name '_main_ans_10000_35'
;op                        Allocated with name '_main_op_10000_35'
;number                    Allocated to registers r7 
;old_number                Allocated to registers 
;negative_num1             Allocated with name '_main_negative_num1_10000_35'
;negative_num2             Allocated with name '_main_negative_num2_10000_35'
;negative_ans              Allocated with name '_main_negative_ans_10000_35'
;count                     Allocated to registers r6 
;m                         Allocated to registers r5 
;f                         Allocated to registers r7 
;m                         Allocated to registers r7 
;f                         Allocated to registers r7 
;------------------------------------------------------------
;	Computer.c:127: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Computer.c:129: int num_1 = 0, num_2 = 0, ans = 0;
	clr	a
	mov	_main_num_1_10000_35,a
	mov	(_main_num_1_10000_35 + 1),a
	mov	_main_num_2_10000_35,a
	mov	(_main_num_2_10000_35 + 1),a
	mov	_main_ans_10000_35,a
	mov	(_main_ans_10000_35 + 1),a
;	Computer.c:130: char op = '$';
	mov	_main_op_10000_35,#0x24
;	Computer.c:132: int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
	mov	_main_negative_num1_10000_35,#0xff
	mov	(_main_negative_num1_10000_35 + 1),#0xff
	mov	_main_negative_num2_10000_35,#0xff
	mov	(_main_negative_num2_10000_35 + 1),#0xff
	mov	_main_negative_ans_10000_35,a
	mov	(_main_negative_ans_10000_35 + 1),a
;	Computer.c:133: Keypad_Debounce_init();
	lcall	_Keypad_Debounce_init
;	Computer.c:135: while (1)
00123$:
;	Computer.c:137: TR0 = 1;
;	assignBit
	setb	_TR0
;	Computer.c:139: number = ReadKeypad();
	lcall	_ReadKeypad
;	Computer.c:140: if (number >= 0 && number <= 15)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x0f
	jnc	00245$
	ljmp	00120$
00245$:
;	Computer.c:144: if (Keypad_flag == 1)
	jb	_Keypad_flag,00246$
	ljmp	00120$
00246$:
;	Computer.c:146: if (old_number == 10)
	cjne	r7,#0x0a,00115$
;	Computer.c:148: char count = Counter(start_count[history_count]);
	mov	r0,#_history_count
	mov	a,@r0
	add	a, #_start_count
	mov	r1,a
	mov	dpl,@r1
	lcall	_Counter
	mov	r6, dpl
;	Computer.c:149: for (char m = 0; m < 100; m++)
	mov	r5,#0x00
00126$:
	cjne	r5,#0x64,00249$
00249$:
	jnc	00101$
;	Computer.c:151: Show_Ans(history, start, start+count);
	mov	r0,#_start
	mov	a,r6
	add	a, @r0
	mov	_Show_Ans_PARM_3,a
	mov	r0,#_start
	mov	_Show_Ans_PARM_2,@r0
	mov	dptr,#_history
	mov	b, #0x40
	push	ar6
	push	ar5
	lcall	_Show_Ans
	pop	ar5
	pop	ar6
;	Computer.c:149: for (char m = 0; m < 100; m++)
	inc	r5
	sjmp	00126$
00101$:
;	Computer.c:153: start = count;
	mov	r0,#_start
	mov	@r0,ar6
;	Computer.c:154: history_count++;
	mov	r0,#_history_count
	inc	@r0
	ljmp	00120$
00115$:
;	Computer.c:159: flag <<= 1;
	mov	a,_flag
	add	a,_flag
	mov	_flag,a
;	Computer.c:160: flag |= 0x01;
	orl	_flag,#0x01
;	Computer.c:162: SaveNumber(old_number);
	mov	dpl, r7
	lcall	_SaveNumber
;	Computer.c:164: Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
	mov	_Update_Expression_PARM_2,#_main_num_2_10000_35
	mov	(_Update_Expression_PARM_2 + 1),#0x00
	mov	(_Update_Expression_PARM_2 + 2),#0x40
	mov	_Update_Expression_PARM_3,#_main_op_10000_35
	mov	(_Update_Expression_PARM_3 + 1),#0x00
	mov	(_Update_Expression_PARM_3 + 2),#0x40
	mov	_Update_Expression_PARM_4,#_main_negative_num1_10000_35
	mov	(_Update_Expression_PARM_4 + 1),#0x00
	mov	(_Update_Expression_PARM_4 + 2),#0x40
	mov	_Update_Expression_PARM_5,#_main_negative_num2_10000_35
	mov	(_Update_Expression_PARM_5 + 1),#0x00
	mov	(_Update_Expression_PARM_5 + 2),#0x40
	mov	dptr,#_main_num_1_10000_35
	mov	b, #0x40
	lcall	_Update_Expression
;	Computer.c:166: if (cal_flag == 1)
	jb	_cal_flag,00251$
	ljmp	00113$
00251$:
;	Computer.c:169: Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
	mov	_Calculate_PARM_6,#_main_ans_10000_35
	mov	(_Calculate_PARM_6 + 1),#0x00
	mov	(_Calculate_PARM_6 + 2),#0x40
	mov	_Calculate_PARM_2,_main_num_2_10000_35
	mov	(_Calculate_PARM_2 + 1),(_main_num_2_10000_35 + 1)
	mov	_Calculate_PARM_3,_main_op_10000_35
	mov	_Calculate_PARM_4,_main_negative_num1_10000_35
	mov	(_Calculate_PARM_4 + 1),(_main_negative_num1_10000_35 + 1)
	mov	_Calculate_PARM_5,_main_negative_num2_10000_35
	mov	(_Calculate_PARM_5 + 1),(_main_negative_num2_10000_35 + 1)
	mov	dpl, _main_num_1_10000_35
	mov	dph, (_main_num_1_10000_35 + 1)
	lcall	_Calculate
;	Computer.c:171: if (ans < 0)
	mov	a,(_main_ans_10000_35 + 1)
	jnb	acc.7,00103$
;	Computer.c:173: ans = -ans;
	clr	c
	clr	a
	subb	a,_main_ans_10000_35
	mov	_main_ans_10000_35,a
	clr	a
	subb	a,(_main_ans_10000_35 + 1)
	mov	(_main_ans_10000_35 + 1),a
;	Computer.c:174: negative_ans = 1;
	mov	_main_negative_ans_10000_35,#0x01
	mov	(_main_negative_ans_10000_35 + 1),#0x00
00103$:
;	Computer.c:177: flag = 0;
	mov	_flag,#0x00
;	Computer.c:178: for (char f = 0; f < 8; f++)
	mov	r7,#0x00
00129$:
	cjne	r7,#0x08,00253$
00253$:
	jnc	00148$
;	Computer.c:180: buffer[f] = -1;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0xff
;	Computer.c:178: for (char f = 0; f < 8; f++)
	inc	r7
;	Computer.c:183: do
	sjmp	00129$
00148$:
00105$:
;	Computer.c:185: SaveAns(ans % 10, history);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, _main_ans_10000_35
	mov	dph, (_main_ans_10000_35 + 1)
	lcall	__modsint
	mov	_SaveAns_PARM_2,#_history
	mov	(_SaveAns_PARM_2 + 1),#0x00
	mov	(_SaveAns_PARM_2 + 2),#0x40
	lcall	_SaveAns
;	Computer.c:186: SaveNumber(ans % 10);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, _main_ans_10000_35
	mov	dph, (_main_ans_10000_35 + 1)
	lcall	__modsint
	lcall	_SaveNumber
;	Computer.c:187: ans /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _main_ans_10000_35
	mov	dph, (_main_ans_10000_35 + 1)
	lcall	__divsint
	mov	_main_ans_10000_35,dpl
	mov	(_main_ans_10000_35 + 1),dph
;	Computer.c:188: flag <<= 1;
	mov	a,_flag
	add	a,_flag
	mov	_flag,a
;	Computer.c:189: flag |= 0x01;
	orl	_flag,#0x01
;	Computer.c:190: } while (ans);
	mov	a,_main_ans_10000_35
	orl	a,(_main_ans_10000_35 + 1)
	jnz	00105$
;	Computer.c:192: if (negative_ans == 1)
	mov	a,#0x01
	cjne	a,_main_negative_ans_10000_35,00256$
	dec	a
	cjne	a,(_main_negative_ans_10000_35 + 1),00256$
	sjmp	00257$
00256$:
	sjmp	00109$
00257$:
;	Computer.c:194: SaveAns(13, history);
	mov	_SaveAns_PARM_2,#_history
	mov	(_SaveAns_PARM_2 + 1),#0x00
	mov	(_SaveAns_PARM_2 + 2),#0x40
	mov	dpl, #0x0d
	lcall	_SaveAns
;	Computer.c:195: SaveNumber(13);
	mov	dpl, #0x0d
	lcall	_SaveNumber
;	Computer.c:196: flag <<= 1;
	mov	a,_flag
	add	a,_flag
	mov	_flag,a
;	Computer.c:197: flag |= 0x01;
	orl	_flag,#0x01
00109$:
;	Computer.c:199: SaveAns(flag, start_count);
	mov	_SaveAns_PARM_2,#_start_count
	mov	(_SaveAns_PARM_2 + 1),#0x00
	mov	(_SaveAns_PARM_2 + 2),#0x40
	mov	dpl, _flag
	lcall	_SaveAns
;	Computer.c:201: for (char m = 0; m < 100; m++)
	mov	r7,#0x00
00132$:
	cjne	r7,#0x64,00258$
00258$:
	jnc	00110$
;	Computer.c:203: Show_Reverse(buffer, flag);
	mov	_Show_Reverse_PARM_2,_flag
	mov	dptr,#_buffer
	mov	b, #0x40
	push	ar7
	lcall	_Show_Reverse
	pop	ar7
;	Computer.c:201: for (char m = 0; m < 100; m++)
	inc	r7
	sjmp	00132$
00110$:
;	Computer.c:206: for (char f = 0; f < 8; f++)
	mov	r7,#0x00
00135$:
	cjne	r7,#0x08,00260$
00260$:
	jnc	00111$
;	Computer.c:208: buffer[f] = -1;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0xff
;	Computer.c:206: for (char f = 0; f < 8; f++)
	inc	r7
	sjmp	00135$
00111$:
;	Computer.c:210: flag = 0;
	mov	_flag,#0x00
;	Computer.c:212: Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
	mov	_Restart_PARM_2,#_main_num_2_10000_35
	mov	(_Restart_PARM_2 + 1),#0x00
	mov	(_Restart_PARM_2 + 2),#0x40
	mov	_Restart_PARM_3,#_main_op_10000_35
	mov	(_Restart_PARM_3 + 1),#0x00
	mov	(_Restart_PARM_3 + 2),#0x40
	mov	_Restart_PARM_4,#_main_ans_10000_35
	mov	(_Restart_PARM_4 + 1),#0x00
	mov	(_Restart_PARM_4 + 2),#0x40
	mov	_Restart_PARM_5,#_main_negative_num1_10000_35
	mov	(_Restart_PARM_5 + 1),#0x00
	mov	(_Restart_PARM_5 + 2),#0x40
	mov	_Restart_PARM_6,#_main_negative_num2_10000_35
	mov	(_Restart_PARM_6 + 1),#0x00
	mov	(_Restart_PARM_6 + 2),#0x40
	mov	_Restart_PARM_7,#_main_negative_ans_10000_35
	mov	(_Restart_PARM_7 + 1),#0x00
	mov	(_Restart_PARM_7 + 2),#0x40
	mov	dptr,#_main_num_1_10000_35
	mov	b, #0x40
	lcall	_Restart
00113$:
;	Computer.c:215: Keypad_flag = 0;
;	assignBit
	clr	_Keypad_flag
00120$:
;	Computer.c:219: Show(buffer, flag);
	mov	_Show_PARM_2,_flag
	mov	dptr,#_buffer
	mov	b, #0x40
	lcall	_Show
;	Computer.c:221: }
	ljmp	00123$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
