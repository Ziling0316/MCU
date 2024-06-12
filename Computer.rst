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
                                     21 	.globl _Keypad_Debounce
                                     22 	.globl _Keypad_Debounce_init
                                     23 	.globl _Calculate
                                     24 	.globl _Update_Expression
                                     25 	.globl _SaveNumber
                                     26 	.globl _Restart
                                     27 	.globl _Counter
                                     28 	.globl _Show_Ans
                                     29 	.globl _Show_Reverse
                                     30 	.globl _Show
                                     31 	.globl _ReadKeypad
                                     32 	.globl _Keypad_flag
                                     33 	.globl _cal_flag
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _P
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _B
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _IP
                                    113 	.globl _P3
                                    114 	.globl _IE
                                    115 	.globl _P2
                                    116 	.globl _SBUF
                                    117 	.globl _SCON
                                    118 	.globl _P1
                                    119 	.globl _TH1
                                    120 	.globl _TH0
                                    121 	.globl _TL1
                                    122 	.globl _TL0
                                    123 	.globl _TMOD
                                    124 	.globl _TCON
                                    125 	.globl _PCON
                                    126 	.globl _DPH
                                    127 	.globl _DPL
                                    128 	.globl _SP
                                    129 	.globl _P0
                                    130 	.globl _start
                                    131 	.globl _history_count
                                    132 	.globl _start_count
                                    133 	.globl _history
                                    134 	.globl _buffer
                                    135 	.globl _Calculate_PARM_6
                                    136 	.globl _Calculate_PARM_5
                                    137 	.globl _Calculate_PARM_4
                                    138 	.globl _Calculate_PARM_3
                                    139 	.globl _Calculate_PARM_2
                                    140 	.globl _Update_Expression_PARM_5
                                    141 	.globl _Update_Expression_PARM_4
                                    142 	.globl _Update_Expression_PARM_3
                                    143 	.globl _Update_Expression_PARM_2
                                    144 	.globl _num1_counter
                                    145 	.globl _timer_count
                                    146 	.globl _flag
                                    147 ;--------------------------------------------------------
                                    148 ; special function registers
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0	=	0x0080
                           000081   153 _SP	=	0x0081
                           000082   154 _DPL	=	0x0082
                           000083   155 _DPH	=	0x0083
                           000087   156 _PCON	=	0x0087
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008A   159 _TL0	=	0x008a
                           00008B   160 _TL1	=	0x008b
                           00008C   161 _TH0	=	0x008c
                           00008D   162 _TH1	=	0x008d
                           000090   163 _P1	=	0x0090
                           000098   164 _SCON	=	0x0098
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 _P3	=	0x00b0
                           0000B8   169 _IP	=	0x00b8
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000098   202 _RI	=	0x0098
                           000099   203 _TI	=	0x0099
                           00009A   204 _RB8	=	0x009a
                           00009B   205 _TB8	=	0x009b
                           00009C   206 _REN	=	0x009c
                           00009D   207 _SM2	=	0x009d
                           00009E   208 _SM1	=	0x009e
                           00009F   209 _SM0	=	0x009f
                           0000A0   210 _P2_0	=	0x00a0
                           0000A1   211 _P2_1	=	0x00a1
                           0000A2   212 _P2_2	=	0x00a2
                           0000A3   213 _P2_3	=	0x00a3
                           0000A4   214 _P2_4	=	0x00a4
                           0000A5   215 _P2_5	=	0x00a5
                           0000A6   216 _P2_6	=	0x00a6
                           0000A7   217 _P2_7	=	0x00a7
                           0000A8   218 _EX0	=	0x00a8
                           0000A9   219 _ET0	=	0x00a9
                           0000AA   220 _EX1	=	0x00aa
                           0000AB   221 _ET1	=	0x00ab
                           0000AC   222 _ES	=	0x00ac
                           0000AF   223 _EA	=	0x00af
                           0000B0   224 _P3_0	=	0x00b0
                           0000B1   225 _P3_1	=	0x00b1
                           0000B2   226 _P3_2	=	0x00b2
                           0000B3   227 _P3_3	=	0x00b3
                           0000B4   228 _P3_4	=	0x00b4
                           0000B5   229 _P3_5	=	0x00b5
                           0000B6   230 _P3_6	=	0x00b6
                           0000B7   231 _P3_7	=	0x00b7
                           0000B0   232 _RXD	=	0x00b0
                           0000B1   233 _TXD	=	0x00b1
                           0000B2   234 _INT0	=	0x00b2
                           0000B3   235 _INT1	=	0x00b3
                           0000B4   236 _T0	=	0x00b4
                           0000B5   237 _T1	=	0x00b5
                           0000B6   238 _WR	=	0x00b6
                           0000B7   239 _RD	=	0x00b7
                           0000B8   240 _PX0	=	0x00b8
                           0000B9   241 _PT0	=	0x00b9
                           0000BA   242 _PX1	=	0x00ba
                           0000BB   243 _PT1	=	0x00bb
                           0000BC   244 _PS	=	0x00bc
                           0000D0   245 _P	=	0x00d0
                           0000D1   246 _F1	=	0x00d1
                           0000D2   247 _OV	=	0x00d2
                           0000D3   248 _RS0	=	0x00d3
                           0000D4   249 _RS1	=	0x00d4
                           0000D5   250 _F0	=	0x00d5
                           0000D6   251 _AC	=	0x00d6
                           0000D7   252 _CY	=	0x00d7
      000000                        253 _cal_flag::
      000000                        254 	.ds 1
      000001                        255 _Keypad_flag::
      000001                        256 	.ds 1
                                    257 ;--------------------------------------------------------
                                    258 ; overlayable register banks
                                    259 ;--------------------------------------------------------
                                    260 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        261 	.ds 8
                                    262 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        263 	.ds 8
                                    264 ;--------------------------------------------------------
                                    265 ; internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area DSEG    (DATA)
      000010                        268 _flag::
      000010                        269 	.ds 1
      000011                        270 _timer_count::
      000011                        271 	.ds 1
      000012                        272 _num1_counter::
      000012                        273 	.ds 1
      000013                        274 _Update_Expression_PARM_2:
      000013                        275 	.ds 3
      000016                        276 _Update_Expression_PARM_3:
      000016                        277 	.ds 3
      000019                        278 _Update_Expression_PARM_4:
      000019                        279 	.ds 3
      00001C                        280 _Update_Expression_PARM_5:
      00001C                        281 	.ds 3
      00001F                        282 _Update_Expression_num_1_10000_13:
      00001F                        283 	.ds 3
      000022                        284 _Update_Expression_sloc0_1_0:
      000022                        285 	.ds 3
      000025                        286 _Calculate_PARM_2:
      000025                        287 	.ds 2
      000027                        288 _Calculate_PARM_3:
      000027                        289 	.ds 1
      000028                        290 _Calculate_PARM_4:
      000028                        291 	.ds 2
      00002A                        292 _Calculate_PARM_5:
      00002A                        293 	.ds 2
      00002C                        294 _Calculate_PARM_6:
      00002C                        295 	.ds 3
      00002F                        296 _Calculate_sloc0_1_0:
      00002F                        297 	.ds 2
      000031                        298 _main_num_1_10000_34:
      000031                        299 	.ds 2
      000033                        300 _main_num_2_10000_34:
      000033                        301 	.ds 2
      000035                        302 _main_ans_10000_34:
      000035                        303 	.ds 2
      000037                        304 _main_op_10000_34:
      000037                        305 	.ds 1
      000038                        306 _main_negative_num1_10000_34:
      000038                        307 	.ds 2
      00003A                        308 _main_negative_num2_10000_34:
      00003A                        309 	.ds 2
      00003C                        310 _main_negative_ans_10000_34:
      00003C                        311 	.ds 2
                                    312 ;--------------------------------------------------------
                                    313 ; overlayable items in internal ram
                                    314 ;--------------------------------------------------------
                                    315 	.area	OSEG    (OVR,DATA)
      000066                        316 _Restart_PARM_2:
      000066                        317 	.ds 3
      000069                        318 _Restart_PARM_3:
      000069                        319 	.ds 3
      00006C                        320 _Restart_PARM_4:
      00006C                        321 	.ds 3
      00006F                        322 _Restart_PARM_5:
      00006F                        323 	.ds 3
      000072                        324 _Restart_PARM_6:
      000072                        325 	.ds 3
      000075                        326 _Restart_PARM_7:
      000075                        327 	.ds 3
                                    328 	.area	OSEG    (OVR,DATA)
      000066                        329 _SaveNumber_PARM_2:
      000066                        330 	.ds 1
      000067                        331 _SaveNumber_PARM_3:
      000067                        332 	.ds 3
                                    333 	.area	OSEG    (OVR,DATA)
                                    334 ;--------------------------------------------------------
                                    335 ; Stack segment in internal ram
                                    336 ;--------------------------------------------------------
                                    337 	.area SSEG
      000096                        338 __start__stack:
      000096                        339 	.ds	1
                                    340 
                                    341 ;--------------------------------------------------------
                                    342 ; indirectly addressable internal ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area ISEG    (DATA)
      000078                        345 _buffer::
      000078                        346 	.ds 8
      000080                        347 _history::
      000080                        348 	.ds 10
      00008A                        349 _start_count::
      00008A                        350 	.ds 10
      000094                        351 _history_count::
      000094                        352 	.ds 1
      000095                        353 _start::
      000095                        354 	.ds 1
                                    355 ;--------------------------------------------------------
                                    356 ; absolute internal ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area IABS    (ABS,DATA)
                                    359 	.area IABS    (ABS,DATA)
                                    360 ;--------------------------------------------------------
                                    361 ; bit data
                                    362 ;--------------------------------------------------------
                                    363 	.area BSEG    (BIT)
                                    364 ;--------------------------------------------------------
                                    365 ; paged external ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area PSEG    (PAG,XDATA)
                                    368 ;--------------------------------------------------------
                                    369 ; uninitialized external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XSEG    (XDATA)
                                    372 ;--------------------------------------------------------
                                    373 ; absolute external ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XABS    (ABS,XDATA)
                                    376 ;--------------------------------------------------------
                                    377 ; initialized external ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area XISEG   (XDATA)
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT0 (CODE)
                                    382 	.area GSINIT1 (CODE)
                                    383 	.area GSINIT2 (CODE)
                                    384 	.area GSINIT3 (CODE)
                                    385 	.area GSINIT4 (CODE)
                                    386 	.area GSINIT5 (CODE)
                                    387 	.area GSINIT  (CODE)
                                    388 	.area GSFINAL (CODE)
                                    389 	.area CSEG    (CODE)
                                    390 ;--------------------------------------------------------
                                    391 ; interrupt vector
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
      000000                        394 __interrupt_vect:
      000000 02 00 11         [24]  395 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  396 	reti
      000004                        397 	.ds	7
      00000B 02 05 0F         [24]  398 	ljmp	_Keypad_Debounce
                                    399 ;--------------------------------------------------------
                                    400 ; global & static initialisations
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area GSINIT  (CODE)
                                    404 	.area GSFINAL (CODE)
                                    405 	.area GSINIT  (CODE)
                                    406 	.globl __sdcc_gsinit_startup
                                    407 	.globl __sdcc_program_startup
                                    408 	.globl __start__stack
                                    409 	.globl __mcs51_genXINIT
                                    410 	.globl __mcs51_genXRAMCLEAR
                                    411 	.globl __mcs51_genRAMCLEAR
                                    412 ;	Computer.c:6: char flag = 0;
      00006A 75 10 00         [24]  413 	mov	_flag,#0x00
                                    414 ;	Computer.c:12: char timer_count = 0;
      00006D 75 11 00         [24]  415 	mov	_timer_count,#0x00
                                    416 ;	Computer.c:15: char num1_counter = 0;
      000070 75 12 00         [24]  417 	mov	_num1_counter,#0x00
                                    418 ;	Computer.c:5: __idata unsigned char buffer[8] = {-1, -1, -1, -1, -1, -1, -1, -1};
      000073 78 78            [12]  419 	mov	r0,#_buffer
      000075 76 FF            [12]  420 	mov	@r0,#0xff
      000077 78 79            [12]  421 	mov	r0,#(_buffer + 0x0001)
      000079 76 FF            [12]  422 	mov	@r0,#0xff
      00007B 78 7A            [12]  423 	mov	r0,#(_buffer + 0x0002)
      00007D 76 FF            [12]  424 	mov	@r0,#0xff
      00007F 78 7B            [12]  425 	mov	r0,#(_buffer + 0x0003)
      000081 76 FF            [12]  426 	mov	@r0,#0xff
      000083 78 7C            [12]  427 	mov	r0,#(_buffer + 0x0004)
      000085 76 FF            [12]  428 	mov	@r0,#0xff
      000087 78 7D            [12]  429 	mov	r0,#(_buffer + 0x0005)
      000089 76 FF            [12]  430 	mov	@r0,#0xff
      00008B 78 7E            [12]  431 	mov	r0,#(_buffer + 0x0006)
      00008D 76 FF            [12]  432 	mov	@r0,#0xff
      00008F 78 7F            [12]  433 	mov	r0,#(_buffer + 0x0007)
      000091 76 FF            [12]  434 	mov	@r0,#0xff
                                    435 ;	Computer.c:7: __idata unsigned char history[10] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
      000093 78 80            [12]  436 	mov	r0,#_history
      000095 76 FF            [12]  437 	mov	@r0,#0xff
      000097 78 81            [12]  438 	mov	r0,#(_history + 0x0001)
      000099 76 FF            [12]  439 	mov	@r0,#0xff
      00009B 78 82            [12]  440 	mov	r0,#(_history + 0x0002)
      00009D 76 FF            [12]  441 	mov	@r0,#0xff
      00009F 78 83            [12]  442 	mov	r0,#(_history + 0x0003)
      0000A1 76 FF            [12]  443 	mov	@r0,#0xff
      0000A3 78 84            [12]  444 	mov	r0,#(_history + 0x0004)
      0000A5 76 FF            [12]  445 	mov	@r0,#0xff
      0000A7 78 85            [12]  446 	mov	r0,#(_history + 0x0005)
      0000A9 76 FF            [12]  447 	mov	@r0,#0xff
      0000AB 78 86            [12]  448 	mov	r0,#(_history + 0x0006)
      0000AD 76 FF            [12]  449 	mov	@r0,#0xff
      0000AF 78 87            [12]  450 	mov	r0,#(_history + 0x0007)
      0000B1 76 FF            [12]  451 	mov	@r0,#0xff
      0000B3 78 88            [12]  452 	mov	r0,#(_history + 0x0008)
      0000B5 76 FF            [12]  453 	mov	@r0,#0xff
      0000B7 78 89            [12]  454 	mov	r0,#(_history + 0x0009)
      0000B9 76 FF            [12]  455 	mov	@r0,#0xff
                                    456 ;	Computer.c:8: __idata unsigned char start_count[10] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
      0000BB 78 8A            [12]  457 	mov	r0,#_start_count
      0000BD 76 FF            [12]  458 	mov	@r0,#0xff
      0000BF 78 8B            [12]  459 	mov	r0,#(_start_count + 0x0001)
      0000C1 76 FF            [12]  460 	mov	@r0,#0xff
      0000C3 78 8C            [12]  461 	mov	r0,#(_start_count + 0x0002)
      0000C5 76 FF            [12]  462 	mov	@r0,#0xff
      0000C7 78 8D            [12]  463 	mov	r0,#(_start_count + 0x0003)
      0000C9 76 FF            [12]  464 	mov	@r0,#0xff
      0000CB 78 8E            [12]  465 	mov	r0,#(_start_count + 0x0004)
      0000CD 76 FF            [12]  466 	mov	@r0,#0xff
      0000CF 78 8F            [12]  467 	mov	r0,#(_start_count + 0x0005)
      0000D1 76 FF            [12]  468 	mov	@r0,#0xff
      0000D3 78 90            [12]  469 	mov	r0,#(_start_count + 0x0006)
      0000D5 76 FF            [12]  470 	mov	@r0,#0xff
      0000D7 78 91            [12]  471 	mov	r0,#(_start_count + 0x0007)
      0000D9 76 FF            [12]  472 	mov	@r0,#0xff
      0000DB 78 92            [12]  473 	mov	r0,#(_start_count + 0x0008)
      0000DD 76 FF            [12]  474 	mov	@r0,#0xff
      0000DF 78 93            [12]  475 	mov	r0,#(_start_count + 0x0009)
      0000E1 76 FF            [12]  476 	mov	@r0,#0xff
                                    477 ;	Computer.c:9: __idata unsigned char history_count = 0;
      0000E3 78 94            [12]  478 	mov	r0,#_history_count
      0000E5 76 00            [12]  479 	mov	@r0,#0x00
                                    480 ;	Computer.c:10: __idata unsigned char start = 0;
      0000E7 78 95            [12]  481 	mov	r0,#_start
      0000E9 76 00            [12]  482 	mov	@r0,#0x00
                                    483 ;	Computer.c:13: __sbit cal_flag = 0;
                                    484 ;	assignBit
      0000EB C2 00            [12]  485 	clr	_cal_flag
                                    486 ;	Computer.c:14: __sbit Keypad_flag = 0;
                                    487 ;	assignBit
      0000ED C2 01            [12]  488 	clr	_Keypad_flag
                                    489 	.area GSFINAL (CODE)
      00013A 02 00 0E         [24]  490 	ljmp	__sdcc_program_startup
                                    491 ;--------------------------------------------------------
                                    492 ; Home
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area HOME    (CODE)
      00000E                        496 __sdcc_program_startup:
      00000E 02 05 42         [24]  497 	ljmp	_main
                                    498 ;	return from main will return to caller
                                    499 ;--------------------------------------------------------
                                    500 ; code
                                    501 ;--------------------------------------------------------
                                    502 	.area CSEG    (CODE)
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'Restart'
                                    505 ;------------------------------------------------------------
                                    506 ;num_2                     Allocated with name '_Restart_PARM_2'
                                    507 ;op                        Allocated with name '_Restart_PARM_3'
                                    508 ;ans                       Allocated with name '_Restart_PARM_4'
                                    509 ;negative_num1             Allocated with name '_Restart_PARM_5'
                                    510 ;negative_num2             Allocated with name '_Restart_PARM_6'
                                    511 ;negative_ans              Allocated with name '_Restart_PARM_7'
                                    512 ;num_1                     Allocated to registers r5 r6 r7 
                                    513 ;------------------------------------------------------------
                                    514 ;	Computer.c:17: void Restart(int *num_1, int *num_2, char *op, int *ans, int *negative_num1, int *negative_num2, int *negative_ans)
                                    515 ;	-----------------------------------------
                                    516 ;	 function Restart
                                    517 ;	-----------------------------------------
      00013D                        518 _Restart:
                           000007   519 	ar7 = 0x07
                           000006   520 	ar6 = 0x06
                           000005   521 	ar5 = 0x05
                           000004   522 	ar4 = 0x04
                           000003   523 	ar3 = 0x03
                           000002   524 	ar2 = 0x02
                           000001   525 	ar1 = 0x01
                           000000   526 	ar0 = 0x00
                                    527 ;	Computer.c:19: *num_1 = 0;
      00013D E4               [12]  528 	clr	a
      00013E 12 09 0E         [24]  529 	lcall	__gptrput
      000141 A3               [24]  530 	inc	dptr
      000142 12 09 0E         [24]  531 	lcall	__gptrput
                                    532 ;	Computer.c:20: *num_2 = 0;
      000145 AD 66            [24]  533 	mov	r5,_Restart_PARM_2
      000147 AE 67            [24]  534 	mov	r6,(_Restart_PARM_2 + 1)
      000149 AF 68            [24]  535 	mov	r7,(_Restart_PARM_2 + 2)
      00014B 8D 82            [24]  536 	mov	dpl,r5
      00014D 8E 83            [24]  537 	mov	dph,r6
      00014F 8F F0            [24]  538 	mov	b,r7
      000151 12 09 0E         [24]  539 	lcall	__gptrput
      000154 A3               [24]  540 	inc	dptr
      000155 12 09 0E         [24]  541 	lcall	__gptrput
                                    542 ;	Computer.c:21: *op = '$';
      000158 AD 69            [24]  543 	mov	r5,_Restart_PARM_3
      00015A AE 6A            [24]  544 	mov	r6,(_Restart_PARM_3 + 1)
      00015C AF 6B            [24]  545 	mov	r7,(_Restart_PARM_3 + 2)
      00015E 8D 82            [24]  546 	mov	dpl,r5
      000160 8E 83            [24]  547 	mov	dph,r6
      000162 8F F0            [24]  548 	mov	b,r7
      000164 74 24            [12]  549 	mov	a,#0x24
      000166 12 09 0E         [24]  550 	lcall	__gptrput
                                    551 ;	Computer.c:22: *ans = 0;
      000169 AD 6C            [24]  552 	mov	r5,_Restart_PARM_4
      00016B AE 6D            [24]  553 	mov	r6,(_Restart_PARM_4 + 1)
      00016D AF 6E            [24]  554 	mov	r7,(_Restart_PARM_4 + 2)
      00016F 8D 82            [24]  555 	mov	dpl,r5
      000171 8E 83            [24]  556 	mov	dph,r6
      000173 8F F0            [24]  557 	mov	b,r7
      000175 E4               [12]  558 	clr	a
      000176 12 09 0E         [24]  559 	lcall	__gptrput
      000179 A3               [24]  560 	inc	dptr
      00017A 12 09 0E         [24]  561 	lcall	__gptrput
                                    562 ;	Computer.c:23: cal_flag = 0;
                                    563 ;	assignBit
      00017D C2 00            [12]  564 	clr	_cal_flag
                                    565 ;	Computer.c:24: *negative_ans = 0;
      00017F AD 75            [24]  566 	mov	r5,_Restart_PARM_7
      000181 AE 76            [24]  567 	mov	r6,(_Restart_PARM_7 + 1)
      000183 AF 77            [24]  568 	mov	r7,(_Restart_PARM_7 + 2)
      000185 8D 82            [24]  569 	mov	dpl,r5
      000187 8E 83            [24]  570 	mov	dph,r6
      000189 8F F0            [24]  571 	mov	b,r7
      00018B E4               [12]  572 	clr	a
      00018C 12 09 0E         [24]  573 	lcall	__gptrput
      00018F A3               [24]  574 	inc	dptr
      000190 12 09 0E         [24]  575 	lcall	__gptrput
                                    576 ;	Computer.c:25: *negative_num1 = -1;
      000193 AD 6F            [24]  577 	mov	r5,_Restart_PARM_5
      000195 AE 70            [24]  578 	mov	r6,(_Restart_PARM_5 + 1)
      000197 AF 71            [24]  579 	mov	r7,(_Restart_PARM_5 + 2)
      000199 8D 82            [24]  580 	mov	dpl,r5
      00019B 8E 83            [24]  581 	mov	dph,r6
      00019D 8F F0            [24]  582 	mov	b,r7
      00019F 14               [12]  583 	dec	a
      0001A0 12 09 0E         [24]  584 	lcall	__gptrput
      0001A3 A3               [24]  585 	inc	dptr
      0001A4 12 09 0E         [24]  586 	lcall	__gptrput
                                    587 ;	Computer.c:26: *negative_num2 = -1;
      0001A7 AD 72            [24]  588 	mov	r5,_Restart_PARM_6
      0001A9 AE 73            [24]  589 	mov	r6,(_Restart_PARM_6 + 1)
      0001AB AF 74            [24]  590 	mov	r7,(_Restart_PARM_6 + 2)
      0001AD 8D 82            [24]  591 	mov	dpl,r5
      0001AF 8E 83            [24]  592 	mov	dph,r6
      0001B1 8F F0            [24]  593 	mov	b,r7
      0001B3 12 09 0E         [24]  594 	lcall	__gptrput
      0001B6 A3               [24]  595 	inc	dptr
      0001B7 12 09 0E         [24]  596 	lcall	__gptrput
                                    597 ;	Computer.c:27: num1_counter = 0;
      0001BA 75 12 00         [24]  598 	mov	_num1_counter,#0x00
                                    599 ;	Computer.c:28: }
      0001BD 22               [24]  600 	ret
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'SaveNumber'
                                    603 ;------------------------------------------------------------
                                    604 ;start                     Allocated with name '_SaveNumber_PARM_2'
                                    605 ;b                         Allocated with name '_SaveNumber_PARM_3'
                                    606 ;n                         Allocated to registers r7 
                                    607 ;i                         Allocated to registers 
                                    608 ;------------------------------------------------------------
                                    609 ;	Computer.c:29: void SaveNumber(char n, char start, char *b)
                                    610 ;	-----------------------------------------
                                    611 ;	 function SaveNumber
                                    612 ;	-----------------------------------------
      0001BE                        613 _SaveNumber:
      0001BE AF 82            [24]  614 	mov	r7, dpl
                                    615 ;	Computer.c:31: for (char i = start; i > 0; i--)
      0001C0 AE 66            [24]  616 	mov	r6,_SaveNumber_PARM_2
      0001C2                        617 00103$:
      0001C2 EE               [12]  618 	mov	a,r6
      0001C3 60 32            [24]  619 	jz	00101$
                                    620 ;	Computer.c:33: b[i] = b[i - 1];
      0001C5 EE               [12]  621 	mov	a,r6
      0001C6 25 67            [12]  622 	add	a, _SaveNumber_PARM_3
      0001C8 FB               [12]  623 	mov	r3,a
      0001C9 E4               [12]  624 	clr	a
      0001CA 35 68            [12]  625 	addc	a, (_SaveNumber_PARM_3 + 1)
      0001CC FC               [12]  626 	mov	r4,a
      0001CD AD 69            [24]  627 	mov	r5,(_SaveNumber_PARM_3 + 2)
      0001CF 8E 01            [24]  628 	mov	ar1,r6
      0001D1 7A 00            [12]  629 	mov	r2,#0x00
      0001D3 19               [12]  630 	dec	r1
      0001D4 B9 FF 01         [24]  631 	cjne	r1,#0xff,00123$
      0001D7 1A               [12]  632 	dec	r2
      0001D8                        633 00123$:
      0001D8 E9               [12]  634 	mov	a,r1
      0001D9 25 67            [12]  635 	add	a, _SaveNumber_PARM_3
      0001DB F9               [12]  636 	mov	r1,a
      0001DC EA               [12]  637 	mov	a,r2
      0001DD 35 68            [12]  638 	addc	a, (_SaveNumber_PARM_3 + 1)
      0001DF F8               [12]  639 	mov	r0,a
      0001E0 AA 69            [24]  640 	mov	r2,(_SaveNumber_PARM_3 + 2)
      0001E2 89 82            [24]  641 	mov	dpl,r1
      0001E4 88 83            [24]  642 	mov	dph,r0
      0001E6 8A F0            [24]  643 	mov	b,r2
      0001E8 12 0A 51         [24]  644 	lcall	__gptrget
      0001EB 8B 82            [24]  645 	mov	dpl,r3
      0001ED 8C 83            [24]  646 	mov	dph,r4
      0001EF 8D F0            [24]  647 	mov	b,r5
      0001F1 12 09 0E         [24]  648 	lcall	__gptrput
                                    649 ;	Computer.c:31: for (char i = start; i > 0; i--)
      0001F4 1E               [12]  650 	dec	r6
      0001F5 80 CB            [24]  651 	sjmp	00103$
      0001F7                        652 00101$:
                                    653 ;	Computer.c:35: b[0] = n;
      0001F7 AC 67            [24]  654 	mov	r4,_SaveNumber_PARM_3
      0001F9 AD 68            [24]  655 	mov	r5,(_SaveNumber_PARM_3 + 1)
      0001FB AE 69            [24]  656 	mov	r6,(_SaveNumber_PARM_3 + 2)
      0001FD 8C 82            [24]  657 	mov	dpl,r4
      0001FF 8D 83            [24]  658 	mov	dph,r5
      000201 8E F0            [24]  659 	mov	b,r6
      000203 EF               [12]  660 	mov	a,r7
                                    661 ;	Computer.c:36: }
      000204 02 09 0E         [24]  662 	ljmp	__gptrput
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'Update_Expression'
                                    665 ;------------------------------------------------------------
                                    666 ;num_2                     Allocated with name '_Update_Expression_PARM_2'
                                    667 ;op                        Allocated with name '_Update_Expression_PARM_3'
                                    668 ;negative_num1             Allocated with name '_Update_Expression_PARM_4'
                                    669 ;negative_num2             Allocated with name '_Update_Expression_PARM_5'
                                    670 ;num_1                     Allocated with name '_Update_Expression_num_1_10000_13'
                                    671 ;sloc0                     Allocated with name '_Update_Expression_sloc0_1_0'
                                    672 ;------------------------------------------------------------
                                    673 ;	Computer.c:39: void Update_Expression(int *num_1, int *num_2, char *op, int *negative_num1, int *negative_num2)
                                    674 ;	-----------------------------------------
                                    675 ;	 function Update_Expression
                                    676 ;	-----------------------------------------
      000207                        677 _Update_Expression:
      000207 85 82 1F         [24]  678 	mov	_Update_Expression_num_1_10000_13,dpl
      00020A 85 83 20         [24]  679 	mov	(_Update_Expression_num_1_10000_13 + 1),dph
      00020D 85 F0 21         [24]  680 	mov	(_Update_Expression_num_1_10000_13 + 2),b
                                    681 ;	Computer.c:42: if (buffer[0] >= 0 && buffer[0] <= 9)
      000210 78 78            [12]  682 	mov	r0,#_buffer
      000212 E6               [12]  683 	mov	a,@r0
      000213 FC               [12]  684 	mov	r4,a
      000214 24 F6            [12]  685 	add	a,#0xff - 0x09
      000216 50 03            [24]  686 	jnc	00199$
      000218 02 02 D1         [24]  687 	ljmp	00122$
      00021B                        688 00199$:
                                    689 ;	Computer.c:44: if (*op == '$')
      00021B 85 16 22         [24]  690 	mov	_Update_Expression_sloc0_1_0,_Update_Expression_PARM_3
      00021E 85 17 23         [24]  691 	mov	(_Update_Expression_sloc0_1_0 + 1),(_Update_Expression_PARM_3 + 1)
      000221 85 18 24         [24]  692 	mov	(_Update_Expression_sloc0_1_0 + 2),(_Update_Expression_PARM_3 + 2)
      000224 85 22 82         [24]  693 	mov	dpl,_Update_Expression_sloc0_1_0
      000227 85 23 83         [24]  694 	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
      00022A 85 24 F0         [24]  695 	mov	b,(_Update_Expression_sloc0_1_0 + 2)
      00022D 12 0A 51         [24]  696 	lcall	__gptrget
      000230 FB               [12]  697 	mov	r3,a
      000231 BB 24 40         [24]  698 	cjne	r3,#0x24,00102$
                                    699 ;	Computer.c:46: *num_1 = *num_1 * 10 + (int)buffer[0];
      000234 85 1F 82         [24]  700 	mov	dpl,_Update_Expression_num_1_10000_13
      000237 85 20 83         [24]  701 	mov	dph,(_Update_Expression_num_1_10000_13 + 1)
      00023A 85 21 F0         [24]  702 	mov	b,(_Update_Expression_num_1_10000_13 + 2)
      00023D 12 0A 51         [24]  703 	lcall	__gptrget
      000240 F5 66            [12]  704 	mov	__mulint_PARM_2,a
      000242 A3               [24]  705 	inc	dptr
      000243 12 0A 51         [24]  706 	lcall	__gptrget
      000246 F5 67            [12]  707 	mov	(__mulint_PARM_2 + 1),a
      000248 90 00 0A         [24]  708 	mov	dptr,#0x000a
      00024B C0 04            [24]  709 	push	ar4
      00024D 12 09 29         [24]  710 	lcall	__mulint
      000250 AA 82            [24]  711 	mov	r2, dpl
      000252 AB 83            [24]  712 	mov	r3, dph
      000254 D0 04            [24]  713 	pop	ar4
      000256 8C 06            [24]  714 	mov	ar6,r4
      000258 7F 00            [12]  715 	mov	r7,#0x00
      00025A EE               [12]  716 	mov	a,r6
      00025B 2A               [12]  717 	add	a, r2
      00025C FA               [12]  718 	mov	r2,a
      00025D EF               [12]  719 	mov	a,r7
      00025E 3B               [12]  720 	addc	a, r3
      00025F FB               [12]  721 	mov	r3,a
      000260 85 1F 82         [24]  722 	mov	dpl,_Update_Expression_num_1_10000_13
      000263 85 20 83         [24]  723 	mov	dph,(_Update_Expression_num_1_10000_13 + 1)
      000266 85 21 F0         [24]  724 	mov	b,(_Update_Expression_num_1_10000_13 + 2)
      000269 EA               [12]  725 	mov	a,r2
      00026A 12 09 0E         [24]  726 	lcall	__gptrput
      00026D A3               [24]  727 	inc	dptr
      00026E EB               [12]  728 	mov	a,r3
      00026F 12 09 0E         [24]  729 	lcall	__gptrput
                                    730 ;	Computer.c:47: num1_counter++;
      000272 05 12            [12]  731 	inc	_num1_counter
      000274                        732 00102$:
                                    733 ;	Computer.c:49: if (*op != '$')
      000274 85 22 82         [24]  734 	mov	dpl,_Update_Expression_sloc0_1_0
      000277 85 23 83         [24]  735 	mov	dph,(_Update_Expression_sloc0_1_0 + 1)
      00027A 85 24 F0         [24]  736 	mov	b,(_Update_Expression_sloc0_1_0 + 2)
      00027D 12 0A 51         [24]  737 	lcall	__gptrget
      000280 FF               [12]  738 	mov	r7,a
      000281 BF 24 01         [24]  739 	cjne	r7,#0x24,00202$
      000284 22               [24]  740 	ret
      000285                        741 00202$:
                                    742 ;	Computer.c:51: *num_2 = *num_2 * 10 + (int)buffer[0];
      000285 AD 13            [24]  743 	mov	r5,_Update_Expression_PARM_2
      000287 AE 14            [24]  744 	mov	r6,(_Update_Expression_PARM_2 + 1)
      000289 AF 15            [24]  745 	mov	r7,(_Update_Expression_PARM_2 + 2)
      00028B 8D 82            [24]  746 	mov	dpl,r5
      00028D 8E 83            [24]  747 	mov	dph,r6
      00028F 8F F0            [24]  748 	mov	b,r7
      000291 12 0A 51         [24]  749 	lcall	__gptrget
      000294 F5 66            [12]  750 	mov	__mulint_PARM_2,a
      000296 A3               [24]  751 	inc	dptr
      000297 12 0A 51         [24]  752 	lcall	__gptrget
      00029A F5 67            [12]  753 	mov	(__mulint_PARM_2 + 1),a
      00029C 90 00 0A         [24]  754 	mov	dptr,#0x000a
      00029F C0 07            [24]  755 	push	ar7
      0002A1 C0 06            [24]  756 	push	ar6
      0002A3 C0 05            [24]  757 	push	ar5
      0002A5 12 09 29         [24]  758 	lcall	__mulint
      0002A8 85 82 22         [24]  759 	mov	_Update_Expression_sloc0_1_0,dpl
      0002AB 85 83 23         [24]  760 	mov	(_Update_Expression_sloc0_1_0 + 1),dph
      0002AE D0 05            [24]  761 	pop	ar5
      0002B0 D0 06            [24]  762 	pop	ar6
      0002B2 D0 07            [24]  763 	pop	ar7
      0002B4 78 78            [12]  764 	mov	r0,#_buffer
      0002B6 86 03            [24]  765 	mov	ar3,@r0
      0002B8 7A 00            [12]  766 	mov	r2,#0x00
      0002BA EB               [12]  767 	mov	a,r3
      0002BB 25 22            [12]  768 	add	a, _Update_Expression_sloc0_1_0
      0002BD FB               [12]  769 	mov	r3,a
      0002BE EA               [12]  770 	mov	a,r2
      0002BF 35 23            [12]  771 	addc	a, (_Update_Expression_sloc0_1_0 + 1)
      0002C1 FA               [12]  772 	mov	r2,a
      0002C2 8D 82            [24]  773 	mov	dpl,r5
      0002C4 8E 83            [24]  774 	mov	dph,r6
      0002C6 8F F0            [24]  775 	mov	b,r7
      0002C8 EB               [12]  776 	mov	a,r3
      0002C9 12 09 0E         [24]  777 	lcall	__gptrput
      0002CC A3               [24]  778 	inc	dptr
      0002CD EA               [12]  779 	mov	a,r2
      0002CE 02 09 0E         [24]  780 	ljmp	__gptrput
      0002D1                        781 00122$:
                                    782 ;	Computer.c:54: else if (buffer[0] == 13 && num1_counter == 0)
      0002D1 E4               [12]  783 	clr	a
      0002D2 BC 0D 01         [24]  784 	cjne	r4,#0x0d,00203$
      0002D5 04               [12]  785 	inc	a
      0002D6                        786 00203$:
      0002D6 FF               [12]  787 	mov	r7,a
      0002D7 60 1A            [24]  788 	jz	00118$
      0002D9 E5 12            [12]  789 	mov	a,_num1_counter
      0002DB 70 16            [24]  790 	jnz	00118$
                                    791 ;	Computer.c:56: *negative_num1 = 1;
      0002DD AB 19            [24]  792 	mov	r3,_Update_Expression_PARM_4
      0002DF AD 1A            [24]  793 	mov	r5,(_Update_Expression_PARM_4 + 1)
      0002E1 AE 1B            [24]  794 	mov	r6,(_Update_Expression_PARM_4 + 2)
      0002E3 8B 82            [24]  795 	mov	dpl,r3
      0002E5 8D 83            [24]  796 	mov	dph,r5
      0002E7 8E F0            [24]  797 	mov	b,r6
      0002E9 74 01            [12]  798 	mov	a,#0x01
      0002EB 12 09 0E         [24]  799 	lcall	__gptrput
      0002EE A3               [24]  800 	inc	dptr
      0002EF E4               [12]  801 	clr	a
      0002F0 02 09 0E         [24]  802 	ljmp	__gptrput
      0002F3                        803 00118$:
                                    804 ;	Computer.c:58: else if (buffer[0] >= 12 && buffer[0] <= 15 && num1_counter != 0 && *op == '$')
      0002F3 BC 0C 00         [24]  805 	cjne	r4,#0x0c,00207$
      0002F6                        806 00207$:
      0002F6 40 26            [24]  807 	jc	00112$
      0002F8 EC               [12]  808 	mov	a,r4
      0002F9 24 F0            [12]  809 	add	a,#0xff - 0x0f
      0002FB 40 21            [24]  810 	jc	00112$
      0002FD E5 12            [12]  811 	mov	a,_num1_counter
      0002FF 60 1D            [24]  812 	jz	00112$
      000301 AB 16            [24]  813 	mov	r3,_Update_Expression_PARM_3
      000303 AD 17            [24]  814 	mov	r5,(_Update_Expression_PARM_3 + 1)
      000305 AE 18            [24]  815 	mov	r6,(_Update_Expression_PARM_3 + 2)
      000307 8B 82            [24]  816 	mov	dpl,r3
      000309 8D 83            [24]  817 	mov	dph,r5
      00030B 8E F0            [24]  818 	mov	b,r6
      00030D 12 0A 51         [24]  819 	lcall	__gptrget
      000310 FA               [12]  820 	mov	r2,a
      000311 BA 24 0A         [24]  821 	cjne	r2,#0x24,00112$
                                    822 ;	Computer.c:60: *op = buffer[0];
      000314 8B 82            [24]  823 	mov	dpl,r3
      000316 8D 83            [24]  824 	mov	dph,r5
      000318 8E F0            [24]  825 	mov	b,r6
      00031A EC               [12]  826 	mov	a,r4
      00031B 02 09 0E         [24]  827 	ljmp	__gptrput
      00031E                        828 00112$:
                                    829 ;	Computer.c:62: else if (buffer[0] == 13 && *op != '$')
      00031E EF               [12]  830 	mov	a,r7
      00031F 60 2B            [24]  831 	jz	00108$
      000321 AD 16            [24]  832 	mov	r5,_Update_Expression_PARM_3
      000323 AE 17            [24]  833 	mov	r6,(_Update_Expression_PARM_3 + 1)
      000325 AF 18            [24]  834 	mov	r7,(_Update_Expression_PARM_3 + 2)
      000327 8D 82            [24]  835 	mov	dpl,r5
      000329 8E 83            [24]  836 	mov	dph,r6
      00032B 8F F0            [24]  837 	mov	b,r7
      00032D 12 0A 51         [24]  838 	lcall	__gptrget
      000330 FD               [12]  839 	mov	r5,a
      000331 BD 24 02         [24]  840 	cjne	r5,#0x24,00214$
      000334 80 16            [24]  841 	sjmp	00108$
      000336                        842 00214$:
                                    843 ;	Computer.c:64: *negative_num2 = 1;
      000336 AD 1C            [24]  844 	mov	r5,_Update_Expression_PARM_5
      000338 AE 1D            [24]  845 	mov	r6,(_Update_Expression_PARM_5 + 1)
      00033A AF 1E            [24]  846 	mov	r7,(_Update_Expression_PARM_5 + 2)
      00033C 8D 82            [24]  847 	mov	dpl,r5
      00033E 8E 83            [24]  848 	mov	dph,r6
      000340 8F F0            [24]  849 	mov	b,r7
      000342 74 01            [12]  850 	mov	a,#0x01
      000344 12 09 0E         [24]  851 	lcall	__gptrput
      000347 A3               [24]  852 	inc	dptr
      000348 E4               [12]  853 	clr	a
      000349 02 09 0E         [24]  854 	ljmp	__gptrput
      00034C                        855 00108$:
                                    856 ;	Computer.c:66: else if (buffer[0] == 11)
      00034C BC 0B 02         [24]  857 	cjne	r4,#0x0b,00125$
                                    858 ;	Computer.c:68: cal_flag = 1;
                                    859 ;	assignBit
      00034F D2 00            [12]  860 	setb	_cal_flag
      000351                        861 00125$:
                                    862 ;	Computer.c:70: }
      000351 22               [24]  863 	ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'Calculate'
                                    866 ;------------------------------------------------------------
                                    867 ;num2                      Allocated with name '_Calculate_PARM_2'
                                    868 ;op                        Allocated with name '_Calculate_PARM_3'
                                    869 ;negative_num1             Allocated with name '_Calculate_PARM_4'
                                    870 ;negative_num2             Allocated with name '_Calculate_PARM_5'
                                    871 ;ans                       Allocated with name '_Calculate_PARM_6'
                                    872 ;num1                      Allocated to registers r6 r7 
                                    873 ;sloc0                     Allocated with name '_Calculate_sloc0_1_0'
                                    874 ;------------------------------------------------------------
                                    875 ;	Computer.c:73: void Calculate(int num1, int num2, char op, int negative_num1, int negative_num2, int *ans)
                                    876 ;	-----------------------------------------
                                    877 ;	 function Calculate
                                    878 ;	-----------------------------------------
      000352                        879 _Calculate:
      000352 AE 82            [24]  880 	mov	r6, dpl
      000354 AF 83            [24]  881 	mov	r7, dph
                                    882 ;	Computer.c:75: switch (op)
      000356 74 0C            [12]  883 	mov	a,#0x0c
      000358 B5 27 02         [24]  884 	cjne	a,_Calculate_PARM_3,00132$
      00035B 80 18            [24]  885 	sjmp	00101$
      00035D                        886 00132$:
      00035D 74 0D            [12]  887 	mov	a,#0x0d
      00035F B5 27 02         [24]  888 	cjne	a,_Calculate_PARM_3,00133$
      000362 80 6A            [24]  889 	sjmp	00102$
      000364                        890 00133$:
      000364 74 0E            [12]  891 	mov	a,#0x0e
      000366 B5 27 03         [24]  892 	cjne	a,_Calculate_PARM_3,00134$
      000369 02 04 28         [24]  893 	ljmp	00103$
      00036C                        894 00134$:
      00036C 74 0F            [12]  895 	mov	a,#0x0f
      00036E B5 27 03         [24]  896 	cjne	a,_Calculate_PARM_3,00135$
      000371 02 04 8C         [24]  897 	ljmp	00104$
      000374                        898 00135$:
      000374 22               [24]  899 	ret
                                    900 ;	Computer.c:77: case 12:
      000375                        901 00101$:
                                    902 ;	Computer.c:78: *ans = (((-1) * negative_num1) * num1) + (((-1) * negative_num2) * num2);
      000375 AB 2C            [24]  903 	mov	r3,_Calculate_PARM_6
      000377 AC 2D            [24]  904 	mov	r4,(_Calculate_PARM_6 + 1)
      000379 AD 2E            [24]  905 	mov	r5,(_Calculate_PARM_6 + 2)
      00037B C3               [12]  906 	clr	c
      00037C E4               [12]  907 	clr	a
      00037D 95 28            [12]  908 	subb	a,_Calculate_PARM_4
      00037F F5 82            [12]  909 	mov	dpl,a
      000381 E4               [12]  910 	clr	a
      000382 95 29            [12]  911 	subb	a,(_Calculate_PARM_4 + 1)
      000384 F5 83            [12]  912 	mov	dph,a
      000386 8E 66            [24]  913 	mov	__mulint_PARM_2,r6
      000388 8F 67            [24]  914 	mov	(__mulint_PARM_2 + 1),r7
      00038A C0 05            [24]  915 	push	ar5
      00038C C0 04            [24]  916 	push	ar4
      00038E C0 03            [24]  917 	push	ar3
      000390 12 09 29         [24]  918 	lcall	__mulint
      000393 85 82 2F         [24]  919 	mov	_Calculate_sloc0_1_0,dpl
      000396 85 83 30         [24]  920 	mov	(_Calculate_sloc0_1_0 + 1),dph
      000399 C3               [12]  921 	clr	c
      00039A E4               [12]  922 	clr	a
      00039B 95 2A            [12]  923 	subb	a,_Calculate_PARM_5
      00039D F5 82            [12]  924 	mov	dpl,a
      00039F E4               [12]  925 	clr	a
      0003A0 95 2B            [12]  926 	subb	a,(_Calculate_PARM_5 + 1)
      0003A2 F5 83            [12]  927 	mov	dph,a
      0003A4 85 25 66         [24]  928 	mov	__mulint_PARM_2,_Calculate_PARM_2
      0003A7 85 26 67         [24]  929 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      0003AA 12 09 29         [24]  930 	lcall	__mulint
      0003AD A8 82            [24]  931 	mov	r0, dpl
      0003AF AA 83            [24]  932 	mov	r2, dph
      0003B1 D0 03            [24]  933 	pop	ar3
      0003B3 D0 04            [24]  934 	pop	ar4
      0003B5 D0 05            [24]  935 	pop	ar5
      0003B7 E8               [12]  936 	mov	a,r0
      0003B8 25 2F            [12]  937 	add	a, _Calculate_sloc0_1_0
      0003BA F8               [12]  938 	mov	r0,a
      0003BB EA               [12]  939 	mov	a,r2
      0003BC 35 30            [12]  940 	addc	a, (_Calculate_sloc0_1_0 + 1)
      0003BE FA               [12]  941 	mov	r2,a
      0003BF 8B 82            [24]  942 	mov	dpl,r3
      0003C1 8C 83            [24]  943 	mov	dph,r4
      0003C3 8D F0            [24]  944 	mov	b,r5
      0003C5 E8               [12]  945 	mov	a,r0
      0003C6 12 09 0E         [24]  946 	lcall	__gptrput
      0003C9 A3               [24]  947 	inc	dptr
      0003CA EA               [12]  948 	mov	a,r2
                                    949 ;	Computer.c:79: break;
      0003CB 02 09 0E         [24]  950 	ljmp	__gptrput
                                    951 ;	Computer.c:80: case 13:
      0003CE                        952 00102$:
                                    953 ;	Computer.c:81: *ans = (((-1) * negative_num1) * num1) - (((-1) * negative_num2) * num2);
      0003CE AB 2C            [24]  954 	mov	r3,_Calculate_PARM_6
      0003D0 AC 2D            [24]  955 	mov	r4,(_Calculate_PARM_6 + 1)
      0003D2 AD 2E            [24]  956 	mov	r5,(_Calculate_PARM_6 + 2)
      0003D4 C3               [12]  957 	clr	c
      0003D5 E4               [12]  958 	clr	a
      0003D6 95 28            [12]  959 	subb	a,_Calculate_PARM_4
      0003D8 F5 82            [12]  960 	mov	dpl,a
      0003DA E4               [12]  961 	clr	a
      0003DB 95 29            [12]  962 	subb	a,(_Calculate_PARM_4 + 1)
      0003DD F5 83            [12]  963 	mov	dph,a
      0003DF 8E 66            [24]  964 	mov	__mulint_PARM_2,r6
      0003E1 8F 67            [24]  965 	mov	(__mulint_PARM_2 + 1),r7
      0003E3 C0 05            [24]  966 	push	ar5
      0003E5 C0 04            [24]  967 	push	ar4
      0003E7 C0 03            [24]  968 	push	ar3
      0003E9 12 09 29         [24]  969 	lcall	__mulint
      0003EC 85 82 2F         [24]  970 	mov	_Calculate_sloc0_1_0,dpl
      0003EF 85 83 30         [24]  971 	mov	(_Calculate_sloc0_1_0 + 1),dph
      0003F2 C3               [12]  972 	clr	c
      0003F3 E4               [12]  973 	clr	a
      0003F4 95 2A            [12]  974 	subb	a,_Calculate_PARM_5
      0003F6 F5 82            [12]  975 	mov	dpl,a
      0003F8 E4               [12]  976 	clr	a
      0003F9 95 2B            [12]  977 	subb	a,(_Calculate_PARM_5 + 1)
      0003FB F5 83            [12]  978 	mov	dph,a
      0003FD 85 25 66         [24]  979 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000400 85 26 67         [24]  980 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      000403 12 09 29         [24]  981 	lcall	__mulint
      000406 A8 82            [24]  982 	mov	r0, dpl
      000408 AA 83            [24]  983 	mov	r2, dph
      00040A D0 03            [24]  984 	pop	ar3
      00040C D0 04            [24]  985 	pop	ar4
      00040E D0 05            [24]  986 	pop	ar5
      000410 E5 2F            [12]  987 	mov	a,_Calculate_sloc0_1_0
      000412 C3               [12]  988 	clr	c
      000413 98               [12]  989 	subb	a,r0
      000414 F8               [12]  990 	mov	r0,a
      000415 E5 30            [12]  991 	mov	a,(_Calculate_sloc0_1_0 + 1)
      000417 9A               [12]  992 	subb	a,r2
      000418 FA               [12]  993 	mov	r2,a
      000419 8B 82            [24]  994 	mov	dpl,r3
      00041B 8C 83            [24]  995 	mov	dph,r4
      00041D 8D F0            [24]  996 	mov	b,r5
      00041F E8               [12]  997 	mov	a,r0
      000420 12 09 0E         [24]  998 	lcall	__gptrput
      000423 A3               [24]  999 	inc	dptr
      000424 EA               [12] 1000 	mov	a,r2
                                   1001 ;	Computer.c:82: break;
      000425 02 09 0E         [24] 1002 	ljmp	__gptrput
                                   1003 ;	Computer.c:83: case 14:
      000428                       1004 00103$:
                                   1005 ;	Computer.c:84: *ans = (((-1) * negative_num1) * num1) * (((-1) * negative_num2) * num2);
      000428 AB 2C            [24] 1006 	mov	r3,_Calculate_PARM_6
      00042A AC 2D            [24] 1007 	mov	r4,(_Calculate_PARM_6 + 1)
      00042C AD 2E            [24] 1008 	mov	r5,(_Calculate_PARM_6 + 2)
      00042E C3               [12] 1009 	clr	c
      00042F E4               [12] 1010 	clr	a
      000430 95 28            [12] 1011 	subb	a,_Calculate_PARM_4
      000432 F5 82            [12] 1012 	mov	dpl,a
      000434 E4               [12] 1013 	clr	a
      000435 95 29            [12] 1014 	subb	a,(_Calculate_PARM_4 + 1)
      000437 F5 83            [12] 1015 	mov	dph,a
      000439 8E 66            [24] 1016 	mov	__mulint_PARM_2,r6
      00043B 8F 67            [24] 1017 	mov	(__mulint_PARM_2 + 1),r7
      00043D C0 05            [24] 1018 	push	ar5
      00043F C0 04            [24] 1019 	push	ar4
      000441 C0 03            [24] 1020 	push	ar3
      000443 12 09 29         [24] 1021 	lcall	__mulint
      000446 A9 82            [24] 1022 	mov	r1, dpl
      000448 AA 83            [24] 1023 	mov	r2, dph
      00044A C3               [12] 1024 	clr	c
      00044B E4               [12] 1025 	clr	a
      00044C 95 2A            [12] 1026 	subb	a,_Calculate_PARM_5
      00044E F5 82            [12] 1027 	mov	dpl,a
      000450 E4               [12] 1028 	clr	a
      000451 95 2B            [12] 1029 	subb	a,(_Calculate_PARM_5 + 1)
      000453 F5 83            [12] 1030 	mov	dph,a
      000455 85 25 66         [24] 1031 	mov	__mulint_PARM_2,_Calculate_PARM_2
      000458 85 26 67         [24] 1032 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      00045B C0 02            [24] 1033 	push	ar2
      00045D C0 01            [24] 1034 	push	ar1
      00045F 12 09 29         [24] 1035 	lcall	__mulint
      000462 85 82 66         [24] 1036 	mov	__mulint_PARM_2,dpl
      000465 85 83 67         [24] 1037 	mov	(__mulint_PARM_2 + 1),dph
      000468 D0 01            [24] 1038 	pop	ar1
      00046A D0 02            [24] 1039 	pop	ar2
      00046C 89 82            [24] 1040 	mov	dpl, r1
      00046E 8A 83            [24] 1041 	mov	dph, r2
      000470 12 09 29         [24] 1042 	lcall	__mulint
      000473 A9 82            [24] 1043 	mov	r1, dpl
      000475 AA 83            [24] 1044 	mov	r2, dph
      000477 D0 03            [24] 1045 	pop	ar3
      000479 D0 04            [24] 1046 	pop	ar4
      00047B D0 05            [24] 1047 	pop	ar5
      00047D 8B 82            [24] 1048 	mov	dpl,r3
      00047F 8C 83            [24] 1049 	mov	dph,r4
      000481 8D F0            [24] 1050 	mov	b,r5
      000483 E9               [12] 1051 	mov	a,r1
      000484 12 09 0E         [24] 1052 	lcall	__gptrput
      000487 A3               [24] 1053 	inc	dptr
      000488 EA               [12] 1054 	mov	a,r2
                                   1055 ;	Computer.c:85: break;
      000489 02 09 0E         [24] 1056 	ljmp	__gptrput
                                   1057 ;	Computer.c:86: case 15:
      00048C                       1058 00104$:
                                   1059 ;	Computer.c:87: *ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
      00048C AB 2C            [24] 1060 	mov	r3,_Calculate_PARM_6
      00048E AC 2D            [24] 1061 	mov	r4,(_Calculate_PARM_6 + 1)
      000490 AD 2E            [24] 1062 	mov	r5,(_Calculate_PARM_6 + 2)
      000492 C3               [12] 1063 	clr	c
      000493 E4               [12] 1064 	clr	a
      000494 95 28            [12] 1065 	subb	a,_Calculate_PARM_4
      000496 F5 82            [12] 1066 	mov	dpl,a
      000498 E4               [12] 1067 	clr	a
      000499 95 29            [12] 1068 	subb	a,(_Calculate_PARM_4 + 1)
      00049B F5 83            [12] 1069 	mov	dph,a
      00049D 8E 66            [24] 1070 	mov	__mulint_PARM_2,r6
      00049F 8F 67            [24] 1071 	mov	(__mulint_PARM_2 + 1),r7
      0004A1 C0 05            [24] 1072 	push	ar5
      0004A3 C0 04            [24] 1073 	push	ar4
      0004A5 C0 03            [24] 1074 	push	ar3
      0004A7 12 09 29         [24] 1075 	lcall	__mulint
      0004AA AE 82            [24] 1076 	mov	r6, dpl
      0004AC AF 83            [24] 1077 	mov	r7, dph
      0004AE D0 03            [24] 1078 	pop	ar3
      0004B0 D0 04            [24] 1079 	pop	ar4
      0004B2 D0 05            [24] 1080 	pop	ar5
      0004B4 C3               [12] 1081 	clr	c
      0004B5 E4               [12] 1082 	clr	a
      0004B6 95 2A            [12] 1083 	subb	a,_Calculate_PARM_5
      0004B8 F5 82            [12] 1084 	mov	dpl,a
      0004BA E4               [12] 1085 	clr	a
      0004BB 95 2B            [12] 1086 	subb	a,(_Calculate_PARM_5 + 1)
      0004BD F5 83            [12] 1087 	mov	dph,a
      0004BF 85 25 66         [24] 1088 	mov	__mulint_PARM_2,_Calculate_PARM_2
      0004C2 85 26 67         [24] 1089 	mov	(__mulint_PARM_2 + 1),(_Calculate_PARM_2 + 1)
      0004C5 C0 07            [24] 1090 	push	ar7
      0004C7 C0 06            [24] 1091 	push	ar6
      0004C9 C0 05            [24] 1092 	push	ar5
      0004CB C0 04            [24] 1093 	push	ar4
      0004CD C0 03            [24] 1094 	push	ar3
      0004CF 12 09 29         [24] 1095 	lcall	__mulint
      0004D2 85 82 66         [24] 1096 	mov	__divsint_PARM_2,dpl
      0004D5 85 83 67         [24] 1097 	mov	(__divsint_PARM_2 + 1),dph
      0004D8 D0 03            [24] 1098 	pop	ar3
      0004DA D0 04            [24] 1099 	pop	ar4
      0004DC D0 05            [24] 1100 	pop	ar5
      0004DE D0 06            [24] 1101 	pop	ar6
      0004E0 D0 07            [24] 1102 	pop	ar7
      0004E2 8E 82            [24] 1103 	mov	dpl, r6
      0004E4 8F 83            [24] 1104 	mov	dph, r7
      0004E6 C0 05            [24] 1105 	push	ar5
      0004E8 C0 04            [24] 1106 	push	ar4
      0004EA C0 03            [24] 1107 	push	ar3
      0004EC 12 0A A3         [24] 1108 	lcall	__divsint
      0004EF AE 82            [24] 1109 	mov	r6, dpl
      0004F1 AF 83            [24] 1110 	mov	r7, dph
      0004F3 D0 03            [24] 1111 	pop	ar3
      0004F5 D0 04            [24] 1112 	pop	ar4
      0004F7 D0 05            [24] 1113 	pop	ar5
      0004F9 8B 82            [24] 1114 	mov	dpl,r3
      0004FB 8C 83            [24] 1115 	mov	dph,r4
      0004FD 8D F0            [24] 1116 	mov	b,r5
      0004FF EE               [12] 1117 	mov	a,r6
      000500 12 09 0E         [24] 1118 	lcall	__gptrput
      000503 A3               [24] 1119 	inc	dptr
      000504 EF               [12] 1120 	mov	a,r7
                                   1121 ;	Computer.c:89: }
                                   1122 ;	Computer.c:90: }
      000505 02 09 0E         [24] 1123 	ljmp	__gptrput
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'Keypad_Debounce_init'
                                   1126 ;------------------------------------------------------------
                                   1127 ;	Computer.c:93: void Keypad_Debounce_init(void)
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function Keypad_Debounce_init
                                   1130 ;	-----------------------------------------
      000508                       1131 _Keypad_Debounce_init:
                                   1132 ;	Computer.c:95: IE = 0x8a;
      000508 75 A8 8A         [24] 1133 	mov	_IE,#0x8a
                                   1134 ;	Computer.c:97: TMOD = 0x01;
      00050B 75 89 01         [24] 1135 	mov	_TMOD,#0x01
                                   1136 ;	Computer.c:99: }
      00050E 22               [24] 1137 	ret
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'Keypad_Debounce'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	Computer.c:101: void Keypad_Debounce(void) __interrupt(1) __using(1)
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function Keypad_Debounce
                                   1144 ;	-----------------------------------------
      00050F                       1145 _Keypad_Debounce:
                           00000F  1146 	ar7 = 0x0f
                           00000E  1147 	ar6 = 0x0e
                           00000D  1148 	ar5 = 0x0d
                           00000C  1149 	ar4 = 0x0c
                           00000B  1150 	ar3 = 0x0b
                           00000A  1151 	ar2 = 0x0a
                           000009  1152 	ar1 = 0x09
                           000008  1153 	ar0 = 0x08
      00050F C0 E0            [24] 1154 	push	acc
      000511 C0 D0            [24] 1155 	push	psw
                                   1156 ;	Computer.c:103: TH0 = (65536 - 50000) / 256;
      000513 75 8C 3C         [24] 1157 	mov	_TH0,#0x3c
                                   1158 ;	Computer.c:104: TL0 = (65536 - 50000) % 256;
      000516 75 8A B0         [24] 1159 	mov	_TL0,#0xb0
                                   1160 ;	Computer.c:105: timer_count++;
      000519 05 11            [12] 1161 	inc	_timer_count
                                   1162 ;	Computer.c:106: if (timer_count == 20)
      00051B 74 14            [12] 1163 	mov	a,#0x14
      00051D B5 11 09         [24] 1164 	cjne	a,_timer_count,00103$
                                   1165 ;	Computer.c:108: Keypad_flag = 1;
                                   1166 ;	assignBit
      000520 D2 01            [12] 1167 	setb	_Keypad_flag
                                   1168 ;	Computer.c:109: TF0 = 0;
                                   1169 ;	assignBit
      000522 C2 8D            [12] 1170 	clr	_TF0
                                   1171 ;	Computer.c:111: TR0 = 0;
                                   1172 ;	assignBit
      000524 C2 8C            [12] 1173 	clr	_TR0
                                   1174 ;	Computer.c:112: timer_count = 0;
      000526 75 11 00         [24] 1175 	mov	_timer_count,#0x00
      000529                       1176 00103$:
                                   1177 ;	Computer.c:114: }
      000529 D0 D0            [24] 1178 	pop	psw
      00052B D0 E0            [24] 1179 	pop	acc
      00052D 32               [24] 1180 	reti
                                   1181 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1182 ;	eliminated unneeded push/pop dpl
                                   1183 ;	eliminated unneeded push/pop dph
                                   1184 ;	eliminated unneeded push/pop b
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'clean'
                                   1187 ;------------------------------------------------------------
                                   1188 ;f                         Allocated to registers r7 
                                   1189 ;------------------------------------------------------------
                                   1190 ;	Computer.c:116: void clean()
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function clean
                                   1193 ;	-----------------------------------------
      00052E                       1194 _clean:
                           000007  1195 	ar7 = 0x07
                           000006  1196 	ar6 = 0x06
                           000005  1197 	ar5 = 0x05
                           000004  1198 	ar4 = 0x04
                           000003  1199 	ar3 = 0x03
                           000002  1200 	ar2 = 0x02
                           000001  1201 	ar1 = 0x01
                           000000  1202 	ar0 = 0x00
                                   1203 ;	Computer.c:118: flag = 0;
      00052E 75 10 00         [24] 1204 	mov	_flag,#0x00
                                   1205 ;	Computer.c:119: for (char f = 0; f < 8; f++)
      000531 7F 00            [12] 1206 	mov	r7,#0x00
      000533                       1207 00103$:
      000533 BF 08 00         [24] 1208 	cjne	r7,#0x08,00120$
      000536                       1209 00120$:
      000536 50 09            [24] 1210 	jnc	00105$
                                   1211 ;	Computer.c:121: buffer[f] = -1;
      000538 EF               [12] 1212 	mov	a,r7
      000539 24 78            [12] 1213 	add	a, #_buffer
      00053B F8               [12] 1214 	mov	r0,a
      00053C 76 FF            [12] 1215 	mov	@r0,#0xff
                                   1216 ;	Computer.c:119: for (char f = 0; f < 8; f++)
      00053E 0F               [12] 1217 	inc	r7
      00053F 80 F2            [24] 1218 	sjmp	00103$
      000541                       1219 00105$:
                                   1220 ;	Computer.c:124: }
      000541 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'main'
                                   1224 ;------------------------------------------------------------
                                   1225 ;num_1                     Allocated with name '_main_num_1_10000_34'
                                   1226 ;num_2                     Allocated with name '_main_num_2_10000_34'
                                   1227 ;ans                       Allocated with name '_main_ans_10000_34'
                                   1228 ;op                        Allocated with name '_main_op_10000_34'
                                   1229 ;number                    Allocated to registers r7 
                                   1230 ;old_number                Allocated to registers 
                                   1231 ;negative_num1             Allocated with name '_main_negative_num1_10000_34'
                                   1232 ;negative_num2             Allocated with name '_main_negative_num2_10000_34'
                                   1233 ;negative_ans              Allocated with name '_main_negative_ans_10000_34'
                                   1234 ;count                     Allocated to registers r6 
                                   1235 ;m                         Allocated to registers r5 
                                   1236 ;count                     Allocated to registers 
                                   1237 ;m                         Allocated to registers r7 
                                   1238 ;------------------------------------------------------------
                                   1239 ;	Computer.c:125: void main(void)
                                   1240 ;	-----------------------------------------
                                   1241 ;	 function main
                                   1242 ;	-----------------------------------------
      000542                       1243 _main:
                                   1244 ;	Computer.c:127: int num_1 = 0, num_2 = 0, ans = 0;
      000542 E4               [12] 1245 	clr	a
      000543 F5 31            [12] 1246 	mov	_main_num_1_10000_34,a
      000545 F5 32            [12] 1247 	mov	(_main_num_1_10000_34 + 1),a
      000547 F5 33            [12] 1248 	mov	_main_num_2_10000_34,a
      000549 F5 34            [12] 1249 	mov	(_main_num_2_10000_34 + 1),a
      00054B F5 35            [12] 1250 	mov	_main_ans_10000_34,a
      00054D F5 36            [12] 1251 	mov	(_main_ans_10000_34 + 1),a
                                   1252 ;	Computer.c:128: char op = '$';
      00054F 75 37 24         [24] 1253 	mov	_main_op_10000_34,#0x24
                                   1254 ;	Computer.c:130: int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
      000552 75 38 FF         [24] 1255 	mov	_main_negative_num1_10000_34,#0xff
      000555 75 39 FF         [24] 1256 	mov	(_main_negative_num1_10000_34 + 1),#0xff
      000558 75 3A FF         [24] 1257 	mov	_main_negative_num2_10000_34,#0xff
      00055B 75 3B FF         [24] 1258 	mov	(_main_negative_num2_10000_34 + 1),#0xff
      00055E F5 3C            [12] 1259 	mov	_main_negative_ans_10000_34,a
      000560 F5 3D            [12] 1260 	mov	(_main_negative_ans_10000_34 + 1),a
                                   1261 ;	Computer.c:131: Keypad_Debounce_init();
      000562 12 05 08         [24] 1262 	lcall	_Keypad_Debounce_init
                                   1263 ;	Computer.c:133: while (1)
      000565                       1264 00121$:
                                   1265 ;	Computer.c:135: TR0 = 1;
                                   1266 ;	assignBit
      000565 D2 8C            [12] 1267 	setb	_TR0
                                   1268 ;	Computer.c:137: number = ReadKeypad();
      000567 12 09 BC         [24] 1269 	lcall	_ReadKeypad
                                   1270 ;	Computer.c:138: if (number >= 0 && number <= 15)
      00056A E5 82            [12] 1271 	mov	a,dpl
      00056C FF               [12] 1272 	mov	r7,a
      00056D 24 F0            [12] 1273 	add	a,#0xff - 0x0f
      00056F 50 03            [24] 1274 	jnc	00211$
      000571 02 07 4B         [24] 1275 	ljmp	00118$
      000574                       1276 00211$:
                                   1277 ;	Computer.c:142: if (Keypad_flag == 1)
      000574 20 01 03         [24] 1278 	jb	_Keypad_flag,00212$
      000577 02 07 4B         [24] 1279 	ljmp	00118$
      00057A                       1280 00212$:
                                   1281 ;	Computer.c:144: if (old_number == 10)
      00057A BF 0A 34         [24] 1282 	cjne	r7,#0x0a,00113$
                                   1283 ;	Computer.c:146: char count = start_count[history_count];
      00057D 78 94            [12] 1284 	mov	r0,#_history_count
      00057F E6               [12] 1285 	mov	a,@r0
      000580 24 8A            [12] 1286 	add	a, #_start_count
      000582 F9               [12] 1287 	mov	r1,a
      000583 87 06            [24] 1288 	mov	ar6,@r1
                                   1289 ;	Computer.c:147: for (char m = 0; m < 100; m++)
      000585 7D 00            [12] 1290 	mov	r5,#0x00
      000587                       1291 00124$:
      000587 BD 64 00         [24] 1292 	cjne	r5,#0x64,00215$
      00058A                       1293 00215$:
      00058A 50 1A            [24] 1294 	jnc	00101$
                                   1295 ;	Computer.c:149: Show_Ans(history, start, count);
      00058C 78 95            [12] 1296 	mov	r0,#_start
      00058E 86 60            [24] 1297 	mov	_Show_Ans_PARM_2,@r0
      000590 8E 61            [24] 1298 	mov	_Show_Ans_PARM_3,r6
      000592 90 00 80         [24] 1299 	mov	dptr,#_history
      000595 75 F0 40         [24] 1300 	mov	b, #0x40
      000598 C0 06            [24] 1301 	push	ar6
      00059A C0 05            [24] 1302 	push	ar5
      00059C 12 08 67         [24] 1303 	lcall	_Show_Ans
      00059F D0 05            [24] 1304 	pop	ar5
      0005A1 D0 06            [24] 1305 	pop	ar6
                                   1306 ;	Computer.c:147: for (char m = 0; m < 100; m++)
      0005A3 0D               [12] 1307 	inc	r5
      0005A4 80 E1            [24] 1308 	sjmp	00124$
      0005A6                       1309 00101$:
                                   1310 ;	Computer.c:151: start += count;
      0005A6 78 95            [12] 1311 	mov	r0,#_start
      0005A8 EE               [12] 1312 	mov	a,r6
      0005A9 26               [12] 1313 	add	a, @r0
      0005AA F6               [12] 1314 	mov	@r0,a
                                   1315 ;	Computer.c:152: history_count++;
      0005AB 78 94            [12] 1316 	mov	r0,#_history_count
      0005AD 06               [12] 1317 	inc	@r0
      0005AE 02 07 4B         [24] 1318 	ljmp	00118$
      0005B1                       1319 00113$:
                                   1320 ;	Computer.c:157: flag <<= 1;
      0005B1 E5 10            [12] 1321 	mov	a,_flag
      0005B3 25 10            [12] 1322 	add	a,_flag
      0005B5 F5 10            [12] 1323 	mov	_flag,a
                                   1324 ;	Computer.c:158: flag |= 0x01;
      0005B7 43 10 01         [24] 1325 	orl	_flag,#0x01
                                   1326 ;	Computer.c:160: SaveNumber(old_number, 7, buffer);
      0005BA 75 67 78         [24] 1327 	mov	_SaveNumber_PARM_3,#_buffer
      0005BD 75 68 00         [24] 1328 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0005C0 75 69 40         [24] 1329 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0005C3 75 66 07         [24] 1330 	mov	_SaveNumber_PARM_2,#0x07
      0005C6 8F 82            [24] 1331 	mov	dpl, r7
      0005C8 12 01 BE         [24] 1332 	lcall	_SaveNumber
                                   1333 ;	Computer.c:162: Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
      0005CB 75 13 33         [24] 1334 	mov	_Update_Expression_PARM_2,#_main_num_2_10000_34
      0005CE 75 14 00         [24] 1335 	mov	(_Update_Expression_PARM_2 + 1),#0x00
      0005D1 75 15 40         [24] 1336 	mov	(_Update_Expression_PARM_2 + 2),#0x40
      0005D4 75 16 37         [24] 1337 	mov	_Update_Expression_PARM_3,#_main_op_10000_34
      0005D7 75 17 00         [24] 1338 	mov	(_Update_Expression_PARM_3 + 1),#0x00
      0005DA 75 18 40         [24] 1339 	mov	(_Update_Expression_PARM_3 + 2),#0x40
      0005DD 75 19 38         [24] 1340 	mov	_Update_Expression_PARM_4,#_main_negative_num1_10000_34
      0005E0 75 1A 00         [24] 1341 	mov	(_Update_Expression_PARM_4 + 1),#0x00
      0005E3 75 1B 40         [24] 1342 	mov	(_Update_Expression_PARM_4 + 2),#0x40
      0005E6 75 1C 3A         [24] 1343 	mov	_Update_Expression_PARM_5,#_main_negative_num2_10000_34
      0005E9 75 1D 00         [24] 1344 	mov	(_Update_Expression_PARM_5 + 1),#0x00
      0005EC 75 1E 40         [24] 1345 	mov	(_Update_Expression_PARM_5 + 2),#0x40
      0005EF 90 00 31         [24] 1346 	mov	dptr,#_main_num_1_10000_34
      0005F2 75 F0 40         [24] 1347 	mov	b, #0x40
      0005F5 12 02 07         [24] 1348 	lcall	_Update_Expression
                                   1349 ;	Computer.c:164: if (cal_flag == 1)
      0005F8 20 00 03         [24] 1350 	jb	_cal_flag,00217$
      0005FB 02 07 49         [24] 1351 	ljmp	00111$
      0005FE                       1352 00217$:
                                   1353 ;	Computer.c:167: Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
      0005FE 75 2C 35         [24] 1354 	mov	_Calculate_PARM_6,#_main_ans_10000_34
      000601 75 2D 00         [24] 1355 	mov	(_Calculate_PARM_6 + 1),#0x00
      000604 75 2E 40         [24] 1356 	mov	(_Calculate_PARM_6 + 2),#0x40
      000607 85 33 25         [24] 1357 	mov	_Calculate_PARM_2,_main_num_2_10000_34
      00060A 85 34 26         [24] 1358 	mov	(_Calculate_PARM_2 + 1),(_main_num_2_10000_34 + 1)
      00060D 85 37 27         [24] 1359 	mov	_Calculate_PARM_3,_main_op_10000_34
      000610 85 38 28         [24] 1360 	mov	_Calculate_PARM_4,_main_negative_num1_10000_34
      000613 85 39 29         [24] 1361 	mov	(_Calculate_PARM_4 + 1),(_main_negative_num1_10000_34 + 1)
      000616 85 3A 2A         [24] 1362 	mov	_Calculate_PARM_5,_main_negative_num2_10000_34
      000619 85 3B 2B         [24] 1363 	mov	(_Calculate_PARM_5 + 1),(_main_negative_num2_10000_34 + 1)
      00061C 85 31 82         [24] 1364 	mov	dpl, _main_num_1_10000_34
      00061F 85 32 83         [24] 1365 	mov	dph, (_main_num_1_10000_34 + 1)
      000622 12 03 52         [24] 1366 	lcall	_Calculate
                                   1367 ;	Computer.c:169: if (ans < 0)
      000625 E5 36            [12] 1368 	mov	a,(_main_ans_10000_34 + 1)
      000627 30 E7 11         [24] 1369 	jnb	acc.7,00103$
                                   1370 ;	Computer.c:171: ans = -ans;
      00062A C3               [12] 1371 	clr	c
      00062B E4               [12] 1372 	clr	a
      00062C 95 35            [12] 1373 	subb	a,_main_ans_10000_34
      00062E F5 35            [12] 1374 	mov	_main_ans_10000_34,a
      000630 E4               [12] 1375 	clr	a
      000631 95 36            [12] 1376 	subb	a,(_main_ans_10000_34 + 1)
      000633 F5 36            [12] 1377 	mov	(_main_ans_10000_34 + 1),a
                                   1378 ;	Computer.c:172: negative_ans = 1;
      000635 75 3C 01         [24] 1379 	mov	_main_negative_ans_10000_34,#0x01
      000638 75 3D 00         [24] 1380 	mov	(_main_negative_ans_10000_34 + 1),#0x00
      00063B                       1381 00103$:
                                   1382 ;	Computer.c:175: clean();
      00063B 12 05 2E         [24] 1383 	lcall	_clean
                                   1384 ;	Computer.c:176: do
      00063E                       1385 00104$:
                                   1386 ;	Computer.c:178: SaveNumber(ans % 10, 9, history);
      00063E 75 66 0A         [24] 1387 	mov	__modsint_PARM_2,#0x0a
      000641 75 67 00         [24] 1388 	mov	(__modsint_PARM_2 + 1),#0x00
      000644 85 35 82         [24] 1389 	mov	dpl, _main_ans_10000_34
      000647 85 36 83         [24] 1390 	mov	dph, (_main_ans_10000_34 + 1)
      00064A 12 0A 6D         [24] 1391 	lcall	__modsint
      00064D 75 67 80         [24] 1392 	mov	_SaveNumber_PARM_3,#_history
      000650 75 68 00         [24] 1393 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      000653 75 69 40         [24] 1394 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      000656 75 66 09         [24] 1395 	mov	_SaveNumber_PARM_2,#0x09
      000659 12 01 BE         [24] 1396 	lcall	_SaveNumber
                                   1397 ;	Computer.c:179: SaveNumber(ans % 10, 7, buffer);
      00065C 75 66 0A         [24] 1398 	mov	__modsint_PARM_2,#0x0a
      00065F 75 67 00         [24] 1399 	mov	(__modsint_PARM_2 + 1),#0x00
      000662 85 35 82         [24] 1400 	mov	dpl, _main_ans_10000_34
      000665 85 36 83         [24] 1401 	mov	dph, (_main_ans_10000_34 + 1)
      000668 12 0A 6D         [24] 1402 	lcall	__modsint
      00066B 75 67 78         [24] 1403 	mov	_SaveNumber_PARM_3,#_buffer
      00066E 75 68 00         [24] 1404 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      000671 75 69 40         [24] 1405 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      000674 75 66 07         [24] 1406 	mov	_SaveNumber_PARM_2,#0x07
      000677 12 01 BE         [24] 1407 	lcall	_SaveNumber
                                   1408 ;	Computer.c:180: ans /= 10;
      00067A 75 66 0A         [24] 1409 	mov	__divsint_PARM_2,#0x0a
      00067D 75 67 00         [24] 1410 	mov	(__divsint_PARM_2 + 1),#0x00
      000680 85 35 82         [24] 1411 	mov	dpl, _main_ans_10000_34
      000683 85 36 83         [24] 1412 	mov	dph, (_main_ans_10000_34 + 1)
      000686 12 0A A3         [24] 1413 	lcall	__divsint
      000689 85 82 35         [24] 1414 	mov	_main_ans_10000_34,dpl
      00068C 85 83 36         [24] 1415 	mov	(_main_ans_10000_34 + 1),dph
                                   1416 ;	Computer.c:181: flag <<= 1;
      00068F E5 10            [12] 1417 	mov	a,_flag
      000691 25 10            [12] 1418 	add	a,_flag
      000693 F5 10            [12] 1419 	mov	_flag,a
                                   1420 ;	Computer.c:182: flag |= 0x01;
      000695 43 10 01         [24] 1421 	orl	_flag,#0x01
                                   1422 ;	Computer.c:183: } while (ans);
      000698 E5 35            [12] 1423 	mov	a,_main_ans_10000_34
      00069A 45 36            [12] 1424 	orl	a,(_main_ans_10000_34 + 1)
      00069C 70 A0            [24] 1425 	jnz	00104$
                                   1426 ;	Computer.c:185: if (negative_ans == 1)
      00069E 74 01            [12] 1427 	mov	a,#0x01
      0006A0 B5 3C 06         [24] 1428 	cjne	a,_main_negative_ans_10000_34,00220$
      0006A3 14               [12] 1429 	dec	a
      0006A4 B5 3D 02         [24] 1430 	cjne	a,(_main_negative_ans_10000_34 + 1),00220$
      0006A7 80 02            [24] 1431 	sjmp	00221$
      0006A9                       1432 00220$:
      0006A9 80 2D            [24] 1433 	sjmp	00108$
      0006AB                       1434 00221$:
                                   1435 ;	Computer.c:187: SaveNumber(13, 9, history);
      0006AB 75 67 80         [24] 1436 	mov	_SaveNumber_PARM_3,#_history
      0006AE 75 68 00         [24] 1437 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0006B1 75 69 40         [24] 1438 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0006B4 75 66 09         [24] 1439 	mov	_SaveNumber_PARM_2,#0x09
      0006B7 75 82 0D         [24] 1440 	mov	dpl, #0x0d
      0006BA 12 01 BE         [24] 1441 	lcall	_SaveNumber
                                   1442 ;	Computer.c:188: SaveNumber(13, 7, buffer);
      0006BD 75 67 78         [24] 1443 	mov	_SaveNumber_PARM_3,#_buffer
      0006C0 75 68 00         [24] 1444 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0006C3 75 69 40         [24] 1445 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0006C6 75 66 07         [24] 1446 	mov	_SaveNumber_PARM_2,#0x07
      0006C9 75 82 0D         [24] 1447 	mov	dpl, #0x0d
      0006CC 12 01 BE         [24] 1448 	lcall	_SaveNumber
                                   1449 ;	Computer.c:189: flag <<= 1;
      0006CF E5 10            [12] 1450 	mov	a,_flag
      0006D1 25 10            [12] 1451 	add	a,_flag
      0006D3 F5 10            [12] 1452 	mov	_flag,a
                                   1453 ;	Computer.c:190: flag |= 0x01;
      0006D5 43 10 01         [24] 1454 	orl	_flag,#0x01
      0006D8                       1455 00108$:
                                   1456 ;	Computer.c:192: char count = Counter(flag);
      0006D8 85 10 82         [24] 1457 	mov	dpl, _flag
      0006DB 12 08 D1         [24] 1458 	lcall	_Counter
                                   1459 ;	Computer.c:193: SaveNumber(count, 9, start_count);
      0006DE 75 67 8A         [24] 1460 	mov	_SaveNumber_PARM_3,#_start_count
      0006E1 75 68 00         [24] 1461 	mov	(_SaveNumber_PARM_3 + 1),#0x00
      0006E4 75 69 40         [24] 1462 	mov	(_SaveNumber_PARM_3 + 2),#0x40
      0006E7 75 66 09         [24] 1463 	mov	_SaveNumber_PARM_2,#0x09
      0006EA 12 01 BE         [24] 1464 	lcall	_SaveNumber
                                   1465 ;	Computer.c:195: for (char m = 0; m < 100; m++)
      0006ED 7F 00            [12] 1466 	mov	r7,#0x00
      0006EF                       1467 00127$:
      0006EF BF 64 00         [24] 1468 	cjne	r7,#0x64,00222$
      0006F2                       1469 00222$:
      0006F2 50 13            [24] 1470 	jnc	00109$
                                   1471 ;	Computer.c:197: Show_Reverse(buffer, flag);
      0006F4 85 10 5B         [24] 1472 	mov	_Show_Reverse_PARM_2,_flag
      0006F7 90 00 78         [24] 1473 	mov	dptr,#_buffer
      0006FA 75 F0 40         [24] 1474 	mov	b, #0x40
      0006FD C0 07            [24] 1475 	push	ar7
      0006FF 12 07 DC         [24] 1476 	lcall	_Show_Reverse
      000702 D0 07            [24] 1477 	pop	ar7
                                   1478 ;	Computer.c:195: for (char m = 0; m < 100; m++)
      000704 0F               [12] 1479 	inc	r7
      000705 80 E8            [24] 1480 	sjmp	00127$
      000707                       1481 00109$:
                                   1482 ;	Computer.c:200: clean();
      000707 12 05 2E         [24] 1483 	lcall	_clean
                                   1484 ;	Computer.c:201: Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
      00070A 75 66 33         [24] 1485 	mov	_Restart_PARM_2,#_main_num_2_10000_34
      00070D 75 67 00         [24] 1486 	mov	(_Restart_PARM_2 + 1),#0x00
      000710 75 68 40         [24] 1487 	mov	(_Restart_PARM_2 + 2),#0x40
      000713 75 69 37         [24] 1488 	mov	_Restart_PARM_3,#_main_op_10000_34
      000716 75 6A 00         [24] 1489 	mov	(_Restart_PARM_3 + 1),#0x00
      000719 75 6B 40         [24] 1490 	mov	(_Restart_PARM_3 + 2),#0x40
      00071C 75 6C 35         [24] 1491 	mov	_Restart_PARM_4,#_main_ans_10000_34
      00071F 75 6D 00         [24] 1492 	mov	(_Restart_PARM_4 + 1),#0x00
      000722 75 6E 40         [24] 1493 	mov	(_Restart_PARM_4 + 2),#0x40
      000725 75 6F 38         [24] 1494 	mov	_Restart_PARM_5,#_main_negative_num1_10000_34
      000728 75 70 00         [24] 1495 	mov	(_Restart_PARM_5 + 1),#0x00
      00072B 75 71 40         [24] 1496 	mov	(_Restart_PARM_5 + 2),#0x40
      00072E 75 72 3A         [24] 1497 	mov	_Restart_PARM_6,#_main_negative_num2_10000_34
      000731 75 73 00         [24] 1498 	mov	(_Restart_PARM_6 + 1),#0x00
      000734 75 74 40         [24] 1499 	mov	(_Restart_PARM_6 + 2),#0x40
      000737 75 75 3C         [24] 1500 	mov	_Restart_PARM_7,#_main_negative_ans_10000_34
      00073A 75 76 00         [24] 1501 	mov	(_Restart_PARM_7 + 1),#0x00
      00073D 75 77 40         [24] 1502 	mov	(_Restart_PARM_7 + 2),#0x40
      000740 90 00 31         [24] 1503 	mov	dptr,#_main_num_1_10000_34
      000743 75 F0 40         [24] 1504 	mov	b, #0x40
      000746 12 01 3D         [24] 1505 	lcall	_Restart
      000749                       1506 00111$:
                                   1507 ;	Computer.c:204: Keypad_flag = 0;
                                   1508 ;	assignBit
      000749 C2 01            [12] 1509 	clr	_Keypad_flag
      00074B                       1510 00118$:
                                   1511 ;	Computer.c:208: Show(buffer, flag);
      00074B 85 10 57         [24] 1512 	mov	_Show_PARM_2,_flag
      00074E 90 00 78         [24] 1513 	mov	dptr,#_buffer
      000751 75 F0 40         [24] 1514 	mov	b, #0x40
      000754 12 07 6C         [24] 1515 	lcall	_Show
                                   1516 ;	Computer.c:210: }
      000757 02 05 65         [24] 1517 	ljmp	00121$
                                   1518 	.area CSEG    (CODE)
                                   1519 	.area CONST   (CODE)
                                   1520 	.area XINIT   (CODE)
                                   1521 	.area CABS    (ABS,CODE)
