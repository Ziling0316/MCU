;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module Display
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _Show_History_PARM_3
	.globl _Show_History_PARM_2
	.globl _Show_Ans_PARM_2
	.globl _Show_PARM_2
	.globl _numbers
	.globl _control
	.globl _delay
	.globl _Show
	.globl _Show_Ans
	.globl _Show_History
	.globl _Counter
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_control::
	.ds 8
_numbers::
	.ds 17
_Show_PARM_2:
	.ds 1
_Show_buffer_10000_8:
	.ds 3
_Show_Ans_PARM_2:
	.ds 1
_Show_Ans_buffer_10000_14:
	.ds 3
_Show_Ans_count_10000_15:
	.ds 1
_Show_History_PARM_2:
	.ds 1
_Show_History_PARM_3:
	.ds 1
_Show_History_buffer_10000_20:
	.ds 3
_Show_History_i_20000_22:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	Display.c:3: char control[8] = {0b00000111, 0b00000110, 0b00000101, 0b00000100, 0b00000011, 0b00000010, 0b00000001, 0b0000000};
	mov	_control,#0x07
	mov	(_control + 0x0001),#0x06
	mov	(_control + 0x0002),#0x05
	mov	(_control + 0x0003),#0x04
	mov	(_control + 0x0004),#0x03
	mov	(_control + 0x0005),#0x02
	mov	(_control + 0x0006),#0x01
	mov	(_control + 0x0007),#0x00
;	Display.c:4: char numbers[17] = {0b11000000, 0b11111001, 0b10100100, 0b10110000, 0b10011001, 0b10010010, 0b10000010, 0b11111000, 0b10000000, 0b10010000,
	mov	_numbers,#0xc0
	mov	(_numbers + 0x0001),#0xf9
	mov	(_numbers + 0x0002),#0xa4
	mov	(_numbers + 0x0003),#0xb0
	mov	(_numbers + 0x0004),#0x99
	mov	(_numbers + 0x0005),#0x92
	mov	(_numbers + 0x0006),#0x82
	mov	(_numbers + 0x0007),#0xf8
	mov	(_numbers + 0x0008),#0x80
	mov	(_numbers + 0x0009),#0x90
	mov	(_numbers + 0x000a),#0x88
	mov	(_numbers + 0x000b),#0x83
	mov	(_numbers + 0x000c),#0x88
	mov	(_numbers + 0x000d),#0xbf
	mov	(_numbers + 0x000e),#0x89
	mov	(_numbers + 0x000f),#0xa1
	mov	(_numbers + 0x0010),#0xff
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	Display.c:7: void delay(int i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	Display.c:9: while (i--)
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	Display.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Show'
;------------------------------------------------------------
;flag                      Allocated with name '_Show_PARM_2'
;buffer                    Allocated with name '_Show_buffer_10000_8'
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	Display.c:13: void Show(char *buffer, char flag)
;	-----------------------------------------
;	 function Show
;	-----------------------------------------
_Show:
	mov	_Show_buffer_10000_8,dpl
	mov	(_Show_buffer_10000_8 + 1),dph
	mov	(_Show_buffer_10000_8 + 2),b
;	Display.c:15: for (char i = 0; i < 8; i++)
	mov	r4,#0x00
00106$:
	cjne	r4,#0x08,00129$
00129$:
	jnc	00108$
;	Display.c:17: P1 = control[i];
	mov	a,r4
	add	a, #_control
	mov	r1,a
	mov	_P1,@r1
;	Display.c:18: if ((flag & (1 << i)) > 0)
	mov	b,r4
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00132$
00131$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00132$:
	djnz	b,00131$
	mov	r6,_Show_PARM_2
	mov	r7,#0x00
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar3,a
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	Display.c:20: P2 = ~numbers[buffer[i]];
	mov	a,r4
	add	a, _Show_buffer_10000_8
	mov	r5,a
	clr	a
	addc	a, (_Show_buffer_10000_8 + 1)
	mov	r6,a
	mov	r7,(_Show_buffer_10000_8 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a, #_numbers
	mov	r1,a
	mov	a,@r1
	cpl	a
	mov	_P2,a
	sjmp	00103$
00102$:
;	Display.c:24: P2 = ~numbers[16];
	mov	a,(_numbers + 0x0010)
	cpl	a
	mov	_P2,a
00103$:
;	Display.c:26: delay(280);
	mov	dptr,#0x0118
	push	ar4
	lcall	_delay
	pop	ar4
;	Display.c:15: for (char i = 0; i < 8; i++)
	inc	r4
	sjmp	00106$
00108$:
;	Display.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Show_Ans'
;------------------------------------------------------------
;flag                      Allocated with name '_Show_Ans_PARM_2'
;buffer                    Allocated with name '_Show_Ans_buffer_10000_14'
;count                     Allocated with name '_Show_Ans_count_10000_15'
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	Display.c:30: void Show_Ans(char *buffer, char flag)
;	-----------------------------------------
;	 function Show_Ans
;	-----------------------------------------
_Show_Ans:
	mov	_Show_Ans_buffer_10000_14,dpl
	mov	(_Show_Ans_buffer_10000_14 + 1),dph
	mov	(_Show_Ans_buffer_10000_14 + 2),b
;	Display.c:32: char count = Counter(flag)-1;
	mov	dpl, _Show_Ans_PARM_2
	lcall	_Counter
	mov	a,dpl
	dec	a
	mov	_Show_Ans_count_10000_15,a
;	Display.c:33: for (char i = 0; i < 8; i++)
	mov	r3,#0x00
00106$:
	cjne	r3,#0x08,00129$
00129$:
	jnc	00108$
;	Display.c:35: P1 = control[i];
	mov	a,r3
	add	a, #_control
	mov	r1,a
	mov	_P1,@r1
;	Display.c:36: if ((flag & (1 << i)) > 0)
	mov	b,r3
	inc	b
	mov	r2,#0x01
	mov	r4,#0x00
	sjmp	00132$
00131$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r4
	rlc	a
	mov	r4,a
00132$:
	djnz	b,00131$
	mov	r6,_Show_Ans_PARM_2
	mov	r7,#0x00
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar4,a
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	Display.c:38: P2 = ~numbers[buffer[count - i]];
	mov	r4,_Show_Ans_count_10000_15
	mov	r7,#0x00
	mov	ar5,r3
	mov	r6,#0x00
	mov	a,r4
	clr	c
	subb	a,r5
	mov	r4,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	a,r4
	add	a, _Show_Ans_buffer_10000_14
	mov	r4,a
	mov	a,r7
	addc	a, (_Show_Ans_buffer_10000_14 + 1)
	mov	r7,a
	mov	r6,(_Show_Ans_buffer_10000_14 + 2)
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	add	a, #_numbers
	mov	r1,a
	mov	a,@r1
	cpl	a
	mov	_P2,a
	sjmp	00103$
00102$:
;	Display.c:42: P2 = ~numbers[16];
	mov	a,(_numbers + 0x0010)
	cpl	a
	mov	_P2,a
00103$:
;	Display.c:44: delay(280);
	mov	dptr,#0x0118
	push	ar3
	lcall	_delay
	pop	ar3
;	Display.c:33: for (char i = 0; i < 8; i++)
	inc	r3
	ljmp	00106$
00108$:
;	Display.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Show_History'
;------------------------------------------------------------
;start                     Allocated with name '_Show_History_PARM_2'
;count                     Allocated with name '_Show_History_PARM_3'
;buffer                    Allocated with name '_Show_History_buffer_10000_20'
;i                         Allocated with name '_Show_History_i_20000_22'
;------------------------------------------------------------
;	Display.c:48: void Show_History(char *buffer, char start, char count)
;	-----------------------------------------
;	 function Show_History
;	-----------------------------------------
_Show_History:
	mov	_Show_History_buffer_10000_20,dpl
	mov	(_Show_History_buffer_10000_20 + 1),dph
	mov	(_Show_History_buffer_10000_20 + 2),b
;	Display.c:51: for (char i = 0; i < 8; i++)
	mov	_Show_History_i_20000_22,#0x00
00106$:
	mov	a,#0x100 - 0x08
	add	a,_Show_History_i_20000_22
	jc	00108$
;	Display.c:53: P1 = control[i];
	mov	a,_Show_History_i_20000_22
	add	a, #_control
	mov	r1,a
	mov	_P1,@r1
;	Display.c:54: if (i<count)
	clr	c
	mov	a,_Show_History_i_20000_22
	subb	a,_Show_History_PARM_3
	jnc	00102$
;	Display.c:56: P2 = ~numbers[buffer[start+(count-1-i)]];
	mov	r2,_Show_History_PARM_2
	mov	r3,#0x00
	mov	r6,_Show_History_PARM_3
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00131$
	dec	r7
00131$:
	mov	r4,_Show_History_i_20000_22
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	a,r6
	add	a, r2
	mov	r2,a
	mov	a,r7
	addc	a, r3
	mov	r3,a
	mov	a,r2
	add	a, _Show_History_buffer_10000_20
	mov	r2,a
	mov	a,r3
	addc	a, (_Show_History_buffer_10000_20 + 1)
	mov	r3,a
	mov	r7,(_Show_History_buffer_10000_20 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	add	a, #_numbers
	mov	r1,a
	mov	a,@r1
	cpl	a
	mov	_P2,a
	sjmp	00103$
00102$:
;	Display.c:60: P2 = ~numbers[16];
	mov	a,(_numbers + 0x0010)
	cpl	a
	mov	_P2,a
00103$:
;	Display.c:62: delay(280);
	mov	dptr,#0x0118
	lcall	_delay
;	Display.c:51: for (char i = 0; i < 8; i++)
	inc	_Show_History_i_20000_22
	sjmp	00106$
00108$:
;	Display.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Counter'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;count                     Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	Display.c:66: char Counter(char flag)
;	-----------------------------------------
;	 function Counter
;	-----------------------------------------
_Counter:
	mov	r7, dpl
;	Display.c:69: for (char i = 0; i < 8; i++)
	mov	r6,#0x00
	mov	r5,#0x00
00105$:
	cjne	r5,#0x08,00128$
00128$:
	jnc	00103$
;	Display.c:71: if ((flag & (1 << i)) > 0)
	mov	b,r5
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00131$
00130$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00131$:
	djnz	b,00130$
	mov	ar1,r7
	mov	r2,#0x00
	mov	a,r1
	anl	ar3,a
	mov	a,r2
	anl	ar4,a
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	Display.c:73: count++;
	inc	r6
00106$:
;	Display.c:69: for (char i = 0; i < 8; i++)
	inc	r5
	sjmp	00105$
00103$:
;	Display.c:76: return count;
	mov	dpl, r6
;	Display.c:77: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
