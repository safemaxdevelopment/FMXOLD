opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F628A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 7 "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
	dw 0xFFEE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_Create_Task
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_Dispatch_Tasks
	FNCALL	_Dispatch_Tasks,___bmul
	FNCALL	_Dispatch_Tasks,_Task_3_500ms
	FNCALL	_Dispatch_Tasks,_Task_2_100ms
	FNCALL	_Dispatch_Tasks,_Task_1_100ms
	FNCALL	_Create_Task,___bmul
	FNCALL	_Task_1_100ms,_eeprom_write
	FNCALL	_Task_1_100ms,_transmitByte
	FNCALL	_Task_1_100ms,_eeprom_read
	FNCALL	_Task_1_100ms,_Reset_Comm_Timeout
	FNROOT	_main
	FNCALL	_my_isr,___lmul
	FNCALL	_my_isr,___lldiv
	FNCALL	intlevel1,_my_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_VehV_tiSig
	global	_VehV_vRef
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.h"
	line	32

;initializer for _VehV_tiSig
	retlw	028h
	retlw	0D5h

	line	31

;initializer for _VehV_vRef
	retlw	028h
	global	_tasks
	global	_VehV_tiPulse
	global	_VehV_tiPulseAvg
	global	_Rx_elapsed_ticks
	global	_VehSpd_ctDly
	global	_VehSpd_ctDlyThres
	global	_VehV_vRaw
	global	_elapsed_ticks
	global	Create_Task@index
	global	_Checksum
	global	_RxPtr
	global	_Rx_complete
	global	_VehV_stSpdLim
	global	_Dev_stTmprDetActv
	global	_Rxdata
	global	_VehSpd_numDly
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_VehSpd_numDly:
       ds      1

	global	_VehV_vLim
_VehV_vLim:
       ds      1

	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1H
_CCPR1H	set	22
	global	_CCPR1L
_CCPR1L	set	21
	global	_CMCON
_CMCON	set	31
	global	_INTCON
_INTCON	set	11
	global	_PIR1
_PIR1	set	12
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RB3
_RB3	set	51
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_SREN
_SREN	set	197
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1OSCEN
_T1OSCEN	set	131
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_TOUTPS0
_TOUTPS0	set	147
	global	_TOUTPS1
_TOUTPS1	set	148
	global	_TOUTPS2
_TOUTPS2	set	149
	global	_TOUTPS3
_TOUTPS3	set	150
	global	_nT1SYNC
_nT1SYNC	set	130
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EECON2
_EECON2	set	157
	global	_EEDATA
_EEDATA	set	154
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_PCON
_PCON	set	142
	global	_PIE1
_PIE1	set	140
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TXSTA
_TXSTA	set	152
	global	_VRCON
_VRCON	set	159
	global	_BRGH
_BRGH	set	1218
	global	_CSRC
_CSRC	set	1223
	global	_RCIE
_RCIE	set	1125
	global	_RD
_RD	set	1248
	global	_SYNC
_SYNC	set	1220
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRMT
_TRMT	set	1217
	global	_TXEN
_TXEN	set	1221
	global	_WR
_WR	set	1249
	global	_WREN
_WREN	set	1250
	global	_TMR1H
_TMR1H	set	15
	file	"FMX-DBV.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Dev_stTmprDetActv:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_tasks:
       ds      15

_VehV_tiPulse:
       ds      4

_VehV_tiPulseAvg:
       ds      4

_Rx_elapsed_ticks:
       ds      2

_VehSpd_ctDly:
       ds      2

_VehSpd_ctDlyThres:
       ds      2

_VehV_vRaw:
       ds      2

_elapsed_ticks:
       ds      2

Create_Task@index:
       ds      1

_Checksum:
       ds      1

_RxPtr:
       ds      1

_Rx_complete:
       ds      1

_VehV_stSpdLim:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.h"
	line	32
_VehV_tiSig:
       ds      2

psect	dataBANK0
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.h"
	line	31
_VehV_vRef:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_Rxdata:
       ds      25

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+026h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+019h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_Task_1_100ms
??_Task_1_100ms:	; 0 bytes @ 0x0
	ds	12
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_transmitByte
?_transmitByte:	; 0 bytes @ 0x0
	global	?_Dispatch_Tasks
?_Dispatch_Tasks:	; 0 bytes @ 0x0
	global	?_my_isr
?_my_isr:	; 0 bytes @ 0x0
	global	?_Reset_Comm_Timeout
?_Reset_Comm_Timeout:	; 0 bytes @ 0x0
	global	?_Task_1_100ms
?_Task_1_100ms:	; 0 bytes @ 0x0
	global	?_Task_2_100ms
?_Task_2_100ms:	; 0 bytes @ 0x0
	global	?_Task_3_500ms
?_Task_3_500ms:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	4
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	ds	4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_my_isr
??_my_isr:	; 0 bytes @ 0x0
	ds	8
	global	my_isr@temp
my_isr@temp:	; 4 bytes @ 0x8
	ds	4
	global	??_transmitByte
??_transmitByte:	; 0 bytes @ 0xC
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0xC
	global	??_Reset_Comm_Timeout
??_Reset_Comm_Timeout:	; 0 bytes @ 0xC
	global	??_Task_2_100ms
??_Task_2_100ms:	; 0 bytes @ 0xC
	global	??_Task_3_500ms
??_Task_3_500ms:	; 0 bytes @ 0xC
	global	?_eeprom_write
?_eeprom_write:	; 1 bytes @ 0xC
	global	?___bmul
?___bmul:	; 1 bytes @ 0xC
	global	transmitByte@data
transmitByte@data:	; 1 bytes @ 0xC
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0xC
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0xC
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0xC
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0xD
	global	??___bmul
??___bmul:	; 0 bytes @ 0xD
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0xD
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xD
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xE
	global	Task_1_100ms@chksum
Task_1_100ms@chksum:	; 2 bytes @ 0xE
	ds	1
	global	?_Create_Task
?_Create_Task:	; 0 bytes @ 0xF
	global	Create_Task@period
Create_Task@period:	; 2 bytes @ 0xF
	ds	1
	global	Task_1_100ms@data
Task_1_100ms@data:	; 1 bytes @ 0x10
	ds	1
	global	Task_1_100ms@i
Task_1_100ms@i:	; 1 bytes @ 0x11
	global	Create_Task@delay
Create_Task@delay:	; 2 bytes @ 0x11
	ds	1
	global	Task_1_100ms@currAddr
Task_1_100ms@currAddr:	; 1 bytes @ 0x12
	ds	1
	global	??_Create_Task
??_Create_Task:	; 0 bytes @ 0x13
	global	??_Dispatch_Tasks
??_Dispatch_Tasks:	; 0 bytes @ 0x13
	ds	2
	global	Dispatch_Tasks@i
Dispatch_Tasks@i:	; 1 bytes @ 0x15
	global	Create_Task@function_pointer
Create_Task@function_pointer:	; 1 bytes @ 0x15
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x16
	ds	1
;;Data sizes: Strings 0, constant 0, data 3, bss 64, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80     23      66
;; BANK1           80     12      37
;; BANK2           48      0       0

;;
;; Pointer list with targets:

;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; Create_Task@function_pointer	PTR FTN()void  size(1) Largest target is 0
;;		 -> Task_3_500ms(), Task_2_100ms(), Task_1_100ms(), 
;;
;; S1122$task	PTR FTN()void  size(1) Largest target is 0
;;		 -> Task_3_500ms(), Task_2_100ms(), Task_1_100ms(), 
;;
;; tasks.task	PTR FTN()void  size(1) Largest target is 0
;;		 -> Task_3_500ms(), Task_2_100ms(), Task_1_100ms(), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _my_isr in COMMON
;;
;;   _my_isr->___lldiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Create_Task
;;   _main->_Dispatch_Tasks
;;   _Dispatch_Tasks->_Task_1_100ms
;;   _Create_Task->___bmul
;;   _Task_1_100ms->_eeprom_write
;;
;; Critical Paths under _my_isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _Dispatch_Tasks->_Task_1_100ms
;;
;; Critical Paths under _my_isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _my_isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     853
;;                                             22 BANK0      1     1      0
;;                        _Create_Task
;;                        _eeprom_read
;;                     _Dispatch_Tasks
;; ---------------------------------------------------------------------------------
;; (1) _Dispatch_Tasks                                       3     3      0     697
;;                                             19 BANK0      3     3      0
;;                             ___bmul
;;                       _Task_3_500ms
;;                       _Task_2_100ms
;;                       _Task_1_100ms
;; ---------------------------------------------------------------------------------
;; (1) _Create_Task                                          7     3      4     134
;;                                             15 BANK0      7     3      4
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) _Task_1_100ms                                        17    17      0     437
;;                                             14 BANK0      5     5      0
;;                                              0 BANK1     12    12      0
;;                       _eeprom_write
;;                       _transmitByte
;;                        _eeprom_read
;;                 _Reset_Comm_Timeout
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               3     2      1      68
;;                                             12 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (2) _Task_3_500ms                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _Task_2_100ms                                         3     3      0       0
;;                                             12 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _eeprom_read                                          1     1      0      22
;;                                             12 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _transmitByte                                         1     1      0      22
;;                                             12 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _eeprom_write                                         2     1      1      50
;;                                             12 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (3) _Reset_Comm_Timeout                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _my_isr                                              12    12      0     300
;;                                              0 BANK0     12    12      0
;;                             ___lmul
;;                            ___lldiv
;; ---------------------------------------------------------------------------------
;; (5) ___lldiv                                             13     5      8     162
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (5) ___lmul                                              12     4      8      92
;;                                              0 COMMON    12     4      8
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Create_Task
;;     ___bmul
;;   _eeprom_read
;;   _Dispatch_Tasks
;;     ___bmul
;;     _Task_3_500ms
;;     _Task_2_100ms
;;     _Task_1_100ms
;;       _eeprom_write
;;       _transmitByte
;;       _eeprom_read
;;       _Reset_Comm_Timeout
;;
;; _my_isr (ROOT)
;;   ___lmul
;;   ___lldiv
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               30      0       0       9        0.0%
;;BITBANK2            30      0       0       8        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      C      25       7       46.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      7C      10        0.0%
;;ABS                  0      0      75       4        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     17      42       3       82.5%
;;BITBANK0            50      0       0       5        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA              80      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 244 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Create_Task
;;		_eeprom_read
;;		_Dispatch_Tasks
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
	line	244
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	245
	
l4226:	
;FMX-DBV.c: 245: CCPR1L = 0x00;
	clrf	(21)	;volatile
	line	246
;FMX-DBV.c: 246: CCPR1H = 0x00;
	clrf	(22)	;volatile
	line	247
;FMX-DBV.c: 247: CCP1CON = 0x00;
	clrf	(23)	;volatile
	line	248
	
l4228:	
;FMX-DBV.c: 248: CMCON = 0b00000111;
	movlw	(07h)
	movwf	(31)	;volatile
	line	249
	
l4230:	
;FMX-DBV.c: 249: EEDATA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(154)^080h	;volatile
	line	250
	
l4232:	
;FMX-DBV.c: 250: EEADR = 0x00;
	clrf	(155)^080h	;volatile
	line	251
	
l4234:	
;FMX-DBV.c: 251: EECON1 = 0x00;
	clrf	(156)^080h	;volatile
	line	252
	
l4236:	
;FMX-DBV.c: 252: VRCON = 0x00;
	clrf	(159)^080h	;volatile
	line	255
	
l4238:	
;FMX-DBV.c: 255: TRISA = 0b00011100;
	movlw	(01Ch)
	movwf	(133)^080h	;volatile
	line	256
	
l4240:	
;FMX-DBV.c: 256: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	257
	
l4242:	
;FMX-DBV.c: 257: TRISB = 0b10110111;
	movlw	(0B7h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	258
;FMX-DBV.c: 258: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	260
	
l4244:	
;FMX-DBV.c: 260: PCON = 0b00001000;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(142)^080h	;volatile
	line	263
	
l4246:	
;FMX-DBV.c: 263: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(14)	;volatile
	line	264
	
l4248:	
;FMX-DBV.c: 264: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	265
	
l4250:	
;FMX-DBV.c: 265: T1CON = 0x00;
	clrf	(16)	;volatile
	line	266
	
l4252:	
;FMX-DBV.c: 266: T1CKPS1 = 0;
	bcf	(133/8),(133)&7
	line	267
	
l4254:	
;FMX-DBV.c: 267: T1CKPS0 = 0;
	bcf	(132/8),(132)&7
	line	268
	
l4256:	
;FMX-DBV.c: 268: T1OSCEN = 0;
	bcf	(131/8),(131)&7
	line	269
	
l4258:	
;FMX-DBV.c: 269: nT1SYNC = 0;
	bcf	(130/8),(130)&7
	line	270
	
l4260:	
;FMX-DBV.c: 270: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	273
;FMX-DBV.c: 273: PR2 = 250;
	movlw	(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	274
	
l4262:	
;FMX-DBV.c: 274: T2CON = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(18)	;volatile
	line	275
	
l4264:	
;FMX-DBV.c: 275: TOUTPS3 = 1;
	bsf	(150/8),(150)&7
	line	276
	
l4266:	
;FMX-DBV.c: 276: TOUTPS2 = 0;
	bcf	(149/8),(149)&7
	line	277
	
l4268:	
;FMX-DBV.c: 277: TOUTPS1 = 0;
	bcf	(148/8),(148)&7
	line	278
	
l4270:	
;FMX-DBV.c: 278: TOUTPS0 = 1;
	bsf	(147/8),(147)&7
	line	279
	
l4272:	
;FMX-DBV.c: 279: T2CKPS1 = 0;
	bcf	(145/8),(145)&7
	line	280
	
l4274:	
;FMX-DBV.c: 280: T2CKPS0 = 1;
	bsf	(144/8),(144)&7
	line	284
	
l4276:	
;FMX-DBV.c: 284: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	285
;FMX-DBV.c: 285: RCSTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(24)	;volatile
	line	286
;FMX-DBV.c: 286: TXSTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(152)^080h	;volatile
	line	287
	
l4278:	
;FMX-DBV.c: 287: SREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(197/8),(197)&7
	line	288
	
l4280:	
;FMX-DBV.c: 288: CSRC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1223/8)^080h,(1223)&7
	line	289
	
l4282:	
;FMX-DBV.c: 289: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	290
	
l4284:	
;FMX-DBV.c: 290: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	291
	
l4286:	
;FMX-DBV.c: 291: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	line	292
	
l4288:	
;FMX-DBV.c: 292: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	293
	
l4290:	
;FMX-DBV.c: 293: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	296
;FMX-DBV.c: 296: OPTION_REG = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	297
;FMX-DBV.c: 297: PIR1 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	298
;FMX-DBV.c: 298: PIE1 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	300
	
l4292:	
;FMX-DBV.c: 300: TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7
	line	301
	
l4294:	
;FMX-DBV.c: 301: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(128/8),(128)&7
	line	302
	
l4296:	
;FMX-DBV.c: 302: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	303
	
l4298:	
;FMX-DBV.c: 303: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(146/8),(146)&7
	line	305
	
l4300:	
;FMX-DBV.c: 305: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	306
;FMX-DBV.c: 306: INTCON = 0x00;
	clrf	(11)	;volatile
	line	307
	
l4302:	
;FMX-DBV.c: 307: PEIE = 1;
	bsf	(94/8),(94)&7
	line	308
	
l4304:	
;FMX-DBV.c: 308: INTE = 1;
	bsf	(92/8),(92)&7
	line	310
	
l4306:	
;FMX-DBV.c: 310: Create_Task(Task_1_100ms, 10, 1);
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_Create_Task)
	clrf	(?_Create_Task+1)
	clrf	0+(?_Create_Task)+02h
	incf	0+(?_Create_Task)+02h,f
	clrf	1+(?_Create_Task)+02h
	movlw	((fp__Task_1_100ms-fpbase))&0ffh
	fcall	_Create_Task
	line	311
	
l4308:	
;FMX-DBV.c: 311: Create_Task(Task_2_100ms, 10, 1);
	movlw	0Ah
	movwf	(?_Create_Task)
	clrf	(?_Create_Task+1)
	clrf	0+(?_Create_Task)+02h
	incf	0+(?_Create_Task)+02h,f
	clrf	1+(?_Create_Task)+02h
	movlw	((fp__Task_2_100ms-fpbase))&0ffh
	fcall	_Create_Task
	line	312
	
l4310:	
;FMX-DBV.c: 312: Create_Task(Task_3_500ms, 50, 1);
	movlw	032h
	movwf	(?_Create_Task)
	clrf	(?_Create_Task+1)
	clrf	0+(?_Create_Task)+02h
	incf	0+(?_Create_Task)+02h,f
	clrf	1+(?_Create_Task)+02h
	movlw	((fp__Task_3_500ms-fpbase))&0ffh
	fcall	_Create_Task
	line	314
	
l4312:	
;FMX-DBV.c: 314: VehV_vLim = eeprom_read(0x00);
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_vLim)
	line	315
	
l4314:	
;FMX-DBV.c: 315: VehV_vRef = eeprom_read(0x03);
	movlw	(03h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_vRef)
	line	316
	
l4316:	
;FMX-DBV.c: 316: VehV_tiSig = (eeprom_read(0x01) << 8)+ eeprom_read(0x02);
	movlw	(02h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movlw	(01h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_tiSig+1)
	movf	0+(??_main+0)+0,w
	movwf	(_VehV_tiSig)
	line	317
	
l4318:	
;FMX-DBV.c: 317: VehSpd_numDly = eeprom_read(0x04);
	movlw	(04h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehSpd_numDly)
	line	319
	
l4320:	
;FMX-DBV.c: 319: if(VehV_tiSig == 0xFFFF)
	incf	(_VehV_tiSig),w
	skipnz
	incf	(_VehV_tiSig+1),w

	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l4354
u1260:
	line	321
	
l4322:	
;FMX-DBV.c: 320: {
;FMX-DBV.c: 321: VehV_tiSig = 0x40CC;
	movlw	low(040CCh)
	movwf	(_VehV_tiSig)
	movlw	high(040CCh)
	movwf	((_VehV_tiSig))+1
	line	322
;FMX-DBV.c: 322: VehV_vRef = 0x3C;
	movlw	(03Ch)
	movwf	(_VehV_vRef)
	line	323
;FMX-DBV.c: 323: VehV_vLim = 0x50;
	movlw	(050h)
	movwf	(_VehV_vLim)
	line	324
	
l4324:	
;FMX-DBV.c: 324: VehSpd_numDly = 0;
	clrf	(_VehSpd_numDly)
	goto	l4354
	line	331
	
l4326:	
;FMX-DBV.c: 330: {
;FMX-DBV.c: 331: VehSpd_ctDlyThres = 0;
	clrf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	333
;FMX-DBV.c: 332: }
;FMX-DBV.c: 333: break;
	goto	l523
	line	337
	
l4328:	
;FMX-DBV.c: 336: {
;FMX-DBV.c: 337: VehSpd_ctDlyThres = 20;
	movlw	014h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	339
;FMX-DBV.c: 338: }
;FMX-DBV.c: 339: break;
	goto	l523
	line	343
	
l4330:	
;FMX-DBV.c: 342: {
;FMX-DBV.c: 343: VehSpd_ctDlyThres = 40;
	movlw	028h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	345
;FMX-DBV.c: 344: }
;FMX-DBV.c: 345: break;
	goto	l523
	line	349
	
l4332:	
;FMX-DBV.c: 348: {
;FMX-DBV.c: 349: VehSpd_ctDlyThres = 120;
	movlw	078h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	351
;FMX-DBV.c: 350: }
;FMX-DBV.c: 351: break;
	goto	l523
	line	355
	
l4334:	
;FMX-DBV.c: 354: {
;FMX-DBV.c: 355: VehSpd_ctDlyThres = 240;
	movlw	0F0h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	357
;FMX-DBV.c: 356: }
;FMX-DBV.c: 357: break;
	goto	l523
	line	361
	
l4336:	
;FMX-DBV.c: 360: {
;FMX-DBV.c: 361: VehSpd_ctDlyThres = 360;
	movlw	low(0168h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0168h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	363
;FMX-DBV.c: 362: }
;FMX-DBV.c: 363: break;
	goto	l523
	line	367
	
l4338:	
;FMX-DBV.c: 366: {
;FMX-DBV.c: 367: VehSpd_ctDlyThres = 480;
	movlw	low(01E0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(01E0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	369
;FMX-DBV.c: 368: }
;FMX-DBV.c: 369: break;
	goto	l523
	line	373
	
l4340:	
;FMX-DBV.c: 372: {
;FMX-DBV.c: 373: VehSpd_ctDlyThres = 600;
	movlw	low(0258h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0258h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	375
;FMX-DBV.c: 374: }
;FMX-DBV.c: 375: break;
	goto	l523
	line	379
	
l4342:	
;FMX-DBV.c: 378: {
;FMX-DBV.c: 379: VehSpd_ctDlyThres = 720;
	movlw	low(02D0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(02D0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	381
;FMX-DBV.c: 380: }
;FMX-DBV.c: 381: break;
	goto	l523
	line	385
	
l4344:	
;FMX-DBV.c: 384: {
;FMX-DBV.c: 385: VehSpd_ctDlyThres = 840;
	movlw	low(0348h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0348h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	387
;FMX-DBV.c: 386: }
;FMX-DBV.c: 387: break;
	goto	l523
	line	391
	
l4346:	
;FMX-DBV.c: 390: {
;FMX-DBV.c: 391: VehSpd_ctDlyThres = 960;
	movlw	low(03C0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(03C0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	393
;FMX-DBV.c: 392: }
;FMX-DBV.c: 393: break;
	goto	l523
	line	397
	
l4348:	
;FMX-DBV.c: 396: {
;FMX-DBV.c: 397: VehSpd_ctDlyThres = 1080;
	movlw	low(0438h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0438h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	399
;FMX-DBV.c: 398: }
;FMX-DBV.c: 399: break;
	goto	l523
	line	403
	
l4350:	
;FMX-DBV.c: 402: {
;FMX-DBV.c: 403: VehSpd_ctDlyThres = 1200;
	movlw	low(04B0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(04B0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	405
;FMX-DBV.c: 404: }
;FMX-DBV.c: 405: break;
	goto	l523
	line	327
	
l4354:	
	movf	(_VehSpd_numDly),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 11
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           18     6 (fixed)
; simple_byte           37    19 (average)
; jumptable            260     6 (fixed)
; rangetable            16     6 (fixed)
; spacedrange           30     9 (fixed)
; locatedrange          12     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	12
	subwf	fsr,w
skipnc
goto l4350
movlw high(S4416)
movwf pclath
	movlw low(S4416)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4416:
	ljmp	l4326
	ljmp	l4328
	ljmp	l4330
	ljmp	l4332
	ljmp	l4334
	ljmp	l4336
	ljmp	l4338
	ljmp	l4340
	ljmp	l4342
	ljmp	l4344
	ljmp	l4346
	ljmp	l4348
psect	maintext

	line	406
	
l523:	
	line	409
;FMX-DBV.c: 409: GIE = 1;
	bsf	(95/8),(95)&7
	line	411
	
l4356:	
;FMX-DBV.c: 411: EEADR = 0xA0;
	movlw	(0A0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	415
	
l4358:	
;FMX-DBV.c: 414: {
;FMX-DBV.c: 415: Dispatch_Tasks();
	fcall	_Dispatch_Tasks
	goto	l4358
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	417
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Dispatch_Tasks
psect	text430,local,class=CODE,delta=2
global __ptext430
__ptext430:

;; *************** function _Dispatch_Tasks *****************
;; Defined at:
;;		line 13 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\schedule.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___bmul
;;		_Task_3_500ms
;;		_Task_2_100ms
;;		_Task_1_100ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text430
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\schedule.c"
	line	13
	global	__size_of_Dispatch_Tasks
	__size_of_Dispatch_Tasks	equ	__end_of_Dispatch_Tasks-_Dispatch_Tasks
	
_Dispatch_Tasks:	
	opt	stack 3
; Regs used in _Dispatch_Tasks: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	16
	
l4206:	
;schedule.c: 14: unsigned char i;
;schedule.c: 16: while (elapsed_ticks > 0)
	goto	l4224
	line	20
	
l4208:	
;schedule.c: 17: {
;schedule.c: 20: for (i = 0; i < 3; i++)
	clrf	(Dispatch_Tasks@i)
	line	23
	
l4214:	
;schedule.c: 21: {
;schedule.c: 23: if (--tasks[i].delay == 0)
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Dispatch_Tasks@i),w
	fcall	___bmul
	addlw	_tasks+03h&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	subwf	indf,f
	incfsz	fsr0,f
	movlw	high(01h)
	skipc
	decf	indf,f
	subwf	indf,f
	decf	fsr0,f
	movf	indf,w
	incf	fsr0,f
	iorwf	indf,w
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l4218
u1230:
	line	25
	
l4216:	
;schedule.c: 24: {
;schedule.c: 25: tasks[i].delay = tasks[i].period;
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Dispatch_Tasks@i),w
	fcall	___bmul
	addlw	_tasks+01h&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Dispatch_Tasks+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Dispatch_Tasks+0)+0+1
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Dispatch_Tasks@i),w
	fcall	___bmul
	addlw	_tasks+03h&0ffh
	movwf	fsr0
	movf	0+(??_Dispatch_Tasks+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_Dispatch_Tasks+0)+0,w
	movwf	indf
	line	26
;schedule.c: 26: tasks[i].task();
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Dispatch_Tasks@i),w
	fcall	___bmul
	addlw	_tasks&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	line	20
	
l4218:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(Dispatch_Tasks@i),f
	
l4220:	
	movlw	(03h)
	subwf	(Dispatch_Tasks@i),w
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l4214
u1240:
	line	29
	
l4222:	
;schedule.c: 27: }
;schedule.c: 28: }
;schedule.c: 29: --elapsed_ticks;
	movlw	low(01h)
	subwf	(_elapsed_ticks),f	;volatile
	movlw	high(01h)
	skipc
	decf	(_elapsed_ticks+1),f	;volatile
	subwf	(_elapsed_ticks+1),f	;volatile
	line	16
	
l4224:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_elapsed_ticks+1)),w	;volatile
	iorwf	((_elapsed_ticks)),w	;volatile
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l4208
u1250:
	line	31
	
l926:	
	return
	opt stack 0
GLOBAL	__end_of_Dispatch_Tasks
	__end_of_Dispatch_Tasks:
;; =============== function _Dispatch_Tasks ends ============

	signat	_Dispatch_Tasks,88
	global	_Create_Task
psect	text431,local,class=CODE,delta=2
global __ptext431
__ptext431:

;; *************** function _Create_Task *****************
;; Defined at:
;;		line 37 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\schedule.c"
;; Parameters:    Size  Location     Type
;;  function_poi    1    wreg     PTR FTN()void 
;;		 -> Task_3_500ms(0), Task_2_100ms(0), Task_1_100ms(0), 
;;  period          2   15[BANK0 ] unsigned int 
;;  delay           2   17[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  function_poi    1   21[BANK0 ] PTR FTN()void 
;;		 -> Task_3_500ms(0), Task_2_100ms(0), Task_1_100ms(0), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text431
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\schedule.c"
	line	37
	global	__size_of_Create_Task
	__size_of_Create_Task	equ	__end_of_Create_Task-_Create_Task
	
_Create_Task:	
	opt	stack 4
; Regs used in _Create_Task: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Create_Task@function_pointer stored from wreg
	line	41
	movwf	(Create_Task@function_pointer)
	
l3876:	
;schedule.c: 38: static unsigned char index = 0;
;schedule.c: 41: tasks[index].task = function_pointer;
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Create_Task@index),w
	fcall	___bmul
	addlw	_tasks&0ffh
	movwf	fsr0
	movf	(Create_Task@function_pointer),w
	movwf	indf
	line	42
;schedule.c: 42: tasks[index].period = period;
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Create_Task@index),w
	fcall	___bmul
	addlw	_tasks+01h&0ffh
	movwf	fsr0
	movf	(Create_Task@period),w
	movwf	indf
	incf	fsr0,f
	movf	(Create_Task@period+1),w
	movwf	indf
	line	44
;schedule.c: 44: tasks[index].delay = delay + 1;
	movf	(Create_Task@delay),w
	addlw	low(01h)
	movwf	(??_Create_Task+0)+0
	movf	(Create_Task@delay+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_Create_Task+0)+0
	movlw	(05h)
	movwf	(?___bmul)
	movf	(Create_Task@index),w
	fcall	___bmul
	addlw	_tasks+03h&0ffh
	movwf	fsr0
	movf	0+(??_Create_Task+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_Create_Task+0)+0,w
	movwf	indf
	line	45
	
l3878:	
;schedule.c: 45: ++index;
	incf	(Create_Task@index),f
	line	47
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_Create_Task
	__end_of_Create_Task:
;; =============== function _Create_Task ends ============

	signat	_Create_Task,12408
	global	_Task_1_100ms
	global	_Task_2_100ms
	global	_Task_3_500ms
psect	text432,local,class=CODE,delta=2
global __ptext432
__ptext432:

;; *************** function _Task_3_500ms *****************
;; Defined at:
;;		line 207 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Dispatch_Tasks
;; This function uses a non-reentrant model
;;
psect	text432
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
	line	207
	global	__size_of_Task_3_500ms
	__size_of_Task_3_500ms	equ	__end_of_Task_3_500ms-_Task_3_500ms
	
_Task_3_500ms:	
	opt	stack 4
; Regs used in _Task_3_500ms: [wreg+status,2+status,0]
	line	208
	
l3678:	
;FMX-DBV.c: 208: if((VehV_vRaw == 0)&&(VehSpd_numDly != 0x00))
	movf	((_VehV_vRaw+1)),w	;volatile
	iorwf	((_VehV_vRaw)),w	;volatile
	skipz
	goto	u941
	goto	u940
u941:
	goto	l3686
u940:
	
l3680:	
	movf	(_VehSpd_numDly),w
	skipz
	goto	u950
	goto	l3686
u950:
	line	210
	
l3682:	
;FMX-DBV.c: 209: {
;FMX-DBV.c: 210: if(VehSpd_ctDly < VehSpd_ctDlyThres)
	movf	(_VehSpd_ctDlyThres+1),w
	subwf	(_VehSpd_ctDly+1),w
	skipz
	goto	u965
	movf	(_VehSpd_ctDlyThres),w
	subwf	(_VehSpd_ctDly),w
u965:
	skipnc
	goto	u961
	goto	u960
u961:
	goto	l510
u960:
	line	212
	
l3684:	
;FMX-DBV.c: 211: {
;FMX-DBV.c: 212: VehSpd_ctDly++;
	incf	(_VehSpd_ctDly),f
	skipnz
	incf	(_VehSpd_ctDly+1),f
	line	213
;FMX-DBV.c: 213: }
	goto	l3688
	line	214
	
l510:	
	line	216
;FMX-DBV.c: 214: else
;FMX-DBV.c: 215: {
;FMX-DBV.c: 216: Dev_stTmprDetActv = 1;
	clrf	(_Dev_stTmprDetActv)
	incf	(_Dev_stTmprDetActv),f
	goto	l3688
	line	221
	
l3686:	
;FMX-DBV.c: 219: else
;FMX-DBV.c: 220: {
;FMX-DBV.c: 221: VehSpd_ctDly = 0;
	clrf	(_VehSpd_ctDly)
	clrf	(_VehSpd_ctDly+1)
	line	222
;FMX-DBV.c: 222: Dev_stTmprDetActv = 0;
	clrf	(_Dev_stTmprDetActv)
	line	225
	
l3688:	
;FMX-DBV.c: 223: }
;FMX-DBV.c: 225: if(VehV_stSpdLim == 0)
	movf	(_VehV_stSpdLim),f
	skipz
	goto	u971
	goto	u970
u971:
	goto	l3694
u970:
	line	227
	
l3690:	
;FMX-DBV.c: 226: {
;FMX-DBV.c: 227: if(Dev_stTmprDetActv)
	movf	(_Dev_stTmprDetActv),w
	skipz
	goto	u980
	goto	l514
u980:
	line	229
	
l3692:	
;FMX-DBV.c: 228: {
;FMX-DBV.c: 229: RA1 = ~RA1;
	movlw	1<<((41)&7)
	xorwf	((41)/8),f
	line	230
;FMX-DBV.c: 230: }
	goto	l3694
	line	231
	
l514:	
	line	233
;FMX-DBV.c: 231: else
;FMX-DBV.c: 232: {
;FMX-DBV.c: 233: RA1 = 0;
	bcf	(41/8),(41)&7
	line	237
	
l3694:	
;FMX-DBV.c: 234: }
;FMX-DBV.c: 235: }
;FMX-DBV.c: 237: if(VehV_vRaw == 0)
	movf	((_VehV_vRaw+1)),w	;volatile
	iorwf	((_VehV_vRaw)),w	;volatile
	skipz
	goto	u991
	goto	u990
u991:
	goto	l517
u990:
	line	239
	
l3696:	
;FMX-DBV.c: 238: {
;FMX-DBV.c: 239: RA0 = 1;
	bsf	(40/8),(40)&7
	line	241
	
l517:	
	return
	opt stack 0
GLOBAL	__end_of_Task_3_500ms
	__end_of_Task_3_500ms:
;; =============== function _Task_3_500ms ends ============

	signat	_Task_3_500ms,88
psect	text433,local,class=CODE,delta=2
global __ptext433
__ptext433:

;; *************** function _Task_2_100ms *****************
;; Defined at:
;;		line 177 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Dispatch_Tasks
;; This function uses a non-reentrant model
;;
psect	text433
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
	line	177
	global	__size_of_Task_2_100ms
	__size_of_Task_2_100ms	equ	__end_of_Task_2_100ms-_Task_2_100ms
	
_Task_2_100ms:	
	opt	stack 4
; Regs used in _Task_2_100ms: [wreg+status,2]
	line	179
	
l3660:	
;FMX-DBV.c: 179: if(VehV_vRaw > VehV_vLim)
	movf	(_VehV_vRaw+1),w	;volatile
	xorlw	80h
	sublw	080h
	skipz
	goto	u905
	movf	(_VehV_vRaw),w	;volatile
	subwf	(_VehV_vLim),w
u905:

	skipnc
	goto	u901
	goto	u900
u901:
	goto	l3664
u900:
	line	181
	
l3662:	
;FMX-DBV.c: 180: {
;FMX-DBV.c: 181: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	182
;FMX-DBV.c: 182: RA1 = 1;
	bsf	(41/8),(41)&7
	line	183
;FMX-DBV.c: 183: VehV_stSpdLim = 1;
	clrf	(_VehV_stSpdLim)
	incf	(_VehV_stSpdLim),f
	line	184
;FMX-DBV.c: 184: }
	goto	l506
	line	185
	
l3664:	
;FMX-DBV.c: 185: else if((VehV_vRaw <= VehV_vLim)&&(VehV_vRaw >= (VehV_vLim - 1)))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VehV_vRaw+1),w	;volatile
	xorlw	80h
	sublw	080h
	skipz
	goto	u915
	movf	(_VehV_vRaw),w	;volatile
	subwf	(_VehV_vLim),w
u915:

	skipc
	goto	u911
	goto	u910
u911:
	goto	l3672
u910:
	
l3666:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VehV_vLim),w
	addlw	low(-1)
	movwf	(??_Task_2_100ms+0)+0
	movlw	high(-1)
	skipnc
	movlw	(high(-1)+1)&0ffh
	movwf	((??_Task_2_100ms+0)+0)+1
	movf	(_VehV_vRaw+1),w	;volatile
	xorlw	80h
	movwf	(??_Task_2_100ms+2)+0
	movf	1+(??_Task_2_100ms+0)+0,w
	xorlw	80h
	subwf	(??_Task_2_100ms+2)+0,w
	skipz
	goto	u925
	movf	0+(??_Task_2_100ms+0)+0,w
	subwf	(_VehV_vRaw),w	;volatile
u925:

	skipc
	goto	u921
	goto	u920
u921:
	goto	l3672
u920:
	line	187
	
l3668:	
;FMX-DBV.c: 186: {
;FMX-DBV.c: 187: RB3 = ~RB3;
	movlw	1<<((51)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((51)/8),f
	line	188
;FMX-DBV.c: 188: RA1 = ~RA1;
	movlw	1<<((41)&7)
	xorwf	((41)/8),f
	line	189
	
l3670:	
;FMX-DBV.c: 189: VehV_stSpdLim = 1;
	clrf	(_VehV_stSpdLim)
	incf	(_VehV_stSpdLim),f
	line	190
;FMX-DBV.c: 190: }
	goto	l506
	line	194
	
l3672:	
;FMX-DBV.c: 191: else
;FMX-DBV.c: 192: {
;FMX-DBV.c: 194: if(Dev_stTmprDetActv)
	movf	(_Dev_stTmprDetActv),w
	skipz
	goto	u930
	goto	l504
u930:
	line	196
	
l3674:	
;FMX-DBV.c: 195: {
;FMX-DBV.c: 196: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	197
;FMX-DBV.c: 197: }
	goto	l3676
	line	198
	
l504:	
	line	200
;FMX-DBV.c: 198: else
;FMX-DBV.c: 199: {
;FMX-DBV.c: 200: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	202
	
l3676:	
;FMX-DBV.c: 201: }
;FMX-DBV.c: 202: VehV_stSpdLim = 0;
	clrf	(_VehV_stSpdLim)
	line	204
	
l506:	
	return
	opt stack 0
GLOBAL	__end_of_Task_2_100ms
	__end_of_Task_2_100ms:
;; =============== function _Task_2_100ms ends ============

	signat	_Task_2_100ms,88
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:

;; *************** function _Task_1_100ms *****************
;; Defined at:
;;		line 10 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  chksum          2   14[BANK0 ] unsigned int 
;;  currAddr        1   18[BANK0 ] unsigned char 
;;  i               1   17[BANK0 ] unsigned char 
;;  data            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       0      12       0
;;      Totals:         0       5      12       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_eeprom_write
;;		_transmitByte
;;		_eeprom_read
;;		_Reset_Comm_Timeout
;; This function is called by:
;;		_main
;;		_Dispatch_Tasks
;; This function uses a non-reentrant model
;;
psect	text434
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\FMX-DBV.c"
	line	10
	global	__size_of_Task_1_100ms
	__size_of_Task_1_100ms	equ	__end_of_Task_1_100ms-_Task_1_100ms
	
_Task_1_100ms:	
	opt	stack 3
; Regs used in _Task_1_100ms: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	16
	
l4098:	
;FMX-DBV.c: 11: unsigned char data;
;FMX-DBV.c: 12: unsigned char currAddr;
;FMX-DBV.c: 13: unsigned char i;
;FMX-DBV.c: 14: unsigned int chksum;
;FMX-DBV.c: 16: if(Rx_complete)
	movf	(_Rx_complete),w
	skipz
	goto	u1190
	goto	l4200
u1190:
	line	18
	
l4100:	
;FMX-DBV.c: 17: {
;FMX-DBV.c: 18: RCIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1125/8)^080h,(1125)&7
	line	19
;FMX-DBV.c: 19: switch(Rxdata[2])
	goto	l4192
	line	23
	
l4102:	
;FMX-DBV.c: 22: {
;FMX-DBV.c: 23: if(Rxdata[1] == 15)
	movf	0+(_Rxdata)^080h+01h,w	;volatile
	xorlw	0Fh
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l4162
u1200:
	line	26
	
l4104:	
;FMX-DBV.c: 24: {
;FMX-DBV.c: 26: eeprom_write(0x00, Rxdata[3]);
	movf	0+(_Rxdata)^080h+03h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(0)
	fcall	_eeprom_write
	line	27
	
l4106:	
;FMX-DBV.c: 27: VehV_vLim = Rxdata[3];
	movf	0+(_Rxdata)^080h+03h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_vLim)
	line	28
	
l4108:	
;FMX-DBV.c: 28: eeprom_write(0x01, Rxdata[4]);
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+04h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(01h)
	fcall	_eeprom_write
	line	29
	
l4110:	
;FMX-DBV.c: 29: eeprom_write(0x02, Rxdata[5]);
	movf	0+(_Rxdata)^080h+05h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(02h)
	fcall	_eeprom_write
	line	30
	
l4112:	
;FMX-DBV.c: 30: VehV_tiSig = (Rxdata[4] << 8) + Rxdata[5];
	movf	0+(_Rxdata)^080h+04h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_tiSig+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+05h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_tiSig)
	line	31
;FMX-DBV.c: 31: eeprom_write(0x03, Rxdata[6]);
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+06h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(03h)
	fcall	_eeprom_write
	line	32
	
l4114:	
;FMX-DBV.c: 32: VehV_vRef = Rxdata[6];
	movf	0+(_Rxdata)^080h+06h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehV_vRef)
	line	33
	
l4116:	
;FMX-DBV.c: 33: eeprom_write(0x04, Rxdata[7]);
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+07h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(04h)
	fcall	_eeprom_write
	line	34
;FMX-DBV.c: 34: VehSpd_numDly = Rxdata[7];
	movf	0+(_Rxdata)^080h+07h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_VehSpd_numDly)
	line	36
;FMX-DBV.c: 36: switch(VehSpd_numDly)
	goto	l4146
	line	40
	
l4118:	
;FMX-DBV.c: 39: {
;FMX-DBV.c: 40: VehSpd_ctDlyThres = 0;
	clrf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	42
;FMX-DBV.c: 41: }
;FMX-DBV.c: 42: break;
	goto	l4148
	line	46
	
l4120:	
;FMX-DBV.c: 45: {
;FMX-DBV.c: 46: VehSpd_ctDlyThres = 20;
	movlw	014h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	48
;FMX-DBV.c: 47: }
;FMX-DBV.c: 48: break;
	goto	l4148
	line	52
	
l4122:	
;FMX-DBV.c: 51: {
;FMX-DBV.c: 52: VehSpd_ctDlyThres = 40;
	movlw	028h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	54
;FMX-DBV.c: 53: }
;FMX-DBV.c: 54: break;
	goto	l4148
	line	58
	
l4124:	
;FMX-DBV.c: 57: {
;FMX-DBV.c: 58: VehSpd_ctDlyThres = 120;
	movlw	078h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	60
;FMX-DBV.c: 59: }
;FMX-DBV.c: 60: break;
	goto	l4148
	line	64
	
l4126:	
;FMX-DBV.c: 63: {
;FMX-DBV.c: 64: VehSpd_ctDlyThres = 240;
	movlw	0F0h
	movwf	(_VehSpd_ctDlyThres)
	clrf	(_VehSpd_ctDlyThres+1)
	line	66
;FMX-DBV.c: 65: }
;FMX-DBV.c: 66: break;
	goto	l4148
	line	70
	
l4128:	
;FMX-DBV.c: 69: {
;FMX-DBV.c: 70: VehSpd_ctDlyThres = 360;
	movlw	low(0168h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0168h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	72
;FMX-DBV.c: 71: }
;FMX-DBV.c: 72: break;
	goto	l4148
	line	76
	
l4130:	
;FMX-DBV.c: 75: {
;FMX-DBV.c: 76: VehSpd_ctDlyThres = 480;
	movlw	low(01E0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(01E0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	78
;FMX-DBV.c: 77: }
;FMX-DBV.c: 78: break;
	goto	l4148
	line	82
	
l4132:	
;FMX-DBV.c: 81: {
;FMX-DBV.c: 82: VehSpd_ctDlyThres = 600;
	movlw	low(0258h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0258h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	84
;FMX-DBV.c: 83: }
;FMX-DBV.c: 84: break;
	goto	l4148
	line	88
	
l4134:	
;FMX-DBV.c: 87: {
;FMX-DBV.c: 88: VehSpd_ctDlyThres = 720;
	movlw	low(02D0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(02D0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	90
;FMX-DBV.c: 89: }
;FMX-DBV.c: 90: break;
	goto	l4148
	line	94
	
l4136:	
;FMX-DBV.c: 93: {
;FMX-DBV.c: 94: VehSpd_ctDlyThres = 840;
	movlw	low(0348h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0348h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	96
;FMX-DBV.c: 95: }
;FMX-DBV.c: 96: break;
	goto	l4148
	line	100
	
l4138:	
;FMX-DBV.c: 99: {
;FMX-DBV.c: 100: VehSpd_ctDlyThres = 960;
	movlw	low(03C0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(03C0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	102
;FMX-DBV.c: 101: }
;FMX-DBV.c: 102: break;
	goto	l4148
	line	106
	
l4140:	
;FMX-DBV.c: 105: {
;FMX-DBV.c: 106: VehSpd_ctDlyThres = 1080;
	movlw	low(0438h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(0438h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	108
;FMX-DBV.c: 107: }
;FMX-DBV.c: 108: break;
	goto	l4148
	line	112
	
l4142:	
;FMX-DBV.c: 111: {
;FMX-DBV.c: 112: VehSpd_ctDlyThres = 1200;
	movlw	low(04B0h)
	movwf	(_VehSpd_ctDlyThres)
	movlw	high(04B0h)
	movwf	((_VehSpd_ctDlyThres))+1
	line	114
;FMX-DBV.c: 113: }
;FMX-DBV.c: 114: break;
	goto	l4148
	line	36
	
l4146:	
	movf	(_VehSpd_numDly),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 11
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           18     6 (fixed)
; simple_byte           37    19 (average)
; jumptable            260     6 (fixed)
; rangetable            16     6 (fixed)
; spacedrange           30     9 (fixed)
; locatedrange          12     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	12
	subwf	fsr,w
skipnc
goto l4142
movlw high(S4418)
movwf pclath
	movlw low(S4418)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S4418:
	ljmp	l4118
	ljmp	l4120
	ljmp	l4122
	ljmp	l4124
	ljmp	l4126
	ljmp	l4128
	ljmp	l4130
	ljmp	l4132
	ljmp	l4134
	ljmp	l4136
	ljmp	l4138
	ljmp	l4140
psect	text434

	line	117
	
l4148:	
;FMX-DBV.c: 117: currAddr = 0x05;
	movlw	(05h)
	movwf	(Task_1_100ms@currAddr)
	line	118
;FMX-DBV.c: 118: for(i = 8; i < 16 ; i++)
	movlw	(08h)
	movwf	(Task_1_100ms@i)
	line	120
	
l4152:	
;FMX-DBV.c: 119: {
;FMX-DBV.c: 120: eeprom_write(currAddr, Rxdata[i]);
	movf	(Task_1_100ms@i),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(?_eeprom_write)
	movf	(Task_1_100ms@currAddr),w
	fcall	_eeprom_write
	line	121
	
l4154:	
;FMX-DBV.c: 121: currAddr++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(Task_1_100ms@currAddr),f
	line	118
	
l4156:	
	incf	(Task_1_100ms@i),f
	
l4158:	
	movlw	(010h)
	subwf	(Task_1_100ms@i),w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l4152
u1210:
	line	123
	
l4160:	
;FMX-DBV.c: 122: }
;FMX-DBV.c: 123: transmitByte(0xA8);
	movlw	(0A8h)
	fcall	_transmitByte
	line	124
;FMX-DBV.c: 124: transmitByte(0x02);
	movlw	(02h)
	fcall	_transmitByte
	line	125
;FMX-DBV.c: 125: transmitByte(0x56);
	movlw	(056h)
	fcall	_transmitByte
	line	126
;FMX-DBV.c: 126: transmitByte(0x00);
	movlw	(0)
	fcall	_transmitByte
	line	127
;FMX-DBV.c: 127: }
	goto	l4194
	line	130
	
l4162:	
;FMX-DBV.c: 128: else
;FMX-DBV.c: 129: {
;FMX-DBV.c: 130: transmitByte(0xA8);
	movlw	(0A8h)
	fcall	_transmitByte
	line	131
;FMX-DBV.c: 131: transmitByte(0x03);
	movlw	(03h)
	fcall	_transmitByte
	line	132
;FMX-DBV.c: 132: transmitByte(0x7F);
	movlw	(07Fh)
	fcall	_transmitByte
	line	133
;FMX-DBV.c: 133: transmitByte(0x13);
	movlw	(013h)
	fcall	_transmitByte
	line	134
;FMX-DBV.c: 134: transmitByte(0x3D);
	movlw	(03Dh)
	fcall	_transmitByte
	goto	l4194
	line	142
	
l4164:	
;FMX-DBV.c: 140: {
;FMX-DBV.c: 142: transmitByte(0xA8);
	movlw	(0A8h)
	fcall	_transmitByte
	line	143
;FMX-DBV.c: 143: transmitByte(0x0F);
	movlw	(0Fh)
	fcall	_transmitByte
	line	144
;FMX-DBV.c: 144: transmitByte(0x62);
	movlw	(062h)
	fcall	_transmitByte
	line	145
;FMX-DBV.c: 145: transmitByte(VehV_vLim);
	movf	(_VehV_vLim),w
	fcall	_transmitByte
	line	146
;FMX-DBV.c: 146: transmitByte(VehV_tiSig >> 8);
	movf	(_VehV_tiSig+1),w
	fcall	_transmitByte
	line	147
;FMX-DBV.c: 147: transmitByte(VehV_tiSig);
	movf	(_VehV_tiSig),w
	fcall	_transmitByte
	line	148
;FMX-DBV.c: 148: transmitByte(VehV_vRef);
	movf	(_VehV_vRef),w
	fcall	_transmitByte
	line	149
;FMX-DBV.c: 149: transmitByte(VehSpd_numDly);
	movf	(_VehSpd_numDly),w
	fcall	_transmitByte
	line	151
	
l4166:	
;FMX-DBV.c: 151: chksum = 0;
	clrf	(Task_1_100ms@chksum)
	clrf	(Task_1_100ms@chksum+1)
	line	152
	
l4168:	
;FMX-DBV.c: 152: for (currAddr = 0x05; currAddr <= 0x0C; currAddr++)
	movlw	(05h)
	movwf	(Task_1_100ms@currAddr)
	line	154
	
l4174:	
;FMX-DBV.c: 153: {
;FMX-DBV.c: 154: data = eeprom_read(currAddr);
	movf	(Task_1_100ms@currAddr),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Task_1_100ms@data)
	line	155
	
l4176:	
;FMX-DBV.c: 155: chksum = chksum + data;
	movf	(Task_1_100ms@data),w
	addwf	(Task_1_100ms@chksum),f
	skipnc
	incf	(Task_1_100ms@chksum+1),f
	line	156
	
l4178:	
;FMX-DBV.c: 156: transmitByte(data);
	movf	(Task_1_100ms@data),w
	fcall	_transmitByte
	line	152
	
l4180:	
	incf	(Task_1_100ms@currAddr),f
	
l4182:	
	movlw	(0Dh)
	subwf	(Task_1_100ms@currAddr),w
	skipc
	goto	u1221
	goto	u1220
u1221:
	goto	l4174
u1220:
	line	158
	
l4184:	
;FMX-DBV.c: 157: }
;FMX-DBV.c: 158: chksum = 0xA8 + 0x62 + 0x0F + VehV_vLim +(unsigned char)(VehV_tiSig >> 8) +(unsigned char)(VehV_tiSig) + VehV_vRef + VehSpd_numDly + chksum;
	movf	(_VehV_tiSig+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_Task_1_100ms+0)^080h+0+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_VehV_tiSig),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_Task_1_100ms+0)^080h+0
	movf	(??_Task_1_100ms+0)^080h+1,w
	movwf	(??_Task_1_100ms+0)^080h+0
	clrf	(??_Task_1_100ms+0)^080h+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_VehV_vLim),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	0+(??_Task_1_100ms+0)^080h+0,w
	movwf	(??_Task_1_100ms+2)^080h+0
	clrf	(??_Task_1_100ms+2)^080h+0+1
	rlf	1+(??_Task_1_100ms+2)^080h+0,f
	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_VehV_tiSig),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	0+(??_Task_1_100ms+2)^080h+0,w
	movwf	(??_Task_1_100ms+4)^080h+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_Task_1_100ms+2)^080h+0,w
	movwf	1+(??_Task_1_100ms+4)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(_VehV_vRef),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	0+(??_Task_1_100ms+4)^080h+0,w
	movwf	(??_Task_1_100ms+6)^080h+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_Task_1_100ms+4)^080h+0,w
	movwf	1+(??_Task_1_100ms+6)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(_VehSpd_numDly),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	0+(??_Task_1_100ms+6)^080h+0,w
	movwf	(??_Task_1_100ms+8)^080h+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_Task_1_100ms+6)^080h+0,w
	movwf	1+(??_Task_1_100ms+8)^080h+0
	movf	0+(??_Task_1_100ms+8)^080h+0,w
	addlw	low(0119h)
	movwf	(??_Task_1_100ms+10)^080h+0
	movf	1+(??_Task_1_100ms+8)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0119h)
	movwf	1+(??_Task_1_100ms+10)^080h+0
	movf	0+(??_Task_1_100ms+10)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(Task_1_100ms@chksum),f
	skipnc
	incf	(Task_1_100ms@chksum+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(??_Task_1_100ms+10)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(Task_1_100ms@chksum+1),f
	line	159
	
l4186:	
;FMX-DBV.c: 159: transmitByte((unsigned char)chksum);
	movf	(Task_1_100ms@chksum),w
	fcall	_transmitByte
	line	161
;FMX-DBV.c: 160: }
;FMX-DBV.c: 161: break;
	goto	l4194
	line	165
	
l4188:	
;FMX-DBV.c: 164: {
;FMX-DBV.c: 165: transmitByte(0x7F);
	movlw	(07Fh)
	fcall	_transmitByte
	line	167
;FMX-DBV.c: 166: }
;FMX-DBV.c: 167: break;
	goto	l4194
	line	19
	
l4192:	
	movf	0+(_Rxdata)^080h+02h,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 22 to 34
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           22     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	22^0	; case 22
	skipnz
	goto	l4102
	xorlw	34^22	; case 34
	skipnz
	goto	l4164
	goto	l4188
	opt asmopt_on

	line	169
	
l4194:	
	movf	(26),w	;volatile
	line	170
	
l4196:	
;FMX-DBV.c: 170: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	171
	
l4198:	
;FMX-DBV.c: 171: Reset_Comm_Timeout();
	fcall	_Reset_Comm_Timeout
	line	173
	
l4200:	
;FMX-DBV.c: 172: }
;FMX-DBV.c: 173: EEADR = 0xA0;
	movlw	(0A0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	174
	
l497:	
	return
	opt stack 0
GLOBAL	__end_of_Task_1_100ms
	__end_of_Task_1_100ms:
;; =============== function _Task_1_100ms ends ============

	signat	_Task_1_100ms,88
	global	___bmul
psect	text435,local,class=CODE,delta=2
global __ptext435
__ptext435:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   14[BANK0 ] unsigned char 
;;  product         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Dispatch_Tasks
;;		_Create_Task
;; This function uses a non-reentrant model
;;
psect	text435
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l3698:	
	clrf	(___bmul@product)
	line	7
	
l3700:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l3704
u1000:
	line	8
	
l3702:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l3704:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l3706:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l3708:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l3700
u1010:
	line	12
	
l3710:	
	movf	(___bmul@product),w
	line	13
	
l2431:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_eeprom_read
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 7 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Task_1_100ms
;;		_main
;; This function uses a non-reentrant model
;;
psect	text436
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eeread.c"
	line	7
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 3
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	9
	movwf	(eeprom_read@addr)
	line	8
	
l1679:	
	line	9
# 9 "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eeread.c"
clrwdt ;#
psect	text436
	line	10
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1249/8)^080h,(1249)&7
	goto	u891
	goto	u890
u891:
	goto	l1679
u890:
	line	11
	
l3656:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(eeprom_read@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	movlw	(03Fh)
	andwf	(156)^080h,f	;volatile
	bsf	(1248/8)^080h,(1248)&7
	clrc
	btfsc	(1248/8)^080h,(1248)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movf	(154)^080h,w	;volatile
	line	12
	
l1681:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_transmitByte
psect	text437,local,class=CODE,delta=2
global __ptext437
__ptext437:

;; *************** function _transmitByte *****************
;; Defined at:
;;		line 35 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\UART_routines.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Task_1_100ms
;; This function uses a non-reentrant model
;;
psect	text437
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\UART_routines.c"
	line	35
	global	__size_of_transmitByte
	__size_of_transmitByte	equ	__end_of_transmitByte-_transmitByte
	
_transmitByte:	
	opt	stack 3
; Regs used in _transmitByte: [wreg]
;transmitByte@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(transmitByte@data)
	line	36
	
l3652:	
;UART_routines.c: 36: while(!TRMT);
	
l1319:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u881
	goto	u880
u881:
	goto	l1319
u880:
	line	37
	
l3654:	
;UART_routines.c: 37: TXREG = data;
	bcf	status, 5	;RP0=0, select bank0
	movf	(transmitByte@data),w
	movwf	(25)	;volatile
	line	38
	
l1322:	
	return
	opt stack 0
GLOBAL	__end_of_transmitByte
	__end_of_transmitByte:
;; =============== function _transmitByte ends ============

	signat	_transmitByte,4216
	global	_eeprom_write
psect	text438,local,class=CODE,delta=2
global __ptext438
__ptext438:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Task_1_100ms
;; This function uses a non-reentrant model
;;
psect	text438
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eewrite.c"
	line	7
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 3
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	8
	
l2020:	
	
l2021:	
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1249/8)^080h,(1249)&7
	goto	u851
	goto	u850
u851:
	goto	l2021
u850:
	
l3632:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(eeprom_write@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(eeprom_write@value),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	
l3634:	
	movlw	(03Fh)
	andwf	(156)^080h,f	;volatile
	
l3636:	
	bcf	(24/8),(24)&7
	
l3638:	
	btfss	(95/8),(95)&7
	goto	u861
	goto	u860
u861:
	goto	l2024
u860:
	
l3640:	
	bsf	(24/8),(24)&7
	
l2024:	
	bcf	(95/8),(95)&7
	bsf	(1250/8)^080h,(1250)&7
	
l3642:	
	movlw	(055h)
	movwf	(157)^080h	;volatile
	movlw	(0AAh)
	movwf	(157)^080h	;volatile
	
l3644:	
	bsf	(1249/8)^080h,(1249)&7
	
l3646:	
	bcf	(1250/8)^080h,(1250)&7
	
l3648:	
	btfss	(24/8),(24)&7
	goto	u871
	goto	u870
u871:
	goto	l2027
u870:
	
l3650:	
	bsf	(95/8),(95)&7
	line	10
	
l2027:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8313
	global	_Reset_Comm_Timeout
psect	text439,local,class=CODE,delta=2
global __ptext439
__ptext439:

;; *************** function _Reset_Comm_Timeout *****************
;; Defined at:
;;		line 156 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\Interrupts.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Task_1_100ms
;; This function uses a non-reentrant model
;;
psect	text439
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\Interrupts.h"
	line	156
	global	__size_of_Reset_Comm_Timeout
	__size_of_Reset_Comm_Timeout	equ	__end_of_Reset_Comm_Timeout-_Reset_Comm_Timeout
	
_Reset_Comm_Timeout:	
	opt	stack 3
; Regs used in _Reset_Comm_Timeout: [status,2]
	line	157
	
l3630:	
;Interrupts.h: 157: Rx_complete =0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_Rx_complete)
	line	158
;Interrupts.h: 158: RxPtr = 0;
	clrf	(_RxPtr)	;volatile
	line	159
;Interrupts.h: 159: Rx_elapsed_ticks = 0;
	clrf	(_Rx_elapsed_ticks)
	clrf	(_Rx_elapsed_ticks+1)
	line	160
	
l467:	
	return
	opt stack 0
GLOBAL	__end_of_Reset_Comm_Timeout
	__end_of_Reset_Comm_Timeout:
;; =============== function _Reset_Comm_Timeout ends ============

	signat	_Reset_Comm_Timeout,88
	global	_my_isr
psect	text440,local,class=CODE,delta=2
global __ptext440
__ptext440:

;; *************** function _my_isr *****************
;; Defined at:
;;		line 24 in file "C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\Interrupts.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            4    8[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       8       0       0
;;      Totals:         0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lmul
;;		___lldiv
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text440
	file	"C:\Users\Gamer\Desktop\Tony\Work\03_FleetMax\Projects\FMX_01_RSL-DBV\03_Embedded\03_Firmware\V4\Interrupts.h"
	line	24
	global	__size_of_my_isr
	__size_of_my_isr	equ	__end_of_my_isr-_my_isr
	
_my_isr:	
	opt	stack 3
; Regs used in _my_isr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_my_isr+4)
	movf	fsr0,w
	movwf	(??_my_isr+5)
	movf	pclath,w
	movwf	(??_my_isr+6)
	movf	btemp+1,w
	movwf	(??_my_isr+7)
	ljmp	_my_isr
psect	text440
	line	27
	
i1l3514:	
;Interrupts.h: 25: unsigned long temp;
;Interrupts.h: 27: if ((TMR2IE)&&(TMR2IF))
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1121/8)^080h,(1121)&7
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l3528
u59_20:
	
i1l3516:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l3528
u60_20:
	line	29
	
i1l3518:	
;Interrupts.h: 28: {
;Interrupts.h: 29: TMR2IF=0;
	bcf	(97/8),(97)&7
	line	30
	
i1l3520:	
;Interrupts.h: 30: elapsed_ticks++;
	incf	(_elapsed_ticks),f	;volatile
	skipnz
	incf	(_elapsed_ticks+1),f	;volatile
	line	32
	
i1l3522:	
;Interrupts.h: 32: if(Rx_elapsed_ticks > 100)
	movlw	high(065h)
	subwf	(_Rx_elapsed_ticks+1),w
	movlw	low(065h)
	skipnz
	subwf	(_Rx_elapsed_ticks),w
	skipc
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l3526
u61_20:
	line	34
	
i1l3524:	
;Interrupts.h: 33: {
;Interrupts.h: 34: RxPtr =0;
	clrf	(_RxPtr)	;volatile
	line	35
;Interrupts.h: 35: Rx_complete =0;
	clrf	(_Rx_complete)
	line	36
;Interrupts.h: 36: }
	goto	i1l3528
	line	39
	
i1l3526:	
;Interrupts.h: 37: else
;Interrupts.h: 38: {
;Interrupts.h: 39: Rx_elapsed_ticks++;
	incf	(_Rx_elapsed_ticks),f
	skipnz
	incf	(_Rx_elapsed_ticks+1),f
	line	43
	
i1l3528:	
;Interrupts.h: 40: }
;Interrupts.h: 41: }
;Interrupts.h: 43: if(TMR1IF && TMR1IE)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(96/8),(96)&7
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l3542
u62_20:
	
i1l3530:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l3542
u63_20:
	line	45
	
i1l3532:	
;Interrupts.h: 44: {
;Interrupts.h: 45: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	47
	
i1l3534:	
;Interrupts.h: 47: VehV_tiPulse = VehV_tiPulse + 0xFFFF;
	movlw	0FFh
	addwf	(_VehV_tiPulse),f	;volatile
	movlw	0FFh
	skipc
	addwf	(_VehV_tiPulse+1),f	;volatile
	movlw	0
	skipnc
movlw 1
	addwf	(_VehV_tiPulse+2),f	;volatile
	movlw	0
	skipnc
movlw 1
	addwf	(_VehV_tiPulse+3),f	;volatile
	line	49
;Interrupts.h: 49: if(VehV_tiPulse > 0xF4240)
	movlw	0
	subwf	(_VehV_tiPulse+3),w	;volatile
	skipz
	goto	u64_25
	movlw	0Fh
	subwf	(_VehV_tiPulse+2),w	;volatile
	skipz
	goto	u64_25
	movlw	042h
	subwf	(_VehV_tiPulse+1),w	;volatile
	skipz
	goto	u64_25
	movlw	041h
	subwf	(_VehV_tiPulse),w	;volatile
u64_25:
	skipc
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l3542
u64_20:
	line	51
	
i1l3536:	
;Interrupts.h: 50: {
;Interrupts.h: 51: VehV_tiPulseAvg = 0;
	clrf	(_VehV_tiPulseAvg)	;volatile
	clrf	(_VehV_tiPulseAvg+1)	;volatile
	clrf	(_VehV_tiPulseAvg+2)	;volatile
	clrf	(_VehV_tiPulseAvg+3)	;volatile
	line	52
;Interrupts.h: 52: VehV_tiPulse = 0;
	clrf	(_VehV_tiPulse)	;volatile
	clrf	(_VehV_tiPulse+1)	;volatile
	clrf	(_VehV_tiPulse+2)	;volatile
	clrf	(_VehV_tiPulse+3)	;volatile
	line	53
	
i1l3538:	
;Interrupts.h: 53: VehV_vRaw = 0;
	clrf	(_VehV_vRaw)	;volatile
	clrf	(_VehV_vRaw+1)	;volatile
	line	54
	
i1l3540:	
;Interrupts.h: 54: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	58
	
i1l3542:	
;Interrupts.h: 55: }
;Interrupts.h: 56: }
;Interrupts.h: 58: if((RCIE) && (RCIF))
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l438
u65_20:
	
i1l3544:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(101/8),(101)&7
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l438
u66_20:
	line	60
	
i1l3546:	
;Interrupts.h: 59: {
;Interrupts.h: 60: Rx_elapsed_ticks =0;
	clrf	(_Rx_elapsed_ticks)
	clrf	(_Rx_elapsed_ticks+1)
	line	61
	
i1l3548:	
;Interrupts.h: 61: Rxdata[RxPtr] = RCREG;
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	62
	
i1l3550:	
;Interrupts.h: 62: if(RxPtr==0)
	movf	(_RxPtr),f
	skipz	;volatile
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l3562
u67_20:
	line	64
	
i1l3552:	
;Interrupts.h: 63: {
;Interrupts.h: 64: Checksum = 0;
	clrf	(_Checksum)
	line	65
	
i1l3554:	
;Interrupts.h: 65: if((Rxdata[RxPtr] == 0xA0)||(Rxdata[RxPtr] == 0x9F))
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	0A0h
	skipnz
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l3558
u68_20:
	
i1l3556:	
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	09Fh
	skipz
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l443
u69_20:
	line	67
	
i1l3558:	
;Interrupts.h: 66: {
;Interrupts.h: 67: RxPtr++;
	incf	(_RxPtr),f	;volatile
	line	68
	
i1l3560:	
;Interrupts.h: 68: Checksum = Rxdata[0];
	bsf	status, 5	;RP0=1, select bank1
	movf	(_Rxdata)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_Checksum)
	goto	i1l443
	line	71
	
i1l3562:	
;Interrupts.h: 71: else if(RxPtr == 1)
	decf	(_RxPtr),w	;volatile
	skipz
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l3572
u70_20:
	line	73
	
i1l3564:	
;Interrupts.h: 72: {
;Interrupts.h: 73: if((Rxdata[RxPtr] <= 0x40))
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	movlw	(041h)
	subwf	indf,w
	skipnc
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l3570
u71_20:
	line	75
	
i1l3566:	
;Interrupts.h: 74: {
;Interrupts.h: 75: RxPtr++;
	incf	(_RxPtr),f	;volatile
	line	76
	
i1l3568:	
;Interrupts.h: 76: Checksum += Rxdata[1];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+01h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_Checksum),f
	line	77
;Interrupts.h: 77: }
	goto	i1l443
	line	79
	
i1l3570:	
;Interrupts.h: 78: else
;Interrupts.h: 79: RxPtr=0;
	clrf	(_RxPtr)	;volatile
	goto	i1l443
	line	81
	
i1l3572:	
;Interrupts.h: 81: else if(RxPtr == 2)
	movf	(_RxPtr),w	;volatile
	xorlw	02h
	skipz
	goto	u72_21
	goto	u72_20
u72_21:
	goto	i1l3582
u72_20:
	line	83
	
i1l3574:	
;Interrupts.h: 82: {
;Interrupts.h: 83: if(Rxdata[RxPtr] <= 0x30)
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	movlw	(031h)
	subwf	indf,w
	skipnc
	goto	u73_21
	goto	u73_20
u73_21:
	goto	i1l3570
u73_20:
	line	85
	
i1l3576:	
;Interrupts.h: 84: {
;Interrupts.h: 85: RxPtr++;
	incf	(_RxPtr),f	;volatile
	line	86
	
i1l3578:	
;Interrupts.h: 86: Checksum += Rxdata[2];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+02h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_Checksum),f
	line	87
;Interrupts.h: 87: }
	goto	i1l443
	line	91
	
i1l3582:	
;Interrupts.h: 91: else if((RxPtr > 2) && (RxPtr<(Rxdata[1]+1)))
	movlw	(03h)
	subwf	(_RxPtr),w	;volatile
	skipc
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l3590
u74_20:
	
i1l3584:	
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Rxdata)^080h+01h,w	;volatile
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_my_isr+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_my_isr+0)+0)+1
	movf	1+(??_my_isr+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u75_25
	movf	0+(??_my_isr+0)+0,w
	subwf	(_RxPtr),w	;volatile
u75_25:

	skipnc
	goto	u75_21
	goto	u75_20
u75_21:
	goto	i1l3590
u75_20:
	line	93
	
i1l3586:	
;Interrupts.h: 92: {
;Interrupts.h: 93: Checksum += Rxdata[RxPtr];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addwf	(_Checksum),f
	line	94
	
i1l3588:	
;Interrupts.h: 94: RxPtr++;
	incf	(_RxPtr),f	;volatile
	line	95
;Interrupts.h: 95: }
	goto	i1l443
	line	96
	
i1l3590:	
;Interrupts.h: 96: else if(RxPtr==(Rxdata[1]+1))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Rxdata)^080h+01h,w	;volatile
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_my_isr+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_my_isr+0)+0)+1
	movf	(_RxPtr),w	;volatile
	xorwf	0+(??_my_isr+0)+0,w
	iorwf	1+(??_my_isr+0)+0,w
	skipz
	goto	u76_21
	goto	u76_20
u76_21:
	goto	i1l443
u76_20:
	line	98
	
i1l3592:	
;Interrupts.h: 97: {
;Interrupts.h: 98: if(Checksum == Rxdata[RxPtr])
	movf	(_RxPtr),w
	addlw	_Rxdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorwf	(_Checksum),w
	skipz
	goto	u77_21
	goto	u77_20
u77_21:
	goto	i1l443
u77_20:
	line	100
	
i1l3594:	
;Interrupts.h: 99: {
;Interrupts.h: 100: Rx_complete =1;
	clrf	(_Rx_complete)
	incf	(_Rx_complete),f
	line	104
	
i1l443:	
;Interrupts.h: 101: }
;Interrupts.h: 102: }
;Interrupts.h: 104: RCIF = 0;
	bcf	(101/8),(101)&7
	line	105
	
i1l438:	
	line	107
;Interrupts.h: 105: }
;Interrupts.h: 107: if(INTF && INTE)
	btfss	(89/8),(89)&7
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l464
u78_20:
	
i1l3596:	
	btfss	(92/8),(92)&7
	goto	u79_21
	goto	u79_20
u79_21:
	goto	i1l464
u79_20:
	line	110
	
i1l3598:	
;Interrupts.h: 108: {
;Interrupts.h: 110: INTF = 0 ;
	bcf	(89/8),(89)&7
	line	111
;Interrupts.h: 111: if(TMR1ON == 0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(128/8),(128)&7
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l457
u80_20:
	line	113
	
i1l3600:	
;Interrupts.h: 112: {
;Interrupts.h: 113: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	114
;Interrupts.h: 114: }
	goto	i1l458
	line	115
	
i1l457:	
	line	117
;Interrupts.h: 115: else
;Interrupts.h: 116: {
;Interrupts.h: 117: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	118
;Interrupts.h: 118: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	120
	
i1l3602:	
;Interrupts.h: 120: temp = (0xFF00&(TMR1H << 8))+ TMR1L;
	movf	(15),w	;volatile
	movwf	(??_my_isr+0)+0
	clrf	(??_my_isr+0)+0+1
	movf	(??_my_isr+0)+0,w
	movwf	(??_my_isr+0)+1
	clrf	(??_my_isr+0)+0
	movlw	low(0FF00h)
	andwf	0+(??_my_isr+0)+0,w
	movwf	(??_my_isr+2)+0
	movlw	high(0FF00h)
	andwf	1+(??_my_isr+0)+0,w
	movwf	1+(??_my_isr+2)+0
	movf	(14),w	;volatile
	addwf	0+(??_my_isr+2)+0,w
	movwf	(my_isr@temp)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_my_isr+2)+0,w
	movwf	1+(my_isr@temp)
	clrf	2+(my_isr@temp)
	clrf	3+(my_isr@temp)
	line	122
	
i1l3604:	
;Interrupts.h: 122: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	123
	
i1l3606:	
;Interrupts.h: 123: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	124
	
i1l3608:	
;Interrupts.h: 124: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	126
	
i1l3610:	
;Interrupts.h: 126: VehV_tiPulse = VehV_tiPulse + temp;
	movf	(my_isr@temp),w
	addwf	(_VehV_tiPulse),f	;volatile
	movf	(my_isr@temp+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u81_21
	addwf	(_VehV_tiPulse+1),f	;volatile
u81_21:
	movf	(my_isr@temp+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u81_22
	addwf	(_VehV_tiPulse+2),f	;volatile
u81_22:
	movf	(my_isr@temp+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u81_23
	addwf	(_VehV_tiPulse+3),f	;volatile
u81_23:

	line	128
	
i1l3612:	
;Interrupts.h: 128: if(VehV_tiPulse > 25)
	movlw	0
	subwf	(_VehV_tiPulse+3),w	;volatile
	skipz
	goto	u82_25
	movlw	0
	subwf	(_VehV_tiPulse+2),w	;volatile
	skipz
	goto	u82_25
	movlw	0
	subwf	(_VehV_tiPulse+1),w	;volatile
	skipz
	goto	u82_25
	movlw	01Ah
	subwf	(_VehV_tiPulse),w	;volatile
u82_25:
	skipc
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l458
u82_20:
	line	130
	
i1l3614:	
;Interrupts.h: 129: {
;Interrupts.h: 130: if(VehV_tiPulseAvg != 0)
	movf	(_VehV_tiPulseAvg+3),w	;volatile
	iorwf	(_VehV_tiPulseAvg+2),w	;volatile
	iorwf	(_VehV_tiPulseAvg+1),w	;volatile
	iorwf	(_VehV_tiPulseAvg),w	;volatile
	skipnz
	goto	u83_21
	goto	u83_20
u83_21:
	goto	i1l3618
u83_20:
	line	132
	
i1l3616:	
;Interrupts.h: 131: {
;Interrupts.h: 132: VehV_tiPulseAvg = (VehV_tiPulseAvg + VehV_tiPulse)/2;
	movf	(_VehV_tiPulseAvg),w	;volatile
	addwf	(_VehV_tiPulse),w	;volatile
	movwf	((??_my_isr+0)+0+0)
	movlw	0
	skipnc
	movlw	1
	addwf	(_VehV_tiPulseAvg+1),w	;volatile
	clrf	((??_my_isr+0)+0+2)
	skipnc
	incf	((??_my_isr+0)+0+2),f
	addwf	(_VehV_tiPulse+1),w	;volatile
	movwf	((??_my_isr+0)+0+1)
	skipnc
	incf	((??_my_isr+0)+0+2),f
	movf	(_VehV_tiPulseAvg+2),w	;volatile
	addwf	((??_my_isr+0)+0+2),w
	clrf	((??_my_isr+0)+0+3)
	skipnc
	incf	((??_my_isr+0)+0+3),f
	addwf	(_VehV_tiPulse+2),w	;volatile
	movwf	((??_my_isr+0)+0+2)
	skipnc
	incf	((??_my_isr+0)+0+3),f
	movf	(_VehV_tiPulseAvg+3),w	;volatile
	addwf	((??_my_isr+0)+0+3),w
	addwf	(_VehV_tiPulse+3),w	;volatile
	movwf	((??_my_isr+0)+0+3)
	clrc
	rrf	(??_my_isr+0)+3,f
	rrf	(??_my_isr+0)+2,f
	rrf	(??_my_isr+0)+1,f
	rrf	(??_my_isr+0)+0,f
	movf	3+(??_my_isr+0)+0,w
	movwf	(_VehV_tiPulseAvg+3)	;volatile
	movf	2+(??_my_isr+0)+0,w
	movwf	(_VehV_tiPulseAvg+2)	;volatile
	movf	1+(??_my_isr+0)+0,w
	movwf	(_VehV_tiPulseAvg+1)	;volatile
	movf	0+(??_my_isr+0)+0,w
	movwf	(_VehV_tiPulseAvg)	;volatile

	line	133
;Interrupts.h: 133: }
	goto	i1l3620
	line	136
	
i1l3618:	
;Interrupts.h: 134: else
;Interrupts.h: 135: {
;Interrupts.h: 136: VehV_tiPulseAvg = VehV_tiPulse;
	movf	(_VehV_tiPulse+3),w	;volatile
	movwf	(_VehV_tiPulseAvg+3)	;volatile
	movf	(_VehV_tiPulse+2),w	;volatile
	movwf	(_VehV_tiPulseAvg+2)	;volatile
	movf	(_VehV_tiPulse+1),w	;volatile
	movwf	(_VehV_tiPulseAvg+1)	;volatile
	movf	(_VehV_tiPulse),w	;volatile
	movwf	(_VehV_tiPulseAvg)	;volatile

	line	138
	
i1l3620:	
;Interrupts.h: 137: }
;Interrupts.h: 138: temp = ((unsigned long)VehV_tiSig * (unsigned long)VehV_vRef);
	movf	(_VehV_tiSig),w
	movwf	(?___lmul)
	movf	(_VehV_tiSig+1),w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	(_VehV_vRef),w
	movwf	0+(?___lmul)+04h
	clrf	1+(?___lmul)+04h
	clrf	2+(?___lmul)+04h
	clrf	3+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(my_isr@temp+3)
	movf	(2+(?___lmul)),w
	movwf	(my_isr@temp+2)
	movf	(1+(?___lmul)),w
	movwf	(my_isr@temp+1)
	movf	(0+(?___lmul)),w
	movwf	(my_isr@temp)

	line	139
	
i1l3622:	
;Interrupts.h: 139: VehV_vRaw = (unsigned long)(temp/(VehV_tiPulseAvg));
	movf	(_VehV_tiPulseAvg+3),w	;volatile
	movwf	(?___lldiv+3)
	movf	(_VehV_tiPulseAvg+2),w	;volatile
	movwf	(?___lldiv+2)
	movf	(_VehV_tiPulseAvg+1),w	;volatile
	movwf	(?___lldiv+1)
	movf	(_VehV_tiPulseAvg),w	;volatile
	movwf	(?___lldiv)

	movf	(my_isr@temp+3),w
	movwf	3+(?___lldiv)+04h
	movf	(my_isr@temp+2),w
	movwf	2+(?___lldiv)+04h
	movf	(my_isr@temp+1),w
	movwf	1+(?___lldiv)+04h
	movf	(my_isr@temp),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	1+(((0+(?___lldiv)))),w
	movwf	(_VehV_vRaw+1)	;volatile
	movf	0+(((0+(?___lldiv)))),w
	movwf	(_VehV_vRaw)	;volatile
	line	140
	
i1l3624:	
;Interrupts.h: 140: VehV_tiPulse = 0;
	clrf	(_VehV_tiPulse)	;volatile
	clrf	(_VehV_tiPulse+1)	;volatile
	clrf	(_VehV_tiPulse+2)	;volatile
	clrf	(_VehV_tiPulse+3)	;volatile
	line	142
	
i1l458:	
	line	144
;Interrupts.h: 141: }
;Interrupts.h: 142: }
;Interrupts.h: 144: if(VehV_stSpdLim)
	movf	(_VehV_stSpdLim),w
	skipz
	goto	u84_20
	goto	i1l3628
u84_20:
	line	146
	
i1l3626:	
;Interrupts.h: 145: {
;Interrupts.h: 146: RA0 = 0;
	bcf	(40/8),(40)&7
	line	147
;Interrupts.h: 147: }
	goto	i1l464
	line	150
	
i1l3628:	
;Interrupts.h: 148: else
;Interrupts.h: 149: {
;Interrupts.h: 150: RA0 = ~RA0;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	line	153
	
i1l464:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_my_isr+7),w
	movwf	btemp+1
	movf	(??_my_isr+6),w
	movwf	pclath
	movf	(??_my_isr+5),w
	movwf	fsr0
	swapf	(??_my_isr+4)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_my_isr
	__end_of_my_isr:
;; =============== function _my_isr ends ============

	signat	_my_isr,88
	global	___lldiv
psect	text441,local,class=CODE,delta=2
global __ptext441
__ptext441:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[COMMON] unsigned long 
;;  counter         1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         8       0       0       0
;;      Locals:         5       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:        13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_my_isr
;; This function uses a non-reentrant model
;;
psect	text441
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
i1l3742:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
i1l3744:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u107_21
	goto	u107_20
u107_21:
	goto	i1l3764
u107_20:
	line	11
	
i1l3746:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	i1l3750
	line	13
	
i1l3748:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
i1l3750:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u108_21
	goto	u108_20
u108_21:
	goto	i1l3748
u108_20:
	line	17
	
i1l3752:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
i1l3754:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u109_25
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u109_25
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u109_25
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u109_25:
	skipc
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l3760
u109_20:
	line	19
	
i1l3756:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
i1l3758:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
i1l3760:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
i1l3762:	
	decfsz	(___lldiv@counter),f
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l3752
u110_20:
	line	25
	
i1l3764:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
i1l2613:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___lmul
psect	text442,local,class=CODE,delta=2
global __ptext442
__ptext442:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         8       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:        12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_my_isr
;; This function uses a non-reentrant model
;;
psect	text442
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
i1l3730:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
i1l2509:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u104_21
	goto	u104_20
u104_21:
	goto	i1l3734
u104_20:
	line	8
	
i1l3732:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u105_21
	addwf	(___lmul@product+1),f
u105_21:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u105_22
	addwf	(___lmul@product+2),f
u105_22:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u105_23
	addwf	(___lmul@product+3),f
u105_23:

	line	9
	
i1l3734:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
i1l3736:	
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u106_21
	goto	u106_20
u106_21:
	goto	i1l2509
u106_20:
	line	12
	
i1l3738:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
i1l2512:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	fptotal
fptotal equ 6
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__Task_1_100ms:
	ljmp	_Task_1_100ms
	file ""
	line	#
fp__Task_2_100ms:
	ljmp	_Task_2_100ms
	file ""
	line	#
fp__Task_3_500ms:
	ljmp	_Task_3_500ms
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
