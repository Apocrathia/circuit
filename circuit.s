	.file	"circuit.c"
#NO_APP
	.text
tigcc_compiled.:
#APP
	.xdef _ti89
	.xdef __ref_all___startup_code
	.xdef __ref_all___detect_calc
	.xdef __ref_all___test_for_specific_calc
	.xdef __ref_all___test_for_89
	.set _A_LINE,0xA000
	.xdef __ref_all___kernel_format_data_var
	.xdef _tigcc_native
	.xdef __ref_all___nostub
	.xdef __ref_all___save_screen
	.xdef __ref_all___kernel_format_bss
	.xdef __ref_all___kernel_format_rom_calls
#NO_APP
	.globl	_nostub_data__0000
	.section	.text,"d"
_nostub_data__0000:
	.ascii "Digital Logic Circuit Simulator\0"
	.globl	_nostub_data__0001
_nostub_data__0001:
	.ascii "Circuit\0"
	.globl	_nostub_data__0002
_nostub_data__0002:
	.ascii "0.9.2.0\0"
	.globl	_nostub_data__0004
	.even
_nostub_data__0004:
	.word	128
	.word	128
	.word	4088
	.word	2056
	.word	2056
	.word	7176
	.word	8724
	.word	16674
	.word	16674
	.word	16705
	.word	16733
	.word	32611
	.word	8769
	.word	9153
	.word	8449
	.word	8449
#APP
	.set MT_TEXT,0x8000
	.set MT_XREF,0x9000
	.set MT_ICON,0xA000
	.set MT_CASCADE,0x4000
#NO_APP
	.globl	componentsprites
	.text
componentsprites:
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	66
	.byte	-127
	.byte	-103
	.byte	-103
	.byte	-127
	.byte	66
	.byte	60
	.byte	-1
	.byte	-91
	.byte	-61
	.byte	-127
	.byte	-127
	.byte	-61
	.byte	-91
	.byte	-1
	.byte	60
	.byte	66
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-1
	.byte	24
	.byte	36
	.byte	66
	.byte	66
	.byte	-127
	.byte	-127
	.byte	-67
	.byte	-61
	.byte	24
	.byte	36
	.byte	66
	.byte	66
	.byte	-127
	.byte	-67
	.byte	-1
	.byte	-61
	.byte	60
	.byte	102
	.byte	-103
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-1
	.byte	24
	.byte	36
	.byte	90
	.byte	66
	.byte	-127
	.byte	-127
	.byte	-67
	.byte	-61
	.byte	24
	.byte	36
	.byte	90
	.byte	66
	.byte	-127
	.byte	-67
	.byte	-1
	.byte	-61
	.byte	16
	.byte	16
	.byte	40
	.byte	16
	.byte	40
	.byte	68
	.byte	-2
	.byte	16
	.byte	60
	.byte	74
	.byte	-119
	.byte	-103
	.byte	-97
	.byte	-127
	.byte	66
	.byte	60
	.byte	-1
	.byte	-111
	.byte	-15
	.byte	-103
	.byte	-91
	.byte	-91
	.byte	-61
	.byte	-1
	.globl	outputsprites
outputsprites:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	60
	.byte	0
	.globl	solidsprite
solidsprite:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.globl	wirepoints
wirepoints:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	0
	.byte	3
	.byte	7
	.byte	3
	.byte	7
	.byte	3
	.byte	7
	.byte	5
	.byte	7
	.byte	3
	.byte	3
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	0
	.byte	2
	.byte	9
	.byte	9
	.globl	inputs
inputs:
	.byte	4
	.byte	4
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	4
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.text
	.even
nodetoid:
	link.w %a6,#0
	move.l 8(%a6),%d1
	move.w #255,%d0
	tst.l %d1
	jbeq .L3
	pea 20.w
	sub.l circuitspace,%d1
	move.l %d1,-(%sp)
	jbsr __udivsi3
	addq.l #8,%sp
	and.w #0xFF,%d0
.L3:
	unlk %a6
	rts
	.even
idtonode:
	link.w %a6,#0
	move.b 9(%a6),%d1
	moveq.l #0,%d0
	cmp.b #-1,%d1
	jbeq .L6
	and.l #0xFF,%d1
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	lsl.l #2,%d0
	add.l circuitspace,%d0
.L6:
	move.l %d0,%a0
	unlk %a6
	rts
	.section	.rodata.__unalignedstr,"dmu"
.LC0:
	.ascii "Digital Logic\12Circuit Simulator\12Version 0.9.2\12by Clarence Risher\12sparr0@gmail.com\12\12Press [APPS] for help\12\0"
.LC1:
	.ascii "Old label '\0"
.LC2:
	.ascii "'\12New label?\0"
.LC3:
	.ascii "\12New label '\0"
.LC4:
	.ascii "'\12Display where?\12"
	.ascii "7 8 9\12 \\|/\12"
	.ascii "4-5-6\12 /|\\\12"
	.ascii "1 2 3\0"
.LC5:
	.ascii "\0"
.LC6:
	.ascii "Component Info\12Loc: (%d,%d)\12Type: %02d\12Output: %d\12Inputs: %d\12Label: %c (%d,%d)\12\12\0"
.LC7:
	.ascii "F1     - Toggle Button\12F2     - Change Component\12F3/F5  - Start/End Wire\12F6     - More Inputs\12Clear  - Delete Component\12t      - Label Component\12|      - Component Info\12Sto    - Grab Component\12( / )  - Load/Save File\12\0"
	.text
	.even
	.globl	__main
__main:
	link.w %a6,#-16
	movm.l #0x1f38,-(%sp)
	move.l %a5,-4(%a6)
	move.l 200.w,%a0
	move.w #96,-(%sp)
	move.l 2336(%a0),%a0
	jbsr (%a0)
	move.w %d0,-6(%a6)
	move.l 200.w,%a0
	move.w #48,(%sp)
	move.l 2340(%a0),%a0
	jbsr (%a0)
	move.w %d0,%d7
	muls.w #48,%d7
	subq.w #1,%d7
	move.l 200.w,%a0
	move.w #32,(%sp)
	move.l 2340(%a0),%a0
	jbsr (%a0)
	addq.l #2,%sp
	ext.l %d7
	divs.w %d0,%d7
	addq.w #1,%d7
	jbsr startup
	clr.l hsym
	clr.l -10(%a6)
	clr.l -14(%a6)
	move.l 200.w,%a0
	pea 3840.w
	move.l 648(%a0),%a0
	jbsr (%a0)
	move.l %a0,%d5
	addq.l #4,%sp
	jbne .L8
	.word _A_LINE+670
	.even
.L8:
	move.l 200.w,%a0
	pea 3840.w
	clr.w -(%sp)
	move.l %d5,-(%sp)
	move.l 2544(%a0),%a0
	jbsr (%a0)
	pea .LC0
	jbsr CLRSCR
	jbsr anykey
	jbsr loadfile
	move.b #1,simulate
	lea (14,%sp),%sp
.L9:
	move.l circuitspace,%a5
	move.w cursorloc,%d3
	move.w cursorloc+2,%d2
	move.l open,%d1
	jbra .L12
	.even
.L16:
	cmp.w 14(%a5),%d3
	jbne .L15
	cmp.w 16(%a5),%d2
	jbeq .L13
.L15:
	lea (20,%a5),%a5
.L12:
	move.l %d1,%d0
	cmp.l %a5,%d1
	jbne .L16
.L13:
	cmp.l %a5,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	move.l %a5,%d1
	and.l %d0,%d1
	move.l %d1,%a5
	moveq.l #0,%d6
	tst.b simulate
	jbeq .L18
	addq.b #1,cycle
	move.l circuitspace,%a2
	jbra .L19
	.even
.L22:
	move.l %a2,-(%sp)
	jbsr simulatenode
	lea (20,%a2),%a2
	addq.l #4,%sp
.L19:
	cmp.l open,%a2
	jbne .L22
	clr.b simulate
	move.b #1,render
.L18:
	tst.b render
	jbne .L24
	tst.l -10(%a6)
	jbeq .L23
.L24:
	move.l 200.w,%a0
	move.w #127,-(%sp)
	move.w #239,-(%sp)
	move.l %d5,-(%sp)
	move.l 1672(%a0),%a0
	jbsr (%a0)
	move.l 200.w,%a0
	move.l 1656(%a0),%a0
	jbsr (%a0)
	move.l circuitspace,%a2
	addq.l #8,%sp
	jbra .L25
	.even
.L38:
	clr.w %d3
	jbra .L28
	.even
.L35:
	move.w %d3,%a3
	move.b 3(%a3,%a2.l),%d1
	cmp.b #-1,%d1
	jbeq .L30
	clr.w %d0
	move.b 2(%a2),%d0
	cmp.w %d0,%d3
	jbge .L30
	subq.l #2,%sp
	move.b %d1,1(%sp)
	jbsr idtonode
	addq.l #2,%sp
	move.l %a0,%a1
	move.l 200.w,%a4
	tst.b (%a0)
	jbeq .L33
	moveq.l #7,%d0
	jbra .L34
	.even
.L33:
	moveq.l #1,%d0
.L34:
	move.w %d0,-(%sp)
	move.w 16(%a1),%d2
	lsl.w #3,%d2
	clr.l %d1
	move.b 1(%a1),%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	move.l %d0,%a0
	add.l #wirepoints,%a0
	move.b 1(%a0),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.w 14(%a1),%d2
	lsl.w #3,%d2
	clr.l %d0
	move.b 1(%a1),%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lea wirepoints,%a0
	move.b (%a0,%d1.l),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.w 16(%a2),%d2
	lsl.w #3,%d2
	clr.l %d1
	move.b 1(%a2),%d1
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	add.l %a3,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l #wirepoints+3,%a0
	move.b (%a0),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.w 14(%a2),%d2
	lsl.w #3,%d2
	clr.l %d1
	move.b 1(%a2),%d1
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	lea (%a3,%d0.l),%a0
	add.l %a0,%a0
	add.l #wirepoints+2,%a0
	move.b (%a0),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.l 1692(%a4),%a0
	jbsr (%a0)
	lea (10,%sp),%sp
.L30:
	addq.w #1,%d3
.L28:
	cmp.w #3,%d3
	jble .L35
	move.l %d5,-(%sp)
	clr.l %d0
	move.b 1(%a2),%d0
	lsl.l #3,%d0
	add.l #componentsprites,%d0
	move.l %d0,-(%sp)
	move.w #8,-(%sp)
	move.w 16(%a2),%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	move.w 14(%a2),%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	lea Sprite8_OR,%a3
	jbsr (%a3)
	lea (14,%sp),%sp
	tst.b (%a2)
	jbeq .L36
	move.l %d5,-(%sp)
	clr.w %d1
	move.b 1(%a2),%d1
	move.w #1030,%d0
	asr.w %d1,%d0
	moveq.l #1,%d2
	and.l %d2,%d0
	lsl.l #3,%d0
	add.l #outputsprites,%d0
	move.l %d0,-(%sp)
	move.w #8,-(%sp)
	move.w 16(%a2),%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	move.w 14(%a2),%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	jbsr (%a3)
	lea (14,%sp),%sp
.L36:
	tst.b 8(%a2)
	jbeq .L37
	move.l 200.w,%a0
	move.w #1,-(%sp)
	subq.l #2,%sp
	move.b 8(%a2),1(%sp)
	move.w 16(%a2),%d0
	add.w 12(%a2),%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	move.w 14(%a2),%d0
	add.w 10(%a2),%d0
	lsl.w #3,%d0
	addq.w #1,%d0
	move.w %d0,-(%sp)
	move.l 1680(%a0),%a0
	jbsr (%a0)
	addq.l #8,%sp
.L37:
	lea (20,%a2),%a2
.L25:
	cmp.l open,%a2
	jbne .L38
	move.l 200.w,%a0
	move.l 1676(%a0),%a0
	jbsr (%a0)
	clr.b render
	move.b #1,redraw
.L23:
	tst.b redraw
	jbeq .L39
	jbsr clrscr
	move.l 200.w,%a0
	pea 3840.w
	move.l %d5,-(%sp)
	pea 19456.w
	move.l 2472(%a0),%a0
	jbsr (%a0)
	clr.b redraw
	lea (12,%sp),%sp
.L39:
	lea drawcursor,%a2
	jbsr (%a2)
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 324(%a0),%a0
	jbsr (%a0)
	move.w %d0,%d4
	and.w #-2049,%d4
	jbsr (%a2)
	cmp.w #40,%d4
	jbne .L40
	jbsr loadfile
	jbra .L41
	.even
.L40:
	cmp.w #41,%d4
	jbne .L42
	jbsr savefile
	jbra .L41
	.even
.L42:
	cmp.w #337,%d4
	jbne .L44
	move.w #11,%d6
	jbra .L41
	.even
.L44:
	cmp.w #340,%d4
	jbne .L46
	move.w #1,%d6
	jbra .L41
	.even
.L46:
	cmp.w #338,%d4
	jbne .L48
	moveq.l #19,%d6
	swap %d6
	jbra .L41
	.even
.L48:
	cmp.w #344,%d4
	jbne .L50
	moveq.l #1,%d6
	swap %d6
	jbra .L41
	.even
.L50:
	cmp.w #268,%d4
	jbne .L52
	cmp.w #0,%a5
	jbeq .L52
	tst.b (%a5)
	seq %d0
	neg.b %d0
	move.b %d0,(%a5)
	jbra .L111
	.even
.L52:
	cmp.w #269,%d4
	jbne .L54
	cmp.w #0,%a5
	jbne .L55
	jbsr newnode
	move.l %a0,%a5
.L55:
	move.b 1(%a5),%d0
	addq.b #1,%d0
	and.w #0xFF,%d0
	moveq.l #12,%d2
	and.l #0xFFFF,%d0
	divu.w %d2,%d0
	move.l %d0,%d1
	swap %d1
	move.b %d1,1(%a5)
	clr.l %d0
	move.b %d1,%d0
	add.l %d0,%d0
	move.l %d0,%a0
	add.l #inputs,%a0
	clr.w %d0
	move.b 2(%a5),%d0
	move.b 1(%a0),%d1
	ext.w %d1
	cmp.w %d1,%d0
	jbge .L56
	move.w %d0,%d1
.L56:
	move.b (%a0),%d0
	ext.w %d0
	cmp.w %d0,%d1
	jble .L57
	move.w %d1,%d0
.L57:
	move.b %d0,2(%a5)
	move.b cycle,%d0
	subq.b #1,%d0
	move.b %d0,7(%a5)
	cmp.l wiretarget,%a5
	jbne .L111
	clr.l wiretarget
	jbra .L111
	.even
.L54:
	cmp.w #270,%d4
	jbne .L60
	move.b 2(%a5),%d1
	cmp.l wiretarget,%a5
	jbne .L61
	clr.w %d0
	move.b wiretargetinput,%d0
	addq.w #1,%d0
	and.w #0xFF,%d1
	ext.l %d0
	divs.w %d1,%d0
	move.l %d0,%d1
	swap %d1
	move.b %d1,wiretargetinput
	jbra .L41
	.even
.L61:
	tst.b %d1
	jbeq .L63
	move.l %a5,wiretarget
	clr.b wiretargetinput
	jbra .L41
	.even
.L63:
	clr.l wiretarget
	jbra .L41
	.even
.L60:
	cmp.w #272,%d4
	jbne .L66
	cmp.w #0,%a5
	jbne .L67
	jbsr newnode
	move.l %a0,%a5
	clr.b 1(%a0)
	move.b #4,2(%a0)
.L67:
	move.l wiretarget,%a2
	cmp.w #0,%a2
	jbeq .L68
	clr.l %d3
	move.b wiretargetinput,%d3
	st %d0
	cmp.w #0,%a5
	jbeq .L70
	move.l %a5,-(%sp)
	jbsr nodetoid
	addq.l #4,%sp
.L70:
	move.b %d0,3(%a2,%d3.l)
	move.l wiretarget,%a0
	move.b wiretargetinput,%d0
	cmp.b 2(%a0),%d0
	jbcs .L71
	addq.b #1,%d0
	move.b %d0,2(%a0)
.L71:
	clr.l wiretarget
	st wiretargetinput
	jbra .L111
	.even
.L68:
	tst.b 1(%a5)
	jbeq .L41
	move.b 2(%a5),%d1
	cmp.b #1,%d1
	jbls .L41
	move.b 3(%a5),%d2
	clr.w %d3
	jbra .L74
	.even
.L78:
	move.w %d3,%d0
	addq.w #1,%d0
	move.b 3(%a5,%d0.w),3(%a5,%d3.w)
	move.w %d0,%d3
.L74:
	clr.w %d0
	move.b %d1,%d0
	subq.w #1,%d0
	cmp.w %d3,%d0
	jbgt .L78
	move.b %d2,3(%a5,%d0.w)
	jbra .L94
	.even
.L66:
	cmp.w #273,%d4
	jbne .L80
	cmp.w #0,%a5
	jbeq .L80
	move.b 2(%a5),%d0
	addq.b #1,%d0
	move.b %d0,2(%a5)
	and.w #0xFF,%d0
	clr.l %d1
	move.b 1(%a5),%d1
	add.l %d1,%d1
	move.l %d1,%a0
	add.l #inputs,%a0
	move.b 1(%a0),%d1
	ext.w %d1
	cmp.w %d0,%d1
	jbge .L111
	move.b (%a0),2(%a5)
	jbra .L111
	.even
.L80:
	cmp.w #258,%d4
	jbne .L83
	tst.l -10(%a6)
	jbeq .L84
	clr.l -10(%a6)
	jbra .L41
	.even
.L84:
	cmp.w #0,%a5
	jbeq .L41
	move.l %a5,-10(%a6)
	jbra .L41
	.even
.L83:
	cmp.w #263,%d4
	jbne .L88
	cmp.w #0,%a5
	jbeq .L88
	cmp.l -14(%a6),%a5
	jbeq .L89
	move.l %a5,-14(%a6)
	jbra .L41
	.even
.L89:
	move.l -14(%a6),-(%sp)
	jbsr deletenode
	clr.l -14(%a6)
	move.b #1,simulate
	jbra .L110
	.even
.L88:
	cmp.w #116,%d4
	jbne .L92
	cmp.w #0,%a5
	jbeq .L92
	pea .LC1
	jbsr CLRSCR
	move.b 8(%a5),%d1
	ext.w %d1
	move.w %d1,-(%sp)
	lea fputchar,%a3
	jbsr (%a3)
	pea .LC2
	lea printf,%a2
	jbsr (%a2)
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 324(%a0),%a0
	jbsr (%a0)
	move.b %d0,8(%a5)
	lea (10,%sp),%sp
	cmp.b #13,%d0
	jbne .L93
	clr.b 8(%a5)
	jbra .L94
	.even
.L93:
	pea .LC3
	jbsr (%a2)
	move.b 8(%a5),%d2
	ext.w %d2
	move.w %d2,-(%sp)
	jbsr (%a3)
	pea .LC4
	jbsr (%a2)
	lea (10,%sp),%sp
.L109:
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 324(%a0),%a0
	jbsr (%a0)
	move.w %d0,%d3
	cmp.w #48,%d0
	jble .L109
	cmp.w #57,%d0
	jbgt .L109
	add.w #-49,%d3
	move.w %d3,%d1
	moveq.l #3,%d2
	ext.l %d1
	divs.w %d2,%d1
	move.l %d1,%d0
	swap %d0
	subq.w #1,%d0
	move.w %d0,10(%a5)
	moveq.l #1,%d0
	sub.w %d1,%d0
	move.w %d0,12(%a5)
.L94:
	move.b #1,render
	jbra .L41
	.even
.L92:
	cmp.w #124,%d4
	jbne .L99
	cmp.w #0,%a5
	jbeq .L99
	pea .LC5
	jbsr CLRSCR
	move.w 12(%a5),-(%sp)
	move.w 10(%a5),-(%sp)
	move.b 8(%a5),%d1
	ext.w %d1
	move.w %d1,-(%sp)
	clr.w %d0
	move.b 2(%a5),%d0
	move.w %d0,-(%sp)
	move.b (%a5),%d2
	ext.w %d2
	move.w %d2,-(%sp)
	clr.w %d0
	move.b 1(%a5),%d0
	move.w %d0,-(%sp)
	move.w 16(%a5),-(%sp)
	move.w 14(%a5),-(%sp)
	pea .LC6
	jbsr printf
	jbsr anykey
	lea (24,%sp),%sp
	jbra .L41
	.even
.L99:
	cmp.w #265,%d4
	jbne .L101
	pea .LC7
	jbsr CLRSCR
	jbsr anykey
.L110:
	addq.l #4,%sp
	jbra .L41
	.even
.L101:
	cmp.w #264,%d4
	jbeq .L104
.L111:
	move.b #1,simulate
.L41:
	move.w cursorloc+2,%d0
	add.w %d6,%d0
	moveq.l #12,%d1
	ext.l %d0
	divs.w %d1,%d0
	move.l %d0,%d1
	swap %d1
	move.w %d1,cursorloc+2
	swap %d6
	ext.l %d6
	move.w cursorloc,%d0
	add.w %d6,%d0
	moveq.l #20,%d2
	ext.l %d0
	divs.w %d2,%d0
	move.l %d0,%d2
	swap %d2
	move.w %d2,cursorloc
	tst.l -10(%a6)
	jbeq .L11
	move.l -10(%a6),%a0
	move.l cursorloc,14(%a0)
.L11:
	cmp.w #13,%d4
	jbne .L9
	jbsr savefile
	tst.w %d0
	jbne .L104
	jbsr anykey
.L104:
	jbsr cleanup
	move.l 200.w,%a0
	move.l %d5,-(%sp)
	move.l 652(%a0),%a0
	jbsr (%a0)
	move.l 200.w,%a0
	move.w -6(%a6),-(%sp)
	move.l 2336(%a0),%a0
	jbsr (%a0)
	addq.l #6,%sp
	move.l 200.w,%a0
	move.w #48,-(%sp)
	move.l 2340(%a0),%a0
	jbsr (%a0)
	move.l 200.w,%a0
	move.w %d7,(%sp)
	move.l 2340(%a0),%a0
	jbsr (%a0)
	addq.l #2,%sp
	move.l -4(%a6),%a5
	movm.l -48(%a6),#0x1cf8
	unlk %a6
	rts
	.even
	.globl	simulatenode
simulatenode:
	link.w %a6,#0
	movm.l #0x1030,-(%sp)
	move.l 8(%a6),%a3
	clr.w %d0
	cmp.w #0,%a3
	jbeq .L112
	move.b cycle,%d0
	cmp.b 7(%a3),%d0
	jbeq .L121
	move.b %d0,7(%a3)
	clr.w %d3
	sub.l %a2,%a2
	jbra .L115
	.even
.L120:
	subq.l #2,%sp
	move.b 3(%a3,%a2.w),1(%sp)
	jbsr idtonode
	addq.l #2,%sp
	move.l %a0,-(%sp)
	jbsr simulatenode
	add.w %d0,%d3
	addq.l #4,%sp
	addq.w #1,%a2
.L115:
	move.b 2(%a3),%d1
	clr.w %d0
	move.b %d1,%d0
	cmp.w %a2,%d0
	jbgt .L120
	clr.w %d0
	move.b 1(%a3),%d0
	cmp.w #11,%d0
	jbhi .L121
	and.l #0xFF,%d0
	add.l %d0,%d0
	.set .LI133,.+2
	move.w .L133-.LI133.b(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
	.even
.L133:
	.word .L124-.L133
	.word .L124-.L133
	.word .L121-.L133
	.word .L125-.L133
	.word .L124-.L133
	.word .L126-.L133
	.word .L127-.L133
	.word .L130-.L133
	.word .L128-.L133
	.word .L130-.L133
	.word .L131-.L133
	.word .L132-.L133
	.even
.L124:
	tst.w %d3
	sgt %d0
	jbra .L135
	.even
.L125:
	clr.w %d0
	move.b %d1,%d0
	cmp.w %d3,%d0
	seq %d0
	jbra .L135
	.even
.L126:
	cmp.w #1,%d3
	seq %d0
	jbra .L135
	.even
.L127:
	clr.w %d0
	move.b %d1,%d0
	cmp.w %d3,%d0
	sne %d0
	jbra .L135
	.even
.L128:
	cmp.w #1,%d3
	sne %d0
	jbra .L135
	.even
.L130:
	tst.w %d3
	seq %d0
	jbra .L135
	.even
.L131:
	tst.b (%a3)
	seq %d0
.L135:
	neg.b %d0
	move.b %d0,(%a3)
	jbra .L121
	.even
.L132:
	lea idtonode,%a2
	subq.l #2,%sp
	move.b 5(%a3),1(%sp)
	jbsr (%a2)
	move.b (%a0),%d0
	ext.w %d0
	move.b 3(%a3,%d0.w),1(%sp)
	jbsr (%a2)
	addq.l #2,%sp
	move.b (%a0),(%a3)
.L121:
	move.b (%a3),%d0
	ext.w %d0
.L112:
	movm.l -12(%a6),#0xc08
	unlk %a6
	rts
	.even
	.globl	drawcursor
drawcursor:
	link.w %a6,#0
	pea 19456.w
	pea solidsprite
	move.w #8,-(%sp)
	move.w cursorloc+2,%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	move.w cursorloc,%d0
	lsl.w #3,%d0
	move.w %d0,-(%sp)
	jbsr Sprite8_XOR
	lea (14,%sp),%sp
	tst.l wiretarget
	jbeq .L136
	jbsr drawwireline
.L136:
	unlk %a6
	rts
	.even
	.globl	drawwireline
drawwireline:
	link.w %a6,#0
	movm.l #0x1030,-(%sp)
	move.l 200.w,%a2
	move.w #2,-(%sp)
	move.l wiretarget,%a1
	move.w 16(%a1),%d2
	lsl.w #3,%d2
	clr.l %d1
	move.b 1(%a1),%d1
	clr.l %d3
	move.b wiretargetinput,%d3
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	add.l %d3,%d0
	lea wirepoints,%a3
	move.l %d0,%a0
	add.l %d0,%a0
	add.l #wirepoints+3,%a0
	move.b (%a0),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.w 14(%a1),%d2
	lsl.w #3,%d2
	clr.l %d1
	move.b 1(%a1),%d1
	move.l %d1,%d0
	lsl.l #2,%d0
	add.l %d1,%d0
	add.l %d3,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l #wirepoints+2,%a0
	move.b (%a0),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.w cursorloc+2,%d2
	lsl.w #3,%d2
	move.w #1,%a0
	cmp.w #0,%a5
	jbeq .L140
	clr.l %d0
	move.b 1(%a5),%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	move.l %d1,%a0
	add.l %d0,%a0
	lea 1(%a0,%d0.l),%a0
.L140:
	move.b (%a3,%a0.l),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.w cursorloc,%d2
	lsl.w #3,%d2
	moveq.l #0,%d0
	cmp.w #0,%a5
	jbeq .L142
	clr.l %d1
	move.b 1(%a5),%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	add.l %d1,%d0
	add.l %d1,%d0
.L142:
	move.b (%a3,%d0.l),%d0
	ext.w %d0
	add.w %d0,%d2
	move.w %d2,-(%sp)
	move.l 1692(%a2),%a0
	jbsr (%a0)
	movm.l -12(%a6),#0xc08
	unlk %a6
	rts
	.section	.rodata.__unalignedstr,"dmu"
.LC8:
	.ascii "csav\0"
	.text
	.even
.LC9:
	.long	.LC8
	.long	.LC5
	.section	.rodata.__unalignedcst,"dmu"
.LC10:
	.byte	-8
	.byte	-121
	.byte	0
	.section	.rodata.__unalignedstr,"dmu"
.LC11:
	.ascii "Loading\0"
.LC12:
	.ascii ".\0"
.LC13:
	.ascii "Can't open file to load.\0"
.LC14:
	.ascii "ERROR\0"
.LC15:
	.ascii "\12\0"
	.text
	.even
	.globl	loadfile
loadfile:
	link.w %a6,#0
	movm.l #0x1038,-(%sp)
	moveq.l #1,%d3
	move.b #1,render
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 2608(%a0),%a0
	pea .LC9
	pea .LC10
	jbsr (%a0)
	move.l %d0,hsym
	move.l 200.w,%a0
	move.l %d0,-(%sp)
	move.l 484(%a0),%a0
	jbsr (%a0)
	move.l %a0,%a2
	lea (12,%sp),%sp
	cmp.w #0,%a0
	jbeq .L146
	jbsr cleanup
	jbsr startup
	pea .LC11
	jbsr CLRSCR
	move.w 12(%a2),%d0
	addq.l #4,%sp
	jbeq .L146
	move.l 200.w,%a0
	move.w %d0,-(%sp)
	move.l 600(%a0),%a0
	jbsr (%a0)
	move.l %a0,%a2
	clr.l %d0
	move.w (%a2)+,%d0
	lea -7(%a2,%d0.l),%a4
	addq.l #2,%sp
	jbra .L147
	.even
.L155:
	pea .LC12
	jbsr printf
	jbsr newnode
	move.b %d3,18(%a0)
	addq.w #1,%d3
	move.b (%a2)+,%d1
	move.b %d1,%d0
	and.b #15,%d0
	move.b %d0,1(%a0)
	lsr.b #4,%d1
	move.b %d1,%d0
	and.b #7,%d0
	move.b %d0,2(%a0)
	lsr.b #3,%d1
	move.b %d1,(%a0)
	addq.l #4,%sp
	lea (3,%a0),%a3
	moveq.l #3,%d0
	jbra .L150
	.even
.L154:
	move.b (%a2),(%a3)+
	move.l %a1,%a2
	subq.w #1,%d0
.L150:
	lea (1,%a2),%a1
	tst.w %d0
	jbge .L154
	move.b (%a2),%d1
	move.l %a1,%a2
	and.w #0xFF,%d1
	move.w %d1,%d0
	mulu.w #52429,%d0
	clr.w %d0
	swap %d0
	lsr.w #4,%d0
	move.w %d0,16(%a0)
	muls.w #20,%d0
	sub.w %d0,%d1
	clr.b 14(%a0)
	move.b %d1,15(%a0)
	move.b (%a2)+,8(%a0)
	move.b (%a2)+,%d1
	move.w %d1,%d0
	and.w #15,%d0
	subq.w #1,%d0
	move.w %d0,10(%a0)
	lsr.b #4,%d1
	move.w %d1,%d0
	and.w #15,%d0
	subq.w #1,%d0
	move.w %d0,12(%a0)
.L147:
	cmp.l %a2,%a4
	jbhi .L155
	jbra .L156
	.even
.L146:
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 1744(%a0),%a0
	move.w #4,-(%sp)
	clr.w -(%sp)
	pea .LC13
	pea .LC14
	jbsr (%a0)
	clr.w %d0
	jbra .L143
	.even
.L156:
	pea .LC15
	jbsr printf
	move.b #1,simulate
	moveq.l #1,%d0
.L143:
	movm.l -16(%a6),#0x1c08
	unlk %a6
	rts
	.text
	.even
.LC17:
	.long	.LC8
	.section	.rodata.__unalignedcst,"dmu"
.LC18:
	.byte	-8
	.byte	0
.LC19:
	.byte	0
	.byte	99
	.byte	115
	.byte	97
	.byte	118
	.byte	0
	.byte	-8
	.section	.rodata.__unalignedstr,"dmu"
.LC16:
	.ascii "Overwrite?\0"
.LC20:
	.ascii "Can't open file to save.\0"
	.text
	.even
	.globl	savefile
savefile:
	link.w %a6,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l open,%d0
	cmp.l circuitspace,%d0
	jbeq .L174
	move.b #1,render
	move.l hsym,%d0
	jbeq .L159
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 1744(%a0),%a2
	move.w #5,-(%sp)
	move.w #3,-(%sp)
	move.l 200.w,%a0
	move.l %d0,-(%sp)
	move.l 484(%a0),%a0
	jbsr (%a0)
	move.l %a0,(%sp)
	pea .LC16
	jbsr (%a2)
	lea (12,%sp),%sp
	cmp.w #264,%d0
	jbne .L159
	clr.l hsym
.L159:
	tst.l hsym
	jbne .L161
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 2616(%a0),%a0
	pea .LC17
	pea .LC18
	jbsr (%a0)
	move.l %d0,hsym
	addq.l #8,%sp
.L161:
	move.l 200.w,%a0
	move.l hsym,-(%sp)
	move.l 484(%a0),%a0
	jbsr (%a0)
	move.l %a0,%a2
	addq.l #4,%sp
	cmp.w #0,%a0
	jbeq .L163
	move.l 200.w,%a0
	clr.w %d0
	move.b nodecount,%d0
	lsl.w #3,%d0
	add.w #9,%d0
	move.l %d0,%d1
	and.l #4095,%d1
	move.l %d1,-(%sp)
	move.w 12(%a2),-(%sp)
	move.l 628(%a0),%a0
	jbsr (%a0)
	addq.l #6,%sp
	tst.w %d0
	jbeq .L163
	move.w %d0,12(%a2)
	move.l 200.w,%a0
	move.w %d0,-(%sp)
	move.l 600(%a0),%a0
	jbsr (%a0)
	move.l %a0,%a1
	clr.w %d0
	move.b nodecount,%d0
	lsl.w #3,%d0
	addq.w #7,%d0
	move.w %d0,(%a1)+
	move.l circuitspace,%a0
	addq.l #2,%sp
	jbra .L165
	.even
.L173:
	clr.w %d0
	move.b 2(%a0),%d0
	lsl.w #4,%d0
	move.b 1(%a0),%d1
	or.b %d0,%d1
	move.b (%a0),%d0
	ext.w %d0
	lsl.w #7,%d0
	or.b %d0,%d1
	move.b %d1,(%a1)+
	lea (3,%a0),%a2
	moveq.l #3,%d0
	jbra .L168
	.even
.L172:
	move.b (%a2)+,(%a1)
	move.l %a3,%a1
	subq.w #1,%d0
.L168:
	lea (1,%a1),%a3
	tst.w %d0
	jbge .L172
	move.w 16(%a0),%d0
	muls.w #20,%d0
	move.b 15(%a0),%d1
	add.b %d0,%d1
	move.b %d1,(%a1)
	move.l %a3,%a1
	move.b 8(%a0),(%a1)+
	move.b 11(%a0),%d1
	addq.b #1,%d1
	move.w 12(%a0),%d0
	addq.w #1,%d0
	lsl.w #4,%d0
	or.b %d0,%d1
	move.b %d1,(%a1)+
	lea (20,%a0),%a0
.L165:
	cmp.l open,%a0
	jbne .L173
	move.l 200.w,%a0
	pea 7.w
	pea .LC19
	move.l %a1,-(%sp)
	move.l 2472(%a0),%a0
	jbsr (%a0)
	moveq.l #1,%d0
	jbra .L157
	.even
.L163:
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 1744(%a0),%a0
	move.w #4,-(%sp)
	clr.w -(%sp)
	pea .LC20
	pea .LC14
	jbsr (%a0)
.L174:
	clr.w %d0
.L157:
	move.l -8(%a6),%a2
	move.l -4(%a6),%a3
	unlk %a6
	rts
	.even
	.globl	CLRSCR
CLRSCR:
	link.w %a6,#0
	jbsr clrscr
	move.l 8(%a6),-(%sp)
	jbsr printf
	move.b #1,redraw
	unlk %a6
	rts
	.even
	.globl	cleanup
cleanup:
	link.w %a6,#0
	move.l 200.w,%a0
	move.l circuitspace,-(%sp)
	move.l 652(%a0),%a0
	jbsr (%a0)
	clr.b nodecount
	unlk %a6
	rts
	.section	.rodata.__unalignedstr,"dmu"
.LC21:
	.ascii "Press any key\0"
	.text
	.even
	.globl	anykey
anykey:
	link.w %a6,#0
	pea .LC21
	jbsr printf
#APP
	.xdef __ref_all___set_file_in_use_bit
#NO_APP
	move.l 200.w,%a0
	move.l 324(%a0),%a0
	jbsr (%a0)
	unlk %a6
	rts
	.even
	.globl	newnode
newnode:
	link.w %a6,#0
	move.l %a2,-(%sp)
	move.l open,%a2
	lea (20,%a2),%a0
	move.l %a0,open
	addq.b #1,nodecount
	move.l 200.w,%a0
	pea 20.w
	clr.w -(%sp)
	move.l %a2,-(%sp)
	move.l 2544(%a0),%a0
	jbsr (%a0)
	st 1(%a2)
	move.b cycle,7(%a2)
	move.l cursorloc,14(%a2)
	lea (10,%sp),%sp
	lea (3,%a2),%a0
	moveq.l #3,%d0
	jbra .L179
	.even
.L183:
	st (%a0)+
	subq.w #1,%d0
.L179:
	tst.w %d0
	jbge .L183
	move.l %a2,%a0
	move.l -4(%a6),%a2
	unlk %a6
	rts
	.even
	.globl	deletenode
deletenode:
	link.w %a6,#0
	movm.l #0x1830,-(%sp)
	move.l 8(%a6),%d4
	moveq.l #-20,%d0
	add.l %d0,open
	move.l circuitspace,%a2
	jbra .L185
	.even
.L196:
	clr.w %d3
	jbra .L188
	.even
.L195:
	move.w %d3,%a3
	subq.l #2,%sp
	move.b 3(%a3,%a2.l),1(%sp)
	jbsr idtonode
	addq.l #2,%sp
	cmp.l %a0,%d4
	jbne .L192
	st 3(%a3,%a2.l)
	jbra .L190
	.even
.L192:
	cmp.l open,%a0
	jbne .L190
	move.l %d4,-(%sp)
	jbsr nodetoid
	addq.l #4,%sp
	move.b %d0,3(%a3,%a2.l)
.L190:
	addq.w #1,%d3
.L188:
	cmp.w #3,%d3
	jble .L195
	lea (20,%a2),%a2
.L185:
	cmp.l open,%a2
	jbne .L196
	move.l 200.w,%a0
	pea 20.w
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l 2472(%a0),%a0
	jbsr (%a0)
	subq.b #1,nodecount
	movm.l -16(%a6),#0xc18
	unlk %a6
	rts
	.even
	.globl	startup
startup:
	link.w %a6,#0
	move.l 200.w,%a0
	pea 5120.w
	move.l 648(%a0),%a0
	jbsr (%a0)
	move.l %a0,%d0
	move.l %a0,circuitspace
	addq.l #4,%sp
	jbne .L198
	.word _A_LINE+670
	.even
.L198:
	move.l 200.w,%a0
	pea 5120.w
	clr.w -(%sp)
	move.l %d0,-(%sp)
	move.l 2544(%a0),%a0
	jbsr (%a0)
	move.l circuitspace,open
	clr.l cursorloc
	clr.l wiretarget
	clr.b wiretargetinput
	clr.b cycle
	clr.b nodecount
	unlk %a6
	rts
.comm cycle,2
.comm circuitspace,4
.comm open,4
.comm cursorloc,4
.comm wiretarget,4
.comm wiretargetinput,2
.comm redraw,2
.comm simulate,2
.comm nodecount,2
.comm hsym,4
.comm render,2
