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
                                     11 	.globl _SaveNumber_PARM_3
                                     12 	.globl _SaveNumber_PARM_2
                                     13 	.globl _Restart_PARM_7
                                     14 	.globl _Restart_PARM_6
                                     15 	.globl _Restart_PARM_5
                                     16 	.globl _Restart_PARM_4
                                     17 	.globl _Restart_PARM_3
                                     18 	.globl _Restart_PARM_2
                                     19 	.globl _main
                                     20 	.globl _clean
                                     21 	.globl _Base_timer
                                     22 	.globl _Base_init
                                     23 	.globl _Keypad_Debounce
                                     24 	.globl _Keypad_Debounce_init
                                     25 	.globl _Calculate
                                     26 	.globl _Update_Expression
                                     27 	.globl _SaveNumber
                                     28 	.globl _Restart
                                     29 	.globl _Counter
                                     30 	.globl _Show_History
                                     31 	.globl _Show_Ans
                                     32 	.globl _Show
                                     33 	.globl _ReadKeypad
                                     34 	.globl _Keypad_flag
                                     35 	.globl _cal_flag
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 	.globl _base_flag
                                    133 	.globl _start
                                    134 	.globl _history_count
                                    135 	.globl _base_index
                                    136 	.globl _negative_base
                                    137 	.globl _Base_num
                                    138 	.globl _history_start
                                    139 	.globl _history
                                    140 	.globl _flag
                                    141 	.globl _buffer
                                    142 	.globl _Calculate_PARM_6
                                    143 	.globl _Calculate_PARM_5
                                    144 	.globl _Calculate_PARM_4
                                    145 	.globl _Calculate_PARM_3
                                    146 	.globl _Calculate_PARM_2
                                    147 	.globl _Update_Expression_PARM_5
                                    148 	.globl _Update_Expression_PARM_4
                                    149 	.globl _Update_Expression_PARM_3
                                    150 	.globl _Update_Expression_PARM_2
                                    151 	.globl _num1_counter
                                    152 	.globl _number
                                    153 	.globl _timer_count
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                                    180 ;--------------------------------------------------------
                                    181 ; special function bits
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _P0_0	=	0x0080
                           000081   186 _P0_1	=	0x0081
                           000082   187 _P0_2	=	0x0082
                           000083   188 _P0_3	=	0x0083
                           000084   189 _P0_4	=	0x0084
                           000085   190 _P0_5	=	0x0085
                           000086   191 _P0_6	=	0x0086
                           000087   192 _P0_7	=	0x0087
                           000088   193 _IT0	=	0x0088
                           000089   194 _IE0	=	0x0089
                           00008A   195 _IT1	=	0x008a
                           00008B   196 _IE1	=	0x008b
                           00008C   197 _TR0	=	0x008c
                           00008D   198 _TF0	=	0x008d
                           00008E   199 _TR1	=	0x008e
                           00008F   200 _TF1	=	0x008f
                           000090   201 _P1_0	=	0x0090
                           000091   202 _P1_1	=	0x0091
                           000092   203 _P1_2	=	0x0092
                           000093   204 _P1_3	=	0x0093
                           000094   205 _P1_4	=	0x0094
                           000095   206 _P1_5	=	0x0095
                           000096   207 _P1_6	=	0x0096
                           000097   208 _P1_7	=	0x0097
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AF   230 _EA	=	0x00af
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 _P3_1	=	0x00b1
                           0000B2   233 _P3_2	=	0x00b2
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 _P3_6	=	0x00b6
                           0000B7   238 _P3_7	=	0x00b7
                           0000B0   239 _RXD	=	0x00b0
                           0000B1   240 _TXD	=	0x00b1
                           0000B2   241 _INT0	=	0x00b2
                           0000B3   242 _INT1	=	0x00b3
                           0000B4   243 _T0	=	0x00b4
                           0000B5   244 _T1	=	0x00b5
                           0000B6   245 _WR	=	0x00b6
                           0000B7   246 _RD	=	0x00b7
                           0000B8   247 _PX0	=	0x00b8
                           0000B9   248 _PT0	=	0x00b9
                           0000BA   249 _PX1	=	0x00ba
                           0000BB   250 _PT1	=	0x00bb
                           0000BC   251 _PS	=	0x00bc
                           0000D0   252 _P	=	0x00d0
                           0000D1   253 _F1	=	0x00d1
                           0000D2   254 _OV	=	0x00d2
                           0000D3   255 _RS0	=	0x00d3
                           0000D4   256 _RS1	=	0x00d4
                           0000D5   257 _F0	=	0x00d5
                           0000D6   258 _AC	=	0x00d6
                           0000D7   259 _CY	=	0x00d7
      000000                        260 _cal_flag::
      000000                        261 	.ds 1
      000001                        262 _Keypad_flag::
      000001                        263 	.ds 1
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable register banks
                                    266 ;--------------------------------------------------------
                                    267 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        268 	.ds 8
                                    269 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        270 	.ds 8
                                    271 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        272 	.ds 8
                                    273 ;--------------------------------------------------------
                                    274 ; internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area DSEG    (DATA)
      000018                        277 _timer_count::
      000018                        278 	.ds 1
      000019                        279 _number::
      000019                        280 	.ds 1
      00001A                        281 _num1_counter::
      00001A                        282 	.ds 1
      00001B                        283 _Update_Expression_PARM_2:
      00001B                        284 	.ds 3
      00001E                        285 _Update_Expression_PARM_3:
      00001E                        286 	.ds 3
      000021                        287 _Update_Expression_PARM_4:
      000021                        288 	.ds 3
      000024                        289 _Update_Expression_PARM_5:
      000024                        290 	.ds 3
      000027                        291 _Update_Expression_num_1_10000_13:
      000027                        292 	.ds 3
      00002A                        293 _Update_Expression_sloc0_1_0:
      00002A                        294 	.ds 3
      00002D                        295 _Calculate_PARM_2:
      00002D                        296 	.ds 2
      00002F                        297 _Calculate_PARM_3:
      00002F                        298 	.ds 1
      000030                        299 _Calculate_PARM_4:
      000030                        300 	.ds 2
      000032                        301 _Calculate_PARM_5:
      000032                        302 	.ds 2
      000034                        303 _Calculate_PARM_6:
      000034                        304 	.ds 3
      000037                        305 _Calculate_sloc0_1_0:
      000037                        306 	.ds 2
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable items in internal ram
                                    309 ;--------------------------------------------------------
                                    310 	.area	OSEG    (OVR,DATA)
      000061                        311 _Restart_PARM_2:
      000061                        312 	.ds 3
      000064                        313 _Restart_PARM_3:
      000064                        314 	.ds 3
      000067                        315 _Restart_PARM_4:
      000067                        316 	.ds 3
      00006A                        317 _Restart_PARM_5:
      00006A                        318 	.ds 3
      00006D                        319 _Restart_PARM_6:
      00006D                        320 	.ds 3
      000070                        321 _Restart_PARM_7:
      000070                        322 	.ds 3
                                    323 	.area	OSEG    (OVR,DATA)
      000061                        324 _SaveNumber_PARM_2:
      000061                        325 	.ds 1
      000062                        326 _SaveNumber_PARM_3:
      000062                        327 	.ds 3
                                    328 	.area	OSEG    (OVR,DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; Stack segment in internal ram
                                    331 ;--------------------------------------------------------
                                    332 	.area SSEG
      0000B0                        333 __start__stack:
      0000B0                        334 	.ds	1
                                    335 
                                    336 ;--------------------------------------------------------
                                    337 ; indirectly addressable internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area ISEG    (DATA)
      000073                        340 _buffer::
      000073                        341 	.ds 8
      00007B                        342 _flag::
      00007B                        343 	.ds 1
      00007C                        344 _history::
      00007C                        345 	.ds 10
      000086                        346 _history_start::
      000086                        347 	.ds 10
      000090                        348 _Base_num::
      000090                        349 	.ds 10
      00009A                        350 _negative_base::
      00009A                        351 	.ds 5
      00009F                        352 _base_index::
      00009F                        353 	.ds 1
      0000A0                        354 _history_count::
      0000A0                        355 	.ds 1
      0000A1                        356 _start::
      0000A1                        357 	.ds 1
      0000A2                        358 _base_flag::
      0000A2                        359 	.ds 1
      0000A3                        360 _main_num_1_10000_38:
      0000A3                        361 	.ds 2
      0000A5                        362 _main_num_2_10000_38:
      0000A5                        363 	.ds 2
      0000A7                        364 _main_ans_10000_38:
      0000A7                        365 	.ds 2
      0000A9                        366 _main_op_10000_38:
      0000A9                        367 	.ds 1
      0000AA                        368 _main_negative_num1_10000_38:
      0000AA                        369 	.ds 2
      0000AC                        370 _main_negative_num2_10000_38:
      0000AC                        371 	.ds 2
      0000AE                        372 _main_negative_ans_10000_38:
      0000AE                        373 	.ds 2
                                    374 ;--------------------------------------------------------
                                    375 ; absolute internal ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area IABS    (ABS,DATA)
                                    378 	.area IABS    (ABS,DATA)
                                    379 ;--------------------------------------------------------
                                    380 ; bit data
                                    381 ;--------------------------------------------------------
                                    382 	.area BSEG    (BIT)
                                    383 ;--------------------------------------------------------
                                    384 ; paged external ram data
                                    385 ;--------------------------------------------------------
                                    386 	.area PSEG    (PAG,XDATA)
                                    387 ;--------------------------------------------------------
                                    388 ; uninitialized external ram data
                                    389 ;--------------------------------------------------------
                                    390 	.area XSEG    (XDATA)
                                    391 ;--------------------------------------------------------
                                    392 ; absolute external ram data
                                    393 ;--------------------------------------------------------
                                    394 	.area XABS    (ABS,XDATA)
                                    395 ;--------------------------------------------------------
                                    396 ; initialized external ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area XISEG   (XDATA)
                                    399 	.area HOME    (CODE)
                                    400 	.area GSINIT0 (CODE)
                                    401 	.area GSINIT1 (CODE)
                                    402 	.area GSINIT2 (CODE)
                                    403 	.area GSINIT3 (CODE)
                                    404 	.area GSINIT4 (CODE)
                                    405 	.area GSINIT5 (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area CSEG    (CODE)
                                    409 ;--------------------------------------------------------
                                    410 ; interrupt vector
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
      000000                        413 __interrupt_vect:
      000000 02 00 21         [24]  414 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  415 	reti
      000004                        416 	.ds	7
      00000B 02 04 CF         [24]  417 	ljmp	_Keypad_Debounce
      00000E                        418 	.ds	5
      000013 32               [24]  419 	reti
      000014                        420 	.ds	7
      00001B 02 04 F5         [24]  421 	ljmp	_Base_timer
                                    422 ;--------------------------------------------------------
                                    423 ; global & static initialisations
                                    424 ;--------------------------------------------------------
                                    425 	.area HOME    (CODE)
                                    426 	.area GSINIT  (CODE)
                                    427 	.area GSFINAL (CODE)
                                    428 	.area GSINIT  (CODE)
                                    429 	.globl __sdcc_gsinit_startup
                                    430 	.globl __sdcc_program_startup
                                    431 	.globl __start__stack
                                    432 	.globl __mcs51_genXINIT
                                    433 	.globl __mcs51_genXRAMCLEAR
                                    434 	.globl __mcs51_genRAMCLEAR
                                    435 ;	Computer.c:16: char timer_count = 0, number, num1_counter = 0;
      00007A 75 18 00         [24]  436 	mov	_timer_count,#0x00
                                    437 ;	Computer.c:16: __sbit cal_flag = 0;
      00007D 75 1A 00         [24]  438 	mov	_num1_counter,#0x00
                                    439 ;	Computer.c:5: __idata unsigned char buffer[8] = {-1};
      000080 78 73            [12]  440 	mov	r0,#_buffer
      000082 76 FF            [12]  441 	mov	@r0,#0xff
                                    442 ;	Computer.c:6: __idata unsigned char flag = 0;
      000084 78 7B            [12]  443 	mov	r0,#_flag
      000086 76 00            [12]  444 	mov	@r0,#0x00
                                    445 ;	Computer.c:7: __idata unsigned char history[10] = {-1};
      000088 78 7C            [12]  446 	mov	r0,#_history
      00008A 76 FF            [12]  447 	mov	@r0,#0xff
                                    448 ;	Computer.c:8: __idata unsigned char history_start[10] = {-1};
      00008C 78 86            [12]  449 	mov	r0,#_history_start
      00008E 76 FF            [12]  450 	mov	@r0,#0xff
                                    451 ;	Computer.c:9: __idata unsigned int Base_num[5] = {0};
      000090 78 90            [12]  452 	mov	r0,#_Base_num
      000092 76 00            [12]  453 	mov	@r0,#0x00
      000094 08               [12]  454 	inc	r0
      000095 76 00            [12]  455 	mov	@r0,#0x00
                                    456 ;	Computer.c:10: __idata unsigned char negative_base[5] = {0};
      000097 78 9A            [12]  457 	mov	r0,#_negative_base
      000099 76 00            [12]  458 	mov	@r0,#0x00
                                    459 ;	Computer.c:11: __idata unsigned char base_index = 0;
      00009B 78 9F            [12]  460 	mov	r0,#_base_index
      00009D 76 00            [12]  461 	mov	@r0,#0x00
                                    462 ;	Computer.c:12: __idata unsigned char history_count = 0;
      00009F 78 A0            [12]  463 	mov	r0,#_history_count
      0000A1 76 00            [12]  464 	mov	@r0,#0x00
                                    465 ;	Computer.c:13: __idata unsigned char start = 0;
      0000A3 78 A1            [12]  466 	mov	r0,#_start
      0000A5 76 00            [12]  467 	mov	@r0,#0x00
                                    468 ;	Computer.c:14: __idata unsigned char base_flag = 0;
      0000A7 78 A2            [12]  469 	mov	r0,#_base_flag
      0000A9 76 00            [12]  470 	mov	@r0,#0x00
                                    471 ;	Computer.c:17: __sbit cal_flag = 0;
                                    472 ;	assignBit
      0000AB C2 00            [12]  473 	clr	_cal_flag
                                    474 ;	Computer.c:18: __sbit Keypad_flag = 0;
                                    475 ;	assignBit
      0000AD C2 01            [12]  476 	clr	_Keypad_flag
                                    477 	.area GSFINAL (CODE)
      0000FA 02 00 1E         [24]  478 	ljmp	__sdcc_program_startup
                                    479 ;--------------------------------------------------------
                                    480 ; Home
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
                                    483 	.area HOME    (CODE)
      00001E                        484 __sdcc_program_startup:
      00001E 02 05 20         [24]  485 	ljmp	_main
                                    486 ;	return from main will return to caller
                                    487 ;--------------------------------------------------------
                                    488 ; code
                                    489 ;--------------------------------------------------------
                                    490 	.area CSEG    (CODE)
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'Restart'
                                    493 ;------------------------------------------------------------
                                    494 ;num_2                     Allocated with name '_Restart_PARM_2'
                                    495 ;op                        Allocated with name '_Restart_PARM_3'
                                    496 ;ans                       Allocated with name '_Restart_PARM_4'
                                    497 ;negative_num1             Allocated with name '_Restart_PARM_5'
                                    498 ;negative_num2             Allocated with name '_Restart_PARM_6'
                                    499 ;negative_ans              Allocated with name '_Restart_PARM_7'
                                    500 ;num_1                     Allocated to registers r5 r6 r7 
                                    501 ;------------------------------------------------------------
                                    502 ;	Computer.c:20: void Restart(int *num_1, int *num_2, char *op, int *ans, int *negative_num1, int *negative_num2, int *negative_ans)
                                    503 ;	-----------------------------------------
                                    504 ;	 function Restart
                                    505 ;	-----------------------------------------
      0000FD                        506 _Restart:
                           000007   507 	ar7 = 0x07
                           000006   508 	ar6 = 0x06
                           000005   509 	ar5 = 0x05
                           000004   510 	ar4 = 0x04
                           000003   511 	ar3 = 0x03
                           000002   512 	ar2 = 0x02
                           000001   513 	ar1 = 0x01
                           000000   514 	ar0 = 0x00
                                    515 ;	Computer.c:22: *num_1 = 0;
      0000FD E4               [12]  516 	clr	a
      0000FE 12 0A 2C         [24]  517 	lcall	__gptrput
      000101 A3               [24]  518 	inc	dptr
      000102 12 0A 2C         [24]  519 	lcall	__gptrput
                                    520 ;	Computer.c:23: *num_2 = 0;
      000105 AD 61            [24]  521 	mov	r5,_Restart_PARM_2
      000107 AE 62            [24]  522 	mov	r6,(_Restart_PARM_2 + 1)
      000109 AF 63            [24]  523 	mov	r7,(_Restart_PARM_2 + 2)
      00010B 8D 82            [24]  524 	mov	dpl,r5
      00010D 8E 83            [24]  525 	mov	dph,r6
      00010F 8F F0            [24]  526 	mov	b,r7
      000111 12 0A 2C         [24]  527 	lcall	__gptrput
      000114 A3               [24]  528 	inc	dptr
      000115 12 0A 2C         [24]  529 	lcall	__gptrput
                                    530 ;	Computer.c:24: *op = '$';
      000118 AD 64            [24]  531 	mov	r5,_Restart_PARM_3
      00011A AE 65            [24]  532 	mov	r6,(_Restart_PARM_3 + 1)
      00011C AF 66            [24]  533 	mov	r7,(_Restart_PARM_3 + 2)
      00011E 8D 82            [24]  534 	mov	dpl,r5
      000120 8E 83            [24]  535 	mov	dph,r6
      000122 8F F0            [24]  536 	mov	b,r7
      000124 74 24            [12]  537 	mov	a,#0x24
      000126 12 0A 2C         [24]  538 	lcall	__gptrput
                                    539 ;	Computer.c:25: *ans = 0;
      000129 AD 67            [24]  540 	mov	r5,_Restart_PARM_4
      00012B AE 68            [24]  541 	mov	r6,(_Restart_PARM_4 + 1)
      00012D AF 69            [24]  542 	mov	r7,(_Restart_PARM_4 + 2)
      00012F 8D 82            [24]  543 	mov	dpl,r5
      000131 8E 83            [24]  544 	mov	dph,r6
      000133 8F F0            [24]  545 	mov	b,r7
      000135 E4               [12]  546 	clr	a
      000136 12 0A 2C         [24]  547 	lcall	__gptrput
      000139 A3               [24]  548 	inc	dptr
      00013A 12 0A 2C         [24]  549 	lcall	__gptrput
                                    550 ;	Computer.c:26: cal_flag = 0;
                                    551 ;	assignBit
      00013D C2 00            [12]  552 	clr	_cal_flag
                                    553 ;	Computer.c:27: *negative_ans = 0;
      00013F AD 70            [24]  554 	mov	r5,_Restart_PARM_7
      000141 AE 71            [24]  555 	mov	r6,(_Restart_PARM_7 + 1)
      000143 AF 72            [24]  556 	mov	r7,(_Restart_PARM_7 + 2)
      000145 8D 82            [24]  557 	mov	dpl,r5
      000147 8E 83            [24]  558 	mov	dph,r6
      000149 8F F0            [24]  559 	mov	b,r7
      00014B E4               [12]  560 	clr	a
      00014C 12 0A 2C         [24]  561 	lcall	__gptrput
      00014F A3               [24]  562 	inc	dptr
      000150 12 0A 2C         [24]  563 	lcall	__gptrput
                                    564 ;	Computer.c:28: *negative_num1 = -1;
      000153 AD 6A            [24]  565 	mov	r5,_Restart_PARM_5
      000155 AE 6B            [24]  566 	mov	r6,(_Restart_PARM_5 + 1)
      000157 AF 6C            [24]  567 	mov	r7,(_Restart_PARM_5 + 2)
      000159 8D 82            [24]  568 	mov	dpl,r5
      00015B 8E 83            [24]  569 	mov	dph,r6
      00015D 8F F0            [24]  570 	mov	b,r7
      00015F 14               [12]  571 	dec	a
      000160 12 0A 2C         [24]  572 	lcall	__gptrput
      000163 A3               [24]  573 	inc	dptr
      000164 12 0A 2C         [24]  574 	lcall	__gptrput
                                    575 ;	Computer.c:29: *negative_num2 = -1;
      000167 AD 6D            [24]  576 	mov	r5,_Restart_PARM_6
      000169 AE 6E            [24]  577 	mov	r6,(_Restart_PARM_6 + 1)
      00016B AF 6F            [24]  578 	mov	r7,(_Restart_PARM_6 + 2)
      00016D 8D 82            [24]  579 	mov	dpl,r5
      00016F 8E 83            [24]  580 	mov	dph,r6
      000171 8F F0            [24]  581 	mov	b,r7
      000173 12 0A 2C         [24]  582 	lcall	__gptrput
      000176 A3               [24]  583 	inc	dptr
      000177 12 0A 2C         [24]  584 	lcall	__gptrput
                                    585 ;	Computer.c:30: num1_counter = 0;
      00017A 75 1A 00         [24]  586 	mov	_num1_counter,#0x00
                                    587 ;	Computer.c:31: }
      00017D 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'SaveNumber'
                                    591 ;------------------------------------------------------------
                                    592 ;start                     Allocated with name '_SaveNumber_PARM_2'
                                    593 ;b                         Allocated with name '_SaveNumber_PARM_3'
                                    594 ;n                         Allocated to registers r7 
                                    595 ;i                         Allocated to registers 
                                    596 ;------------------------------------------------------------
                                    597 ;	Computer.c:32: void SaveNumber(char n, char start, char *b)
                                    598 ;	-----------------------------------------
                                    599 ;	 function SaveNumber
                                    600 ;	-----------------------------------------
      00017E                        601 _SaveNumber:
      00017E AF 82            [24]  602 	mov	r7, dpl
                                    603 ;	Computer.c:34: for (char i = start; i > 0; i--)
      000180 AE 61            [24]  604 	mov	r6,_SaveNumber_PARM_2
      000182                        605 00103$:
      000182 EE               [12]  606 	mov	a,r6
      000183 60 32            [24]  607 	jz	00101$
                                    608 ;	Computer.c:36: b[i] = b[i - 1];
      000185 EE               [12]  609 	mov	a,r6
      000186 25 62            [12]  610 	add	a, _SaveNumber_PARM_3
      000188 FB               [12]  611 	mov	r3,a
      000189 E4               [12]  612 	clr	a
      00018A 35 63            [12]  613 	addc	a, (_SaveNumber_PARM_3 + 1)
      00018C FC               [12]  614 	mov	r4,a
      00018D AD 64            [24]  615 	mov	r5,(_SaveNumber_PARM_3 + 2)
      00018F 8E 01            [24]  616 	mov	ar1,r6
      000191 7A 00            [12]  617 	mov	r2,#0x00
      000193 19               [12]  618 	dec	r1
      000194 B9 FF 01         [24]  619 	cjne	r1,#0xff,00123$
      000197 1A               [12]  620 	dec	r2
      000198                        621 00123$:
      000198 E9               [12]  622 	mov	a,r1
      000199 25 62            [12]  623 	add	a, _SaveNumber_PARM_3
      00019B F9               [12]  624 	mov	r1,a
      00019C EA               [12]  625 	mov	a,r2
      00019D 35 63            [12]  626 	addc	a, (_SaveNumber_PARM_3 + 1)
      00019F F8               [12]  627 	mov	r0,a
      0001A0 AA 64            [24]  628 	mov	r2,(_SaveNumber_PARM_3 + 2)
      0001A2 89 82            [24]  629 	mov	dpl,r1
      0001A4 88 83            [24]  630 	mov	dph,r0
      0001A6 8A F0            [24]  631 	mov	b,r2
      0001A8 12 0B 6F         [24]  632 	lcall	__gptrget
      0001AB 8B 82            [24]  633 	mov	dpl,r3
      0001AD 8C 83            [24]  634 	mov	dph,r4
      0001AF 8D F0            [24]  635 	mov	b,r5
      0001B1 12 0A 2C         [24]  636 	lcall	__gptrput
                                    637 ;	Computer.c:34: for (char i = start; i > 0; i--)
      0001B4 1E               [12]  638 	dec	r6
      0001B5 80 CB            [24]  639 	sjmp	00103$
      0001B7                        640 00101$:
                                    641 ;	Computer.c:38: b[0] = n;
      0001B7 AC 62            [24]  642 	mov	r4,_SaveNumber_PARM_3
      0001B9 AD 63            [24]  643 	mov	r5,(_SaveNumber_PARM_3 + 1)
      0001BB AE 64            [24]  644 	mov	r6,(_SaveNumber_PARM_3 + 2)
      0001BD 8C 82            [24]  645 	mov	dpl,r4
      0001BF 8D 83            [24]  646 	mov	dph,r5
      0001C1 8E F0            [24]  647 	mov	b,r6
      0001C3 EF               [12]  648 	mov	a,r7
                                    649 ;	Computer.c:39: }
      0001C4 02 0A 2C         [24]  650 	ljmp	__gptrput
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'Update_Expression'
                                    653 ;------------------------------------------------------------
                                    654 ;num_2                     Allocated with name '_Update_Expression_PARM_2'
                                    655 ;op                        Allocated with name '_Update_Expression_PARM_3'
                                    656 ;negative_num1             Allocated with name '_Update_Expression_PARM_4'
                                    657 ;negative_num2             Allocated with name '_Update_Expression_PARM_5'
                                    658 ;num_1                     Allocated with name '_Update_Expression_num_1_10000_13'
                                    659 ;sloc0                     Allocated with name '_Update_Expression_sloc0_1_0'
                                    660 ;------------------------------------------------------------
                                    661 ;	Computer.c:42: void Update_Expression(int *num_1, int *num_2, char *op, int *negative_num1, int *negative_num2)
                                    662 ;	-----------------------------------------
                                    663 ;	 function Update_Expression
                                    664 ;	-----------------------------------------
      0001C7                        665 _Update_Expression:
      0001C7 85 82 27         [24]  666 	mov	_Update_Expression_num_1_10000_13,dpl
      0001CA 85 83 28         [24]  667 	mov	(_Update_Expression_num_1_10000_13 + 1),dph
      0001CD 85 F0 29         [24]  668 	mov	(_Update_Expression_num_1_10000_13 + 2),b
                                    669 ;	Computer.c:45: if (buffer[0] >= 0 && buffer[0] <= 9)
      0001D0 78 73            [12]  670 	mov	r0,#_buffer
      0001D2 E6               [12]  671 	mov	a,@r0
      0001D3 FC               [12]  672 	mov	r4,a
      0001D4 24 F6            [12]  673 	add	a,#0xff - 0x09
      0001D6 50 03            [24]  674 	jnc	00199$
      0001D8 02 02 91         [24]  675 	ljmp	00122$
      0001DB                        676 00199$:
                                    677 ;	Computer.c:47: if (*op == '$')
      0001DB 85 1E 2A         [24]  678 	mov	_Update_Expression_sloc0_1_0,_Update_Expression_PARM_3
      0001DE 85 1F 2B         [24]  679 	mov	(_Update_Expression_sloc0_1_0 + 1),(_Update_Expression_PARM_3 + 1)
      0001E1 85 20 2C         [24]  680 	mov	(_Update_Expression_sloc0_1_0 + 2),(_Update_Expression_PARM_3 + 2)
      0001E4 85 2A 82         [24]  681 	mov	dpl,_Update_Expression_sloc0_1_0
      0001E7 85 2B 83         [24]  682 	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
      0001EA 85 2C F0         [24]  683 	mov	b,(_Update_Expression_sloc0_1_0 + 2)
      0001ED 12 0B 6F         [24]  684 	lcall	__gptrget
      0001F0 FB               [12]  685 	mov	r3,a
      0001F1 BB 24 40         [24]  686 	cjne	r3,#0x24,00102$
                                    687 ;	Computer.c:49: *num_1 = *num_1 * 10 + (int)buffer[0];
      0001F4 85 27 82         [24]  688 	mov	dpl,_Update_Expression_num_1_10000_13
      0001F7 85 28 83         [24]  689 	mov	dph,(_Update_Expression_num_1_10000_13 + 1)
      0001FA 85 29 F0         [24]  690 	mov	b,(_Update_Expression_num_1_10000_13 + 2)
      0001FD 12 0B 6F         [24]  691 	lcall	__gptrget
      000200 F5 61            [12]  692 	mov	__mulint_PARM_2,a
      000202 A3               [24]  693 	inc	dptr
      000203 12 0B 6F         [24]  694 	lcall	__gptrget
      000206 F5 62            [12]  695 	mov	(__mulint_PARM_2 + 1),a
      000208 90 00 0A         [24]  696 	mov	dptr,#0x000a
      00020B C0 04            [24]  697 	push	ar4
      00020D 12 0A 47         [24]  698 	lcall	__mulint
      000210 AA 82            [24]  699 	mov	r2, dpl
      000212 AB 83            [24]  700 	mov	r3, dph
      000214 D0 04            [24]  701 	pop	ar4
      000216 8C 06            [24]  702 	mov	ar6,r4
      000218 7F 00            [12]  703 	mov	r7,#0x00
      00021A EE               [12]  704 	mov	a,r6
      00021B 2A               [12]  705 	add	a, r2
      00021C FA               [12]  706 	mov	r2,a
      00021D EF               [12]  707 	mov	a,r7
      00021E 3B               [12]  708 	addc	a, r3
      00021F FB               [12]  709 	mov	r3,a
      000220 85 27 82         [24]  710 	mov	dpl,_Update_Expression_num_1_10000_13
      000223 85 28 83         [24]  711 	mov	dph,(_Update_Expression_num_1_10000_13 + 1)
      000226 85 29 F0         [24]  712 	mov	b,(_Update_Expression_num_1_10000_13 + 2)
      000229 EA               [12]  713 	mov	a,r2
      00022A 12 0A 2C         [24]  714 	lcall	__gptrput
      00022D A3               [24]  715 	inc	dptr
      00022E EB               [12]  716 	mov	a,r3
      00022F 12 0A 2C         [24]  717 	lcall	__gptrput
                                    718 ;	Computer.c:50: num1_counter++;
      000232 05 1A            [12]  719 	inc	_num1_counter
      000234                        720 00102$:
                                    721 ;	Computer.c:52: if (*op != '$')
      000234 85 2A 82         [24]  722 	mov	dpl,_Update_Expression_sloc0_1_0
      000237 85 2B 83         [24]  723 	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
      00023A 85 2C F0         [24]  724 	mov	b,(_Update_Expression_sloc0_1_0 + 2)
      00023D 12 0B 6F         [24]  725 	lcall	__gptrget
      000240 FF               [12]  726 	mov	r7,a
      000241 BF 24 01         [24]  727 	cjne	r7,#0x24,00202$
      000244 22               [24]  728 	ret
      000245                        729 00202$:
                                    730 ;	Computer.c:54: *num_2 = *num_2 * 10 + (int)buffer[0];
      000245 AD 1B            [24]  731 	mov	r5,_Update_Expression_PARM_2
      000247 AE 1C            [24]  732 	mov	r6,(_Update_Expression_PARM_2 + 1)
      000249 AF 1D            [24]  733 	mov	r7,(_Update_Expression_PARM_2 + 2)
      00024B 8D 82            [24]  734 	mov	dpl,r5
      00024D 8E 83            [24]  735 	mov	dph,r6
      00024F 8F F0            [24]  736 	mov	b,r7
      000251 12 0B 6F         [24]  737 	lcall	__gptrget
      000254 F5 61            [12]  738 	mov	__mulint_PARM_2,a
      000256 A3               [24]  739 	inc	dptr
      000257 12 0B 6F         [24]  740 	lcall	__gptrget
      00025A F5 62            [12]  741 	mov	(__mulint_PARM_2 + 1),a
      00025C 90 00 0A         [24]  742 	mov	dptr,#0x000a
      00025F C0 07            [24]  743 	push	ar7
      000261 C0 06            [24]  744 	push	ar6
      000263 C0 05            [24]  745 	push	ar5
      000265 12 0A 47         [24]  746 	lcall	__mulint
      000268 85 82 2A         [24]  747 	mov	_Update_Expression_sloc0_1_0,dpl
      00026B 85 83 2B         [24]  748 	mov	(_Update_Expression_sloc0_1_0 + 1),dph
      00026E D0 05            [24]  749 	pop	ar5
      000270 D0 06            [24]  750 	pop	ar6
      000272 D0 07            [24]  751 	pop	ar7
      000274 78 73            [12]  752 	mov	r0,#_buffer
      000276 86 03            [24]  753 	mov	ar3,@r0
      000278 7A 00            [12]  754 	mov	r2,#0x00
      00027A EB               [12]  755 	mov	a,r3
      00027B 25 2A            [12]  756 	add	a, _Update_Expression_sloc0_1_0
      00027D FB               [12]  757 	mov	r3,a
      00027E EA               [12]  758 	mov	a,r2
      00027F 35 2B            [12]  759 	addc	a, (_Update_Expression_sloc0_1_0 + 1)
      000281 FA               [12]  760 	mov	r2,a
      000282 8D 82            [24]  761 	mov	dpl,r5
      000284 8E 83            [24]  762 	mov	dph,r6
      000286 8F F0            [24]  763 	mov	b,r7
      000288 EB               [12]  764 	mov	a,r3
      000289 12 0A 2C         [24]  765 	lcall	__gptrput
      00028C A3               [24]  766 	inc	dptr
      00028D EA               [12]  767 	mov	a,r2
      00028E 02 0A 2C         [24]  768 	ljmp	__gptrput
      000291                        769 00122$:
                                    770 ;	Computer.c:57: else if (buffer[0] == 13 && num1_counter == 0)
      000291 E4               [12]  771 	clr	a
      000292 BC 0D 01         [24]  772 	cjne	r4,#0x0d,00203$
      000295 04               [12]  773 	inc	a
      000296                        774 00203$:
      000296 FF               [12]  775 	mov	r7,a
      000297 60 1A            [24]  776 	jz	00118$
      000299 E5 1A            [12]  777 	mov	a,_num1_counter
      00029B 70 16            [24]  778 	jnz	00118$
                                    779 ;	Computer.c:59: *negative_num1 = 1;
      00029D AB 21            [24]  780 	mov	r3,_Update_Expression_PARM_4
      00029F AD 22            [24]  781 	mov	r5,(_Update_Expression_PARM_4 + 1)
      0002A1 AE 23            [24]  782 	mov	r6,(_Update_Expression_PARM_4 + 2)
      0002A3 8B 82            [24]  783 	mov	dpl,r3
      0002A5 8D 83            [24]  784 	mov	dph,r5
      0002A7 8E F0            [24]  785 	mov	b,r6
      0002A9 74 01            [12]  786 	mov	a,#0x01
      0002AB 12 0A 2C         [24]  787 	lcall	__gptrput
      0002AE A3               [24]  788 	inc	dptr
      0002AF E4               [12]  789 	clr	a
      0002B0 02 0A 2C         [24]  790 	ljmp	__gptrput
      0002B3                        791 00118$:
                                    792 ;	Computer.c:61: else if (buffer[0] >= 12 && buffer[0] <= 15 && num1_counter != 0 && *op == '$')
      0002B3 BC 0C 00         [24]  793 	cjne	r4,#0x0c,00207$
      0002B6                        794 00207$:
      0002B6 40 26            [24]  795 	jc	00112$
      0002B8 EC               [12]  796 	mov	a,r4
      0002B9 24 F0            [12]  797 	add	a,#0xff - 0x0f
      0002BB 40 21            [24]  798 	jc	00112$
      0002BD E5 1A            [12]  799 	mov	a,_num1_counter
      0002BF 60 1D            [24]  800 	jz	00112$
      0002C1 AB 1E            [24]  801 	mov	r3,_Update_Expression_PARM_3
      0002C3 AD 1F            [24]  802 	mov	r5,(_Update_Expression_PARM_3 + 1)
      0002C5 AE 20            [24]  803 	mov	r6,(_Update_Expression_PARM_3 + 2)
      0002C7 8B 82            [24]  804 	mov	dpl,r3
      0002C9 8D 83            [24]  805 	mov	dph,r5
      0002CB 8E F0            [24]  806 	mov	b,r6
      0002CD 12 0B 6F         [24]  807 	lcall	__gptrget
      0002D0 FA               [12]  808 	mov	r2,a
      0002D1 BA 24 0A         [24]  809 	cjne	r2,#0x24,00112$
                                    810 ;	Computer.c:63: *op = buffer[0];
      0002D4 8B 82            [24]  811 	mov	dpl,r3
      0002D6 8D 83            [24]  812 	mov	dph,r5
      0002D8 8E F0            [24]  813 	mov	b,r6
      0002DA EC               [12]  814 	mov	a,r4
      0002DB 02 0A 2C         [24]  815 	ljmp	__gptrput
      0002DE                        816 00112$:
                                    817 ;	Computer.c:65: else if (buffer[0] == 13 && *op != '$')
      0002DE EF               [12]  818 	mov	a,r7
      0002DF 60 2B            [24]  819 	jz	00108$
      0002E1 AD 1E            [24]  820 	mov	r5,_Update_Expression_PARM_3
      0002E3 AE 1F            [24]  821 	mov	r6,(_Update_Expression_PARM_3 + 1)
      0002E5 AF 20            [24]  822 	mov	r7,(_Update_Expression_PARM_3 + 2)
      0002E7 8D 82            [24]  823 	mov	dpl,r5
      0002E9 8E 83            [24]  824 	mov	dph,r6
      0002EB 8F F0            [24]  825 	mov	b,r7
      0002ED 12 0B 6F         [24]  826 	lcall	__gptrget
      0002F0 FD               [12]  827 	mov	r5,a
      0002F1 BD 24 02         [24]  828 	cjne	r5,#0x24,00214$
      0002F4 80 16            [24]  829 	sjmp	00108$
      0002F6                        830 00214$:
                                    831 ;	Computer.c:67: *negative_num2 = 1;
      0002F6 AD 24            [24]  832 	mov	r5,_Update_Expression_PARM_5
      0002F8 AE 25            [24]  833 	mov	r6,(_Update_Expression_PARM_5 + 1)
      0002FA AF 26            [24]  834 	mov	r7,(_Update_Expression_PARM_5 + 2)
      0002FC 8D 82            [24]  835 	mov	dpl,r5
      0002FE 8E 83            [24]  836 	mov	dph,r6
      000300 8F F0            [24]  837 	mov	b,r7
      000302 74 01            [12]  838 	mov	a,#0x01
      000304 12 0A 2C         [24]  839 	lcall	__gptrput
      000307 A3               [24]  840 	inc	dptr
      000308 E4               [12]  841 	clr	a
      000309 02 0A 2C         [24]  842 	ljmp	__gptrput
      00030C                        843 00108$:
                                    844 ;	Computer.c:69: else if (buffer[0] == 11)
      00030C BC 0B 02         [24]  845 	cjne	r4,#0x0b,00125$
                                    846 ;	Computer.c:71: cal_flag = 1;
                                    847 ;	assignBit
      00030F D2 00            [12]  848 	setb	_cal_flag
      000311                        849 00125$:
                                    850 ;	Computer.c:73: }
      000311 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'Calculate'
                                    854 ;------------------------------------------------------------
                                    855 ;num2                      Allocated with name '_Calculate_PARM_2'
                                    856 ;op                        Allocated with name '_Calculate_PARM_3'
                                    857 ;negative_num1             Allocated with name '_Calculate_PARM_4'
                                    858 ;negative_num2             Allocated with name '_Calculate_PARM_5'
                                    859 ;ans                       Allocated with name '_Calculate_PARM_6'
                                    860 ;num1                      Allocated to registers r6 r7 
                                    861 ;sloc0                     Allocated with name '_Calculate_sloc0_1_0'
                                    862 ;------------------------------------------------------------
                                    863 ;	Computer.c:76: void Calculate(int num1, int num2, char op, int negative_num1, int negative_num2, int *ans)
                                    864 ;	-----------------------------------------
                                    865 ;	 function Calculate
                                    866 ;	-----------------------------------------
      000312                        867 _Calculate:
      000312 AE 82            [24]  868 	mov	r6, dpl
      000314 AF 83            [24]  869 	mov	r7, dph
                                    870 ;	Computer.c:78: switch (op)
      000316 74 0C            [12]  871 	mov	a,#0x0c
      000318 B5 2F 02         [24]  872 	cjne	a,_Calculate_PARM_3,00132$
      00031B 80 18            [24]  873 	sjmp	00101$
      00031D                        874 00132$:
      00031D 74 0D            [12]  875 	mov	a,#0x0d
      00031F B5 2F 02         [24]  876 	cjne	a,_Calculate_PARM_3,00133$
      000322 80 6A            [24]  877 	sjmp	00102$
      000324                        878 00133$:
      000324 74 0E            [12]  879 	mov	a,#0x0e
      000326 B5 2F 03         [24]  880 	cjne	a,_Calculate_PARM_3,00134$
      000329 02 03 E8         [24]  881 	ljmp	00103$
      00032C                        882 00134$:
      00032C 74 0F            [12]  883 	mov	a,#0x0f
      00032E B5 2F 03         [24]  884 	cjne	a,_Calculate_PARM_3,00135$
      000331 02 04 4C         [24]  885 	ljmp	00104$
      000334                        886 00135$:
      000334 22               [24]  887 	ret
                                    888 ;	Computer.c:80: case 12:
      000335                        889 00101$:
                                    890 ;	Computer.c:81: *ans = (((-1) * negative_num1) * num1) + (((-1) * negative_num2) * num2);
      000335 AB 34            [24]  891 	mov	r3,_Calculate_PARM_6
      000337 AC 35            [24]  892 	mov	r4,(_Calculate_PARM_6 + 1)
      000339 AD 36            [24]  893 	mov	r5,(_Calculate_PARM_6 + 2)
      00033B C3               [12]  894 	clr	c
      00033C E4               [12]  895 	clr	a
      00033D 95 30            [12]  896 	subb	a,_Calculate_PARM_4
      00033F F5 82            [12]  897 	mov	dpl,a
      000341 E4               [12]  898 	clr	a
      000342 95 31            [12]  899 	subb	a,(_Calculate_PARM_4 + 1)
      000344 F5 83            [12]  900 	mov	dph,a
      000346 8E 61            [24]  901 	mov	__mulint_PARM_2,r6
      000348 8F 62            [24]  902 	mov	(__mulint_PARM_2 + 1),r7
      00034A C0 05            [24]  903 	push	ar5
      00034C C0 04            [24]  904 	push	ar4
      00034E C0 03            [24]  905 	push	ar3
      000350 12 0A 47         [24]  906 	lcall	__mulint
      000353 85 82 37         [24]  907 	mov	_Calculate_sloc0_1_0,dpl
      000356 85 83 38         [24]  908 	mov	(_Calculate_sloc0_1_0 + 1),dph
      000359 C3               [12]  909 	clr	c
      00035A E4               [12]  910 	clr	a
      00035B 95 32            [12]  911 	subb	a,_Calculate_PARM_5
      00035D F5 82            [12]  912 	mov	dpl,a
      00035F E4               [12]  913 	clr	a
      000360 95 33            [12]  914 	subb	a,(_Calculate_PARM_5 + 1)
      000362 F5 83            [12]  915 	mov	dph,a
      000364 85 2D 61         [24]  916 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000367 85 2E 62         [24]  917 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      00036A 12 0A 47         [24]  918 	lcall	__mulint
      00036D A8 82            [24]  919 	mov	r0, dpl
      00036F AA 83            [24]  920 	mov	r2, dph
      000371 D0 03            [24]  921 	pop	ar3
      000373 D0 04            [24]  922 	pop	ar4
      000375 D0 05            [24]  923 	pop	ar5
      000377 E8               [12]  924 	mov	a,r0
      000378 25 37            [12]  925 	add	a, _Calculate_sloc0_1_0
      00037A F8               [12]  926 	mov	r0,a
      00037B EA               [12]  927 	mov	a,r2
      00037C 35 38            [12]  928 	addc	a, (_Calculate_sloc0_1_0 + 1)
      00037E FA               [12]  929 	mov	r2,a
      00037F 8B 82            [24]  930 	mov	dpl,r3
      000381 8C 83            [24]  931 	mov	dph,r4
      000383 8D F0            [24]  932 	mov	b,r5
      000385 E8               [12]  933 	mov	a,r0
      000386 12 0A 2C         [24]  934 	lcall	__gptrput
      000389 A3               [24]  935 	inc	dptr
      00038A EA               [12]  936 	mov	a,r2
                                    937 ;	Computer.c:82: break;
      00038B 02 0A 2C         [24]  938 	ljmp	__gptrput
                                    939 ;	Computer.c:83: case 13:
      00038E                        940 00102$:
                                    941 ;	Computer.c:84: *ans = (((-1) * negative_num1) * num1) - (((-1) * negative_num2) * num2);
      00038E AB 34            [24]  942 	mov	r3,_Calculate_PARM_6
      000390 AC 35            [24]  943 	mov	r4,(_Calculate_PARM_6 + 1)
      000392 AD 36            [24]  944 	mov	r5,(_Calculate_PARM_6 + 2)
      000394 C3               [12]  945 	clr	c
      000395 E4               [12]  946 	clr	a
      000396 95 30            [12]  947 	subb	a,_Calculate_PARM_4
      000398 F5 82            [12]  948 	mov	dpl,a
      00039A E4               [12]  949 	clr	a
      00039B 95 31            [12]  950 	subb	a,(_Calculate_PARM_4 + 1)
      00039D F5 83            [12]  951 	mov	dph,a
      00039F 8E 61            [24]  952 	mov	__mulint_PARM_2,r6
      0003A1 8F 62            [24]  953 	mov	(__mulint_PARM_2 + 1),r7
      0003A3 C0 05            [24]  954 	push	ar5
      0003A5 C0 04            [24]  955 	push	ar4
      0003A7 C0 03            [24]  956 	push	ar3
      0003A9 12 0A 47         [24]  957 	lcall	__mulint
      0003AC 85 82 37         [24]  958 	mov	_Calculate_sloc0_1_0,dpl
      0003AF 85 83 38         [24]  959 	mov	(_Calculate_sloc0_1_0 + 1),dph
      0003B2 C3               [12]  960 	clr	c
      0003B3 E4               [12]  961 	clr	a
      0003B4 95 32            [12]  962 	subb	a,_Calculate_PARM_5
      0003B6 F5 82            [12]  963 	mov	dpl,a
      0003B8 E4               [12]  964 	clr	a
      0003B9 95 33            [12]  965 	subb	a,(_Calculate_PARM_5 + 1)
      0003BB F5 83            [12]  966 	mov	dph,a
      0003BD 85 2D 61         [24]  967 	mov	__mulint_PARM_2,_Calculate_PARM_2
      0003C0 85 2E 62         [24]  968 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      0003C3 12 0A 47         [24]  969 	lcall	__mulint
      0003C6 A8 82            [24]  970 	mov	r0, dpl
      0003C8 AA 83            [24]  971 	mov	r2, dph
      0003CA D0 03            [24]  972 	pop	ar3
      0003CC D0 04            [24]  973 	pop	ar4
      0003CE D0 05            [24]  974 	pop	ar5
      0003D0 E5 37            [12]  975 	mov	a,_Calculate_sloc0_1_0
      0003D2 C3               [12]  976 	clr	c
      0003D3 98               [12]  977 	subb	a,r0
      0003D4 F8               [12]  978 	mov	r0,a
      0003D5 E5 38            [12]  979 	mov	a,(_Calculate_sloc0_1_0 + 1)
      0003D7 9A               [12]  980 	subb	a,r2
      0003D8 FA               [12]  981 	mov	r2,a
      0003D9 8B 82            [24]  982 	mov	dpl,r3
      0003DB 8C 83            [24]  983 	mov	dph,r4
      0003DD 8D F0            [24]  984 	mov	b,r5
      0003DF E8               [12]  985 	mov	a,r0
      0003E0 12 0A 2C         [24]  986 	lcall	__gptrput
      0003E3 A3               [24]  987 	inc	dptr
      0003E4 EA               [12]  988 	mov	a,r2
                                    989 ;	Computer.c:85: break;
      0003E5 02 0A 2C         [24]  990 	ljmp	__gptrput
                                    991 ;	Computer.c:86: case 14:
      0003E8                        992 00103$:
                                    993 ;	Computer.c:87: *ans = (((-1) * negative_num1) * num1) * (((-1) * negative_num2) * num2);
      0003E8 AB 34            [24]  994 	mov	r3,_Calculate_PARM_6
      0003EA AC 35            [24]  995 	mov	r4,(_Calculate_PARM_6 + 1)
      0003EC AD 36            [24]  996 	mov	r5,(_Calculate_PARM_6 + 2)
      0003EE C3               [12]  997 	clr	c
      0003EF E4               [12]  998 	clr	a
      0003F0 95 30            [12]  999 	subb	a,_Calculate_PARM_4
      0003F2 F5 82            [12] 1000 	mov	dpl,a
      0003F4 E4               [12] 1001 	clr	a
      0003F5 95 31            [12] 1002 	subb	a,(_Calculate_PARM_4 + 1)
      0003F7 F5 83            [12] 1003 	mov	dph,a
      0003F9 8E 61            [24] 1004 	mov	__mulint_PARM_2,r6
      0003FB 8F 62            [24] 1005 	mov	(__mulint_PARM_2 + 1),r7
      0003FD C0 05            [24] 1006 	push	ar5
      0003FF C0 04            [24] 1007 	push	ar4
      000401 C0 03            [24] 1008 	push	ar3
      000403 12 0A 47         [24] 1009 	lcall	__mulint
      000406 A9 82            [24] 1010 	mov	r1, dpl
      000408 AA 83            [24] 1011 	mov	r2, dph
      00040A C3               [12] 1012 	clr	c
      00040B E4               [12] 1013 	clr	a
      00040C 95 32            [12] 1014 	subb	a,_Calculate_PARM_5
      00040E F5 82            [12] 1015 	mov	dpl,a
      000410 E4               [12] 1016 	clr	a
      000411 95 33            [12] 1017 	subb	a,(_Calculate_PARM_5 + 1)
      000413 F5 83            [12] 1018 	mov	dph,a
      000415 85 2D 61         [24] 1019 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000418 85 2E 62         [24] 1020 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      00041B C0 02            [24] 1021 	push	ar2
      00041D C0 01            [24] 1022 	push	ar1
      00041F 12 0A 47         [24] 1023 	lcall	__mulint
      000422 85 82 61         [24] 1024 	mov	__mulint_PARM_2,dpl
      000425 85 83 62         [24] 1025 	mov	(__mulint_PARM_2 + 1),dph
      000428 D0 01            [24] 1026 	pop	ar1
      00042A D0 02            [24] 1027 	pop	ar2
      00042C 89 82            [24] 1028 	mov	dpl, r1
      00042E 8A 83            [24] 1029 	mov	dph, r2
      000430 12 0A 47         [24] 1030 	lcall	__mulint
      000433 A9 82            [24] 1031 	mov	r1, dpl
      000435 AA 83            [24] 1032 	mov	r2, dph
      000437 D0 03            [24] 1033 	pop	ar3
      000439 D0 04            [24] 1034 	pop	ar4
      00043B D0 05            [24] 1035 	pop	ar5
      00043D 8B 82            [24] 1036 	mov	dpl,r3
      00043F 8C 83            [24] 1037 	mov	dph,r4
      000441 8D F0            [24] 1038 	mov	b,r5
      000443 E9               [12] 1039 	mov	a,r1
      000444 12 0A 2C         [24] 1040 	lcall	__gptrput
      000447 A3               [24] 1041 	inc	dptr
      000448 EA               [12] 1042 	mov	a,r2
                                   1043 ;	Computer.c:88: break;
      000449 02 0A 2C         [24] 1044 	ljmp	__gptrput
                                   1045 ;	Computer.c:89: case 15:
      00044C                       1046 00104$:
                                   1047 ;	Computer.c:90: *ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
      00044C AB 34            [24] 1048 	mov	r3,_Calculate_PARM_6
      00044E AC 35            [24] 1049 	mov	r4,(_Calculate_PARM_6 + 1)
      000450 AD 36            [24] 1050 	mov	r5,(_Calculate_PARM_6 + 2)
      000452 C3               [12] 1051 	clr	c
      000453 E4               [12] 1052 	clr	a
      000454 95 30            [12] 1053 	subb	a,_Calculate_PARM_4
      000456 F5 82            [12] 1054 	mov	dpl,a
      000458 E4               [12] 1055 	clr	a
      000459 95 31            [12] 1056 	subb	a,(_Calculate_PARM_4 + 1)
      00045B F5 83            [12] 1057 	mov	dph,a
      00045D 8E 61            [24] 1058 	mov	__mulint_PARM_2,r6
      00045F 8F 62            [24] 1059 	mov	(__mulint_PARM_2 + 1),r7
      000461 C0 05            [24] 1060 	push	ar5
      000463 C0 04            [24] 1061 	push	ar4
      000465 C0 03            [24] 1062 	push	ar3
      000467 12 0A 47         [24] 1063 	lcall	__mulint
      00046A AE 82            [24] 1064 	mov	r6, dpl
      00046C AF 83            [24] 1065 	mov	r7, dph
      00046E D0 03            [24] 1066 	pop	ar3
      000470 D0 04            [24] 1067 	pop	ar4
      000472 D0 05            [24] 1068 	pop	ar5
      000474 C3               [12] 1069 	clr	c
      000475 E4               [12] 1070 	clr	a
      000476 95 32            [12] 1071 	subb	a,_Calculate_PARM_5
      000478 F5 82            [12] 1072 	mov	dpl,a
      00047A E4               [12] 1073 	clr	a
      00047B 95 33            [12] 1074 	subb	a,(_Calculate_PARM_5 + 1)
      00047D F5 83            [12] 1075 	mov	dph,a
      00047F 85 2D 61         [24] 1076 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000482 85 2E 62         [24] 1077 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      000485 C0 07            [24] 1078 	push	ar7
      000487 C0 06            [24] 1079 	push	ar6
      000489 C0 05            [24] 1080 	push	ar5
      00048B C0 04            [24] 1081 	push	ar4
      00048D C0 03            [24] 1082 	push	ar3
      00048F 12 0A 47         [24] 1083 	lcall	__mulint
      000492 85 82 61         [24] 1084 	mov	__divsint_PARM_2,dpl
      000495 85 83 62         [24] 1085 	mov	(__divsint_PARM_2 + 1),dph
      000498 D0 03            [24] 1086 	pop	ar3
      00049A D0 04            [24] 1087 	pop	ar4
      00049C D0 05            [24] 1088 	pop	ar5
      00049E D0 06            [24] 1089 	pop	ar6
      0004A0 D0 07            [24] 1090 	pop	ar7
      0004A2 8E 82            [24] 1091 	mov	dpl, r6
      0004A4 8F 83            [24] 1092 	mov	dph, r7
      0004A6 C0 05            [24] 1093 	push	ar5
      0004A8 C0 04            [24] 1094 	push	ar4
      0004AA C0 03            [24] 1095 	push	ar3
      0004AC 12 0B C1         [24] 1096 	lcall	__divsint
      0004AF AE 82            [24] 1097 	mov	r6, dpl
      0004B1 AF 83            [24] 1098 	mov	r7, dph
      0004B3 D0 03            [24] 1099 	pop	ar3
      0004B5 D0 04            [24] 1100 	pop	ar4
      0004B7 D0 05            [24] 1101 	pop	ar5
      0004B9 8B 82            [24] 1102 	mov	dpl,r3
      0004BB 8C 83            [24] 1103 	mov	dph,r4
      0004BD 8D F0            [24] 1104 	mov	b,r5
      0004BF EE               [12] 1105 	mov	a,r6
      0004C0 12 0A 2C         [24] 1106 	lcall	__gptrput
      0004C3 A3               [24] 1107 	inc	dptr
      0004C4 EF               [12] 1108 	mov	a,r7
                                   1109 ;	Computer.c:92: }
                                   1110 ;	Computer.c:93: }
      0004C5 02 0A 2C         [24] 1111 	ljmp	__gptrput
                                   1112 ;------------------------------------------------------------
                                   1113 ;Allocation info for local variables in function 'Keypad_Debounce_init'
                                   1114 ;------------------------------------------------------------
                                   1115 ;	Computer.c:96: void Keypad_Debounce_init(void)
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function Keypad_Debounce_init
                                   1118 ;	-----------------------------------------
      0004C8                       1119 _Keypad_Debounce_init:
                                   1120 ;	Computer.c:98: IE = 0x8a;
      0004C8 75 A8 8A         [24] 1121 	mov	_IE,#0x8a
                                   1122 ;	Computer.c:100: TMOD = 0x01;
      0004CB 75 89 01         [24] 1123 	mov	_TMOD,#0x01
                                   1124 ;	Computer.c:102: }
      0004CE 22               [24] 1125 	ret
                                   1126 ;------------------------------------------------------------
                                   1127 ;Allocation info for local variables in function 'Keypad_Debounce'
                                   1128 ;------------------------------------------------------------
                                   1129 ;	Computer.c:104: void Keypad_Debounce(void) __interrupt(1) __using(1)
                                   1130 ;	-----------------------------------------
                                   1131 ;	 function Keypad_Debounce
                                   1132 ;	-----------------------------------------
      0004CF                       1133 _Keypad_Debounce:
                           00000F  1134 	ar7 = 0x0f
                           00000E  1135 	ar6 = 0x0e
                           00000D  1136 	ar5 = 0x0d
                           00000C  1137 	ar4 = 0x0c
                           00000B  1138 	ar3 = 0x0b
                           00000A  1139 	ar2 = 0x0a
                           000009  1140 	ar1 = 0x09
                           000008  1141 	ar0 = 0x08
      0004CF C0 E0            [24] 1142 	push	acc
      0004D1 C0 D0            [24] 1143 	push	psw
                                   1144 ;	Computer.c:106: TH0 = (65536 - 50000) / 256;
      0004D3 75 8C 3C         [24] 1145 	mov	_TH0,#0x3c
                                   1146 ;	Computer.c:107: TL0 = (65536 - 50000) % 256;
      0004D6 75 8A B0         [24] 1147 	mov	_TL0,#0xb0
                                   1148 ;	Computer.c:108: timer_count++;
      0004D9 05 18            [12] 1149 	inc	_timer_count
                                   1150 ;	Computer.c:109: if (timer_count == 20)
      0004DB 74 14            [12] 1151 	mov	a,#0x14
      0004DD B5 18 09         [24] 1152 	cjne	a,_timer_count,00103$
                                   1153 ;	Computer.c:111: Keypad_flag = 1;
                                   1154 ;	assignBit
      0004E0 D2 01            [12] 1155 	setb	_Keypad_flag
                                   1156 ;	Computer.c:112: TF0 = 0;
                                   1157 ;	assignBit
      0004E2 C2 8D            [12] 1158 	clr	_TF0
                                   1159 ;	Computer.c:114: TR0 = 0;
                                   1160 ;	assignBit
      0004E4 C2 8C            [12] 1161 	clr	_TR0
                                   1162 ;	Computer.c:116: timer_count = 0;
      0004E6 75 18 00         [24] 1163 	mov	_timer_count,#0x00
      0004E9                       1164 00103$:
                                   1165 ;	Computer.c:118: }
      0004E9 D0 D0            [24] 1166 	pop	psw
      0004EB D0 E0            [24] 1167 	pop	acc
      0004ED 32               [24] 1168 	reti
                                   1169 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1170 ;	eliminated unneeded push/pop dpl
                                   1171 ;	eliminated unneeded push/pop dph
                                   1172 ;	eliminated unneeded push/pop b
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'Base_init'
                                   1175 ;------------------------------------------------------------
                                   1176 ;	Computer.c:120: void Base_init(void)
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function Base_init
                                   1179 ;	-----------------------------------------
      0004EE                       1180 _Base_init:
                           000007  1181 	ar7 = 0x07
                           000006  1182 	ar6 = 0x06
                           000005  1183 	ar5 = 0x05
                           000004  1184 	ar4 = 0x04
                           000003  1185 	ar3 = 0x03
                           000002  1186 	ar2 = 0x02
                           000001  1187 	ar1 = 0x01
                           000000  1188 	ar0 = 0x00
                                   1189 ;	Computer.c:122: IE = 0x8a;
      0004EE 75 A8 8A         [24] 1190 	mov	_IE,#0x8a
                                   1191 ;	Computer.c:124: TMOD = 0x10;
      0004F1 75 89 10         [24] 1192 	mov	_TMOD,#0x10
                                   1193 ;	Computer.c:126: }
      0004F4 22               [24] 1194 	ret
                                   1195 ;------------------------------------------------------------
                                   1196 ;Allocation info for local variables in function 'Base_timer'
                                   1197 ;------------------------------------------------------------
                                   1198 ;	Computer.c:128: void Base_timer(void) __interrupt(3) __using(2)
                                   1199 ;	-----------------------------------------
                                   1200 ;	 function Base_timer
                                   1201 ;	-----------------------------------------
      0004F5                       1202 _Base_timer:
                           000017  1203 	ar7 = 0x17
                           000016  1204 	ar6 = 0x16
                           000015  1205 	ar5 = 0x15
                           000014  1206 	ar4 = 0x14
                           000013  1207 	ar3 = 0x13
                           000012  1208 	ar2 = 0x12
                           000011  1209 	ar1 = 0x11
                           000010  1210 	ar0 = 0x10
      0004F5 C0 D0            [24] 1211 	push	psw
      0004F7 75 D0 10         [24] 1212 	mov	psw,#0x10
                                   1213 ;	Computer.c:130: TH1 = (65536 - 50000) / 256;
      0004FA 75 8D 3C         [24] 1214 	mov	_TH1,#0x3c
                                   1215 ;	Computer.c:131: TL1 = (65536 - 50000) % 256;
      0004FD 75 8B B0         [24] 1216 	mov	_TL1,#0xb0
                                   1217 ;	Computer.c:132: base_flag = 1;
      000500 78 A2            [12] 1218 	mov	r0,#_base_flag
      000502 76 01            [12] 1219 	mov	@r0,#0x01
                                   1220 ;	Computer.c:133: TF1 = 0;
                                   1221 ;	assignBit
      000504 C2 8F            [12] 1222 	clr	_TF1
                                   1223 ;	Computer.c:135: TR1 = 0;
                                   1224 ;	assignBit
      000506 C2 8E            [12] 1225 	clr	_TR1
                                   1226 ;	Computer.c:137: }
      000508 D0 D0            [24] 1227 	pop	psw
      00050A 32               [24] 1228 	reti
                                   1229 ;	eliminated unneeded push/pop dpl
                                   1230 ;	eliminated unneeded push/pop dph
                                   1231 ;	eliminated unneeded push/pop b
                                   1232 ;	eliminated unneeded push/pop acc
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'clean'
                                   1235 ;------------------------------------------------------------
                                   1236 ;f                         Allocated to registers r7 
                                   1237 ;------------------------------------------------------------
                                   1238 ;	Computer.c:139: void clean()
                                   1239 ;	-----------------------------------------
                                   1240 ;	 function clean
                                   1241 ;	-----------------------------------------
      00050B                       1242 _clean:
                           000007  1243 	ar7 = 0x07
                           000006  1244 	ar6 = 0x06
                           000005  1245 	ar5 = 0x05
                           000004  1246 	ar4 = 0x04
                           000003  1247 	ar3 = 0x03
                           000002  1248 	ar2 = 0x02
                           000001  1249 	ar1 = 0x01
                           000000  1250 	ar0 = 0x00
                                   1251 ;	Computer.c:141: flag = 0;
      00050B 78 7B            [12] 1252 	mov	r0,#_flag
      00050D 76 00            [12] 1253 	mov	@r0,#0x00
                                   1254 ;	Computer.c:142: for (char f = 0; f < 8; f++)
      00050F 7F 00            [12] 1255 	mov	r7,#0x00
      000511                       1256 00103$:
      000511 BF 08 00         [24] 1257 	cjne	r7,#0x08,00120$
      000514                       1258 00120$:
      000514 50 09            [24] 1259 	jnc	00105$
                                   1260 ;	Computer.c:144: buffer[f] = -1;
      000516 EF               [12] 1261 	mov	a,r7
      000517 24 73            [12] 1262 	add	a, #_buffer
      000519 F8               [12] 1263 	mov	r0,a
      00051A 76 FF            [12] 1264 	mov	@r0,#0xff
                                   1265 ;	Computer.c:142: for (char f = 0; f < 8; f++)
      00051C 0F               [12] 1266 	inc	r7
      00051D 80 F2            [24] 1267 	sjmp	00103$
      00051F                       1268 00105$:
                                   1269 ;	Computer.c:147: }
      00051F 22               [24] 1270 	ret
                                   1271 ;------------------------------------------------------------
                                   1272 ;Allocation info for local variables in function 'main'
                                   1273 ;------------------------------------------------------------
                                   1274 ;count                     Allocated to registers r7 
                                   1275 ;m                         Allocated to registers r6 
                                   1276 ;i                         Allocated to registers r7 
                                   1277 ;m                         Allocated to registers r7 
                                   1278 ;m                         Allocated to registers r7 
                                   1279 ;m                         Allocated to registers r7 
                                   1280 ;m                         Allocated to registers r7 
                                   1281 ;count                     Allocated to registers 
                                   1282 ;m                         Allocated to registers r7 
                                   1283 ;num_1                     Allocated with name '_main_num_1_10000_38'
                                   1284 ;num_2                     Allocated with name '_main_num_2_10000_38'
                                   1285 ;ans                       Allocated with name '_main_ans_10000_38'
                                   1286 ;op                        Allocated with name '_main_op_10000_38'
                                   1287 ;negative_num1             Allocated with name '_main_negative_num1_10000_38'
                                   1288 ;negative_num2             Allocated with name '_main_negative_num2_10000_38'
                                   1289 ;negative_ans              Allocated with name '_main_negative_ans_10000_38'
                                   1290 ;------------------------------------------------------------
                                   1291 ;	Computer.c:148: void main(void)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function main
                                   1294 ;	-----------------------------------------
      000520                       1295 _main:
                                   1296 ;	Computer.c:150: __idata int num_1 = 0, num_2 = 0, ans = 0;
      000520 78 A3            [12] 1297 	mov	r0,#_main_num_1_10000_38
      000522 E4               [12] 1298 	clr	a
      000523 F6               [12] 1299 	mov	@r0,a
      000524 08               [12] 1300 	inc	r0
      000525 F6               [12] 1301 	mov	@r0,a
      000526 78 A5            [12] 1302 	mov	r0,#_main_num_2_10000_38
      000528 F6               [12] 1303 	mov	@r0,a
      000529 08               [12] 1304 	inc	r0
      00052A F6               [12] 1305 	mov	@r0,a
      00052B 78 A7            [12] 1306 	mov	r0,#_main_ans_10000_38
      00052D F6               [12] 1307 	mov	@r0,a
      00052E 08               [12] 1308 	inc	r0
      00052F F6               [12] 1309 	mov	@r0,a
                                   1310 ;	Computer.c:151: __idata char op = '$';
      000530 78 A9            [12] 1311 	mov	r0,#_main_op_10000_38
      000532 76 24            [12] 1312 	mov	@r0,#0x24
                                   1313 ;	Computer.c:153: __idata int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
      000534 78 AA            [12] 1314 	mov	r0,#_main_negative_num1_10000_38
      000536 76 FF            [12] 1315 	mov	@r0,#0xff
      000538 08               [12] 1316 	inc	r0
      000539 76 FF            [12] 1317 	mov	@r0,#0xff
      00053B 78 AC            [12] 1318 	mov	r0,#_main_negative_num2_10000_38
      00053D 76 FF            [12] 1319 	mov	@r0,#0xff
      00053F 08               [12] 1320 	inc	r0
      000540 76 FF            [12] 1321 	mov	@r0,#0xff
      000542 78 AE            [12] 1322 	mov	r0,#_main_negative_ans_10000_38
      000544 F6               [12] 1323 	mov	@r0,a
      000545 08               [12] 1324 	inc	r0
      000546 F6               [12] 1325 	mov	@r0,a
                                   1326 ;	Computer.c:154: Base_init();
      000547 12 04 EE         [24] 1327 	lcall	_Base_init
                                   1328 ;	Computer.c:156: Keypad_Debounce_init();
      00054A 12 04 C8         [24] 1329 	lcall	_Keypad_Debounce_init
                                   1330 ;	Computer.c:159: while (1)
      00054D                       1331 00131$:
                                   1332 ;	Computer.c:161: TR0 = 1;
                                   1333 ;	assignBit
      00054D D2 8C            [12] 1334 	setb	_TR0
                                   1335 ;	Computer.c:163: number = ReadKeypad();
      00054F 12 0A DA         [24] 1336 	lcall	_ReadKeypad
                                   1337 ;	Computer.c:165: if (number >= 0 && number <= 15)
      000552 E5 82            [12] 1338 	mov	a,dpl
      000554 F5 19            [12] 1339 	mov	_number,a
      000556 24 F0            [12] 1340 	add	a,#0xff - 0x0f
      000558 50 03            [24] 1341 	jnc	00313$
      00055A 02 08 68         [24] 1342 	ljmp	00128$
      00055D                       1343 00313$:
                                   1344 ;	Computer.c:168: if (number == 10)
      00055D 74 0A            [12] 1345 	mov	a,#0x0a
      00055F B5 19 33         [24] 1346 	cjne	a,_number,00103$
                                   1347 ;	Computer.c:170: TR1 = 1;
                                   1348 ;	assignBit
      000562 D2 8E            [12] 1349 	setb	_TR1
                                   1350 ;	Computer.c:172: char count = history_start[history_count];
      000564 78 A0            [12] 1351 	mov	r0,#_history_count
      000566 E6               [12] 1352 	mov	a,@r0
      000567 24 86            [12] 1353 	add	a, #_history_start
      000569 F9               [12] 1354 	mov	r1,a
      00056A 87 07            [24] 1355 	mov	ar7,@r1
                                   1356 ;	Computer.c:173: for (char m = 0; m < 100; m++)
      00056C 7E 00            [12] 1357 	mov	r6,#0x00
      00056E                       1358 00134$:
      00056E BE 64 00         [24] 1359 	cjne	r6,#0x64,00316$
      000571                       1360 00316$:
      000571 50 1A            [24] 1361 	jnc	00101$
                                   1362 ;	Computer.c:175: Show_History(history, start, count);
      000573 78 A1            [12] 1363 	mov	r0,#_start
      000575 86 5B            [24] 1364 	mov	_Show_History_PARM_2,@r0
      000577 8F 5C            [24] 1365 	mov	_Show_History_PARM_3,r7
      000579 90 00 7C         [24] 1366 	mov	dptr,#_history
      00057C 75 F0 40         [24] 1367 	mov	b, #0x40
      00057F C0 07            [24] 1368 	push	ar7
      000581 C0 06            [24] 1369 	push	ar6
      000583 12 09 85         [24] 1370 	lcall	_Show_History
      000586 D0 06            [24] 1371 	pop	ar6
      000588 D0 07            [24] 1372 	pop	ar7
                                   1373 ;	Computer.c:173: for (char m = 0; m < 100; m++)
      00058A 0E               [12] 1374 	inc	r6
      00058B 80 E1            [24] 1375 	sjmp	00134$
      00058D                       1376 00101$:
                                   1377 ;	Computer.c:177: start += count;
      00058D 78 A1            [12] 1378 	mov	r0,#_start
      00058F EF               [12] 1379 	mov	a,r7
      000590 26               [12] 1380 	add	a, @r0
      000591 F6               [12] 1381 	mov	@r0,a
                                   1382 ;	Computer.c:178: history_count++;
      000592 78 A0            [12] 1383 	mov	r0,#_history_count
      000594 06               [12] 1384 	inc	@r0
      000595                       1385 00103$:
                                   1386 ;	Computer.c:182: if (base_flag == 1)
      000595 78 A2            [12] 1387 	mov	r0,#_base_flag
      000597 B6 01 02         [24] 1388 	cjne	@r0,#0x01,00318$
      00059A 80 03            [24] 1389 	sjmp	00319$
      00059C                       1390 00318$:
      00059C 02 06 8D         [24] 1391 	ljmp	00125$
      00059F                       1392 00319$:
                                   1393 ;	Computer.c:184: for (char i = 0; i < 8; i++)
      00059F 7F 00            [12] 1394 	mov	r7,#0x00
      0005A1                       1395 00137$:
      0005A1 BF 08 00         [24] 1396 	cjne	r7,#0x08,00320$
      0005A4                       1397 00320$:
      0005A4 50 36            [24] 1398 	jnc	00104$
                                   1399 ;	Computer.c:186: flag <<= 1;
      0005A6 78 7B            [12] 1400 	mov	r0,#_flag
      0005A8 86 06            [24] 1401 	mov	ar6,@r0
      0005AA 78 7B            [12] 1402 	mov	r0,#_flag
      0005AC EE               [12] 1403 	mov	a,r6
      0005AD 2E               [12] 1404 	add	a,r6
      0005AE F6               [12] 1405 	mov	@r0,a
                                   1406 ;	Computer.c:187: flag |= Base_num[base_index - 1] & 1;
      0005AF 78 9F            [12] 1407 	mov	r0,#_base_index
      0005B1 86 06            [24] 1408 	mov	ar6,@r0
      0005B3 1E               [12] 1409 	dec	r6
      0005B4 EE               [12] 1410 	mov	a,r6
      0005B5 2E               [12] 1411 	add	a,r6
      0005B6 24 90            [12] 1412 	add	a, #_Base_num
      0005B8 F9               [12] 1413 	mov	r1,a
      0005B9 87 06            [24] 1414 	mov	ar6,@r1
      0005BB 53 06 01         [24] 1415 	anl	ar6,#0x01
      0005BE 78 7B            [12] 1416 	mov	r0,#_flag
      0005C0 86 E0            [24] 1417 	mov	acc,@r0
      0005C2 4E               [12] 1418 	orl	a,r6
      0005C3 78 7B            [12] 1419 	mov	r0,#_flag
      0005C5 F6               [12] 1420 	mov	@r0,a
                                   1421 ;	Computer.c:188: Base_num[base_index - 1] >>= 1;
      0005C6 87 05            [24] 1422 	mov	ar5,@r1
      0005C8 09               [12] 1423 	inc	r1
      0005C9 87 06            [24] 1424 	mov	ar6,@r1
      0005CB 19               [12] 1425 	dec	r1
      0005CC EE               [12] 1426 	mov	a,r6
      0005CD C3               [12] 1427 	clr	c
      0005CE 13               [12] 1428 	rrc	a
      0005CF CD               [12] 1429 	xch	a,r5
      0005D0 13               [12] 1430 	rrc	a
      0005D1 CD               [12] 1431 	xch	a,r5
      0005D2 FE               [12] 1432 	mov	r6,a
      0005D3 A7 05            [24] 1433 	mov	@r1,ar5
      0005D5 09               [12] 1434 	inc	r1
      0005D6 A7 06            [24] 1435 	mov	@r1,ar6
      0005D8 19               [12] 1436 	dec	r1
                                   1437 ;	Computer.c:184: for (char i = 0; i < 8; i++)
      0005D9 0F               [12] 1438 	inc	r7
      0005DA 80 C5            [24] 1439 	sjmp	00137$
      0005DC                       1440 00104$:
                                   1441 ;	Computer.c:190: if (negative_base[base_index - 1] == 1)
      0005DC 78 9F            [12] 1442 	mov	r0,#_base_index
      0005DE E6               [12] 1443 	mov	a,@r0
      0005DF 14               [12] 1444 	dec	a
      0005E0 24 9A            [12] 1445 	add	a, #_negative_base
      0005E2 F9               [12] 1446 	mov	r1,a
      0005E3 87 07            [24] 1447 	mov	ar7,@r1
      0005E5 BF 01 53         [24] 1448 	cjne	r7,#0x01,00169$
                                   1449 ;	Computer.c:192: flag = ~flag;
      0005E8 78 7B            [12] 1450 	mov	r0,#_flag
      0005EA E6               [12] 1451 	mov	a,@r0
      0005EB F4               [12] 1452 	cpl	a
      0005EC F6               [12] 1453 	mov	@r0,a
                                   1454 ;	Computer.c:193: flag += 1;
      0005ED 78 7B            [12] 1455 	mov	r0,#_flag
      0005EF 86 07            [24] 1456 	mov	ar7,@r0
      0005F1 78 7B            [12] 1457 	mov	r0,#_flag
      0005F3 EF               [12] 1458 	mov	a,r7
      0005F4 04               [12] 1459 	inc	a
      0005F5 F6               [12] 1460 	mov	@r0,a
                                   1461 ;	Computer.c:194: for (char m = 0; m < 8; m++)
      0005F6 7F 00            [12] 1462 	mov	r7,#0x00
      0005F8                       1463 00140$:
      0005F8 BF 08 00         [24] 1464 	cjne	r7,#0x08,00324$
      0005FB                       1465 00324$:
      0005FB 50 24            [24] 1466 	jnc	00105$
                                   1467 ;	Computer.c:196: SaveNumber(flag & 1, 7, buffer);
      0005FD 78 7B            [12] 1468 	mov	r0,#_flag
      0005FF 86 E0            [24] 1469 	mov	acc,@r0
      000601 54 01            [12] 1470 	anl	a,#0x01
      000603 F5 82            [12] 1471 	mov	dpl,a
      000605 75 62 73         [24] 1472 	mov	_SaveNumber_PARM_3,#_buffer
      000608 75 63 00         [24] 1473 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      00060B 75 64 40         [24] 1474 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      00060E 75 61 07         [24] 1475 	mov	_SaveNumber_PARM_2,#0x07
      000611 C0 07            [24] 1476 	push	ar7
      000613 12 01 7E         [24] 1477 	lcall	_SaveNumber
      000616 D0 07            [24] 1478 	pop	ar7
                                   1479 ;	Computer.c:197: flag >>= 1;
      000618 78 7B            [12] 1480 	mov	r0,#_flag
      00061A E6               [12] 1481 	mov	a,@r0
      00061B C3               [12] 1482 	clr	c
      00061C 13               [12] 1483 	rrc	a
      00061D F6               [12] 1484 	mov	@r0,a
                                   1485 ;	Computer.c:194: for (char m = 0; m < 8; m++)
      00061E 0F               [12] 1486 	inc	r7
      00061F 80 D7            [24] 1487 	sjmp	00140$
      000621                       1488 00105$:
                                   1489 ;	Computer.c:199: for (char m = 0; m < 100; m++)
      000621 7F 00            [12] 1490 	mov	r7,#0x00
      000623                       1491 00143$:
      000623 BF 64 00         [24] 1492 	cjne	r7,#0x64,00326$
      000626                       1493 00326$:
      000626 50 58            [24] 1494 	jnc	00111$
                                   1495 ;	Computer.c:201: Show_Ans(buffer, 0xff);
      000628 75 56 FF         [24] 1496 	mov	_Show_Ans_PARM_2,#0xff
      00062B 90 00 73         [24] 1497 	mov	dptr,#_buffer
      00062E 75 F0 40         [24] 1498 	mov	b, #0x40
      000631 C0 07            [24] 1499 	push	ar7
      000633 12 08 FA         [24] 1500 	lcall	_Show_Ans
      000636 D0 07            [24] 1501 	pop	ar7
                                   1502 ;	Computer.c:199: for (char m = 0; m < 100; m++)
      000638 0F               [12] 1503 	inc	r7
                                   1504 ;	Computer.c:206: for (char m = 0; m < 8; m++)
      000639 80 E8            [24] 1505 	sjmp	00143$
      00063B                       1506 00169$:
      00063B 7F 00            [12] 1507 	mov	r7,#0x00
      00063D                       1508 00146$:
      00063D BF 08 00         [24] 1509 	cjne	r7,#0x08,00328$
      000640                       1510 00328$:
      000640 50 24            [24] 1511 	jnc	00107$
                                   1512 ;	Computer.c:208: SaveNumber(flag & 1, 7, buffer);
      000642 78 7B            [12] 1513 	mov	r0,#_flag
      000644 86 E0            [24] 1514 	mov	acc,@r0
      000646 54 01            [12] 1515 	anl	a,#0x01
      000648 F5 82            [12] 1516 	mov	dpl,a
      00064A 75 62 73         [24] 1517 	mov	_SaveNumber_PARM_3,#_buffer
      00064D 75 63 00         [24] 1518 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      000650 75 64 40         [24] 1519 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      000653 75 61 07         [24] 1520 	mov	_SaveNumber_PARM_2,#0x07
      000656 C0 07            [24] 1521 	push	ar7
      000658 12 01 7E         [24] 1522 	lcall	_SaveNumber
      00065B D0 07            [24] 1523 	pop	ar7
                                   1524 ;	Computer.c:209: flag >>= 1;
      00065D 78 7B            [12] 1525 	mov	r0,#_flag
      00065F E6               [12] 1526 	mov	a,@r0
      000660 C3               [12] 1527 	clr	c
      000661 13               [12] 1528 	rrc	a
      000662 F6               [12] 1529 	mov	@r0,a
                                   1530 ;	Computer.c:206: for (char m = 0; m < 8; m++)
      000663 0F               [12] 1531 	inc	r7
      000664 80 D7            [24] 1532 	sjmp	00146$
      000666                       1533 00107$:
                                   1534 ;	Computer.c:211: for (char m = 0; m < 100; m++)
      000666 7F 00            [12] 1535 	mov	r7,#0x00
      000668                       1536 00149$:
      000668 BF 64 00         [24] 1537 	cjne	r7,#0x64,00330$
      00066B                       1538 00330$:
      00066B 50 13            [24] 1539 	jnc	00111$
                                   1540 ;	Computer.c:213: Show(buffer, 0xff);
      00066D 75 52 FF         [24] 1541 	mov	_Show_PARM_2,#0xff
      000670 90 00 73         [24] 1542 	mov	dptr,#_buffer
      000673 75 F0 40         [24] 1543 	mov	b, #0x40
      000676 C0 07            [24] 1544 	push	ar7
      000678 12 08 8A         [24] 1545 	lcall	_Show
      00067B D0 07            [24] 1546 	pop	ar7
                                   1547 ;	Computer.c:211: for (char m = 0; m < 100; m++)
      00067D 0F               [12] 1548 	inc	r7
      00067E 80 E8            [24] 1549 	sjmp	00149$
      000680                       1550 00111$:
                                   1551 ;	Computer.c:217: base_flag = 0;
      000680 78 A2            [12] 1552 	mov	r0,#_base_flag
      000682 76 00            [12] 1553 	mov	@r0,#0x00
                                   1554 ;	Computer.c:218: base_index--;
      000684 78 9F            [12] 1555 	mov	r0,#_base_index
      000686 16               [12] 1556 	dec	@r0
                                   1557 ;	Computer.c:219: clean();
      000687 12 05 0B         [24] 1558 	lcall	_clean
      00068A 02 08 68         [24] 1559 	ljmp	00128$
      00068D                       1560 00125$:
                                   1561 ;	Computer.c:222: else if (Keypad_flag == 1)
      00068D 20 01 03         [24] 1562 	jb	_Keypad_flag,00332$
      000690 02 08 68         [24] 1563 	ljmp	00128$
      000693                       1564 00332$:
                                   1565 ;	Computer.c:226: flag <<= 1;
      000693 78 7B            [12] 1566 	mov	r0,#_flag
      000695 86 07            [24] 1567 	mov	ar7,@r0
      000697 78 7B            [12] 1568 	mov	r0,#_flag
      000699 EF               [12] 1569 	mov	a,r7
      00069A 2F               [12] 1570 	add	a,r7
      00069B F6               [12] 1571 	mov	@r0,a
                                   1572 ;	Computer.c:227: flag |= 0x01;
      00069C 78 7B            [12] 1573 	mov	r0,#_flag
      00069E E6               [12] 1574 	mov	a,@r0
      00069F 44 01            [12] 1575 	orl	a,#0x01
      0006A1 F6               [12] 1576 	mov	@r0,a
                                   1577 ;	Computer.c:229: SaveNumber(number, 7, buffer);
      0006A2 75 62 73         [24] 1578 	mov	_SaveNumber_PARM_3,#_buffer
      0006A5 75 63 00         [24] 1579 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0006A8 75 64 40         [24] 1580 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0006AB 75 61 07         [24] 1581 	mov	_SaveNumber_PARM_2,#0x07
      0006AE 85 19 82         [24] 1582 	mov	dpl, _number
      0006B1 12 01 7E         [24] 1583 	lcall	_SaveNumber
                                   1584 ;	Computer.c:231: Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
      0006B4 75 1B A5         [24] 1585 	mov	_Update_Expression_PARM_2,#_main_num_2_10000_38
      0006B7 75 1C 00         [24] 1586 	mov	(_Update_Expression_PARM_2 + 1),#0x00
      0006BA 75 1D 40         [24] 1587 	mov	(_Update_Expression_PARM_2 + 2),#0x40
      0006BD 75 1E A9         [24] 1588 	mov	_Update_Expression_PARM_3,#_main_op_10000_38
      0006C0 75 1F 00         [24] 1589 	mov	(_Update_Expression_PARM_3 + 1),#0x00
      0006C3 75 20 40         [24] 1590 	mov	(_Update_Expression_PARM_3 + 2),#0x40
      0006C6 75 21 AA         [24] 1591 	mov	_Update_Expression_PARM_4,#_main_negative_num1_10000_38
      0006C9 75 22 00         [24] 1592 	mov	(_Update_Expression_PARM_4 + 1),#0x00
      0006CC 75 23 40         [24] 1593 	mov	(_Update_Expression_PARM_4 + 2),#0x40
      0006CF 75 24 AC         [24] 1594 	mov	_Update_Expression_PARM_5,#_main_negative_num2_10000_38
      0006D2 75 25 00         [24] 1595 	mov	(_Update_Expression_PARM_5 + 1),#0x00
      0006D5 75 26 40         [24] 1596 	mov	(_Update_Expression_PARM_5 + 2),#0x40
      0006D8 90 00 A3         [24] 1597 	mov	dptr,#_main_num_1_10000_38
      0006DB 75 F0 40         [24] 1598 	mov	b, #0x40
      0006DE 12 01 C7         [24] 1599 	lcall	_Update_Expression
                                   1600 ;	Computer.c:233: if (cal_flag == 1)
      0006E1 20 00 03         [24] 1601 	jb	_cal_flag,00333$
      0006E4 02 08 66         [24] 1602 	ljmp	00121$
      0006E7                       1603 00333$:
                                   1604 ;	Computer.c:236: Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
      0006E7 75 34 A7         [24] 1605 	mov	_Calculate_PARM_6,#_main_ans_10000_38
      0006EA 75 35 00         [24] 1606 	mov	(_Calculate_PARM_6 + 1),#0x00
      0006ED 75 36 40         [24] 1607 	mov	(_Calculate_PARM_6 + 2),#0x40
      0006F0 78 A5            [12] 1608 	mov	r0,#_main_num_2_10000_38
      0006F2 86 2D            [24] 1609 	mov	_Calculate_PARM_2,@r0
      0006F4 08               [12] 1610 	inc	r0
      0006F5 86 2E            [24] 1611 	mov	(_Calculate_PARM_2 + 1),@r0
      0006F7 78 A9            [12] 1612 	mov	r0,#_main_op_10000_38
      0006F9 86 2F            [24] 1613 	mov	_Calculate_PARM_3,@r0
      0006FB 78 AA            [12] 1614 	mov	r0,#_main_negative_num1_10000_38
      0006FD 86 30            [24] 1615 	mov	_Calculate_PARM_4,@r0
      0006FF 08               [12] 1616 	inc	r0
      000700 86 31            [24] 1617 	mov	(_Calculate_PARM_4 + 1),@r0
      000702 78 AC            [12] 1618 	mov	r0,#_main_negative_num2_10000_38
      000704 86 32            [24] 1619 	mov	_Calculate_PARM_5,@r0
      000706 08               [12] 1620 	inc	r0
      000707 86 33            [24] 1621 	mov	(_Calculate_PARM_5 + 1),@r0
      000709 78 A3            [12] 1622 	mov	r0,#_main_num_1_10000_38
      00070B 86 82            [24] 1623 	mov	dpl, @r0
      00070D 08               [12] 1624 	inc	r0
      00070E 86 83            [24] 1625 	mov	dph, @r0
      000710 12 03 12         [24] 1626 	lcall	_Calculate
                                   1627 ;	Computer.c:239: if (ans < 0)
      000713 78 A8            [12] 1628 	mov	r0,#(_main_ans_10000_38 + 1)
      000715 E6               [12] 1629 	mov	a,@r0
      000716 30 E7 19         [24] 1630 	jnb	acc.7,00113$
                                   1631 ;	Computer.c:241: ans = -ans;
      000719 78 A7            [12] 1632 	mov	r0,#_main_ans_10000_38
      00071B C3               [12] 1633 	clr	c
      00071C E4               [12] 1634 	clr	a
      00071D 96               [12] 1635 	subb	a,@r0
      00071E F6               [12] 1636 	mov	@r0,a
      00071F 08               [12] 1637 	inc	r0
      000720 E4               [12] 1638 	clr	a
      000721 96               [12] 1639 	subb	a,@r0
      000722 F6               [12] 1640 	mov	@r0,a
                                   1641 ;	Computer.c:242: negative_ans = 1;
      000723 78 AE            [12] 1642 	mov	r0,#_main_negative_ans_10000_38
      000725 76 01            [12] 1643 	mov	@r0,#0x01
      000727 08               [12] 1644 	inc	r0
      000728 76 00            [12] 1645 	mov	@r0,#0x00
                                   1646 ;	Computer.c:243: negative_base[base_index] = 1;
      00072A 78 9F            [12] 1647 	mov	r0,#_base_index
      00072C E6               [12] 1648 	mov	a,@r0
      00072D 24 9A            [12] 1649 	add	a, #_negative_base
      00072F F8               [12] 1650 	mov	r0,a
      000730 76 01            [12] 1651 	mov	@r0,#0x01
      000732                       1652 00113$:
                                   1653 ;	Computer.c:245: Base_num[base_index] = ans;
      000732 78 9F            [12] 1654 	mov	r0,#_base_index
      000734 E6               [12] 1655 	mov	a,@r0
      000735 25 E0            [12] 1656 	add	a,acc
      000737 24 90            [12] 1657 	add	a, #_Base_num
      000739 F8               [12] 1658 	mov	r0,a
      00073A 79 A7            [12] 1659 	mov	r1,#_main_ans_10000_38
      00073C E7               [12] 1660 	mov	a,@r1
      00073D F6               [12] 1661 	mov	@r0,a
      00073E 08               [12] 1662 	inc	r0
      00073F 09               [12] 1663 	inc	r1
      000740 E7               [12] 1664 	mov	a,@r1
      000741 F6               [12] 1665 	mov	@r0,a
                                   1666 ;	Computer.c:246: base_index++;
      000742 78 9F            [12] 1667 	mov	r0,#_base_index
      000744 06               [12] 1668 	inc	@r0
                                   1669 ;	Computer.c:248: clean();
      000745 12 05 0B         [24] 1670 	lcall	_clean
                                   1671 ;	Computer.c:250: do
      000748                       1672 00114$:
                                   1673 ;	Computer.c:252: SaveNumber(ans % 10, 9, history);
      000748 75 61 0A         [24] 1674 	mov	__modsint_PARM_2,#0x0a
      00074B 75 62 00         [24] 1675 	mov	(__modsint_PARM_2 + 1),#0x00
      00074E 78 A7            [12] 1676 	mov	r0,#_main_ans_10000_38
      000750 86 82            [24] 1677 	mov	dpl, @r0
      000752 08               [12] 1678 	inc	r0
      000753 86 83            [24] 1679 	mov	dph, @r0
      000755 12 0B 8B         [24] 1680 	lcall	__modsint
      000758 75 62 7C         [24] 1681 	mov	_SaveNumber_PARM_3,#_history
      00075B 75 63 00         [24] 1682 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      00075E 75 64 40         [24] 1683 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      000761 75 61 09         [24] 1684 	mov	_SaveNumber_PARM_2,#0x09
      000764 12 01 7E         [24] 1685 	lcall	_SaveNumber
                                   1686 ;	Computer.c:253: SaveNumber(ans % 10, 7, buffer);
      000767 75 61 0A         [24] 1687 	mov	__modsint_PARM_2,#0x0a
      00076A 75 62 00         [24] 1688 	mov	(__modsint_PARM_2 + 1),#0x00
      00076D 78 A7            [12] 1689 	mov	r0,#_main_ans_10000_38
      00076F 86 82            [24] 1690 	mov	dpl, @r0
      000771 08               [12] 1691 	inc	r0
      000772 86 83            [24] 1692 	mov	dph, @r0
      000774 12 0B 8B         [24] 1693 	lcall	__modsint
      000777 75 62 73         [24] 1694 	mov	_SaveNumber_PARM_3,#_buffer
      00077A 75 63 00         [24] 1695 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      00077D 75 64 40         [24] 1696 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      000780 75 61 07         [24] 1697 	mov	_SaveNumber_PARM_2,#0x07
      000783 12 01 7E         [24] 1698 	lcall	_SaveNumber
                                   1699 ;	Computer.c:254: ans /= 10;
      000786 75 61 0A         [24] 1700 	mov	__divsint_PARM_2,#0x0a
      000789 75 62 00         [24] 1701 	mov	(__divsint_PARM_2 + 1),#0x00
      00078C 78 A7            [12] 1702 	mov	r0,#_main_ans_10000_38
      00078E 86 82            [24] 1703 	mov	dpl, @r0
      000790 08               [12] 1704 	inc	r0
      000791 86 83            [24] 1705 	mov	dph, @r0
      000793 12 0B C1         [24] 1706 	lcall	__divsint
      000796 E5 82            [12] 1707 	mov	a, dpl
      000798 85 83 F0         [24] 1708 	mov	b, dph
      00079B 78 A7            [12] 1709 	mov	r0,#_main_ans_10000_38
      00079D F6               [12] 1710 	mov	@r0,a
      00079E 08               [12] 1711 	inc	r0
      00079F A6 F0            [24] 1712 	mov	@r0,b
                                   1713 ;	Computer.c:255: flag <<= 1;
      0007A1 78 7B            [12] 1714 	mov	r0,#_flag
      0007A3 86 07            [24] 1715 	mov	ar7,@r0
      0007A5 78 7B            [12] 1716 	mov	r0,#_flag
      0007A7 EF               [12] 1717 	mov	a,r7
      0007A8 2F               [12] 1718 	add	a,r7
      0007A9 F6               [12] 1719 	mov	@r0,a
                                   1720 ;	Computer.c:256: flag |= 0x01;
      0007AA 78 7B            [12] 1721 	mov	r0,#_flag
      0007AC E6               [12] 1722 	mov	a,@r0
      0007AD 44 01            [12] 1723 	orl	a,#0x01
      0007AF F6               [12] 1724 	mov	@r0,a
                                   1725 ;	Computer.c:257: } while (ans);
      0007B0 78 A7            [12] 1726 	mov	r0,#_main_ans_10000_38
      0007B2 E6               [12] 1727 	mov	a,@r0
      0007B3 08               [12] 1728 	inc	r0
      0007B4 46               [12] 1729 	orl	a,@r0
      0007B5 70 91            [24] 1730 	jnz	00114$
                                   1731 ;	Computer.c:259: if (negative_ans == 1)
      0007B7 78 AE            [12] 1732 	mov	r0,#_main_negative_ans_10000_38
      0007B9 B6 01 37         [24] 1733 	cjne	@r0,#0x01,00118$
      0007BC 08               [12] 1734 	inc	r0
      0007BD B6 00 33         [24] 1735 	cjne	@r0,#0x00,00118$
                                   1736 ;	Computer.c:261: SaveNumber(13, 9, history);
      0007C0 75 62 7C         [24] 1737 	mov	_SaveNumber_PARM_3,#_history
      0007C3 75 63 00         [24] 1738 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0007C6 75 64 40         [24] 1739 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0007C9 75 61 09         [24] 1740 	mov	_SaveNumber_PARM_2,#0x09
      0007CC 75 82 0D         [24] 1741 	mov	dpl, #0x0d
      0007CF 12 01 7E         [24] 1742 	lcall	_SaveNumber
                                   1743 ;	Computer.c:262: SaveNumber(13, 7, buffer);
      0007D2 75 62 73         [24] 1744 	mov	_SaveNumber_PARM_3,#_buffer
      0007D5 75 63 00         [24] 1745 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0007D8 75 64 40         [24] 1746 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0007DB 75 61 07         [24] 1747 	mov	_SaveNumber_PARM_2,#0x07
      0007DE 75 82 0D         [24] 1748 	mov	dpl, #0x0d
      0007E1 12 01 7E         [24] 1749 	lcall	_SaveNumber
                                   1750 ;	Computer.c:263: flag <<= 1;
      0007E4 78 7B            [12] 1751 	mov	r0,#_flag
      0007E6 86 07            [24] 1752 	mov	ar7,@r0
      0007E8 78 7B            [12] 1753 	mov	r0,#_flag
      0007EA EF               [12] 1754 	mov	a,r7
      0007EB 2F               [12] 1755 	add	a,r7
      0007EC F6               [12] 1756 	mov	@r0,a
                                   1757 ;	Computer.c:264: flag |= 0x01;
      0007ED 78 7B            [12] 1758 	mov	r0,#_flag
      0007EF E6               [12] 1759 	mov	a,@r0
      0007F0 44 01            [12] 1760 	orl	a,#0x01
      0007F2 F6               [12] 1761 	mov	@r0,a
      0007F3                       1762 00118$:
                                   1763 ;	Computer.c:267: char count = Counter(flag);
      0007F3 78 7B            [12] 1764 	mov	r0,#_flag
      0007F5 86 82            [24] 1765 	mov	dpl, @r0
      0007F7 12 09 EF         [24] 1766 	lcall	_Counter
                                   1767 ;	Computer.c:268: SaveNumber(count, 9, history_start);
      0007FA 75 62 86         [24] 1768 	mov	_SaveNumber_PARM_3,#_history_start
      0007FD 75 63 00         [24] 1769 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      000800 75 64 40         [24] 1770 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      000803 75 61 09         [24] 1771 	mov	_SaveNumber_PARM_2,#0x09
      000806 12 01 7E         [24] 1772 	lcall	_SaveNumber
                                   1773 ;	Computer.c:269: for (char m = 0; m < 100; m++)
      000809 7F 00            [12] 1774 	mov	r7,#0x00
      00080B                       1775 00152$:
      00080B BF 64 00         [24] 1776 	cjne	r7,#0x64,00338$
      00080E                       1777 00338$:
      00080E 50 14            [24] 1778 	jnc	00119$
                                   1779 ;	Computer.c:271: Show_Ans(buffer, flag);
      000810 78 7B            [12] 1780 	mov	r0,#_flag
      000812 86 56            [24] 1781 	mov	_Show_Ans_PARM_2,@r0
      000814 90 00 73         [24] 1782 	mov	dptr,#_buffer
      000817 75 F0 40         [24] 1783 	mov	b, #0x40
      00081A C0 07            [24] 1784 	push	ar7
      00081C 12 08 FA         [24] 1785 	lcall	_Show_Ans
      00081F D0 07            [24] 1786 	pop	ar7
                                   1787 ;	Computer.c:269: for (char m = 0; m < 100; m++)
      000821 0F               [12] 1788 	inc	r7
      000822 80 E7            [24] 1789 	sjmp	00152$
      000824                       1790 00119$:
                                   1791 ;	Computer.c:274: clean();
      000824 12 05 0B         [24] 1792 	lcall	_clean
                                   1793 ;	Computer.c:275: Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
      000827 75 61 A5         [24] 1794 	mov	_Restart_PARM_2,#_main_num_2_10000_38
      00082A 75 62 00         [24] 1795 	mov	(_Restart_PARM_2 + 1),#0x00
      00082D 75 63 40         [24] 1796 	mov	(_Restart_PARM_2 + 2),#0x40
      000830 75 64 A9         [24] 1797 	mov	_Restart_PARM_3,#_main_op_10000_38
      000833 75 65 00         [24] 1798 	mov	(_Restart_PARM_3 + 1),#0x00
      000836 75 66 40         [24] 1799 	mov	(_Restart_PARM_3 + 2),#0x40
      000839 75 67 A7         [24] 1800 	mov	_Restart_PARM_4,#_main_ans_10000_38
      00083C 75 68 00         [24] 1801 	mov	(_Restart_PARM_4 + 1),#0x00
      00083F 75 69 40         [24] 1802 	mov	(_Restart_PARM_4 + 2),#0x40
      000842 75 6A AA         [24] 1803 	mov	_Restart_PARM_5,#_main_negative_num1_10000_38
      000845 75 6B 00         [24] 1804 	mov	(_Restart_PARM_5 + 1),#0x00
      000848 75 6C 40         [24] 1805 	mov	(_Restart_PARM_5 + 2),#0x40
      00084B 75 6D AC         [24] 1806 	mov	_Restart_PARM_6,#_main_negative_num2_10000_38
      00084E 75 6E 00         [24] 1807 	mov	(_Restart_PARM_6 + 1),#0x00
      000851 75 6F 40         [24] 1808 	mov	(_Restart_PARM_6 + 2),#0x40
      000854 75 70 AE         [24] 1809 	mov	_Restart_PARM_7,#_main_negative_ans_10000_38
      000857 75 71 00         [24] 1810 	mov	(_Restart_PARM_7 + 1),#0x00
      00085A 75 72 40         [24] 1811 	mov	(_Restart_PARM_7 + 2),#0x40
      00085D 90 00 A3         [24] 1812 	mov	dptr,#_main_num_1_10000_38
      000860 75 F0 40         [24] 1813 	mov	b, #0x40
      000863 12 00 FD         [24] 1814 	lcall	_Restart
      000866                       1815 00121$:
                                   1816 ;	Computer.c:278: Keypad_flag = 0;
                                   1817 ;	assignBit
      000866 C2 01            [12] 1818 	clr	_Keypad_flag
      000868                       1819 00128$:
                                   1820 ;	Computer.c:281: Show(buffer, flag);
      000868 78 7B            [12] 1821 	mov	r0,#_flag
      00086A 86 52            [24] 1822 	mov	_Show_PARM_2,@r0
      00086C 90 00 73         [24] 1823 	mov	dptr,#_buffer
      00086F 75 F0 40         [24] 1824 	mov	b, #0x40
      000872 12 08 8A         [24] 1825 	lcall	_Show
                                   1826 ;	Computer.c:283: }
      000875 02 05 4D         [24] 1827 	ljmp	00131$
                                   1828 	.area CSEG    (CODE)
                                   1829 	.area CONST   (CODE)
                                   1830 	.area XINIT   (CODE)
                                   1831 	.area CABS    (ABS,CODE)
