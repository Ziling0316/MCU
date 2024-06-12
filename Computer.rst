                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Computer
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SaveAns_PARM_2
                                     12 	.globl _Restart_PARM_7
                                     13 	.globl _Restart_PARM_6
                                     14 	.globl _Restart_PARM_5
                                     15 	.globl _Restart_PARM_4
                                     16 	.globl _Restart_PARM_3
                                     17 	.globl _Restart_PARM_2
                                     18 	.globl _main
                                     19 	.globl _Keypad_Debounce
                                     20 	.globl _Keypad_Debounce_init
                                     21 	.globl _Calculate
                                     22 	.globl _Update_Expression
                                     23 	.globl _SaveAns
                                     24 	.globl _SaveNumber
                                     25 	.globl _Restart
                                     26 	.globl _Counter
                                     27 	.globl _Show_Ans
                                     28 	.globl _Show_Reverse
                                     29 	.globl _Show
                                     30 	.globl _ReadKeypad
                                     31 	.globl _Keypad_flag
                                     32 	.globl _cal_flag
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _B
                                    109 	.globl _ACC
                                    110 	.globl _PSW
                                    111 	.globl _IP
                                    112 	.globl _P3
                                    113 	.globl _IE
                                    114 	.globl _P2
                                    115 	.globl _SBUF
                                    116 	.globl _SCON
                                    117 	.globl _P1
                                    118 	.globl _TH1
                                    119 	.globl _TH0
                                    120 	.globl _TL1
                                    121 	.globl _TL0
                                    122 	.globl _TMOD
                                    123 	.globl _TCON
                                    124 	.globl _PCON
                                    125 	.globl _DPH
                                    126 	.globl _DPL
                                    127 	.globl _SP
                                    128 	.globl _P0
                                    129 	.globl _start
                                    130 	.globl _history_count
                                    131 	.globl _start_count
                                    132 	.globl _history
                                    133 	.globl _buffer
                                    134 	.globl _Calculate_PARM_6
                                    135 	.globl _Calculate_PARM_5
                                    136 	.globl _Calculate_PARM_4
                                    137 	.globl _Calculate_PARM_3
                                    138 	.globl _Calculate_PARM_2
                                    139 	.globl _Update_Expression_PARM_5
                                    140 	.globl _Update_Expression_PARM_4
                                    141 	.globl _Update_Expression_PARM_3
                                    142 	.globl _Update_Expression_PARM_2
                                    143 	.globl _num1_counter
                                    144 	.globl _timer_count
                                    145 	.globl _flag
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000098   201 _RI	=	0x0098
                           000099   202 _TI	=	0x0099
                           00009A   203 _RB8	=	0x009a
                           00009B   204 _TB8	=	0x009b
                           00009C   205 _REN	=	0x009c
                           00009D   206 _SM2	=	0x009d
                           00009E   207 _SM1	=	0x009e
                           00009F   208 _SM0	=	0x009f
                           0000A0   209 _P2_0	=	0x00a0
                           0000A1   210 _P2_1	=	0x00a1
                           0000A2   211 _P2_2	=	0x00a2
                           0000A3   212 _P2_3	=	0x00a3
                           0000A4   213 _P2_4	=	0x00a4
                           0000A5   214 _P2_5	=	0x00a5
                           0000A6   215 _P2_6	=	0x00a6
                           0000A7   216 _P2_7	=	0x00a7
                           0000A8   217 _EX0	=	0x00a8
                           0000A9   218 _ET0	=	0x00a9
                           0000AA   219 _EX1	=	0x00aa
                           0000AB   220 _ET1	=	0x00ab
                           0000AC   221 _ES	=	0x00ac
                           0000AF   222 _EA	=	0x00af
                           0000B0   223 _P3_0	=	0x00b0
                           0000B1   224 _P3_1	=	0x00b1
                           0000B2   225 _P3_2	=	0x00b2
                           0000B3   226 _P3_3	=	0x00b3
                           0000B4   227 _P3_4	=	0x00b4
                           0000B5   228 _P3_5	=	0x00b5
                           0000B6   229 _P3_6	=	0x00b6
                           0000B7   230 _P3_7	=	0x00b7
                           0000B0   231 _RXD	=	0x00b0
                           0000B1   232 _TXD	=	0x00b1
                           0000B2   233 _INT0	=	0x00b2
                           0000B3   234 _INT1	=	0x00b3
                           0000B4   235 _T0	=	0x00b4
                           0000B5   236 _T1	=	0x00b5
                           0000B6   237 _WR	=	0x00b6
                           0000B7   238 _RD	=	0x00b7
                           0000B8   239 _PX0	=	0x00b8
                           0000B9   240 _PT0	=	0x00b9
                           0000BA   241 _PX1	=	0x00ba
                           0000BB   242 _PT1	=	0x00bb
                           0000BC   243 _PS	=	0x00bc
                           0000D0   244 _P	=	0x00d0
                           0000D1   245 _F1	=	0x00d1
                           0000D2   246 _OV	=	0x00d2
                           0000D3   247 _RS0	=	0x00d3
                           0000D4   248 _RS1	=	0x00d4
                           0000D5   249 _F0	=	0x00d5
                           0000D6   250 _AC	=	0x00d6
                           0000D7   251 _CY	=	0x00d7
      000000                        252 _cal_flag::
      000000                        253 	.ds 1
      000001                        254 _Keypad_flag::
      000001                        255 	.ds 1
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable register banks
                                    258 ;--------------------------------------------------------
                                    259 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        260 	.ds 8
                                    261 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        262 	.ds 8
                                    263 ;--------------------------------------------------------
                                    264 ; internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area DSEG    (DATA)
      000010                        267 _flag::
      000010                        268 	.ds 1
      000011                        269 _timer_count::
      000011                        270 	.ds 1
      000012                        271 _num1_counter::
      000012                        272 	.ds 1
      000013                        273 _Update_Expression_PARM_2:
      000013                        274 	.ds 3
      000016                        275 _Update_Expression_PARM_3:
      000016                        276 	.ds 3
      000019                        277 _Update_Expression_PARM_4:
      000019                        278 	.ds 3
      00001C                        279 _Update_Expression_PARM_5:
      00001C                        280 	.ds 3
      00001F                        281 _Update_Expression_num_1_10000_17:
      00001F                        282 	.ds 3
      000022                        283 _Update_Expression_sloc0_1_0:
      000022                        284 	.ds 3
      000025                        285 _Calculate_PARM_2:
      000025                        286 	.ds 2
      000027                        287 _Calculate_PARM_3:
      000027                        288 	.ds 1
      000028                        289 _Calculate_PARM_4:
      000028                        290 	.ds 2
      00002A                        291 _Calculate_PARM_5:
      00002A                        292 	.ds 2
      00002C                        293 _Calculate_PARM_6:
      00002C                        294 	.ds 3
      00002F                        295 _Calculate_sloc0_1_0:
      00002F                        296 	.ds 2
      000031                        297 _main_num_1_10000_35:
      000031                        298 	.ds 2
      000033                        299 _main_num_2_10000_35:
      000033                        300 	.ds 2
      000035                        301 _main_ans_10000_35:
      000035                        302 	.ds 2
      000037                        303 _main_op_10000_35:
      000037                        304 	.ds 1
      000038                        305 _main_negative_num1_10000_35:
      000038                        306 	.ds 2
      00003A                        307 _main_negative_num2_10000_35:
      00003A                        308 	.ds 2
      00003C                        309 _main_negative_ans_10000_35:
      00003C                        310 	.ds 2
                                    311 ;--------------------------------------------------------
                                    312 ; overlayable items in internal ram
                                    313 ;--------------------------------------------------------
                                    314 	.area	OSEG    (OVR,DATA)
      000069                        315 _Restart_PARM_2:
      000069                        316 	.ds 3
      00006C                        317 _Restart_PARM_3:
      00006C                        318 	.ds 3
      00006F                        319 _Restart_PARM_4:
      00006F                        320 	.ds 3
      000072                        321 _Restart_PARM_5:
      000072                        322 	.ds 3
      000075                        323 _Restart_PARM_6:
      000075                        324 	.ds 3
      000078                        325 _Restart_PARM_7:
      000078                        326 	.ds 3
                                    327 	.area	OSEG    (OVR,DATA)
                                    328 	.area	OSEG    (OVR,DATA)
      000069                        329 _SaveAns_PARM_2:
      000069                        330 	.ds 3
                                    331 ;--------------------------------------------------------
                                    332 ; Stack segment in internal ram
                                    333 ;--------------------------------------------------------
                                    334 	.area SSEG
      0000E9                        335 __start__stack:
      0000E9                        336 	.ds	1
                                    337 
                                    338 ;--------------------------------------------------------
                                    339 ; indirectly addressable internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area ISEG    (DATA)
      00007B                        342 _buffer::
      00007B                        343 	.ds 8
      000083                        344 _history::
      000083                        345 	.ds 50
      0000B5                        346 _start_count::
      0000B5                        347 	.ds 50
      0000E7                        348 _history_count::
      0000E7                        349 	.ds 1
      0000E8                        350 _start::
      0000E8                        351 	.ds 1
                                    352 ;--------------------------------------------------------
                                    353 ; absolute internal ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area IABS    (ABS,DATA)
                                    356 	.area IABS    (ABS,DATA)
                                    357 ;--------------------------------------------------------
                                    358 ; bit data
                                    359 ;--------------------------------------------------------
                                    360 	.area BSEG    (BIT)
                                    361 ;--------------------------------------------------------
                                    362 ; paged external ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area PSEG    (PAG,XDATA)
                                    365 ;--------------------------------------------------------
                                    366 ; uninitialized external ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XSEG    (XDATA)
                                    369 ;--------------------------------------------------------
                                    370 ; absolute external ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area XABS    (ABS,XDATA)
                                    373 ;--------------------------------------------------------
                                    374 ; initialized external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XISEG   (XDATA)
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT0 (CODE)
                                    379 	.area GSINIT1 (CODE)
                                    380 	.area GSINIT2 (CODE)
                                    381 	.area GSINIT3 (CODE)
                                    382 	.area GSINIT4 (CODE)
                                    383 	.area GSINIT5 (CODE)
                                    384 	.area GSINIT  (CODE)
                                    385 	.area GSFINAL (CODE)
                                    386 	.area CSEG    (CODE)
                                    387 ;--------------------------------------------------------
                                    388 ; interrupt vector
                                    389 ;--------------------------------------------------------
                                    390 	.area HOME    (CODE)
      000000                        391 __interrupt_vect:
      000000 02 00 11         [24]  392 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  393 	reti
      000004                        394 	.ds	7
      00000B 02 04 C9         [24]  395 	ljmp	_Keypad_Debounce
                                    396 ;--------------------------------------------------------
                                    397 ; global & static initialisations
                                    398 ;--------------------------------------------------------
                                    399 	.area HOME    (CODE)
                                    400 	.area GSINIT  (CODE)
                                    401 	.area GSFINAL (CODE)
                                    402 	.area GSINIT  (CODE)
                                    403 	.globl __sdcc_gsinit_startup
                                    404 	.globl __sdcc_program_startup
                                    405 	.globl __start__stack
                                    406 	.globl __mcs51_genXINIT
                                    407 	.globl __mcs51_genXRAMCLEAR
                                    408 	.globl __mcs51_genRAMCLEAR
                                    409 ;	Computer.c:6: char flag = 0;
      00006A 75 10 00         [24]  410 	mov	_flag,#0x00
                                    411 ;	Computer.c:12: char timer_count = 0;
      00006D 75 11 00         [24]  412 	mov	_timer_count,#0x00
                                    413 ;	Computer.c:15: char num1_counter = 0;
      000070 75 12 00         [24]  414 	mov	_num1_counter,#0x00
                                    415 ;	Computer.c:5: __idata unsigned char buffer[8] = {-1};
      000073 78 7B            [12]  416 	mov	r0,#_buffer
      000075 76 FF            [12]  417 	mov	@r0,#0xff
                                    418 ;	Computer.c:7: __idata unsigned char history[50] = {0};
      000077 78 83            [12]  419 	mov	r0,#_history
      000079 76 00            [12]  420 	mov	@r0,#0x00
                                    421 ;	Computer.c:8: __idata unsigned char start_count[50] = {0};
      00007B 78 B5            [12]  422 	mov	r0,#_start_count
      00007D 76 00            [12]  423 	mov	@r0,#0x00
                                    424 ;	Computer.c:9: __idata unsigned char history_count = 0;
      00007F 78 E7            [12]  425 	mov	r0,#_history_count
      000081 76 00            [12]  426 	mov	@r0,#0x00
                                    427 ;	Computer.c:10: __idata unsigned char start = 0;
      000083 78 E8            [12]  428 	mov	r0,#_start
      000085 76 00            [12]  429 	mov	@r0,#0x00
                                    430 ;	Computer.c:13: __sbit cal_flag = 0;
                                    431 ;	assignBit
      000087 C2 00            [12]  432 	clr	_cal_flag
                                    433 ;	Computer.c:14: __sbit Keypad_flag = 0;
                                    434 ;	assignBit
      000089 C2 01            [12]  435 	clr	_Keypad_flag
                                    436 	.area GSFINAL (CODE)
      0000D6 02 00 0E         [24]  437 	ljmp	__sdcc_program_startup
                                    438 ;--------------------------------------------------------
                                    439 ; Home
                                    440 ;--------------------------------------------------------
                                    441 	.area HOME    (CODE)
                                    442 	.area HOME    (CODE)
      00000E                        443 __sdcc_program_startup:
      00000E 02 04 E8         [24]  444 	ljmp	_main
                                    445 ;	return from main will return to caller
                                    446 ;--------------------------------------------------------
                                    447 ; code
                                    448 ;--------------------------------------------------------
                                    449 	.area CSEG    (CODE)
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'Restart'
                                    452 ;------------------------------------------------------------
                                    453 ;num_2                     Allocated with name '_Restart_PARM_2'
                                    454 ;op                        Allocated with name '_Restart_PARM_3'
                                    455 ;ans                       Allocated with name '_Restart_PARM_4'
                                    456 ;negative_num1             Allocated with name '_Restart_PARM_5'
                                    457 ;negative_num2             Allocated with name '_Restart_PARM_6'
                                    458 ;negative_ans              Allocated with name '_Restart_PARM_7'
                                    459 ;num_1                     Allocated to registers r5 r6 r7 
                                    460 ;------------------------------------------------------------
                                    461 ;	Computer.c:17: void Restart(int *num_1, int *num_2, char *op, int *ans, int *negative_num1, int *negative_num2, int *negative_ans)
                                    462 ;	-----------------------------------------
                                    463 ;	 function Restart
                                    464 ;	-----------------------------------------
      0000D9                        465 _Restart:
                           000007   466 	ar7 = 0x07
                           000006   467 	ar6 = 0x06
                           000005   468 	ar5 = 0x05
                           000004   469 	ar4 = 0x04
                           000003   470 	ar3 = 0x03
                           000002   471 	ar2 = 0x02
                           000001   472 	ar1 = 0x01
                           000000   473 	ar0 = 0x00
                                    474 ;	Computer.c:19: *num_1 = 0;
      0000D9 E4               [12]  475 	clr	a
      0000DA 12 08 B9         [24]  476 	lcall	__gptrput
      0000DD A3               [24]  477 	inc	dptr
      0000DE 12 08 B9         [24]  478 	lcall	__gptrput
                                    479 ;	Computer.c:20: *num_2 = 0;
      0000E1 AD 69            [24]  480 	mov	r5,_Restart_PARM_2
      0000E3 AE 6A            [24]  481 	mov	r6,(_Restart_PARM_2 + 1)
      0000E5 AF 6B            [24]  482 	mov	r7,(_Restart_PARM_2 + 2)
      0000E7 8D 82            [24]  483 	mov	dpl,r5
      0000E9 8E 83            [24]  484 	mov	dph,r6
      0000EB 8F F0            [24]  485 	mov	b,r7
      0000ED 12 08 B9         [24]  486 	lcall	__gptrput
      0000F0 A3               [24]  487 	inc	dptr
      0000F1 12 08 B9         [24]  488 	lcall	__gptrput
                                    489 ;	Computer.c:21: *op = '$';
      0000F4 AD 6C            [24]  490 	mov	r5,_Restart_PARM_3
      0000F6 AE 6D            [24]  491 	mov	r6,(_Restart_PARM_3 + 1)
      0000F8 AF 6E            [24]  492 	mov	r7,(_Restart_PARM_3 + 2)
      0000FA 8D 82            [24]  493 	mov	dpl,r5
      0000FC 8E 83            [24]  494 	mov	dph,r6
      0000FE 8F F0            [24]  495 	mov	b,r7
      000100 74 24            [12]  496 	mov	a,#0x24
      000102 12 08 B9         [24]  497 	lcall	__gptrput
                                    498 ;	Computer.c:22: *ans = 0;
      000105 AD 6F            [24]  499 	mov	r5,_Restart_PARM_4
      000107 AE 70            [24]  500 	mov	r6,(_Restart_PARM_4 + 1)
      000109 AF 71            [24]  501 	mov	r7,(_Restart_PARM_4 + 2)
      00010B 8D 82            [24]  502 	mov	dpl,r5
      00010D 8E 83            [24]  503 	mov	dph,r6
      00010F 8F F0            [24]  504 	mov	b,r7
      000111 E4               [12]  505 	clr	a
      000112 12 08 B9         [24]  506 	lcall	__gptrput
      000115 A3               [24]  507 	inc	dptr
      000116 12 08 B9         [24]  508 	lcall	__gptrput
                                    509 ;	Computer.c:23: cal_flag = 0;
                                    510 ;	assignBit
      000119 C2 00            [12]  511 	clr	_cal_flag
                                    512 ;	Computer.c:24: *negative_ans = 0;
      00011B AD 78            [24]  513 	mov	r5,_Restart_PARM_7
      00011D AE 79            [24]  514 	mov	r6,(_Restart_PARM_7 + 1)
      00011F AF 7A            [24]  515 	mov	r7,(_Restart_PARM_7 + 2)
      000121 8D 82            [24]  516 	mov	dpl,r5
      000123 8E 83            [24]  517 	mov	dph,r6
      000125 8F F0            [24]  518 	mov	b,r7
      000127 E4               [12]  519 	clr	a
      000128 12 08 B9         [24]  520 	lcall	__gptrput
      00012B A3               [24]  521 	inc	dptr
      00012C 12 08 B9         [24]  522 	lcall	__gptrput
                                    523 ;	Computer.c:25: *negative_num1 = -1;
      00012F AD 72            [24]  524 	mov	r5,_Restart_PARM_5
      000131 AE 73            [24]  525 	mov	r6,(_Restart_PARM_5 + 1)
      000133 AF 74            [24]  526 	mov	r7,(_Restart_PARM_5 + 2)
      000135 8D 82            [24]  527 	mov	dpl,r5
      000137 8E 83            [24]  528 	mov	dph,r6
      000139 8F F0            [24]  529 	mov	b,r7
      00013B 14               [12]  530 	dec	a
      00013C 12 08 B9         [24]  531 	lcall	__gptrput
      00013F A3               [24]  532 	inc	dptr
      000140 12 08 B9         [24]  533 	lcall	__gptrput
                                    534 ;	Computer.c:26: *negative_num2 = -1;
      000143 AD 75            [24]  535 	mov	r5,_Restart_PARM_6
      000145 AE 76            [24]  536 	mov	r6,(_Restart_PARM_6 + 1)
      000147 AF 77            [24]  537 	mov	r7,(_Restart_PARM_6 + 2)
      000149 8D 82            [24]  538 	mov	dpl,r5
      00014B 8E 83            [24]  539 	mov	dph,r6
      00014D 8F F0            [24]  540 	mov	b,r7
      00014F 12 08 B9         [24]  541 	lcall	__gptrput
      000152 A3               [24]  542 	inc	dptr
      000153 12 08 B9         [24]  543 	lcall	__gptrput
                                    544 ;	Computer.c:27: num1_counter = 0;
      000156 75 12 00         [24]  545 	mov	_num1_counter,#0x00
                                    546 ;	Computer.c:28: }
      000159 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'SaveNumber'
                                    550 ;------------------------------------------------------------
                                    551 ;n                         Allocated to registers r7 
                                    552 ;i                         Allocated to registers r6 
                                    553 ;------------------------------------------------------------
                                    554 ;	Computer.c:29: void SaveNumber(char n)
                                    555 ;	-----------------------------------------
                                    556 ;	 function SaveNumber
                                    557 ;	-----------------------------------------
      00015A                        558 _SaveNumber:
      00015A AF 82            [24]  559 	mov	r7, dpl
                                    560 ;	Computer.c:31: for (char i = 7; i > 0; i--)
      00015C 7E 07            [12]  561 	mov	r6,#0x07
      00015E                        562 00103$:
      00015E EE               [12]  563 	mov	a,r6
      00015F 60 12            [24]  564 	jz	00101$
                                    565 ;	Computer.c:33: buffer[i] = buffer[i - 1];
      000161 EE               [12]  566 	mov	a,r6
      000162 24 7B            [12]  567 	add	a, #_buffer
      000164 F9               [12]  568 	mov	r1,a
      000165 8E 05            [24]  569 	mov	ar5,r6
      000167 ED               [12]  570 	mov	a,r5
      000168 14               [12]  571 	dec	a
      000169 24 7B            [12]  572 	add	a, #_buffer
      00016B F8               [12]  573 	mov	r0,a
      00016C 86 05            [24]  574 	mov	ar5,@r0
      00016E A7 05            [24]  575 	mov	@r1,ar5
                                    576 ;	Computer.c:31: for (char i = 7; i > 0; i--)
      000170 1E               [12]  577 	dec	r6
      000171 80 EB            [24]  578 	sjmp	00103$
      000173                        579 00101$:
                                    580 ;	Computer.c:35: buffer[0] = n;
      000173 78 7B            [12]  581 	mov	r0,#_buffer
      000175 A6 07            [24]  582 	mov	@r0,ar7
                                    583 ;	Computer.c:36: }
      000177 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'SaveAns'
                                    587 ;------------------------------------------------------------
                                    588 ;b                         Allocated with name '_SaveAns_PARM_2'
                                    589 ;n                         Allocated to registers r7 
                                    590 ;i                         Allocated to registers r6 
                                    591 ;------------------------------------------------------------
                                    592 ;	Computer.c:39: void SaveAns(char n, char* b)
                                    593 ;	-----------------------------------------
                                    594 ;	 function SaveAns
                                    595 ;	-----------------------------------------
      000178                        596 _SaveAns:
      000178 AF 82            [24]  597 	mov	r7, dpl
                                    598 ;	Computer.c:41: for (char i = 49; i > 0; i--)
      00017A 7E 31            [12]  599 	mov	r6,#0x31
      00017C                        600 00103$:
      00017C EE               [12]  601 	mov	a,r6
      00017D 60 32            [24]  602 	jz	00101$
                                    603 ;	Computer.c:43: b[i] = b[i - 1];
      00017F EE               [12]  604 	mov	a,r6
      000180 25 69            [12]  605 	add	a, _SaveAns_PARM_2
      000182 FB               [12]  606 	mov	r3,a
      000183 E4               [12]  607 	clr	a
      000184 35 6A            [12]  608 	addc	a, (_SaveAns_PARM_2 + 1)
      000186 FC               [12]  609 	mov	r4,a
      000187 AD 6B            [24]  610 	mov	r5,(_SaveAns_PARM_2 + 2)
      000189 8E 01            [24]  611 	mov	ar1,r6
      00018B 7A 00            [12]  612 	mov	r2,#0x00
      00018D 19               [12]  613 	dec	r1
      00018E B9 FF 01         [24]  614 	cjne	r1,#0xff,00123$
      000191 1A               [12]  615 	dec	r2
      000192                        616 00123$:
      000192 E9               [12]  617 	mov	a,r1
      000193 25 69            [12]  618 	add	a, _SaveAns_PARM_2
      000195 F9               [12]  619 	mov	r1,a
      000196 EA               [12]  620 	mov	a,r2
      000197 35 6A            [12]  621 	addc	a, (_SaveAns_PARM_2 + 1)
      000199 F8               [12]  622 	mov	r0,a
      00019A AA 6B            [24]  623 	mov	r2,(_SaveAns_PARM_2 + 2)
      00019C 89 82            [24]  624 	mov	dpl,r1
      00019E 88 83            [24]  625 	mov	dph,r0
      0001A0 8A F0            [24]  626 	mov	b,r2
      0001A2 12 09 FC         [24]  627 	lcall	__gptrget
      0001A5 8B 82            [24]  628 	mov	dpl,r3
      0001A7 8C 83            [24]  629 	mov	dph,r4
      0001A9 8D F0            [24]  630 	mov	b,r5
      0001AB 12 08 B9         [24]  631 	lcall	__gptrput
                                    632 ;	Computer.c:41: for (char i = 49; i > 0; i--)
      0001AE 1E               [12]  633 	dec	r6
      0001AF 80 CB            [24]  634 	sjmp	00103$
      0001B1                        635 00101$:
                                    636 ;	Computer.c:45: b[0] = n;
      0001B1 AC 69            [24]  637 	mov	r4,_SaveAns_PARM_2
      0001B3 AD 6A            [24]  638 	mov	r5,(_SaveAns_PARM_2 + 1)
      0001B5 AE 6B            [24]  639 	mov	r6,(_SaveAns_PARM_2 + 2)
      0001B7 8C 82            [24]  640 	mov	dpl,r4
      0001B9 8D 83            [24]  641 	mov	dph,r5
      0001BB 8E F0            [24]  642 	mov	b,r6
      0001BD EF               [12]  643 	mov	a,r7
                                    644 ;	Computer.c:46: }
      0001BE 02 08 B9         [24]  645 	ljmp	__gptrput
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'Update_Expression'
                                    648 ;------------------------------------------------------------
                                    649 ;num_2                     Allocated with name '_Update_Expression_PARM_2'
                                    650 ;op                        Allocated with name '_Update_Expression_PARM_3'
                                    651 ;negative_num1             Allocated with name '_Update_Expression_PARM_4'
                                    652 ;negative_num2             Allocated with name '_Update_Expression_PARM_5'
                                    653 ;num_1                     Allocated with name '_Update_Expression_num_1_10000_17'
                                    654 ;sloc0                     Allocated with name '_Update_Expression_sloc0_1_0'
                                    655 ;------------------------------------------------------------
                                    656 ;	Computer.c:50: void Update_Expression(int *num_1, int *num_2, char *op, int *negative_num1, int *negative_num2)
                                    657 ;	-----------------------------------------
                                    658 ;	 function Update_Expression
                                    659 ;	-----------------------------------------
      0001C1                        660 _Update_Expression:
      0001C1 85 82 1F         [24]  661 	mov	_Update_Expression_num_1_10000_17,dpl
      0001C4 85 83 20         [24]  662 	mov	(_Update_Expression_num_1_10000_17 + 1),dph
      0001C7 85 F0 21         [24]  663 	mov	(_Update_Expression_num_1_10000_17 + 2),b
                                    664 ;	Computer.c:53: if (buffer[0] >= 0 && buffer[0] <= 9)
      0001CA 78 7B            [12]  665 	mov	r0,#_buffer
      0001CC E6               [12]  666 	mov	a,@r0
      0001CD FC               [12]  667 	mov	r4,a
      0001CE 24 F6            [12]  668 	add	a,#0xff - 0x09
      0001D0 50 03            [24]  669 	jnc	00199$
      0001D2 02 02 8B         [24]  670 	ljmp	00122$
      0001D5                        671 00199$:
                                    672 ;	Computer.c:55: if (*op == '$')
      0001D5 85 16 22         [24]  673 	mov	_Update_Expression_sloc0_1_0,_Update_Expression_PARM_3
      0001D8 85 17 23         [24]  674 	mov	(_Update_Expression_sloc0_1_0 + 1),(_Update_Expression_PARM_3 + 1)
      0001DB 85 18 24         [24]  675 	mov	(_Update_Expression_sloc0_1_0 + 2),(_Update_Expression_PARM_3 + 2)
      0001DE 85 22 82         [24]  676 	mov	dpl,_Update_Expression_sloc0_1_0
      0001E1 85 23 83         [24]  677 	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
      0001E4 85 24 F0         [24]  678 	mov	b,(_Update_Expression_sloc0_1_0 + 2)
      0001E7 12 09 FC         [24]  679 	lcall	__gptrget
      0001EA FB               [12]  680 	mov	r3,a
      0001EB BB 24 40         [24]  681 	cjne	r3,#0x24,00102$
                                    682 ;	Computer.c:57: *num_1 = *num_1 * 10 + (int)buffer[0];
      0001EE 85 1F 82         [24]  683 	mov	dpl,_Update_Expression_num_1_10000_17
      0001F1 85 20 83         [24]  684 	mov	dph,(_Update_Expression_num_1_10000_17 + 1)
      0001F4 85 21 F0         [24]  685 	mov	b,(_Update_Expression_num_1_10000_17 + 2)
      0001F7 12 09 FC         [24]  686 	lcall	__gptrget
      0001FA F5 69            [12]  687 	mov	__mulint_PARM_2,a
      0001FC A3               [24]  688 	inc	dptr
      0001FD 12 09 FC         [24]  689 	lcall	__gptrget
      000200 F5 6A            [12]  690 	mov	(__mulint_PARM_2 + 1),a
      000202 90 00 0A         [24]  691 	mov	dptr,#0x000a
      000205 C0 04            [24]  692 	push	ar4
      000207 12 08 D4         [24]  693 	lcall	__mulint
      00020A AA 82            [24]  694 	mov	r2, dpl
      00020C AB 83            [24]  695 	mov	r3, dph
      00020E D0 04            [24]  696 	pop	ar4
      000210 8C 06            [24]  697 	mov	ar6,r4
      000212 7F 00            [12]  698 	mov	r7,#0x00
      000214 EE               [12]  699 	mov	a,r6
      000215 2A               [12]  700 	add	a, r2
      000216 FA               [12]  701 	mov	r2,a
      000217 EF               [12]  702 	mov	a,r7
      000218 3B               [12]  703 	addc	a, r3
      000219 FB               [12]  704 	mov	r3,a
      00021A 85 1F 82         [24]  705 	mov	dpl,_Update_Expression_num_1_10000_17
      00021D 85 20 83         [24]  706 	mov	dph,(_Update_Expression_num_1_10000_17 + 1)
      000220 85 21 F0         [24]  707 	mov	b,(_Update_Expression_num_1_10000_17 + 2)
      000223 EA               [12]  708 	mov	a,r2
      000224 12 08 B9         [24]  709 	lcall	__gptrput
      000227 A3               [24]  710 	inc	dptr
      000228 EB               [12]  711 	mov	a,r3
      000229 12 08 B9         [24]  712 	lcall	__gptrput
                                    713 ;	Computer.c:58: num1_counter++;
      00022C 05 12            [12]  714 	inc	_num1_counter
      00022E                        715 00102$:
                                    716 ;	Computer.c:60: if (*op != '$')
      00022E 85 22 82         [24]  717 	mov	dpl,_Update_Expression_sloc0_1_0
      000231 85 23 83         [24]  718 	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
      000234 85 24 F0         [24]  719 	mov	b,(_Update_Expression_sloc0_1_0 + 2)
      000237 12 09 FC         [24]  720 	lcall	__gptrget
      00023A FF               [12]  721 	mov	r7,a
      00023B BF 24 01         [24]  722 	cjne	r7,#0x24,00202$
      00023E 22               [24]  723 	ret
      00023F                        724 00202$:
                                    725 ;	Computer.c:62: *num_2 = *num_2 * 10 + (int)buffer[0];
      00023F AD 13            [24]  726 	mov	r5,_Update_Expression_PARM_2
      000241 AE 14            [24]  727 	mov	r6,(_Update_Expression_PARM_2 + 1)
      000243 AF 15            [24]  728 	mov	r7,(_Update_Expression_PARM_2 + 2)
      000245 8D 82            [24]  729 	mov	dpl,r5
      000247 8E 83            [24]  730 	mov	dph,r6
      000249 8F F0            [24]  731 	mov	b,r7
      00024B 12 09 FC         [24]  732 	lcall	__gptrget
      00024E F5 69            [12]  733 	mov	__mulint_PARM_2,a
      000250 A3               [24]  734 	inc	dptr
      000251 12 09 FC         [24]  735 	lcall	__gptrget
      000254 F5 6A            [12]  736 	mov	(__mulint_PARM_2 + 1),a
      000256 90 00 0A         [24]  737 	mov	dptr,#0x000a
      000259 C0 07            [24]  738 	push	ar7
      00025B C0 06            [24]  739 	push	ar6
      00025D C0 05            [24]  740 	push	ar5
      00025F 12 08 D4         [24]  741 	lcall	__mulint
      000262 85 82 22         [24]  742 	mov	_Update_Expression_sloc0_1_0,dpl
      000265 85 83 23         [24]  743 	mov	(_Update_Expression_sloc0_1_0 + 1),dph
      000268 D0 05            [24]  744 	pop	ar5
      00026A D0 06            [24]  745 	pop	ar6
      00026C D0 07            [24]  746 	pop	ar7
      00026E 78 7B            [12]  747 	mov	r0,#_buffer
      000270 86 03            [24]  748 	mov	ar3,@r0
      000272 7A 00            [12]  749 	mov	r2,#0x00
      000274 EB               [12]  750 	mov	a,r3
      000275 25 22            [12]  751 	add	a, _Update_Expression_sloc0_1_0
      000277 FB               [12]  752 	mov	r3,a
      000278 EA               [12]  753 	mov	a,r2
      000279 35 23            [12]  754 	addc	a, (_Update_Expression_sloc0_1_0 + 1)
      00027B FA               [12]  755 	mov	r2,a
      00027C 8D 82            [24]  756 	mov	dpl,r5
      00027E 8E 83            [24]  757 	mov	dph,r6
      000280 8F F0            [24]  758 	mov	b,r7
      000282 EB               [12]  759 	mov	a,r3
      000283 12 08 B9         [24]  760 	lcall	__gptrput
      000286 A3               [24]  761 	inc	dptr
      000287 EA               [12]  762 	mov	a,r2
      000288 02 08 B9         [24]  763 	ljmp	__gptrput
      00028B                        764 00122$:
                                    765 ;	Computer.c:65: else if (buffer[0] == 13 && num1_counter == 0)
      00028B E4               [12]  766 	clr	a
      00028C BC 0D 01         [24]  767 	cjne	r4,#0x0d,00203$
      00028F 04               [12]  768 	inc	a
      000290                        769 00203$:
      000290 FF               [12]  770 	mov	r7,a
      000291 60 1A            [24]  771 	jz	00118$
      000293 E5 12            [12]  772 	mov	a,_num1_counter
      000295 70 16            [24]  773 	jnz	00118$
                                    774 ;	Computer.c:67: *negative_num1 = 1;
      000297 AB 19            [24]  775 	mov	r3,_Update_Expression_PARM_4
      000299 AD 1A            [24]  776 	mov	r5,(_Update_Expression_PARM_4 + 1)
      00029B AE 1B            [24]  777 	mov	r6,(_Update_Expression_PARM_4 + 2)
      00029D 8B 82            [24]  778 	mov	dpl,r3
      00029F 8D 83            [24]  779 	mov	dph,r5
      0002A1 8E F0            [24]  780 	mov	b,r6
      0002A3 74 01            [12]  781 	mov	a,#0x01
      0002A5 12 08 B9         [24]  782 	lcall	__gptrput
      0002A8 A3               [24]  783 	inc	dptr
      0002A9 E4               [12]  784 	clr	a
      0002AA 02 08 B9         [24]  785 	ljmp	__gptrput
      0002AD                        786 00118$:
                                    787 ;	Computer.c:69: else if (buffer[0] >= 12 && buffer[0] <= 15 && num1_counter != 0 && *op == '$')
      0002AD BC 0C 00         [24]  788 	cjne	r4,#0x0c,00207$
      0002B0                        789 00207$:
      0002B0 40 26            [24]  790 	jc	00112$
      0002B2 EC               [12]  791 	mov	a,r4
      0002B3 24 F0            [12]  792 	add	a,#0xff - 0x0f
      0002B5 40 21            [24]  793 	jc	00112$
      0002B7 E5 12            [12]  794 	mov	a,_num1_counter
      0002B9 60 1D            [24]  795 	jz	00112$
      0002BB AB 16            [24]  796 	mov	r3,_Update_Expression_PARM_3
      0002BD AD 17            [24]  797 	mov	r5,(_Update_Expression_PARM_3 + 1)
      0002BF AE 18            [24]  798 	mov	r6,(_Update_Expression_PARM_3 + 2)
      0002C1 8B 82            [24]  799 	mov	dpl,r3
      0002C3 8D 83            [24]  800 	mov	dph,r5
      0002C5 8E F0            [24]  801 	mov	b,r6
      0002C7 12 09 FC         [24]  802 	lcall	__gptrget
      0002CA FA               [12]  803 	mov	r2,a
      0002CB BA 24 0A         [24]  804 	cjne	r2,#0x24,00112$
                                    805 ;	Computer.c:71: *op = buffer[0];
      0002CE 8B 82            [24]  806 	mov	dpl,r3
      0002D0 8D 83            [24]  807 	mov	dph,r5
      0002D2 8E F0            [24]  808 	mov	b,r6
      0002D4 EC               [12]  809 	mov	a,r4
      0002D5 02 08 B9         [24]  810 	ljmp	__gptrput
      0002D8                        811 00112$:
                                    812 ;	Computer.c:73: else if (buffer[0] == 13 && *op != '$')
      0002D8 EF               [12]  813 	mov	a,r7
      0002D9 60 2B            [24]  814 	jz	00108$
      0002DB AD 16            [24]  815 	mov	r5,_Update_Expression_PARM_3
      0002DD AE 17            [24]  816 	mov	r6,(_Update_Expression_PARM_3 + 1)
      0002DF AF 18            [24]  817 	mov	r7,(_Update_Expression_PARM_3 + 2)
      0002E1 8D 82            [24]  818 	mov	dpl,r5
      0002E3 8E 83            [24]  819 	mov	dph,r6
      0002E5 8F F0            [24]  820 	mov	b,r7
      0002E7 12 09 FC         [24]  821 	lcall	__gptrget
      0002EA FD               [12]  822 	mov	r5,a
      0002EB BD 24 02         [24]  823 	cjne	r5,#0x24,00214$
      0002EE 80 16            [24]  824 	sjmp	00108$
      0002F0                        825 00214$:
                                    826 ;	Computer.c:75: *negative_num2 = 1;
      0002F0 AD 1C            [24]  827 	mov	r5,_Update_Expression_PARM_5
      0002F2 AE 1D            [24]  828 	mov	r6,(_Update_Expression_PARM_5 + 1)
      0002F4 AF 1E            [24]  829 	mov	r7,(_Update_Expression_PARM_5 + 2)
      0002F6 8D 82            [24]  830 	mov	dpl,r5
      0002F8 8E 83            [24]  831 	mov	dph,r6
      0002FA 8F F0            [24]  832 	mov	b,r7
      0002FC 74 01            [12]  833 	mov	a,#0x01
      0002FE 12 08 B9         [24]  834 	lcall	__gptrput
      000301 A3               [24]  835 	inc	dptr
      000302 E4               [12]  836 	clr	a
      000303 02 08 B9         [24]  837 	ljmp	__gptrput
      000306                        838 00108$:
                                    839 ;	Computer.c:77: else if (buffer[0] == 11)
      000306 BC 0B 02         [24]  840 	cjne	r4,#0x0b,00125$
                                    841 ;	Computer.c:79: cal_flag = 1;
                                    842 ;	assignBit
      000309 D2 00            [12]  843 	setb	_cal_flag
      00030B                        844 00125$:
                                    845 ;	Computer.c:81: }
      00030B 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'Calculate'
                                    849 ;------------------------------------------------------------
                                    850 ;num2                      Allocated with name '_Calculate_PARM_2'
                                    851 ;op                        Allocated with name '_Calculate_PARM_3'
                                    852 ;negative_num1             Allocated with name '_Calculate_PARM_4'
                                    853 ;negative_num2             Allocated with name '_Calculate_PARM_5'
                                    854 ;ans                       Allocated with name '_Calculate_PARM_6'
                                    855 ;num1                      Allocated to registers r6 r7 
                                    856 ;sloc0                     Allocated with name '_Calculate_sloc0_1_0'
                                    857 ;------------------------------------------------------------
                                    858 ;	Computer.c:84: void Calculate(int num1, int num2, char op, int negative_num1, int negative_num2, int *ans)
                                    859 ;	-----------------------------------------
                                    860 ;	 function Calculate
                                    861 ;	-----------------------------------------
      00030C                        862 _Calculate:
      00030C AE 82            [24]  863 	mov	r6, dpl
      00030E AF 83            [24]  864 	mov	r7, dph
                                    865 ;	Computer.c:86: switch (op)
      000310 74 0C            [12]  866 	mov	a,#0x0c
      000312 B5 27 02         [24]  867 	cjne	a,_Calculate_PARM_3,00132$
      000315 80 18            [24]  868 	sjmp	00101$
      000317                        869 00132$:
      000317 74 0D            [12]  870 	mov	a,#0x0d
      000319 B5 27 02         [24]  871 	cjne	a,_Calculate_PARM_3,00133$
      00031C 80 6A            [24]  872 	sjmp	00102$
      00031E                        873 00133$:
      00031E 74 0E            [12]  874 	mov	a,#0x0e
      000320 B5 27 03         [24]  875 	cjne	a,_Calculate_PARM_3,00134$
      000323 02 03 E2         [24]  876 	ljmp	00103$
      000326                        877 00134$:
      000326 74 0F            [12]  878 	mov	a,#0x0f
      000328 B5 27 03         [24]  879 	cjne	a,_Calculate_PARM_3,00135$
      00032B 02 04 46         [24]  880 	ljmp	00104$
      00032E                        881 00135$:
      00032E 22               [24]  882 	ret
                                    883 ;	Computer.c:88: case 12:
      00032F                        884 00101$:
                                    885 ;	Computer.c:89: *ans = (((-1) * negative_num1) * num1) + (((-1) * negative_num2) * num2);
      00032F AB 2C            [24]  886 	mov	r3,_Calculate_PARM_6
      000331 AC 2D            [24]  887 	mov	r4,(_Calculate_PARM_6 + 1)
      000333 AD 2E            [24]  888 	mov	r5,(_Calculate_PARM_6 + 2)
      000335 C3               [12]  889 	clr	c
      000336 E4               [12]  890 	clr	a
      000337 95 28            [12]  891 	subb	a,_Calculate_PARM_4
      000339 F5 82            [12]  892 	mov	dpl,a
      00033B E4               [12]  893 	clr	a
      00033C 95 29            [12]  894 	subb	a,(_Calculate_PARM_4 + 1)
      00033E F5 83            [12]  895 	mov	dph,a
      000340 8E 69            [24]  896 	mov	__mulint_PARM_2,r6
      000342 8F 6A            [24]  897 	mov	(__mulint_PARM_2 + 1),r7
      000344 C0 05            [24]  898 	push	ar5
      000346 C0 04            [24]  899 	push	ar4
      000348 C0 03            [24]  900 	push	ar3
      00034A 12 08 D4         [24]  901 	lcall	__mulint
      00034D 85 82 2F         [24]  902 	mov	_Calculate_sloc0_1_0,dpl
      000350 85 83 30         [24]  903 	mov	(_Calculate_sloc0_1_0 + 1),dph
      000353 C3               [12]  904 	clr	c
      000354 E4               [12]  905 	clr	a
      000355 95 2A            [12]  906 	subb	a,_Calculate_PARM_5
      000357 F5 82            [12]  907 	mov	dpl,a
      000359 E4               [12]  908 	clr	a
      00035A 95 2B            [12]  909 	subb	a,(_Calculate_PARM_5 + 1)
      00035C F5 83            [12]  910 	mov	dph,a
      00035E 85 25 69         [24]  911 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000361 85 26 6A         [24]  912 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      000364 12 08 D4         [24]  913 	lcall	__mulint
      000367 A8 82            [24]  914 	mov	r0, dpl
      000369 AA 83            [24]  915 	mov	r2, dph
      00036B D0 03            [24]  916 	pop	ar3
      00036D D0 04            [24]  917 	pop	ar4
      00036F D0 05            [24]  918 	pop	ar5
      000371 E8               [12]  919 	mov	a,r0
      000372 25 2F            [12]  920 	add	a, _Calculate_sloc0_1_0
      000374 F8               [12]  921 	mov	r0,a
      000375 EA               [12]  922 	mov	a,r2
      000376 35 30            [12]  923 	addc	a, (_Calculate_sloc0_1_0 + 1)
      000378 FA               [12]  924 	mov	r2,a
      000379 8B 82            [24]  925 	mov	dpl,r3
      00037B 8C 83            [24]  926 	mov	dph,r4
      00037D 8D F0            [24]  927 	mov	b,r5
      00037F E8               [12]  928 	mov	a,r0
      000380 12 08 B9         [24]  929 	lcall	__gptrput
      000383 A3               [24]  930 	inc	dptr
      000384 EA               [12]  931 	mov	a,r2
                                    932 ;	Computer.c:90: break;
      000385 02 08 B9         [24]  933 	ljmp	__gptrput
                                    934 ;	Computer.c:91: case 13:
      000388                        935 00102$:
                                    936 ;	Computer.c:92: *ans = (((-1) * negative_num1) * num1) - (((-1) * negative_num2) * num2);
      000388 AB 2C            [24]  937 	mov	r3,_Calculate_PARM_6
      00038A AC 2D            [24]  938 	mov	r4,(_Calculate_PARM_6 + 1)
      00038C AD 2E            [24]  939 	mov	r5,(_Calculate_PARM_6 + 2)
      00038E C3               [12]  940 	clr	c
      00038F E4               [12]  941 	clr	a
      000390 95 28            [12]  942 	subb	a,_Calculate_PARM_4
      000392 F5 82            [12]  943 	mov	dpl,a
      000394 E4               [12]  944 	clr	a
      000395 95 29            [12]  945 	subb	a,(_Calculate_PARM_4 + 1)
      000397 F5 83            [12]  946 	mov	dph,a
      000399 8E 69            [24]  947 	mov	__mulint_PARM_2,r6
      00039B 8F 6A            [24]  948 	mov	(__mulint_PARM_2 + 1),r7
      00039D C0 05            [24]  949 	push	ar5
      00039F C0 04            [24]  950 	push	ar4
      0003A1 C0 03            [24]  951 	push	ar3
      0003A3 12 08 D4         [24]  952 	lcall	__mulint
      0003A6 85 82 2F         [24]  953 	mov	_Calculate_sloc0_1_0,dpl
      0003A9 85 83 30         [24]  954 	mov	(_Calculate_sloc0_1_0 + 1),dph
      0003AC C3               [12]  955 	clr	c
      0003AD E4               [12]  956 	clr	a
      0003AE 95 2A            [12]  957 	subb	a,_Calculate_PARM_5
      0003B0 F5 82            [12]  958 	mov	dpl,a
      0003B2 E4               [12]  959 	clr	a
      0003B3 95 2B            [12]  960 	subb	a,(_Calculate_PARM_5 + 1)
      0003B5 F5 83            [12]  961 	mov	dph,a
      0003B7 85 25 69         [24]  962 	mov	__mulint_PARM_2,_Calculate_PARM_2
      0003BA 85 26 6A         [24]  963 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      0003BD 12 08 D4         [24]  964 	lcall	__mulint
      0003C0 A8 82            [24]  965 	mov	r0, dpl
      0003C2 AA 83            [24]  966 	mov	r2, dph
      0003C4 D0 03            [24]  967 	pop	ar3
      0003C6 D0 04            [24]  968 	pop	ar4
      0003C8 D0 05            [24]  969 	pop	ar5
      0003CA E5 2F            [12]  970 	mov	a,_Calculate_sloc0_1_0
      0003CC C3               [12]  971 	clr	c
      0003CD 98               [12]  972 	subb	a,r0
      0003CE F8               [12]  973 	mov	r0,a
      0003CF E5 30            [12]  974 	mov	a,(_Calculate_sloc0_1_0 + 1)
      0003D1 9A               [12]  975 	subb	a,r2
      0003D2 FA               [12]  976 	mov	r2,a
      0003D3 8B 82            [24]  977 	mov	dpl,r3
      0003D5 8C 83            [24]  978 	mov	dph,r4
      0003D7 8D F0            [24]  979 	mov	b,r5
      0003D9 E8               [12]  980 	mov	a,r0
      0003DA 12 08 B9         [24]  981 	lcall	__gptrput
      0003DD A3               [24]  982 	inc	dptr
      0003DE EA               [12]  983 	mov	a,r2
                                    984 ;	Computer.c:93: break;
      0003DF 02 08 B9         [24]  985 	ljmp	__gptrput
                                    986 ;	Computer.c:94: case 14:
      0003E2                        987 00103$:
                                    988 ;	Computer.c:95: *ans = (((-1) * negative_num1) * num1) * (((-1) * negative_num2) * num2);
      0003E2 AB 2C            [24]  989 	mov	r3,_Calculate_PARM_6
      0003E4 AC 2D            [24]  990 	mov	r4,(_Calculate_PARM_6 + 1)
      0003E6 AD 2E            [24]  991 	mov	r5,(_Calculate_PARM_6 + 2)
      0003E8 C3               [12]  992 	clr	c
      0003E9 E4               [12]  993 	clr	a
      0003EA 95 28            [12]  994 	subb	a,_Calculate_PARM_4
      0003EC F5 82            [12]  995 	mov	dpl,a
      0003EE E4               [12]  996 	clr	a
      0003EF 95 29            [12]  997 	subb	a,(_Calculate_PARM_4 + 1)
      0003F1 F5 83            [12]  998 	mov	dph,a
      0003F3 8E 69            [24]  999 	mov	__mulint_PARM_2,r6
      0003F5 8F 6A            [24] 1000 	mov	(__mulint_PARM_2 + 1),r7
      0003F7 C0 05            [24] 1001 	push	ar5
      0003F9 C0 04            [24] 1002 	push	ar4
      0003FB C0 03            [24] 1003 	push	ar3
      0003FD 12 08 D4         [24] 1004 	lcall	__mulint
      000400 A9 82            [24] 1005 	mov	r1, dpl
      000402 AA 83            [24] 1006 	mov	r2, dph
      000404 C3               [12] 1007 	clr	c
      000405 E4               [12] 1008 	clr	a
      000406 95 2A            [12] 1009 	subb	a,_Calculate_PARM_5
      000408 F5 82            [12] 1010 	mov	dpl,a
      00040A E4               [12] 1011 	clr	a
      00040B 95 2B            [12] 1012 	subb	a,(_Calculate_PARM_5 + 1)
      00040D F5 83            [12] 1013 	mov	dph,a
      00040F 85 25 69         [24] 1014 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000412 85 26 6A         [24] 1015 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      000415 C0 02            [24] 1016 	push	ar2
      000417 C0 01            [24] 1017 	push	ar1
      000419 12 08 D4         [24] 1018 	lcall	__mulint
      00041C 85 82 69         [24] 1019 	mov	__mulint_PARM_2,dpl
      00041F 85 83 6A         [24] 1020 	mov	(__mulint_PARM_2 + 1),dph
      000422 D0 01            [24] 1021 	pop	ar1
      000424 D0 02            [24] 1022 	pop	ar2
      000426 89 82            [24] 1023 	mov	dpl, r1
      000428 8A 83            [24] 1024 	mov	dph, r2
      00042A 12 08 D4         [24] 1025 	lcall	__mulint
      00042D A9 82            [24] 1026 	mov	r1, dpl
      00042F AA 83            [24] 1027 	mov	r2, dph
      000431 D0 03            [24] 1028 	pop	ar3
      000433 D0 04            [24] 1029 	pop	ar4
      000435 D0 05            [24] 1030 	pop	ar5
      000437 8B 82            [24] 1031 	mov	dpl,r3
      000439 8C 83            [24] 1032 	mov	dph,r4
      00043B 8D F0            [24] 1033 	mov	b,r5
      00043D E9               [12] 1034 	mov	a,r1
      00043E 12 08 B9         [24] 1035 	lcall	__gptrput
      000441 A3               [24] 1036 	inc	dptr
      000442 EA               [12] 1037 	mov	a,r2
                                   1038 ;	Computer.c:96: break;
      000443 02 08 B9         [24] 1039 	ljmp	__gptrput
                                   1040 ;	Computer.c:97: case 15:
      000446                       1041 00104$:
                                   1042 ;	Computer.c:98: *ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
      000446 AB 2C            [24] 1043 	mov	r3,_Calculate_PARM_6
      000448 AC 2D            [24] 1044 	mov	r4,(_Calculate_PARM_6 + 1)
      00044A AD 2E            [24] 1045 	mov	r5,(_Calculate_PARM_6 + 2)
      00044C C3               [12] 1046 	clr	c
      00044D E4               [12] 1047 	clr	a
      00044E 95 28            [12] 1048 	subb	a,_Calculate_PARM_4
      000450 F5 82            [12] 1049 	mov	dpl,a
      000452 E4               [12] 1050 	clr	a
      000453 95 29            [12] 1051 	subb	a,(_Calculate_PARM_4 + 1)
      000455 F5 83            [12] 1052 	mov	dph,a
      000457 8E 69            [24] 1053 	mov	__mulint_PARM_2,r6
      000459 8F 6A            [24] 1054 	mov	(__mulint_PARM_2 + 1),r7
      00045B C0 05            [24] 1055 	push	ar5
      00045D C0 04            [24] 1056 	push	ar4
      00045F C0 03            [24] 1057 	push	ar3
      000461 12 08 D4         [24] 1058 	lcall	__mulint
      000464 AE 82            [24] 1059 	mov	r6, dpl
      000466 AF 83            [24] 1060 	mov	r7, dph
      000468 D0 03            [24] 1061 	pop	ar3
      00046A D0 04            [24] 1062 	pop	ar4
      00046C D0 05            [24] 1063 	pop	ar5
      00046E C3               [12] 1064 	clr	c
      00046F E4               [12] 1065 	clr	a
      000470 95 2A            [12] 1066 	subb	a,_Calculate_PARM_5
      000472 F5 82            [12] 1067 	mov	dpl,a
      000474 E4               [12] 1068 	clr	a
      000475 95 2B            [12] 1069 	subb	a,(_Calculate_PARM_5 + 1)
      000477 F5 83            [12] 1070 	mov	dph,a
      000479 85 25 69         [24] 1071 	mov	__mulint_PARM_2,_Calculate_PARM_2
      00047C 85 26 6A         [24] 1072 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      00047F C0 07            [24] 1073 	push	ar7
      000481 C0 06            [24] 1074 	push	ar6
      000483 C0 05            [24] 1075 	push	ar5
      000485 C0 04            [24] 1076 	push	ar4
      000487 C0 03            [24] 1077 	push	ar3
      000489 12 08 D4         [24] 1078 	lcall	__mulint
      00048C 85 82 69         [24] 1079 	mov	__divsint_PARM_2,dpl
      00048F 85 83 6A         [24] 1080 	mov	(__divsint_PARM_2 + 1),dph
      000492 D0 03            [24] 1081 	pop	ar3
      000494 D0 04            [24] 1082 	pop	ar4
      000496 D0 05            [24] 1083 	pop	ar5
      000498 D0 06            [24] 1084 	pop	ar6
      00049A D0 07            [24] 1085 	pop	ar7
      00049C 8E 82            [24] 1086 	mov	dpl, r6
      00049E 8F 83            [24] 1087 	mov	dph, r7
      0004A0 C0 05            [24] 1088 	push	ar5
      0004A2 C0 04            [24] 1089 	push	ar4
      0004A4 C0 03            [24] 1090 	push	ar3
      0004A6 12 0A 4E         [24] 1091 	lcall	__divsint
      0004A9 AE 82            [24] 1092 	mov	r6, dpl
      0004AB AF 83            [24] 1093 	mov	r7, dph
      0004AD D0 03            [24] 1094 	pop	ar3
      0004AF D0 04            [24] 1095 	pop	ar4
      0004B1 D0 05            [24] 1096 	pop	ar5
      0004B3 8B 82            [24] 1097 	mov	dpl,r3
      0004B5 8C 83            [24] 1098 	mov	dph,r4
      0004B7 8D F0            [24] 1099 	mov	b,r5
      0004B9 EE               [12] 1100 	mov	a,r6
      0004BA 12 08 B9         [24] 1101 	lcall	__gptrput
      0004BD A3               [24] 1102 	inc	dptr
      0004BE EF               [12] 1103 	mov	a,r7
                                   1104 ;	Computer.c:100: }
                                   1105 ;	Computer.c:101: }
      0004BF 02 08 B9         [24] 1106 	ljmp	__gptrput
                                   1107 ;------------------------------------------------------------
                                   1108 ;Allocation info for local variables in function 'Keypad_Debounce_init'
                                   1109 ;------------------------------------------------------------
                                   1110 ;	Computer.c:104: void Keypad_Debounce_init(void)
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function Keypad_Debounce_init
                                   1113 ;	-----------------------------------------
      0004C2                       1114 _Keypad_Debounce_init:
                                   1115 ;	Computer.c:106: IE = 0x8a;
      0004C2 75 A8 8A         [24] 1116 	mov	_IE,#0x8a
                                   1117 ;	Computer.c:108: TMOD = 0x01;
      0004C5 75 89 01         [24] 1118 	mov	_TMOD,#0x01
                                   1119 ;	Computer.c:110: }
      0004C8 22               [24] 1120 	ret
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'Keypad_Debounce'
                                   1123 ;------------------------------------------------------------
                                   1124 ;	Computer.c:112: void Keypad_Debounce(void) __interrupt(1) __using(1)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function Keypad_Debounce
                                   1127 ;	-----------------------------------------
      0004C9                       1128 _Keypad_Debounce:
                           00000F  1129 	ar7 = 0x0f
                           00000E  1130 	ar6 = 0x0e
                           00000D  1131 	ar5 = 0x0d
                           00000C  1132 	ar4 = 0x0c
                           00000B  1133 	ar3 = 0x0b
                           00000A  1134 	ar2 = 0x0a
                           000009  1135 	ar1 = 0x09
                           000008  1136 	ar0 = 0x08
      0004C9 C0 E0            [24] 1137 	push	acc
      0004CB C0 D0            [24] 1138 	push	psw
                                   1139 ;	Computer.c:114: TH0 = (65536 - 50000) / 256;
      0004CD 75 8C 3C         [24] 1140 	mov	_TH0,#0x3c
                                   1141 ;	Computer.c:115: TL0 = (65536 - 50000) % 256;
      0004D0 75 8A B0         [24] 1142 	mov	_TL0,#0xb0
                                   1143 ;	Computer.c:116: timer_count++;
      0004D3 05 11            [12] 1144 	inc	_timer_count
                                   1145 ;	Computer.c:117: if (timer_count == 20)
      0004D5 74 14            [12] 1146 	mov	a,#0x14
      0004D7 B5 11 09         [24] 1147 	cjne	a,_timer_count,00103$
                                   1148 ;	Computer.c:119: Keypad_flag = 1;
                                   1149 ;	assignBit
      0004DA D2 01            [12] 1150 	setb	_Keypad_flag
                                   1151 ;	Computer.c:120: TF0 = 0;
                                   1152 ;	assignBit
      0004DC C2 8D            [12] 1153 	clr	_TF0
                                   1154 ;	Computer.c:122: TR0 = 0;
                                   1155 ;	assignBit
      0004DE C2 8C            [12] 1156 	clr	_TR0
                                   1157 ;	Computer.c:123: timer_count = 0;
      0004E0 75 11 00         [24] 1158 	mov	_timer_count,#0x00
      0004E3                       1159 00103$:
                                   1160 ;	Computer.c:125: }
      0004E3 D0 D0            [24] 1161 	pop	psw
      0004E5 D0 E0            [24] 1162 	pop	acc
      0004E7 32               [24] 1163 	reti
                                   1164 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1165 ;	eliminated unneeded push/pop dpl
                                   1166 ;	eliminated unneeded push/pop dph
                                   1167 ;	eliminated unneeded push/pop b
                                   1168 ;------------------------------------------------------------
                                   1169 ;Allocation info for local variables in function 'main'
                                   1170 ;------------------------------------------------------------
                                   1171 ;num_1                     Allocated with name '_main_num_1_10000_35'
                                   1172 ;num_2                     Allocated with name '_main_num_2_10000_35'
                                   1173 ;ans                       Allocated with name '_main_ans_10000_35'
                                   1174 ;op                        Allocated with name '_main_op_10000_35'
                                   1175 ;number                    Allocated to registers r7 
                                   1176 ;old_number                Allocated to registers 
                                   1177 ;negative_num1             Allocated with name '_main_negative_num1_10000_35'
                                   1178 ;negative_num2             Allocated with name '_main_negative_num2_10000_35'
                                   1179 ;negative_ans              Allocated with name '_main_negative_ans_10000_35'
                                   1180 ;count                     Allocated to registers r6 
                                   1181 ;m                         Allocated to registers r5 
                                   1182 ;f                         Allocated to registers r7 
                                   1183 ;m                         Allocated to registers r7 
                                   1184 ;f                         Allocated to registers r7 
                                   1185 ;------------------------------------------------------------
                                   1186 ;	Computer.c:127: void main(void)
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function main
                                   1189 ;	-----------------------------------------
      0004E8                       1190 _main:
                           000007  1191 	ar7 = 0x07
                           000006  1192 	ar6 = 0x06
                           000005  1193 	ar5 = 0x05
                           000004  1194 	ar4 = 0x04
                           000003  1195 	ar3 = 0x03
                           000002  1196 	ar2 = 0x02
                           000001  1197 	ar1 = 0x01
                           000000  1198 	ar0 = 0x00
                                   1199 ;	Computer.c:129: int num_1 = 0, num_2 = 0, ans = 0;
      0004E8 E4               [12] 1200 	clr	a
      0004E9 F5 31            [12] 1201 	mov	_main_num_1_10000_35,a
      0004EB F5 32            [12] 1202 	mov	(_main_num_1_10000_35 + 1),a
      0004ED F5 33            [12] 1203 	mov	_main_num_2_10000_35,a
      0004EF F5 34            [12] 1204 	mov	(_main_num_2_10000_35 + 1),a
      0004F1 F5 35            [12] 1205 	mov	_main_ans_10000_35,a
      0004F3 F5 36            [12] 1206 	mov	(_main_ans_10000_35 + 1),a
                                   1207 ;	Computer.c:130: char op = '$';
      0004F5 75 37 24         [24] 1208 	mov	_main_op_10000_35,#0x24
                                   1209 ;	Computer.c:132: int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
      0004F8 75 38 FF         [24] 1210 	mov	_main_negative_num1_10000_35,#0xff
      0004FB 75 39 FF         [24] 1211 	mov	(_main_negative_num1_10000_35 + 1),#0xff
      0004FE 75 3A FF         [24] 1212 	mov	_main_negative_num2_10000_35,#0xff
      000501 75 3B FF         [24] 1213 	mov	(_main_negative_num2_10000_35 + 1),#0xff
      000504 F5 3C            [12] 1214 	mov	_main_negative_ans_10000_35,a
      000506 F5 3D            [12] 1215 	mov	(_main_negative_ans_10000_35 + 1),a
                                   1216 ;	Computer.c:133: Keypad_Debounce_init();
      000508 12 04 C2         [24] 1217 	lcall	_Keypad_Debounce_init
                                   1218 ;	Computer.c:135: while (1)
      00050B                       1219 00123$:
                                   1220 ;	Computer.c:137: TR0 = 1;
                                   1221 ;	assignBit
      00050B D2 8C            [12] 1222 	setb	_TR0
                                   1223 ;	Computer.c:139: number = ReadKeypad();
      00050D 12 09 67         [24] 1224 	lcall	_ReadKeypad
                                   1225 ;	Computer.c:140: if (number >= 0 && number <= 15)
      000510 E5 82            [12] 1226 	mov	a,dpl
      000512 FF               [12] 1227 	mov	r7,a
      000513 24 F0            [12] 1228 	add	a,#0xff - 0x0f
      000515 50 03            [24] 1229 	jnc	00245$
      000517 02 06 E9         [24] 1230 	ljmp	00120$
      00051A                       1231 00245$:
                                   1232 ;	Computer.c:144: if (Keypad_flag == 1)
      00051A 20 01 03         [24] 1233 	jb	_Keypad_flag,00246$
      00051D 02 06 E9         [24] 1234 	ljmp	00120$
      000520                       1235 00246$:
                                   1236 ;	Computer.c:146: if (old_number == 10)
      000520 BF 0A 3C         [24] 1237 	cjne	r7,#0x0a,00115$
                                   1238 ;	Computer.c:148: char count = Counter(start_count[history_count]);
      000523 78 E7            [12] 1239 	mov	r0,#_history_count
      000525 E6               [12] 1240 	mov	a,@r0
      000526 24 B5            [12] 1241 	add	a, #_start_count
      000528 F9               [12] 1242 	mov	r1,a
      000529 87 82            [24] 1243 	mov	dpl,@r1
      00052B 12 08 7C         [24] 1244 	lcall	_Counter
      00052E AE 82            [24] 1245 	mov	r6, dpl
                                   1246 ;	Computer.c:149: for (char m = 0; m < 100; m++)
      000530 7D 00            [12] 1247 	mov	r5,#0x00
      000532                       1248 00126$:
      000532 BD 64 00         [24] 1249 	cjne	r5,#0x64,00249$
      000535                       1250 00249$:
      000535 50 1E            [24] 1251 	jnc	00101$
                                   1252 ;	Computer.c:151: Show_Ans(history, start, start+count);
      000537 78 E8            [12] 1253 	mov	r0,#_start
      000539 EE               [12] 1254 	mov	a,r6
      00053A 26               [12] 1255 	add	a, @r0
      00053B F5 61            [12] 1256 	mov	_Show_Ans_PARM_3,a
      00053D 78 E8            [12] 1257 	mov	r0,#_start
      00053F 86 60            [24] 1258 	mov	_Show_Ans_PARM_2,@r0
      000541 90 00 83         [24] 1259 	mov	dptr,#_history
      000544 75 F0 40         [24] 1260 	mov	b, #0x40
      000547 C0 06            [24] 1261 	push	ar6
      000549 C0 05            [24] 1262 	push	ar5
      00054B 12 08 05         [24] 1263 	lcall	_Show_Ans
      00054E D0 05            [24] 1264 	pop	ar5
      000550 D0 06            [24] 1265 	pop	ar6
                                   1266 ;	Computer.c:149: for (char m = 0; m < 100; m++)
      000552 0D               [12] 1267 	inc	r5
      000553 80 DD            [24] 1268 	sjmp	00126$
      000555                       1269 00101$:
                                   1270 ;	Computer.c:153: start = count;
      000555 78 E8            [12] 1271 	mov	r0,#_start
      000557 A6 06            [24] 1272 	mov	@r0,ar6
                                   1273 ;	Computer.c:154: history_count++;
      000559 78 E7            [12] 1274 	mov	r0,#_history_count
      00055B 06               [12] 1275 	inc	@r0
      00055C 02 06 E9         [24] 1276 	ljmp	00120$
      00055F                       1277 00115$:
                                   1278 ;	Computer.c:159: flag <<= 1;
      00055F E5 10            [12] 1279 	mov	a,_flag
      000561 25 10            [12] 1280 	add	a,_flag
      000563 F5 10            [12] 1281 	mov	_flag,a
                                   1282 ;	Computer.c:160: flag |= 0x01;
      000565 43 10 01         [24] 1283 	orl	_flag,#0x01
                                   1284 ;	Computer.c:162: SaveNumber(old_number);
      000568 8F 82            [24] 1285 	mov	dpl, r7
      00056A 12 01 5A         [24] 1286 	lcall	_SaveNumber
                                   1287 ;	Computer.c:164: Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
      00056D 75 13 33         [24] 1288 	mov	_Update_Expression_PARM_2,#_main_num_2_10000_35
      000570 75 14 00         [24] 1289 	mov	(_Update_Expression_PARM_2 + 1),#0x00
      000573 75 15 40         [24] 1290 	mov	(_Update_Expression_PARM_2 + 2),#0x40
      000576 75 16 37         [24] 1291 	mov	_Update_Expression_PARM_3,#_main_op_10000_35
      000579 75 17 00         [24] 1292 	mov	(_Update_Expression_PARM_3 + 1),#0x00
      00057C 75 18 40         [24] 1293 	mov	(_Update_Expression_PARM_3 + 2),#0x40
      00057F 75 19 38         [24] 1294 	mov	_Update_Expression_PARM_4,#_main_negative_num1_10000_35
      000582 75 1A 00         [24] 1295 	mov	(_Update_Expression_PARM_4 + 1),#0x00
      000585 75 1B 40         [24] 1296 	mov	(_Update_Expression_PARM_4 + 2),#0x40
      000588 75 1C 3A         [24] 1297 	mov	_Update_Expression_PARM_5,#_main_negative_num2_10000_35
      00058B 75 1D 00         [24] 1298 	mov	(_Update_Expression_PARM_5 + 1),#0x00
      00058E 75 1E 40         [24] 1299 	mov	(_Update_Expression_PARM_5 + 2),#0x40
      000591 90 00 31         [24] 1300 	mov	dptr,#_main_num_1_10000_35
      000594 75 F0 40         [24] 1301 	mov	b, #0x40
      000597 12 01 C1         [24] 1302 	lcall	_Update_Expression
                                   1303 ;	Computer.c:166: if (cal_flag == 1)
      00059A 20 00 03         [24] 1304 	jb	_cal_flag,00251$
      00059D 02 06 E7         [24] 1305 	ljmp	00113$
      0005A0                       1306 00251$:
                                   1307 ;	Computer.c:169: Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
      0005A0 75 2C 35         [24] 1308 	mov	_Calculate_PARM_6,#_main_ans_10000_35
      0005A3 75 2D 00         [24] 1309 	mov	(_Calculate_PARM_6 + 1),#0x00
      0005A6 75 2E 40         [24] 1310 	mov	(_Calculate_PARM_6 + 2),#0x40
      0005A9 85 33 25         [24] 1311 	mov	_Calculate_PARM_2,_main_num_2_10000_35
      0005AC 85 34 26         [24] 1312 	mov	(_Calculate_PARM_2 + 1),(_main_num_2_10000_35 + 1)
      0005AF 85 37 27         [24] 1313 	mov	_Calculate_PARM_3,_main_op_10000_35
      0005B2 85 38 28         [24] 1314 	mov	_Calculate_PARM_4,_main_negative_num1_10000_35
      0005B5 85 39 29         [24] 1315 	mov	(_Calculate_PARM_4 + 1),(_main_negative_num1_10000_35 + 1)
      0005B8 85 3A 2A         [24] 1316 	mov	_Calculate_PARM_5,_main_negative_num2_10000_35
      0005BB 85 3B 2B         [24] 1317 	mov	(_Calculate_PARM_5 + 1),(_main_negative_num2_10000_35 + 1)
      0005BE 85 31 82         [24] 1318 	mov	dpl, _main_num_1_10000_35
      0005C1 85 32 83         [24] 1319 	mov	dph, (_main_num_1_10000_35 + 1)
      0005C4 12 03 0C         [24] 1320 	lcall	_Calculate
                                   1321 ;	Computer.c:171: if (ans < 0)
      0005C7 E5 36            [12] 1322 	mov	a,(_main_ans_10000_35 + 1)
      0005C9 30 E7 11         [24] 1323 	jnb	acc.7,00103$
                                   1324 ;	Computer.c:173: ans = -ans;
      0005CC C3               [12] 1325 	clr	c
      0005CD E4               [12] 1326 	clr	a
      0005CE 95 35            [12] 1327 	subb	a,_main_ans_10000_35
      0005D0 F5 35            [12] 1328 	mov	_main_ans_10000_35,a
      0005D2 E4               [12] 1329 	clr	a
      0005D3 95 36            [12] 1330 	subb	a,(_main_ans_10000_35 + 1)
      0005D5 F5 36            [12] 1331 	mov	(_main_ans_10000_35 + 1),a
                                   1332 ;	Computer.c:174: negative_ans = 1;
      0005D7 75 3C 01         [24] 1333 	mov	_main_negative_ans_10000_35,#0x01
      0005DA 75 3D 00         [24] 1334 	mov	(_main_negative_ans_10000_35 + 1),#0x00
      0005DD                       1335 00103$:
                                   1336 ;	Computer.c:177: flag = 0;
      0005DD 75 10 00         [24] 1337 	mov	_flag,#0x00
                                   1338 ;	Computer.c:178: for (char f = 0; f < 8; f++)
      0005E0 7F 00            [12] 1339 	mov	r7,#0x00
      0005E2                       1340 00129$:
      0005E2 BF 08 00         [24] 1341 	cjne	r7,#0x08,00253$
      0005E5                       1342 00253$:
      0005E5 50 09            [24] 1343 	jnc	00148$
                                   1344 ;	Computer.c:180: buffer[f] = -1;
      0005E7 EF               [12] 1345 	mov	a,r7
      0005E8 24 7B            [12] 1346 	add	a, #_buffer
      0005EA F8               [12] 1347 	mov	r0,a
      0005EB 76 FF            [12] 1348 	mov	@r0,#0xff
                                   1349 ;	Computer.c:178: for (char f = 0; f < 8; f++)
      0005ED 0F               [12] 1350 	inc	r7
                                   1351 ;	Computer.c:183: do
      0005EE 80 F2            [24] 1352 	sjmp	00129$
      0005F0                       1353 00148$:
      0005F0                       1354 00105$:
                                   1355 ;	Computer.c:185: SaveAns(ans % 10, history);
      0005F0 75 69 0A         [24] 1356 	mov	__modsint_PARM_2,#0x0a
      0005F3 75 6A 00         [24] 1357 	mov	(__modsint_PARM_2 + 1),#0x00
      0005F6 85 35 82         [24] 1358 	mov	dpl, _main_ans_10000_35
      0005F9 85 36 83         [24] 1359 	mov	dph, (_main_ans_10000_35 + 1)
      0005FC 12 0A 18         [24] 1360 	lcall	__modsint
      0005FF 75 69 83         [24] 1361 	mov	_SaveAns_PARM_2,#_history
      000602 75 6A 00         [24] 1362 	mov	(_SaveAns_PARM_2 + 1),#0x00
      000605 75 6B 40         [24] 1363 	mov	(_SaveAns_PARM_2 + 2),#0x40
      000608 12 01 78         [24] 1364 	lcall	_SaveAns
                                   1365 ;	Computer.c:186: SaveNumber(ans % 10);
      00060B 75 69 0A         [24] 1366 	mov	__modsint_PARM_2,#0x0a
      00060E 75 6A 00         [24] 1367 	mov	(__modsint_PARM_2 + 1),#0x00
      000611 85 35 82         [24] 1368 	mov	dpl, _main_ans_10000_35
      000614 85 36 83         [24] 1369 	mov	dph, (_main_ans_10000_35 + 1)
      000617 12 0A 18         [24] 1370 	lcall	__modsint
      00061A 12 01 5A         [24] 1371 	lcall	_SaveNumber
                                   1372 ;	Computer.c:187: ans /= 10;
      00061D 75 69 0A         [24] 1373 	mov	__divsint_PARM_2,#0x0a
      000620 75 6A 00         [24] 1374 	mov	(__divsint_PARM_2 + 1),#0x00
      000623 85 35 82         [24] 1375 	mov	dpl, _main_ans_10000_35
      000626 85 36 83         [24] 1376 	mov	dph, (_main_ans_10000_35 + 1)
      000629 12 0A 4E         [24] 1377 	lcall	__divsint
      00062C 85 82 35         [24] 1378 	mov	_main_ans_10000_35,dpl
      00062F 85 83 36         [24] 1379 	mov	(_main_ans_10000_35 + 1),dph
                                   1380 ;	Computer.c:188: flag <<= 1;
      000632 E5 10            [12] 1381 	mov	a,_flag
      000634 25 10            [12] 1382 	add	a,_flag
      000636 F5 10            [12] 1383 	mov	_flag,a
                                   1384 ;	Computer.c:189: flag |= 0x01;
      000638 43 10 01         [24] 1385 	orl	_flag,#0x01
                                   1386 ;	Computer.c:190: } while (ans);
      00063B E5 35            [12] 1387 	mov	a,_main_ans_10000_35
      00063D 45 36            [12] 1388 	orl	a,(_main_ans_10000_35 + 1)
      00063F 70 AF            [24] 1389 	jnz	00105$
                                   1390 ;	Computer.c:192: if (negative_ans == 1)
      000641 74 01            [12] 1391 	mov	a,#0x01
      000643 B5 3C 06         [24] 1392 	cjne	a,_main_negative_ans_10000_35,00256$
      000646 14               [12] 1393 	dec	a
      000647 B5 3D 02         [24] 1394 	cjne	a,(_main_negative_ans_10000_35 + 1),00256$
      00064A 80 02            [24] 1395 	sjmp	00257$
      00064C                       1396 00256$:
      00064C 80 1E            [24] 1397 	sjmp	00109$
      00064E                       1398 00257$:
                                   1399 ;	Computer.c:194: SaveAns(13, history);
      00064E 75 69 83         [24] 1400 	mov	_SaveAns_PARM_2,#_history
      000651 75 6A 00         [24] 1401 	mov	(_SaveAns_PARM_2 + 1),#0x00
      000654 75 6B 40         [24] 1402 	mov	(_SaveAns_PARM_2 + 2),#0x40
      000657 75 82 0D         [24] 1403 	mov	dpl, #0x0d
      00065A 12 01 78         [24] 1404 	lcall	_SaveAns
                                   1405 ;	Computer.c:195: SaveNumber(13);
      00065D 75 82 0D         [24] 1406 	mov	dpl, #0x0d
      000660 12 01 5A         [24] 1407 	lcall	_SaveNumber
                                   1408 ;	Computer.c:196: flag <<= 1;
      000663 E5 10            [12] 1409 	mov	a,_flag
      000665 25 10            [12] 1410 	add	a,_flag
      000667 F5 10            [12] 1411 	mov	_flag,a
                                   1412 ;	Computer.c:197: flag |= 0x01;
      000669 43 10 01         [24] 1413 	orl	_flag,#0x01
      00066C                       1414 00109$:
                                   1415 ;	Computer.c:199: SaveAns(flag, start_count);
      00066C 75 69 B5         [24] 1416 	mov	_SaveAns_PARM_2,#_start_count
      00066F 75 6A 00         [24] 1417 	mov	(_SaveAns_PARM_2 + 1),#0x00
      000672 75 6B 40         [24] 1418 	mov	(_SaveAns_PARM_2 + 2),#0x40
      000675 85 10 82         [24] 1419 	mov	dpl, _flag
      000678 12 01 78         [24] 1420 	lcall	_SaveAns
                                   1421 ;	Computer.c:201: for (char m = 0; m < 100; m++)
      00067B 7F 00            [12] 1422 	mov	r7,#0x00
      00067D                       1423 00132$:
      00067D BF 64 00         [24] 1424 	cjne	r7,#0x64,00258$
      000680                       1425 00258$:
      000680 50 13            [24] 1426 	jnc	00110$
                                   1427 ;	Computer.c:203: Show_Reverse(buffer, flag);
      000682 85 10 5B         [24] 1428 	mov	_Show_Reverse_PARM_2,_flag
      000685 90 00 7B         [24] 1429 	mov	dptr,#_buffer
      000688 75 F0 40         [24] 1430 	mov	b, #0x40
      00068B C0 07            [24] 1431 	push	ar7
      00068D 12 07 7A         [24] 1432 	lcall	_Show_Reverse
      000690 D0 07            [24] 1433 	pop	ar7
                                   1434 ;	Computer.c:201: for (char m = 0; m < 100; m++)
      000692 0F               [12] 1435 	inc	r7
      000693 80 E8            [24] 1436 	sjmp	00132$
      000695                       1437 00110$:
                                   1438 ;	Computer.c:206: for (char f = 0; f < 8; f++)
      000695 7F 00            [12] 1439 	mov	r7,#0x00
      000697                       1440 00135$:
      000697 BF 08 00         [24] 1441 	cjne	r7,#0x08,00260$
      00069A                       1442 00260$:
      00069A 50 09            [24] 1443 	jnc	00111$
                                   1444 ;	Computer.c:208: buffer[f] = -1;
      00069C EF               [12] 1445 	mov	a,r7
      00069D 24 7B            [12] 1446 	add	a, #_buffer
      00069F F8               [12] 1447 	mov	r0,a
      0006A0 76 FF            [12] 1448 	mov	@r0,#0xff
                                   1449 ;	Computer.c:206: for (char f = 0; f < 8; f++)
      0006A2 0F               [12] 1450 	inc	r7
      0006A3 80 F2            [24] 1451 	sjmp	00135$
      0006A5                       1452 00111$:
                                   1453 ;	Computer.c:210: flag = 0;
      0006A5 75 10 00         [24] 1454 	mov	_flag,#0x00
                                   1455 ;	Computer.c:212: Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
      0006A8 75 69 33         [24] 1456 	mov	_Restart_PARM_2,#_main_num_2_10000_35
      0006AB 75 6A 00         [24] 1457 	mov	(_Restart_PARM_2 + 1),#0x00
      0006AE 75 6B 40         [24] 1458 	mov	(_Restart_PARM_2 + 2),#0x40
      0006B1 75 6C 37         [24] 1459 	mov	_Restart_PARM_3,#_main_op_10000_35
      0006B4 75 6D 00         [24] 1460 	mov	(_Restart_PARM_3 + 1),#0x00
      0006B7 75 6E 40         [24] 1461 	mov	(_Restart_PARM_3 + 2),#0x40
      0006BA 75 6F 35         [24] 1462 	mov	_Restart_PARM_4,#_main_ans_10000_35
      0006BD 75 70 00         [24] 1463 	mov	(_Restart_PARM_4 + 1),#0x00
      0006C0 75 71 40         [24] 1464 	mov	(_Restart_PARM_4 + 2),#0x40
      0006C3 75 72 38         [24] 1465 	mov	_Restart_PARM_5,#_main_negative_num1_10000_35
      0006C6 75 73 00         [24] 1466 	mov	(_Restart_PARM_5 + 1),#0x00
      0006C9 75 74 40         [24] 1467 	mov	(_Restart_PARM_5 + 2),#0x40
      0006CC 75 75 3A         [24] 1468 	mov	_Restart_PARM_6,#_main_negative_num2_10000_35
      0006CF 75 76 00         [24] 1469 	mov	(_Restart_PARM_6 + 1),#0x00
      0006D2 75 77 40         [24] 1470 	mov	(_Restart_PARM_6 + 2),#0x40
      0006D5 75 78 3C         [24] 1471 	mov	_Restart_PARM_7,#_main_negative_ans_10000_35
      0006D8 75 79 00         [24] 1472 	mov	(_Restart_PARM_7 + 1),#0x00
      0006DB 75 7A 40         [24] 1473 	mov	(_Restart_PARM_7 + 2),#0x40
      0006DE 90 00 31         [24] 1474 	mov	dptr,#_main_num_1_10000_35
      0006E1 75 F0 40         [24] 1475 	mov	b, #0x40
      0006E4 12 00 D9         [24] 1476 	lcall	_Restart
      0006E7                       1477 00113$:
                                   1478 ;	Computer.c:215: Keypad_flag = 0;
                                   1479 ;	assignBit
      0006E7 C2 01            [12] 1480 	clr	_Keypad_flag
      0006E9                       1481 00120$:
                                   1482 ;	Computer.c:219: Show(buffer, flag);
      0006E9 85 10 57         [24] 1483 	mov	_Show_PARM_2,_flag
      0006EC 90 00 7B         [24] 1484 	mov	dptr,#_buffer
      0006EF 75 F0 40         [24] 1485 	mov	b, #0x40
      0006F2 12 07 0A         [24] 1486 	lcall	_Show
                                   1487 ;	Computer.c:221: }
      0006F5 02 05 0B         [24] 1488 	ljmp	00123$
                                   1489 	.area CSEG    (CODE)
                                   1490 	.area CONST   (CODE)
                                   1491 	.area XINIT   (CODE)
                                   1492 	.area CABS    (ABS,CODE)
