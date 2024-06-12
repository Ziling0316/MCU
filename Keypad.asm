;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module Keypad
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
	.globl _ReadKeypad
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_ReadKeypad_numbers_10001_4:
	.ds 16
_ReadKeypad_c_20001_5:
	.ds 1
_ReadKeypad_r_40001_7:
	.ds 1
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
;Allocation info for local variables in function 'ReadKeypad'
;------------------------------------------------------------
;numbers                   Allocated with name '_ReadKeypad_numbers_10001_4'
;c                         Allocated with name '_ReadKeypad_c_20001_5'
;r                         Allocated with name '_ReadKeypad_r_40001_7'
;------------------------------------------------------------
;	Keypad.c:3: char ReadKeypad(void){
;	-----------------------------------------
;	 function ReadKeypad
;	-----------------------------------------
_ReadKeypad:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Keypad.c:4: P0 = 0xFF;
	mov	_P0,#0xff
;	Keypad.c:5: char numbers[4][4] = {
	mov	_ReadKeypad_numbers_10001_4,#0x0c
	mov	(_ReadKeypad_numbers_10001_4 + 0x0001),#0x08
	mov	(_ReadKeypad_numbers_10001_4 + 0x0002),#0x04
	mov	(_ReadKeypad_numbers_10001_4 + 0x0003),#0x00
	mov	(_ReadKeypad_numbers_10001_4 + 0x0004),#0x0d
	mov	(_ReadKeypad_numbers_10001_4 + 0x0005),#0x09
	mov	(_ReadKeypad_numbers_10001_4 + 0x0006),#0x05
	mov	(_ReadKeypad_numbers_10001_4 + 0x0007),#0x01
	mov	(_ReadKeypad_numbers_10001_4 + 0x0008),#0x0e
	mov	(_ReadKeypad_numbers_10001_4 + 0x0009),#0x0a
	mov	(_ReadKeypad_numbers_10001_4 + 0x000a),#0x06
	mov	(_ReadKeypad_numbers_10001_4 + 0x000b),#0x02
	mov	(_ReadKeypad_numbers_10001_4 + 0x000c),#0x0f
	mov	(_ReadKeypad_numbers_10001_4 + 0x000d),#0x0b
	mov	(_ReadKeypad_numbers_10001_4 + 0x000e),#0x07
	mov	(_ReadKeypad_numbers_10001_4 + 0x000f),#0x03
;	Keypad.c:12: for (char c = 0; c < 4; c++) {
	mov	r7,#0x00
	mov	_ReadKeypad_c_20001_5,r7
00109$:
	mov	a,#0x100 - 0x04
	add	a,_ReadKeypad_c_20001_5
	jc	00104$
;	Keypad.c:13: P0 = ~(0x01 << c);
	mov	b,_ReadKeypad_c_20001_5
	inc	b
	mov	a,#0x01
	sjmp	00145$
00144$:
	add	a,acc
00145$:
	djnz	b,00144$
	cpl	a
	mov	_P0,a
;	Keypad.c:15: for (char r = 0; r < 4; ++r) {
	mov	r5,#0x00
	mov	_ReadKeypad_r_40001_7,r5
00106$:
	mov	a,#0x100 - 0x04
	add	a,_ReadKeypad_r_40001_7
	jc	00110$
;	Keypad.c:17: if ((P0 & (0x10 << r)) == 0) {
	mov	b,_ReadKeypad_r_40001_7
	inc	b
	mov	r2,#0x10
	mov	r3,#0x00
	sjmp	00148$
00147$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00148$:
	djnz	b,00147$
	mov	r4,_P0
	mov	r6,#0x00
	mov	a,r4
	anl	ar2,a
	mov	a,r6
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jnz	00107$
;	Keypad.c:18: return numbers[c][r];
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#_ReadKeypad_numbers_10001_4
	add	a,r5
	mov	r1,a
	mov	dpl,@r1
	ret
00107$:
;	Keypad.c:15: for (char r = 0; r < 4; ++r) {
	inc	_ReadKeypad_r_40001_7
	mov	r5,_ReadKeypad_r_40001_7
	sjmp	00106$
00110$:
;	Keypad.c:12: for (char c = 0; c < 4; c++) {
	inc	_ReadKeypad_c_20001_5
	mov	r7,_ReadKeypad_c_20001_5
	sjmp	00109$
00104$:
;	Keypad.c:23: return -1;
	mov	dpl, #0xff
;	Keypad.c:24: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
