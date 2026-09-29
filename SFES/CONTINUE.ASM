;***************************************************************************
;*                              -----------                                *
;*                              StarGlider                                 *
;*                              -----------                                *
;*                                                                         *
;*                           SuperNES version.                             *
;*                                                                         *
;*                           Argonaut Software.      		      *	   
;*_________________________________________________________________________*
;*                                                                         *
;*   File: CONTINUE.ASM                                                    *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: CONTINUE/CREDIT SCREEN    and pre-game menu                     *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 26/6/92                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:   Dylan Cuthbert.   (GOD)                                       *
;*                                                                         *
;***************************************************************************
;stopcounting
;10/12 - model test mode
;6 - ntt pad test
;5 - calibration
;1 - ship select


;
;
;	MODEL TEST LIST
;	AND SHIP TEST LIST
;	ARE IN GSTRATS2.ASM
;	-kando
;


	INCPUBLICS	continue.ext

; shadow temp vars with unused existing zero page
foxy_option	equ	ocode1
foxy_frame	equ	ocode2
foxy_xa	equ	cla1
foxy_ya	equ	cla2
foxy_za	equ	clb1
foxy_foot	equ	clb2
foxy_ptr	equ	clac
foxy_shape	equ	clam
foxy_flag	equ	clbm


;-------------------------------------------------
;-------------------------------------------------

foxy_continue_l							;Start here
;	a16
;	lda	#0
;	sta.l	testk2
;	lda	#bholelimit
;	sta.l	testk3
;	lda	#1
;	sta.l	testk4
;	sta	dohofs
;	lda	#bhole_hof
;	sta	hposjmp
	stz	titlfade
	a8
	lda	#shipcount							;TOTAL SHIP COUNT (also in title.asm)
	sta	totalshipcountvar
	stz	fadepalrb1
	IFEQ	HARDWARE
	lda	pgbg
	cmp	#2
	bne	.no2
	lda	#34
	sta	fadepalrb1
.no2
	stz	fadepalrb2
	stz	fadepalrb3
	stz	fadepalrb4
	stz	fadepalrb5
	stz	fadepaltitle
	lda	pgbg
	cmp	#4
	bne	.no1
	lda	#33
	sta	fadepaltofxgreen
;	sta	fadepaltoyamao
.no1
	stz	fadepaltofxpink
	stz	fadepaltofxdes
	stz	fadepaltofxblue
;	bra	.no
	a8
	stz	fadepaltoyamao
	lda	pgbg
	cmp	#7
	bne	.no
	lda	#33
	sta	fadepaltoyamao
.no
	stz	fadepaltoyamab
	lda	pgbg
	cmp	#26
	bne	.doneno
	lda	#65
	sta	fadepaltit
	
.doneno
	stz	waterfade
	lda	pgbg
	cmp	#1
	bne	noshimmer
	lda	#1
	sta	waterfade
	bra	doneshimmer
noshimmer

doneshimmer
	stz	sectorkfade
	lda	pgbg
	cmp	#2
	lbne	nostarsxa
	lda	#1
	sta	sectorkfade
	bra	donestars	
nostarsxa

donestars
	stz	sunfade
	lda	pgbg
	cmp	#36
	bne	nosun
	lda	#1
	sta	sunfade
	bra	donesun
nosun

donesun
	ENDC
	php									;
	phb									;
	a8i16								;
	lda	#0								;
	pha									;
	plb									;
	lda	credits
	lbeq	end2
	stz	trans_flag
	stz	hdmaen
	stz	godtemp
	stz	godtemp2

	jsl	setdefaultpos

	lda	pagenumber
	bne	.noworries
	lda	#1
	sta	pagenumber
	waitdma	150
	waitdma	140
.noworries
	lda	#$80
	sta	inidisp
	setinidisp1
	disable
	a8
	jsl	dopalstuff_l
	lda	#1
	jsl	setpal_l
	a8
	lda	stopcounting					;load stopcounting into accumulator
	lbeq	regbgm
	cmp	#10
	beq	.br
	cmp	#11
	beq	.br
	jmp	cont
.br
	bgm2	menu					;otherwise, play the bossbgm1 bgm
	IFNE	MSU1
	msuplay	menu,repeat
	ENDC
	jmp	cont
regbgm
	bgm2	continue					;blah blah why are you reading my comments
cont
	lda	stopcounting
	cmp	#11
	bne	.noset
	lda	#8
	sta	stopcounting
.noset
;	lda	#%11100000						;more continue mode crap
;	sta	coldata							;
	stz	cgadsub							;
	stz	cgswsel
	stz	w12sel
	stz	w34sel
	stz	wobjsel
	stz	tmw
	stz	tsw
	lda	newgameplus						;Check if newgameplus is activated
	and	#1								;only check the last bit
	bne	ngp							;if != 0 go to ngp and get 6 lives when continuing
	lda	#4								;otherwise, only 4 lives when continuing
	sta	lives
	sta	livestwo
	sta	livesthree
	sta	livesfour
	sta	livesfive
	bra	donelives
ngp
	lda	#6								;6 lives for ngp
	sta	lives
	sta	livestwo
	sta	livesthree
	sta	livesfour
	sta	livesfive
donelives


	a16
	stz	foxy_option						;
	stz	foxy_frame						;Zero some shit
	stz	foxy_foot						;
	lda	#350
	sta.l	m_bigz
	a8
	lda	stopcounting					;Check if we are in model test mode or startup menu
	bne	zerospin
	lda	#4								;Default spin for objects in continue screen
	sta	foxy_ya
	bra	donespin
zerospin
	stz	foxy_ya
donespin
	stz	foxy_xa							;Zero a bunch of stuff
	stz	foxy_za
	lda	#0
	sta.l	m_rotx
	sta.l	m_roty
	sta.l	m_rotz
	stz	cont0l
	stz	cont1l
	stz	trig0
	stz	trig1
	a8									;8 bit accumulator
	lda	stopcounting					;check if we are in the pre-game menu
	cmp	#8
	lbeq	noshape						;if so, don't load a shape
	cmp	#9
	lbeq	noshape
	cmp	#10
	lbeq	noshape
	cmp	#12
	beq	noshape
	cmp	#1
	beq	noshape
	cmp	#2
	beq	noshape
	cmp	#3
	beq	noshape
	cmp	#4
	beq	noshape
	cmp	#20
	beq	noshape
	cmp	#21
	beq	noshape
	cmp	#6
	beq	noshape
	cmp	#7
	beq	noshape
	cmp	#5
	beq	target
	cmp	#14
	beq	xdashhair
	lda	#2								;otherwise, load position #2 and the a_wing shape
	sta	foxy_ptr
	a16
	lda	#a_wing
	sta	foxy_shape
	bra	noshape
	
xdashhair
	a16
	lda	nocrosshairpls
	cmp	#2
	bne	noshapel
	lda	currxhair
	asl	a
	tax
	stx	foxy_ptr
	lda.l	xhairlist,x
	sta	foxy_shape
noshapel
	lda	#650
	sta	currsize
	lda	#250
	sta.l	m_bigz
	bra	noshape
target
	ldx	#0
	stx	foxy_ptr
	a16
	lda.l	targetlist,x
	sta	foxy_shape
	lda	#650
	sta	currsize
	lda	#350
	sta.l	m_bigz
noshape
	a8

	jsl	setcharmapfox_l
	a8
	jsl	bgtime
	decvramnotrans		0,vobj_base,fobjccr,4*k					;blank stuff
	decclear
;-------------------------------------------;more continue stuff below up to .self
	lda	#$80
	sta	vmainc
	lda	stopcounting
	bne	.nocreditstuff
	a16
	lda	#vsc_base2+32*24+29
	sta	vmaddl
	lda	credits
	clc
	adc	#((vchr_logback-vchr_physback)/16+$8a)!(5<<10)!(1<<13)
	sta	vmdatal
	a8
.nocreditstuff

	jsl	clronehalf_l
	jsl	clrotherhalf_l
	jsl	clearsprites_l
	jsl	fox_sprites_l
	jsl	dma_sprites_l

	ldx		vmap2
	dmaxvram	0,(bitmapbase+bitmap1),gametranlen1+gametranlen2

	setdepth	night
	set_zdepthtable	normal

; set inidisp position
	lda	#127
	sta.l	xinidisp1-1
	lda	#190-127-5
	sta.l	xinidisp2-1
	lda	#5
	sta.l	xinidisp1a-1

	stz	bg2vofs
	stz	bg2vofs
	lda	stopcounting
	bne	.nozerohofs
	stz	bg2hofs
	stz	bg2hofs
.nozerohofs
;	lda	#2

	i16
	lda	#hdmaf_inidisp+hdmaf_win
	sta	hdmaen_gc
	sta	hdmaen

	lda	stopcounting
	lbne	.pregame

.donegame
	lda	#1
	sta	bgmode		; mode 1
	jmp	gohere
.xdonegame
	lda	#%00100010
	sta	bgmode	
	stz	gamemode
	lda	#1+2+16
	sta	tm

	stz	bg3sc
	stz	bg3hofs
	stz	bg3hofs
	stz	bg3vofs
	stz	bg3vofs
	lda	#bg2offsets>>8	; set bg2 offsets
	sta	bg3sc
	lda	#%11100000
	sta	bg3hofs
	stz	bg3vofs

	stz	bg2vofs
	stz	bg2vofs

	stz	bg3scrollflag
	stz	flashtunnelon

;	lda	#1+2+16
;	sta	tm
	stz	ts
	lda	#0
	setinidisp1
	lda	stopcounting
	cmp	#10
	bmi	.skipout
	waitdma	240
	lda	#2
	sta	hdmaen
	waitdma	150
	waitdma	140
	enable
	bra	.noskipout
.skipout
	lda	#2
	sta	hdmaen
	enable
.noskipout
	jsl	foxytrans2_l
	jsl	foxytrans2_l
	lda	#200
	sta	$2110
	stz	$2110
	lda	pgbg
	cmp	#21
	beq	.lower
	cmp	#35
	beq	.lower
	cmp	#27
	beq	.lower
	cmp	#30
	beq	.higher
	cmp	#28
	beq	.higher
	cmp	#31
	beq	.evenlower
	cmp	#27
	beq	.evenlower
	cmp	#25
	beq	.evenlower
	cmp	#20
	beq	.evenlower
	cmp	#11
	beq	.lower
	lbne .donegame
.higher
	lda	#0
	sta	$2110
	stz	$2110
	jmp	.donegame
.lower
	lda	#230
	sta	$2110
	stz	$2110
	jmp	.donegame
.evenlower
	lda	#250
	sta	$2110
	stz	$2110
	jmp	.donegame

.pregame
	lda	pgbg
	cmp	#36
	beq	.16x16
	cmp	#7
	lbpl	.xdonegame
.16x16
	lda	#%00100010
	sta	bgmode	
	stz	gamemode
	lda	#1+2+16
	sta	tm

	stz	bg3sc
	stz	bg3hofs
	stz	bg3hofs
	stz	bg3vofs
	stz	bg3vofs
	lda	#bg2offsets>>8	; set bg2 offsets
	sta	bg3sc
	lda	#%11100000
	sta	bg3hofs
	stz	bg3vofs

	stz	bg2vofs
	stz	bg2vofs

	stz	bg3scrollflag
	stz	flashtunnelon

;	lda	#1+2+16
;	sta	tm
gohere
	stz	ts
	lda	#0
	setinidisp1
	lda	stopcounting
	cmp	#10
	bmi	.skipout
	waitdma	240
	lda	#2
	sta	hdmaen
	waitdma	150
	waitdma	140
	enable
	bra	.noskipout
.skipout
	lda	#2
	sta	hdmaen
	enable
.noskipout
	jsl	foxytrans2_l
	jsl	foxytrans2_l


	
	lda	#0
fadeloop
	pha
	waitdma	224
	pla
	inc	a
	setinidisp1
	cmp	#15
	bne	fadeloop

;---------------------------------------------------------------------	
self							;START OF MAIN LOOP
	jsl	random_l
	sta	temprand1
	jsl	random_l
	sta	temprand2
	jsl	random_l
	sta	temprand3
	jsl	random_l
	sta	temprand4
	jsl	foxytrans_l	
self2
	a8
	lda	stopcounting			;
	cmp	#1
	lbeq	notselect2
	cmp	#2
	lbeq	notselect2
	cmp	#3
	lbeq	notselect2
	cmp	#4
	lbeq	notselect2
	cmp	#20
	lbeq	notselect2
	cmp	#21
	lbeq	notselect2
	cmp	#5
	lbeq	notselect2
	cmp	#6
	lbeq	notselect2
	cmp	#7
	lbeq	notselect2
	cmp	#8						;
	lbeq	notselect2			;if we are in pre-game menu, skip all of these controls
	cmp	#14						;
	lbeq	notselect2			;if we are in pre-game menu, skip all of these controls
	lda	foxy_frame
	beq	noinc
	inc	foxy_frame
	cmp	#32
	lbeq	yahay
	jmp	notselect
noinc
	lda	bgmspeed
	beq	.nochange
	cmp	#1
	beq	.slow2
	cmp	#2
	beq	.fast2
.slow2
	startbgm	$f4
	bra	.nochange
.fast2
	startbgm	$f5
.nochange





nohilite

	
	a8
	lda	#1
	sta	foxy_flag
	bra	cont22
	
nocont2
	stz	foxy_flag
cont22
	TESTKEYDOWN	SELECT
	beq	notselect
	a8
	lda	stopcounting
	and	#15
	cmp	#1
	beq	notselect
	cmp	#2
	beq	notselect
	cmp	#3
	beq	notselect
	cmp	#4
	beq	notselect
	cmp	#20
	beq	notselect
	cmp	#21
	beq	notselect
	cmp	#5
	beq	notselect
	cmp	#6
	beq	notselect
	cmp	#7
	beq	notselect
	cmp	#8
	bpl	notselect
	cmp	#14
	bpl	notselect
	lda.l	lastselected
	bne	notselect2
	lda	foxy_option
	eor	#255
	sta	foxy_option
	trigse	se_cursor

	lda	#1
	bra	setit

notselect
	lda	#0
setit
	sta.l	lastselected
notselect2		;--------------------------;done with those controls
	a8
	lda	stopcounting
	cmp	#10					
	lbeq	models					;if we are in model test mode, jump to model controls
	cmp	#12					
	lbeq	models					;if we are in model test mode, jump to model controls
	cmp	#14
	lbeq	xhairshiz
	cmp	#8
	lbeq	specialmenu		;if we are in the pre-game menu, jump down to .specialmenu
	cmp	#9
	lbeq	specialmenupg2		;if we are in the pre-game menu, jump down to .specialmenu	
	cmp	#3
	lbeq	thanksok
	cmp	#4
	lbeq	bgmtestmenu
	cmp	#20
	lbeq	fpsmenu
	cmp	#21
	lbeq	configmenu
	cmp	#5
	lbeq	calibrationok
	cmp	#6
	lbeq	ntttestmenu
	cmp	#7
	lbeq	multitaptestok
	cmp	#1
	lbeq	shipselectmenu
	cmp	#2
	lbeq	specialmenupg3
	;standard controls for continue screen
	TESTKEYDOWN	LEFT
	beq	noleft
	inc	foxy_ya
noleft

	TESTKEYDOWN	RIGHT
	beq	noright
	dec	foxy_ya
noright
	TESTKEYDOWN	UP
	beq	noup
	inc	foxy_xa
noup
	TESTKEYDOWN	DOWN
	beq	nodown
	dec	foxy_xa
nodown
	jmp	regular

calibrationok
	jsl	calibrationmenu
	jmp	self

thanksok
	jsl	thanksmenu
	jmp	self

multitaptestok
	jsl	multitaptestmenu
	jmp	self

xhairshiz
	jsl	xhairmenu
	jmp	self

models			;------------------------------------------------
	a8i16
	jsl	scrollthebg
	TESTKEYDOWN	SELECT			;instructions
	lbeq	.noselect
	lda	#0
	sta.l		m_clrbitmaps
	settext	0,0
	showtext	mtinstruct1
	settext	0,1
	showtext	mtinstruct2
	settext	0,3
	showtext	mtinstruct3
	settext	0,4
	showtext	mtinstruct4
	settext	0,6
	showtext	mtinstruct5
	settext	0,7
	showtext	mtinstruct6
	settext	0,9
	showtext	mtinstruct7
	settext	0,10
	showtext	mtinstruct8
	settext	0,12
	showtext	mtinstruct14
	settext	0,13
	showtext	mtinstruct15
	settext	0,15
	showtext	mtinstruct9
	settext	0,17
	showtext	mtinstruct10
	settext	0,18
	showtext	mtinstruct11
	settext	0,20
	showtext	mtinstruct12
	settext	0,21
	showtext	mtinstruct13
	a8
	jmp	self
.noselect
	TESTKEYDOWN	B
	bne	noresetleftb
	stz	ldown
noresetleftb

	TESTKEYDOWN	Y
	bne	noresetrighty
	stz	rdown
noresetrighty

	lda	ldown
	bne	noleft2
	TESTKEYDOWN	B
	beq	noleft2
	bra	godown
noleft2
	lda	rdown
	bne	noright2
	TESTKEYDOWN	Y
	beq	noright2
	bra	goup
noright2
	bra	lefttime
godown
	lda	#1
	sta	ldown
	ldx	foxy_ptr
	dex
	dex
	bmi	reset
	beq	reset
	bra	goon
reset
	ldx	#shiptot*2			;last model  (add 2 for every new model added)
	bra	goon
zero
	ldx	#2
	bra	goon

goup
	lda	#1
	sta	rdown
	ldx	foxy_ptr
	inx
	inx
goon
	a16
	cpx	#(shiptot*2)+1			;last model number +1
	bpl	zero
	lda.l	shapeslist,x
	bne	ok
	lda	#a_wing
	ldx	#2
ok
	sta	foxy_shape
	stx	foxy_ptr

lefttime

;--------------------
	a8
	lda	mousemode
	beq	.nomove
	lda	mouse_sw1
	cmp	#1
	beq	.xitup
	
.nomove
	a8
	TESTKEYDOWN	X,cont0l		;while holding X:
	lbeq	.nox
.xitup
	TESTKEYDOWN	A,cont0l		
	beq	.nonameswap
	
	a16
	lda	trig0
	bit	#pad_a
	beq		.nonameswap
	a8
	
	turnonoff	cockpitmode

.nonameswap
;centering ship--------


	a8
	lda	mousemode
	lbeq	.nomouse22			;don't do any mouse stuff
	lda	mouse_x1
	lbeq	.noleftrightmouse	;not left or right
	and	#%10000000
	beq	.leftmouse22
	bra		.rightmouse22

.leftmouse22
	lda	mouse_x1
	and	#%01111111
	cmp	#4
	bmi	.slower22
	cmp	#8
	bmi	.slow22
	cmp	#12
	bmi	.fast22
	cmp	#16
	bmi	.faster22
	bra	.fastest22

.slower22
	lda.l	m_vanishx
	clc
	adc	#3
	sta.l	m_vanishx
	jmp	.noleftrightmouse

.slow22
	lda.l	m_vanishx
	clc
	adc	#5
	sta.l	m_vanishx
	bra	.noleftrightmouse

.fast22
	lda.l	m_vanishx
	clc
	adc	#8
	sta.l	m_vanishx
	bra	.noleftrightmouse

.faster22
	lda.l	m_vanishx
	clc
	adc	#12
	sta.l	m_vanishx
	bra	.noleftrightmouse

.fastest22
	lda.l	m_vanishx
	clc
	adc	#15
	sta.l	m_vanishx
	bra	.noleftrightmouse




.rightmouse22
	lda	mouse_x1
	and	#%01111111
	cmp	#4
	bmi	.slower23
	cmp	#8
	bmi	.slow23
	cmp	#12
	bmi	.fast23
	cmp	#16
	bmi	.faster23
	bra	.fastest23


.slower23
	lda.l	m_vanishx
	sec
	sbc	#3
	sta.l	m_vanishx
	bra	.noleftrightmouse

.slow23
	lda.l	m_vanishx
	sec
	sbc	#5
	sta.l	m_vanishx
	bra	.noleftrightmouse

.fast23
	lda.l	m_vanishx
	sec
	sbc	#8
	sta.l	m_vanishx
	bra	.noleftrightmouse

.faster23
	lda.l	m_vanishx
	sec
	sbc	#12
	sta.l	m_vanishx
	bra	.noleftrightmouse

.fastest23
	lda.l	m_vanishx
	sec
	sbc	#15
	sta.l	m_vanishx
	bra	.noleftrightmouse



.noleftrightmouse
	lda	mouse_y1
	lbeq	.nomouse22
	and	#%10000000
	beq	.upmouse22
	bra	.downmouse22
	
.upmouse22
	lda	mouse_y1
	and	#%01111111
	cmp	#4
	bmi	.slower31
	cmp	#8
	bmi	.slow31
	cmp	#12
	bmi	.fast31
	cmp	#16
	bmi	.faster31
	bra	.fastest31

.slower31
	lda.l	m_vanishy
	clc
	adc	#3
	sta.l	m_vanishy
	jmp	.nomouse22
.slow31
	lda.l	m_vanishy
	clc
	adc	#5
	sta.l	m_vanishy
	bra	.nomouse22
.fast31
	lda.l	m_vanishy
	clc
	adc	#8
	sta.l	m_vanishy
	bra	.nomouse22
.faster31
	lda.l	m_vanishy
	clc
	adc	#12
	sta.l	m_vanishy
	bra	.nomouse22
.fastest31
	lda.l	m_vanishy
	clc
	adc	#15
	sta.l	m_vanishy
	bra	.nomouse22

.downmouse22
	lda	mouse_y1
	and	#%01111111
	cmp	#4
	bmi	.slower32
	cmp	#8
	bmi	.slow32
	cmp	#12
	bmi	.fast32
	cmp	#16
	bmi	.faster32
	bra	.fastest32	

.slower32
	lda.l	m_vanishy
	sec
	sbc	#3
	sta.l	m_vanishy
	bra	.nomouse22
.slow32
	lda.l	m_vanishy
	sec
	sbc	#5
	sta.l	m_vanishy
	bra	.nomouse22
.fast32
	lda.l	m_vanishy
	sec
	sbc	#8
	sta.l	m_vanishy
	bra	.nomouse22
.faster32
	lda.l	m_vanishy
	sec
	sbc	#12
	sta.l	m_vanishy
	bra	.nomouse22
.fastest32
	lda.l	m_vanishy
	sec
	sbc	#15
	sta.l	m_vanishy
	bra	.nomouse22

.nomouse22
	a8
	TESTKEYDOWN	UP
	beq	.noworldup
	lda.l	m_vanishy
	sec
	sbc	#5
	sta.l	m_vanishy
.noworldup
	TESTKEYDOWN	DOWN
	beq	.noworlddown
	lda.l	m_vanishy
	clc
	adc	#5
	sta.l	m_vanishy	
.noworlddown
	TESTKEYDOWN	LEFT
	beq	.noworldleft
	lda.l	m_vanishx
	sec
	sbc	#5
	sta.l	m_vanishx
.noworldleft
	TESTKEYDOWN	RIGHT
	beq	.noworldright
	lda.l	m_vanishx
	clc
	adc	#5
	sta.l	m_vanishx
.noworldright
	jmp	nodown
;-----------------------------------

.getout
;	lda.l	m_colframe
;	and	#15
;	settext	0,1
;	a8
;	printd
	bra	.noanim
.nox
	jsl	doanimation
.noanim

	TESTKEYDOWN	X,cont0l
	lbne	nodown



	a8
	TESTKEYDOWN	LEFT
	beq	noleft1
	lda.l	m_roty
	clc
	adc	#5
	sta.l	m_roty
noleft1




	a8
	lda	mousemode
	lbeq	.nomouse
	lda	mouse_x1
	lbeq	.nomouse
	and	#%10000000
	beq	.leftmouse
	bra		.rightmouse

.rightmouse
	lda	mouse_x1
	and	#%01111111
	cmp	#4
	bmi	.slower
	cmp	#8
	bmi	.slow
	cmp	#12
	bmi	.fast
	cmp	#16
	bmi	.faster
	bra	.fastest

.slower
	lda.l	m_roty
	clc
	adc	#3
	sta.l	m_roty
	jmp	.nomouse

.slow
	lda.l	m_roty
	clc
	adc	#5
	sta.l	m_roty
	bra	.nomouse

.fast
	lda.l	m_roty
	clc
	adc	#8
	sta.l	m_roty
	bra	.nomouse

.faster
	lda.l	m_roty
	clc
	adc	#12
	sta.l	m_roty
	bra	.nomouse


.fastest
	lda.l	m_roty
	clc
	adc	#15
	sta.l	m_roty
	bra	.nomouse


.leftmouse
	lda	mouse_x1
	cmp	#4
	bmi	.slower2
	cmp	#8
	bmi	.slow2
	cmp	#12
	bmi	.fast2
	cmp	#16
	bmi	.faster2
	bra	.fastest2

.slower2
	lda.l	m_roty
	sec
	sbc	#3
	sta.l	m_roty
	bra	.nomouse

.slow2
	lda.l	m_roty
	sec
	sbc	#5
	sta.l	m_roty
	bra	.nomouse

.fast2
	lda.l	m_roty
	sec
	sbc	#8
	sta.l	m_roty
	bra	.nomouse

.faster2
	lda.l	m_roty
	sec
	sbc	#12
	sta.l	m_roty
	bra	.nomouse


.fastest2
	lda.l	m_roty
	sec
	sbc	#15
	sta.l	m_roty
	bra	.nomouse


.nomouse


	TESTKEYDOWN	RIGHT
	beq	noright1
	lda.l	m_roty
	sec
	sbc	#5
	sta.l	m_roty

noright1
	TESTKEYDOWN	UP
	beq	noup1
	lda.l	m_rotx
	clc
	adc	#5
	sta.l	m_rotx
noup1
	TESTKEYDOWN	DOWN
	beq	nodown1
	lda.l	m_rotx
	sec
	sbc	#5
	sta.l	m_rotx
nodown1

	a8
	lda	mousemode
	lbeq	.nomouse3
	lda	mouse_y1
	lbeq	.nomouse3
	and	#%10000000
	beq	.downmouse
	bra		.upmouse

.downmouse
	lda	mouse_y1
	and	#%01111111
	cmp	#4
	bmi	.slower3
	cmp	#8
	bmi	.slow3
	cmp	#12
	bmi	.fast3
	cmp	#16
	bmi	.faster3
	bra	.fastest3

.slower3
	lda.l	m_rotx
	clc
	adc	#3
	sta.l	m_rotx
	jmp	.nomouse3

.slow3
	lda.l	m_rotx
	clc
	adc	#5
	sta.l	m_rotx
	bra	.nomouse3

.fast3
	lda.l	m_rotx
	clc
	adc	#8
	sta.l	m_rotx
	bra	.nomouse3

.faster3
	lda.l	m_rotx
	clc
	adc	#12
	sta.l	m_rotx
	bra	.nomouse3

.fastest3
	lda.l	m_rotx
	clc
	adc	#15
	sta.l	m_rotx
	bra	.nomouse3

.upmouse
	lda	mouse_y1
	and	#%01111111
	cmp	#4
	bmi	.slower4
	cmp	#8
	bmi	.slow4
	cmp	#12
	bmi	.fast4
	cmp	#16
	bmi	.faster4
	bra	.fastest4

.slower4
	lda.l	m_rotx
	sec
	sbc	#3
	sta.l	m_rotx
	bra	.nomouse3

.slow4
	lda.l	m_rotx
	sec
	sbc	#5
	sta.l	m_rotx
	bra	.nomouse3

.fast4
	lda.l	m_rotx
	sec
	sbc	#8
	sta.l	m_rotx
	bra	.nomouse3

.faster4
	lda.l	m_rotx
	sec
	sbc	#12
	sta.l	m_rotx
	bra	.nomouse3

.fastest4
	lda.l	m_rotx
	sec
	sbc	#15
	sta.l	m_rotx
	bra	.nomouse3


.nomouse3
	TESTKEYDOWN	TLEFT,cont0l
	beq	nozoomup
	TESTKEYDOWN	TRIGHT,cont0l
	bne	resetposition


	a16
	lda.l	m_bigz
	sec
	sbc	#20
	cmp	#20
	bcc	nozoomup
	sta.l	m_bigz
nozoomup
	a8
	TESTKEYDOWN	TRIGHT,cont0l
	beq	nozoomout
	a16
	lda.l	m_bigz
	clc
	adc	#20
	cmp	#4500
	bcs	nozoomout
	sta.l	m_bigz
nozoomout
	a8
	TESTJOYPAD	start
	bne		noclearst
	stz	keyrdown

noclearst

	lda	keyrdown
	bne	doner
	a8
	TESTJOYPAD	start
	beq		doner
	a16
	lda	trig0
	bit	#pad_start
	beq		doner
	a16
	lda	#2
	sta	stopcounting
	lda	#2			;position of model test on page 3
	sta	menuselected
	stz	foxy_ptr
	stz	foxy_shape
	jmp	foxy_continue_l
	
resetposition
	a16
	jmp	foxy_continue_l
doner
;---------------------
	a8

	lda	mousemode
	beq	.nothing
	lda	mouse_sw1
	cmp	#2
	beq	.dothething
.nothing
	TESTKEYDOWN	A,cont0l
	beq		clrbitmaps1
.dothething
	lda		#0
	bra		dontclear1
clrbitmaps1
	lda		#1
dontclear1	sta.l		m_clrbitmaps

skipout
;------------------
	lda	cockpitmode
	bne	.notext
	
	ldx	foxy_ptr
	stz	textpt
	settext	0,1
	a16
	lda.l	shapeslist,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
;-------------------
.notext
	jmp	self


	a8
;----------------
	lda	weaponnumber
	cmp	#10
	beq	dontclr
	lda	#10
	sta	weaponnumber
	ldx	foxy_ptr
	stz	textpt
	settext	0,1
	a16
	lda.l	shapeslist,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
;-------------------
regular
	a8
dontclr
	TESTKEYDOWN	A,cont0l
	beq		clrbitmaps
	lda		#0
	bra		dontclear
clrbitmaps
	stz	weaponnumber
	lda		#1
dontclear	;sta.l		m_clrbitmaps



;	TESTJOYPAD	X
;	beq	notx
;	stz	foxy_xa
;	stz	foxy_ya
;	stz	foxy_za

	
	
notx

	TESTJOYPAD	START
	beq	.notstart
	a8
	lda	stopcounting
	cmp	#10
	beq	.notstart
	lda	foxy_option
	bne	.end
	lda	foxy_frame
	bne	.notstart
	dec	credits
	inc	foxy_frame
	trigse	$67
	startbgm	$f1
.notstart

	jmp	self
.end
	trigse		$10
	startbgm	$f1


	lda	#15
fadeloop3
	pha
	waitdma	224
	pla
	setinidisp1
	cmp	#15
	dec	a
	bpl	fadeloop3
end2
	jsl	setnoclash_l

	jml	restart
yahay
	a8
	lda	newgameplus
	and	#1
	bne	ngp2
	lda	#4
	sta	lives
	sta	livestwo
	sta	livesthree
	sta	livesfour
	sta	livesfive
	bra	done2
ngp2
	lda	#6
	sta	lives
	sta	livestwo
	sta	livesthree
	sta	livesfour
	sta	livesfive
done2
	jsl	playerstart_init_l

	lda	#15
fadeloop2
	pha
	waitdma	224
	pla
	setinidisp1
	cmp	#15
	dec	a
	bpl	fadeloop2

	jsl	setnoclash_l

	plb
	plp
	rtl

;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
	;			START SPECIAL MENU CODE
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------		
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				SPECIAL MENU CODE PAGE 1
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;---------------SPECIAL PRE-GAME MENU-----------------
specialmenu					;MenuSelected = 0 - God Mode
	stz	foxy_ptr				;MenuSelected = 1 - Random Fire Mode
	stz	foxy_shape				;MenuSelected = 2 - SNES Mini Mode
								;MenuSelected = 3 - Scored
								;MenuSelected = 4 - New Game+
	jsl	scrollthebg
;	bra	.donewithscroll

.donewithscroll
;-----------SPECIAL MENU TITLE-----------
	settext	6,0
	showtxt	menutitletext
.donentt		
;----------CHEATS-----------		
	settext	10,2
	showtxt	menucheatstext

;----------god mode----------	
	lda	menuselected
	bne	nohilite1

	TESTKEYDOWN	Y
	lbeq	.nogm

	jsl	checkgodmodecode
	jmp	noexit
.nogm	
	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1
	settext	0,4
	showtxt	menu1text

	stz	hilite
	stz	hilite+1
parentl	
	settext	23,4
	lda	secretgodmode
	lbeq	regulargm
	lda	#2
	sta	godmode
	onofftxt	godmode
	lda	#1
	sta	godmode
	jmp	donegmstuff
regulargm
	onofftxt	godmode
donegmstuff
;-------Random Fire----------
	lda	menuselected
	cmp	#1
	bne	nohilite3

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3	
	settext	0,5
	showtxt	menu3text

	stz	hilite
	stz	hilite+1
	settext	23,5
	onofftxt	randomfire
	
;-------Enemy Fire----------
	lda	menuselected
	cmp	#2
	bne	nohilite8

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite8	
	settext	0,6
	showtxt	menu8text

	stz	hilite
	stz	hilite+1
	settext	23,6
	offontxt	enemy_firing
	
;------GAME MODES---------------------

	settext	8,8
	showtxt	menumodestext	

;-------snes mini mode-------
	lda	menuselected
	cmp	#3
	bne	nohilite2

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite2
	
	settext	0,9
	showtxt	menu2text

	stz	hilite
	stz	hilite+1
	settext	23,9
	onofftxt	pepperskip



;-------Scored Mode----------
	lda	menuselected
	cmp	#4
	bne	nohilite4

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite4	
	settext	0,10
	showtxt	menu4text

	stz	hilite
	stz	hilite+1
	settext	23,10
	onofftxt	scored
;-------Newgame+----------
	lda	menuselected
	cmp	#5
	bne	nohilite5

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite5	
	settext	0,11
	showtxt	menu5text

	stz	hilite
	stz	hilite+1
	settext	23,11
	onofftxt	newgameplus

;-------Endurance----------
	lda	menuselected
	cmp	#6
	bne	nohilite6

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite6	
	settext	0,12
	showtxt	menu6text

	stz	hilite
	stz	hilite+1
	settext	23,12
	onofftxt	endurance	
	
	lda	#0
	sta.l		m_clrbitmaps
	
;-------Level Features----------
	lda	menuselected
	cmp	#7
	bne	nohilite9

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite9	
	settext	0,13
	showtxt	menu7text

	stz	hilite
	stz	hilite+1
	settext	23,13
	onofftxt	levelfeatures	
	
	
;-------2 Player Mode----------
	a8
	lda	multitapmode
	lbeq	normp2stuff
	a16
	lda	menuselected
	cmp	#8
	bne	nohilite10gfds

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite10gfds
	settext	0,14
	showtxt	numplayerstext
	; clear p2 custom ship as p2 in multitap mode corresponds to a 
	; different ship model
	stz	curr_ship2 ;;; p2 custom ship fix - part 2

	stz	hilite
	stz	hilite+1
	settext	23,14
	printvar	numplayers
	showtext	blankspace
	showtext	blankspace
	jmp	noneedforoff


normp2stuff
	; clear p2 custom ship as p2 in 2p mode corresponds to a 
	; different ship model
	stz	curr_ship2 ;;; p2 custom ship fix - part 3
	a16
	lda	menuselected
	cmp	#8
	bne	nohilite10

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite10
	settext	0,14
	showtxt	menu9text

	stz	hilite
	stz	hilite+1
	settext	23,14
	lda	playertwocpuactivated
	lbne	offwithit
	onofftxt	playertwoactivated	
	bra	noneedforoff
offwithit
	showtxt	offtext
noneedforoff

;-------2 Player CPU Mode----------
	lda	menuselected
	cmp	#9
	bne	nohilite15

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite15
	settext	0,15
	showtxt	menu12text

	stz	hilite
	stz	hilite+1

	settext	23,15
	onofftxtspcl	playertwocpuactivated	
	
	
;-------Mouse Mode----------
	lda	menuselected
	cmp	#10
	bne	nohilite10PPP

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite10PPP
	settext	0,16
	showtxt	mousetext

	stz	hilite
	stz	hilite+1
	settext	23,16
	onofftxt	mousemode


;-------Scope Mode----------
	lda	menuselected
	cmp	#11
	bne	nohilite10PPPg

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite10PPPg
	settext	0,17
	showtxt	scopetext

	stz	hilite
	stz	hilite+1
	settext	23,17
	onofftxt	scopemode

;----NTT PAD SUPPORT-----

	lda	menuselected
	cmp	#12
	bne	nohilite10PPPgyt

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite10PPPgyt
	settext	0,18
	showtxt	nttsupport

	stz	hilite
	stz	hilite+1
	settext	23,18
	onofftxt	nttmode


;----MULTITAP SUPPORT-----

	lda	menuselected
	cmp	#13
	bne	nohilite10PPPgytkl

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite10PPPgytkl
	settext	0,19
	showtxt	multitapsupporttext

	stz	hilite
	stz	hilite+1
	settext	23,19
	onofftxt	multitapmode



;---------NEXT PAGE------	
	lda	menuselected
	cmp	#14
	bne	nohilite1222

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222
	settext	4,21
	showtxt	menupagetext

	stz	hilite
	stz	hilite+1

	settext	11,21
	printvar	pagenumber


;---------PRESS START TO EXIT TEXT------	
	lda	menuselected
	cmp	#15
	bne	nohilite12222

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222
	settext	4,22
	showtxt	menustartgametext

	stz	hilite
	stz	hilite+1
	

;---------SELECT-----------------
	
	TESTKEYDOWN	SELECT
	beq	.noselect1
	lda	trig0
	bit	#pad_SELECT
	beq	.noselect1
	jmp	select1


.noselect1
;---------DOWN-----------------
;	TESTKEYDOWN	X,cont0l
;	bne	nodownn

	TESTKEYDOWN	DOWN
	beq	nodownn
	lda	trig0
	bit	#pad_down
	beq	nodownn

select1
	a8
	trigse	9
	a16
	lda	menuselected
	cmp	#15						;Max number of items on menu
	bpl	top
	inc	menuselected
	bra	downpt2
top
	stz	menuselected
downpt2

nodownn


;----------UP--------------------
;	TESTKEYDOWN	X,cont0l
;	bne	noupp
	TESTKEYDOWN	UP
	beq	noupp
	lda	trig0
	bit	#pad_up
	beq	noupp
	a8
	trigse	9
	a16
	lda	menuselected
	beq	bottom				;Don't go lower than 0, go to the bottom
	dec	menuselected
	bra	uppart2
bottom
	lda	#15				;Last item on list (same as above)
	sta	menuselected
uppart2

noupp
;-------------------------------
;	TESTKEYDOWN	SELECT
;	lbeq	.noonpl
;	lda	trig0
;	bit	#pad_SELECT
;	lbeq	.noonpl	
;	lda	menuselected
;	cmp	#10
;	bne	.noonpl

;	lda	#1
;	;sta.l		m_clrbitmaps
;	sta.l		m_playertwoactivated
;	sta			playertwoactivated
;	inc	playertwocpuactivated
;	lda	playertwocpuactivated
;	cmp	#4
;	bpl	.zeroout
;	jmp	noleftt
;.zeroout
;	stz	playertwocpuactivated
;	stz	playertwoactivated
;	lda	#0
;	sta.l		m_playertwoactivated
;	jmp	noleftt
;----------RIGHT--------------------
.noonpl
	TESTKEYDOWN	RIGHT
	lbeq	norightt
	lda	trig0
	bit	#pad_right
	lbeq	norightt
	a8
	trigse	10
	a16
	lda	menuselected
	asl	a
	tax
	jmp	(.tab&WM,x)
.tab
	dw	a0&wm
	dw	a1&wm
	dw	a2&wm
	dw	a3&wm
	dw	a4&wm
	dw	a5&wm
	dw	a6&wm
	dw	a7&wm
	dw	a8&wm
	dw	a9&wm
	dw	a10&wm
	dw	a11&wm
	dw	a12&wm
	dw	a13&wm
	dw	a14&wm
	dw	norightt&WM
a0
	lda	newgameplus
	lbne	doneright				;no change if new game plus on
	turnonoff	godmode
	jmp	doneright
	
	
a1
	lda	newgameplus
	lbne	doneright				;no change if new game plus on
	turnonoff	randomfire
	jmp	doneright

a2
	lda	newgameplus
	lbne	doneright				;no change if new game plus on
	lda	enemy_firing
	beq	.turnenemy_firingon
	stz	enemy_firing
	jmp	doneright
.turnenemy_firingon
	lda	#1
	sta	enemy_firing
	jmp	doneright
a3
	turnonoff	pepperskip
	jmp	doneright
	
a4
	turnonoff	scored
	jmp	doneright
	
a5
	lda	newgameplus
	and	#1
	beq	.turnngpon
	stz	newgameplus
	jmp	doneright
.turnngpon
	lda	#1
	sta	newgameplus
	sta	enemy_firing			;enable enemy firing
	lda	secretgodmode
	bne	.nogodoffman
	stz	godmode					;disable godmode
.nogodoffman
	stz	randomfire				;disable randomfire
	jmp	doneright

a6
	turnonoff	endurance
	jmp	doneright	
	
a7
	turnonoff	levelfeatures
	jmp	doneright	
	
a8
	a8
	lda	multitapmode
	beq	rega8
	a16
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	stz	playertwocpuactivated
	inc	numplayers
	lda	numplayers
	cmp	#6
	beq	do1player
	jmp	doneright
	
do1player
	lda	#1
	sta	numplayers
	jmp	doneright
	
rega8
	a16
	lda	playertwocpuactivated
	bne	.cpuoffp2on
	lda	playertwoactivated
	beq	.turnplayertwoactivatedon
	lda	#0
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	lda	#1
	sta	numplayers
	jmp	doneright
.cpuoffp2on
	stz	playertwocpuactivated
	lda	#1
	sta	playertwoactivated
	jmp	doneright

.turnplayertwoactivatedon
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	lda	#2
	sta	numplayers
	stz	playertwocpuactivated
	stz	mousemode
	jmp	doneright	

a9
	a8
	lda	multitapmode
	lbne	doneright
	a16
	lda	playertwocpuactivated
	and	#3
	beq	.turnplayertwocpuactivatedon
	cmp	#1
	beq	.p2plus
	cmp	#2
	beq	.p4
	stz	playertwocpuactivated
	stz	playertwoactivated
	lda	#0
	sta.l	m_playertwoactivated
	jmp	doneright
.turnplayertwocpuactivatedon
	lda	#1
	sta	playertwoactivated
	sta	playertwocpuactivated
	sta.l	m_playertwoactivated
	jmp	doneright	
.p2plus
	lda	#2
	sta	playertwocpuactivated
	jmp	doneright	
.p4
	lda	#3
	sta	playertwocpuactivated
	jmp	doneright	

a10
	turnonoff	mousemode
	turnonoff	mousemodetemp
	lda	mousemode
	lbeq	doneright
	stz	scopemode
	stz	multitapmode
	stz	playertwocpuactivated
	stz	playertwoactivated
	lda	#0
	sta.l	m_playertwoactivated
	jmp	doneright

a11
	turnonoff	scopemode
	lda	scopemode
	beq	doneright
	stz	mousemode
	stz	multitapmode
	jmp	doneright
a12
	turnonoff	nttmode
	jmp	doneright


a13
	turnonoff	multitapmode
	lda	multitapmode
	beq	.ok
	lda	#3
	sta	numplayers
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	stz	playertwocpuactivated
	stz	mousemode
	stz	scopemode
	jmp	doneright
.ok
	lda	#0
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	jmp	doneright

a14
	lda	#9
	sta	stopcounting
	lda	#18				;POSITION of PAGE on page 2
	sta	menuselected
	lda	#2
	sta	pagenumber
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l


doneright

norightt
;----------LEFT--------------------
	TESTKEYDOWN	LEFT
	lbeq	noleftt
	lda	trig0
	bit	#pad_left
	lbeq	noleftt
	a8
	trigse	10
	a16
	lda	menuselected
	asl	a
	tax
	jmp	(.tab&WM,x)
.tab
	dw	b01&wm
	dw	b1x&wm
	dw	b21&wm
	dw	b31&wm
	dw	b41&wm
	dw	b51&wm
	dw	b61&wm
	dw	b71&wm
	dw	b81&wm
	dw	b91&wm
	dw	b101&wm
	dw	b111&wm
	dw	b121&wm
	dw	b131&wm
	dw	b141&wm
	dw	noleftt&WM
b01
	lda	newgameplus
	lbne	doneleft				;no change if new game plus on
	turnonoff	godmode
	jmp	doneleft
	
b1x
	lda	newgameplus
	lbne	doneleft				;no change if new game plus on
	turnonoff	randomfire
	jmp	doneleft

b21
	lda	newgameplus
	lbne	doneleft				;no change if new game plus on
	turnonoff	enemy_firing
	jmp	doneleft

b31
	turnonoff	pepperskip
	jmp	doneleft	
b41
	turnonoff	scored
	jmp	doneleft
	
b51
	lda	newgameplus
	and	#1
	beq	.turnngpon1
	stz	newgameplus
	jmp	doneleft
.turnngpon1
	lda	#1
	sta	newgameplus
	sta	enemy_firing			;enable enemy firing
	lda	secretgodmode
	bne	.noturnoffgodagain
	stz	godmode					;disable godmode
.noturnoffgodagain
	stz	randomfire				;disable randomfire
	jmp	doneleft
	
b61
	turnonoff	endurance
	jmp	doneleft	
	
b71
	turnonoff	levelfeatures
	jmp	doneleft
	
b81
	a8
	lda	multitapmode
	beq	regb81
	a16
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	stz	playertwocpuactivated
	dec	numplayers
	lda	numplayers
	beq	do5player
	jmp	doneleft
	
do5player
	lda	#5
	sta	numplayers
	jmp	doneleft
	
regb81
	a16
	lda	playertwocpuactivated
	bne	.cpuoffp2on
	lda	playertwoactivated
	and	#1
	beq	.turnplayertwoactivatedon2
	stz	playertwoactivated
	lda	#0
	sta.l	m_playertwoactivated
	lda	#1
	sta	numplayers
	jmp	doneleft
.cpuoffp2on
	stz	playertwocpuactivated
	lda	#1
	sta	playertwoactivated
	jmp	doneleft
.turnplayertwoactivatedon2
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	lda	#2
	sta	numplayers
	stz	playertwocpuactivated
	stz	mousemode
	stz	nttmode
	jmp	doneleft

b91
	lda	multitapmode
	lbne	doneleft
	lda	playertwocpuactivated
	and	#3
	beq	.p42
	cmp	#3
	beq	.p2plus2
	cmp	#2
	beq	.turnplayertwocpuactivatedon2
	stz	playertwocpuactivated
	stz	playertwoactivated
	lda	#0
	sta.l	m_playertwoactivated
	jmp	doneleft
.turnplayertwocpuactivatedon2
	lda	#1
	sta	playertwocpuactivated
	jmp	doneleft	
.p2plus2
	lda	#2
	sta	playertwocpuactivated
	jmp	doneleft	
.p42
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	lda	#3
	sta	playertwocpuactivated

	jmp	doneleft	
b101
	turnonoff	mousemode
	turnonoff	mousemodetemp
	lda	mousemode
	lbeq	doneleft
	stz	scopemode
	stz	multitapmode
	jmp	doneleft
b111
	turnonoff	scopemode
	lda	scopemode
	beq	doneleft
	stz	mousemode
	stz	multitapmode
	stz	playertwocpuactivated
	stz	playertwoactivated
	lda	#0
	sta.l	m_playertwoactivated
	jmp	doneleft
	
b121
	turnonoff	nttmode
	jmp	doneleft

b131
	turnonoff	multitapmode
	lda	multitapmode
	beq	.ok321
	stz	mousemode
	stz	scopemode
	lda	#3
	sta	numplayers
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	stz	playertwocpuactivated
.ok321
	lda	#0
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	jmp	doneleft

b141
	lda	#2
	sta	stopcounting
	lda	#3					;page number
	sta	pagenumber			
	lda	#18					;position of PAGE on page 3
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l


doneleft	


noleftt

;---------L Trigger-------------------
	TESTJOYPAD	TLEFT,cont0l
	beq		notriggerleft
	lda	trig0
	bit	#pad_tleft
	beq		notriggerleft
	lda	#2
	sta	stopcounting
	lda	#3					;page number
	sta	pagenumber			
	lda	#18					;position of PAGE on page 3
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
notriggerleft

;---------R Trigger-------------------
	TESTJOYPAD	TRIGHT,cont0l
	beq		notriggerright
	lda	trig0
	bit	#pad_tright
	beq		notriggerright

	lda	#9
	sta	stopcounting
	lda	#18				;POSITION of PAGE on page 2
	sta	menuselected
	lda	#2
	sta	pagenumber
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

notriggerright

;---------start - exit-------------------
	TESTJOYPAD	START
	beq		noexit
	lda	trig0
	bit	#pad_start
	beq		noexit
	a8
	lda	scopemode
	beq	.noscope
	lda	calibrated
	bne	.noscope
	a8
	lda	pgbg
	sta	pgbgtemp
	lda	#99
	sta	pgbg
	lda	#5
	sta	stopcounting			;set STOPCOUNTING to a value of 5
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
.noscopeforyou
	jmp	foxy_continue_l
	
.noscope
	lda	menuselected
	cmp	#15
	bne	noexit
	stz	stopcounting
	jml	restart
	
noexit
;	stz	cont0
;	stz	contl0
;	stz	cont0l
;	stz	contl0l
	jmp	self

;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;			END SPECIAL MENU CODE PAGE 1
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	

;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				SPECIAL MENU CODE PAGE 2
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
	
specialmenupg2					;MenuSelected = 0 - God Mode
	stz	foxy_ptr				;MenuSelected = 1 - Random Fire Mode
	stz	foxy_shape				;MenuSelected = 2 - SNES Mini Mode
								;MenuSelected = 3 - Scored
								;MenuSelected = 4 - New Game+
;-------------------------------------------------
	jsl	scrollthebg
;-----------SPECIAL MENU TITLE-----------
	settext	6,0
llllaaabbbeeelll
	showtxt	menutitletext

;--------------MODS---------	
	settext	11,2
	showtxt	menumodstext	
	

;-------Rainbow Fire----------
	lda	menuselected
	cmp	#0
	bne	nohilite11

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite11
	settext	0,3
	showtxt	menu10text

	stz	hilite
	stz	hilite+1
	settext	23,3
klabael
	onofftxt	rainbowlaser
	
	lda	#0
	sta.l		m_clrbitmaps	

;-------Huge Models----------
	lda	menuselected
	cmp	#1
	bne	nohilite12

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12
	settext	0,4
	showtxt	menu11text

	stz	hilite
	stz	hilite+1
	settext	23,4
	lda	bigheadmode
	beq	normal
	cmp	#1
	beq	bigger
	cmp	#2
	beq	biggest
normal
	showtxt	menunormaltext
	bra	donemodel
bigger
	showtxt	menubiggertext
	bra	donemodel
biggest
	showtxt	menubiggesttext
	;bra	donemodel
	
	
donemodel	

;-------WIRE----------
	lda	menuselected
	cmp	#2
	bne	nohilite111

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111
	settext	0,5
labellabellabel
	showtxt	menufonttext

	stz	hilite
	stz	hilite+1
	settext	23,5
	onofftext	wiremode
	

;-------Skip Scramble----------
	lda	menuselected
	cmp	#3
	bne	nohilite111xx

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx
	settext	0,6
heresastupidlabel
	showtxt	menuscrambletext

	stz	hilite
	stz	hilite+1

	settext	23,6
	onofftxt	skipscramble


;-------Dark Mode----------
	lda	menuselected
	cmp	#4
	bne	nohilite111xx1

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx1
	settext	0,7
parentofaparent
	showtxt	menudarkmodetext
	stz	hilite
	stz	hilite+1

	settext	23,7
anotherparentforyou
	onofftxt	darkmode


;-------Palette Change----------
	lda	menuselected
	cmp	#5
	bne	nohilite111xx11

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx11
	settext	0,8
	showtxt	menupalettetext

	stz	hilite
	stz	hilite+1

	settext	18,8
	a8
	lda	palnumber
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.gotopal&wm,x)
.gotopal
	dw	palnum0&WM
	dw	palnum1&WM
	dw	palnum2&WM
	dw	palnum3&WM
	dw	palnum4&WM
	dw	palnum5&WM
	dw	palnum6&WM
	dw	palnum7&WM
	dw	palnum8&WM
	dw	palnum9&WM
	dw	palnum10&WM
	dw	palnum11&WM
	dw	palnum12&WM

palnum0
	showtxt	menudefaultmodetext
	jmp	nomorepal
	
palnum1
	showtxt	menuretro1modetext
	jmp	nomorepal

palnum2
	showtxt	menuretro2modetext
	jmp	nomorepal

palnum3
	showtxt	menumistmodetext
	jmp	nomorepal

palnum4
	showtxt	menugreenmodetext
	jmp	nomorepal

palnum5
	showtxt	menurainbowmodetext
	jmp	nomorepal

palnum6
	showtxt	menurainbowkmodetext
	jmp	nomorepal

palnum7
	showtxt	menucyanscmodetext
	jmp	nomorepal

palnum8
	showtxt	menubluescmodetext
	jmp	nomorepal

palnum9
	showtxt	menugreenscmodetext
	jmp	nomorepal

palnum10
	showtxt	menuwhitescmodetext
	jmp	nomorepal

palnum11
	showtxt	menublackscmodetext
	jmp	nomorepal
	
palnum12
	showtxt	starglidtext
	jmp	nomorepal
	
nomorepal

		

;-------No Backgrounds Mode----------
	lda	menuselected
	cmp	#6
	bne	nohilite111xx1114a

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx1114a
	settext	0,9
	showtxt	nobackgroundstext

	stz	hilite
	stz	hilite+1

	settext	23,9
	onofftxt	nobgmode
	
;-------No Dots Mode----------
	lda	menuselected
	cmp	#7
	bne	nohilite111xx111

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx111
	settext	0,10
	showtxt	menunodotstext

	stz	hilite
	stz	hilite+1

	settext	23,10
	a8
	lda	dotsstars
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.naxt&wm,x)
.naxt
	dw	dson&WM
	dw	dotsoff&WM
	dw	starsoff&WM
	dw	dsbothoff&WM

dotsoff
	a16
	showtext	dotstext
	bra	doneds	
starsoff
	a16
	showtext	starstext
	bra	doneds	
dsbothoff
	a16
	showtext	bothtext
	bra	doneds

dson
	a16
	showtext	offtext

doneds
;-------Player Col Boxes----------
	lda	menuselected
	cmp	#8
	bne	nohilite111xx111321

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx111321
	settext	0,11
	showtxt	playercolboxtext

	stz	hilite
	stz	hilite+1

	settext	23,11
	onofftxt	showcolbox
	
;-------NAN MODE!!----------
	lda	menuselected
	cmp	#9
	bne	nohilite111xx111321r

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xx111321r
	settext	0,12
	showtxt	nanmodetext

	stz	hilite
	stz	hilite+1

	settext	23,12
	printvar	nanmode
	
	
	
;-------Disable BGM----------
	lda	menuselected
	cmp	#10
	bne	nohilite111xxxx

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxx
	settext	0,13
	showtxt	menudisablebgmtext

	stz	hilite
	stz	hilite+1

	settext	23,13
anotherparent
	a8
	lda	bgmsfx
	lbeq	.bgsfxon
	cmp	#1
	lbeq	.sfxoff
	cmp	#2
	lbeq	.bgmoff
	a16
	showtext	bothtext
	jmp	.doneshow
.sfxoff
	a16
	showtext	sfxofftext
	bra	.doneshow
.bgmoff
	a16
	showtext	bgmofftext
	bra	.doneshow
.bgsfxon
	a16
	showtext	offtext

.doneshow
	
;-------BGM SPEED----------
	lda	menuselected
	cmp	#11
	bne	nohilite111xxxxy

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy
	settext	0,14
	showtxt	bgmspeedtext

	stz	hilite
	stz	hilite+1

	settext	23,14
anotherparentt
	lda	bgmspeed
	beq	.orig
	cmp	#1
	beq	.slow
	cmp	#2
	beq	.fast
	bra	.orig
.orig
	showtxt	menuorigtext
	bra	nomoretxt
.slow
	showtxt	slowtext
	bra	nomoretxt
.fast
	showtxt	fasttext

nomoretxt

;-------SUPERFX 2----------
	lda	menuselected
	cmp	#12
	bne	nohilite111xxxxy444

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444
	settext	0,15
	showtxt	superfx2text

	stz	hilite
	stz	hilite+1

	settext	23,15
anotherparentt444
	onofftext	superfx2
	

;-------bounce death mode----------
	lda	menuselected
	cmp	#13
	bne	nohilite111xxxxy444abc9

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc9
	settext	0,16
	showtxt	bouncedeathtext

	stz	hilite
	stz	hilite+1

	settext	23,16
	onofftext	bouncedeath

;-------no engine sound----------
	lda	menuselected
	cmp	#14
	bne	nohilite111xxxxy444abc9as

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc9as
	settext	0,17
	showtxt	noenginesoundtext

	stz	hilite
	stz	hilite+1

	settext	23,17
	onofftext	noenginemode

;-------background----------
	lda	menuselected
	cmp	#15
	bne	nohilite111xxxxy444abc9asx

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc9asx
	settext	0,18
	showtxt	backgroundtext

	stz	hilite
	stz	hilite+1

	settext	23,18
	printvar	pgbg

;-------FPS MENU----------
	lda	menuselected
	cmp	#16
	bne	nohilite111xxxxy444abc9asx11

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc9asx11
	settext	6,19
	showtxt	fpsmenutext

	stz	hilite
	stz	hilite+1
	
;-------config save/load----------
	lda	menuselected
	cmp	#17
	bne	nohilite111xxxxy444abc9asx11iiu

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc9asx11iiu
	settext	2,20
	showtxt	configsaveloadtext

	stz	hilite
	stz	hilite+1
	
;---------PAGE------	
	lda	menuselected
	cmp	#18
	bne	nohilite1222xa

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xa
	settext	4,21
	showtxt	menupagetext

	stz	hilite
	stz	hilite+1

	settext	11,21
	printvar	pagenumber

;---------PRESS START TO EXIT TEXT------	
	lda	menuselected
	cmp	#19
	lbne	nohilite12222x

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222x
	settext	4,22
	showtxt	menustartgametext

	stz	hilite
	stz	hilite+1

;---------SELECT-----------------
	
	TESTKEYDOWN	SELECT
	beq	.noselect2
	lda	trig0
	bit	#pad_SELECT
	beq	.noselect2
	jmp	select2


.noselect2

;---------DOWN-----------------
	TESTKEYDOWN	DOWN
	beq	nodownn2
	lda	trig0
	bit	#pad_down
	beq	nodownn2
select2
	a8
	trigse	9
	a16
	lda	menuselected
	cmp	#19				;Max number of items on menu
	bpl	top2
	inc	menuselected
	bra	downpt22
top2
	stz	menuselected
downpt22

nodownn2


;----------UP--------------------
	TESTKEYDOWN	UP
	beq	noupp2
	lda	trig0
	bit	#pad_up
	beq	noupp2
	a8
	trigse	9
	a16
	lda	menuselected
	beq	bottom2				;Don't go lower than 0, go to the bottom
	dec	menuselected
	bra	uppart22
bottom2
	lda	#19				;Last item on list (same as above)
	sta	menuselected
uppart22

noupp2


;----------RIGHT--------------------
	TESTKEYDOWN	RIGHT
	lbeq	norighttxa
	lda	trig0
	bit	#pad_right
	lbeq	norighttxa
	a8
	trigse	10
	lda	menuselected
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.pg2s&WM,x)
.pg2s
	dw	c0xa&WM
	dw	c1xa&WM
	dw	c2xa&WM
	dw	c3xa&WM
	dw	c4xa&WM
	dw	c5xa&WM
	dw	c6xa&WM
	dw	c7xa&WM
	dw	c8xa&WM
	dw	c9xa&WM
	dw	c10xa&WM
	dw	c11xa&WM
	dw	c12xa&WM
	dw	c13xa&WM
	dw	c14xa&WM
	dw	c15xa&WM
	dw	norighttxa&WM
	dw	norighttxa&WM
	dw	xa17&WM
	dw	norighttxa&WM
	
c0xa
	turnonoff	rainbowlaser
	jmp	donerightxa

c1xa
	lda	bigheadmode
	beq	.turnbigheadon
	cmp	#1
	beq	.turnbiggerheadon
	stz	bigheadmode
	lda	#0
	sta.l	m_bigheadmode
	sta.l	m_biggerheadmode
	jmp	donerightxa
.turnbigheadon
	lda	#1
	sta	bigheadmode
	sta.l	m_bigheadmode
	lda	#0
	sta.l	m_biggerheadmode

	jmp	donerightxa
.turnbiggerheadon
	lda	#2
	sta	bigheadmode
	lda	#1
	sta.l	m_biggerheadmode
	lda	#0
	sta.l	m_bigheadmode

	jmp	donerightxa

c2xa
	lda	wiremode
	cmp	#2
	beq	.resetwire
	inc	wiremode
	lda	wiremode
	sta.l	m_wiremode
	jmp	donerightxa
.resetwire	
	lda	#0
	sta	wiremode
	sta.l	m_wiremode
	jmp	donerightxa

c3xa
	turnonoff	skipscramble
	jmp	donerightxa
c4xa
	turnonoff	darkmode
	jmp	donerightxa
c5xa
	a8
	inc	palnumber
	lda	palnumber
	cmp	#13				;too high, only (this number-1) is the amount of pal entries
	bmi	.noresetpal
	stz	palnumber
.noresetpal
	jmp	donerightxa
c6xa
	turnonoff	nobgmode
	jmp	donerightxa
c7xa
	a8
	lda	dotsstars
	cmp	#3
	beq	.resetds
	inc	dotsstars
	jmp	donerightxa
.resetds
	stz	dotsstars
	jmp	donerightxa

c8xa
	turnonoff	showcolbox
	jmp	donerightxa

c9xa
	inc	nanmode
	lda	nanmode
	cmp	#10
	bpl	.resetnanmode
	lda	nanmode
	cmp	#6
	beq	.wobble1
	cmp	#7
	beq	.wobble2
	cmp	#8
	beq	.wabble
	cmp	#9
	beq	.cel
	bra	.nowobble
.wabble
	lda	#1
	sta.l	m_wabblemode
	lda	#0
	sta		m_wobblemode
	bra	.donewob
.cel
	lda	#1
	sta.l	m_celmode
	lda	#0
	sta		m_wabblemode
	bra	.donewob
.wobble2
	lda	#2
	sta.l	m_wobblemode
	bra	.donewob
.wobble1
	lda	#1
	sta.l	m_wobblemode
	bra	.donewob
.nowobble
	lda	#0
	sta.l	m_wobblemode
	sta.l	m_wabblemode
	sta.l	m_celmode
.donewob
	jmp	donerightxa
.resetnanmode
	stz	nanmode
	lda	#0
	sta.l	m_wobblemode
	sta.l	m_wabblemode
	sta.l	m_celmode
	jmp	donerightxa

c10xa
	a8
	lda	bgmsfx
	cmp	#3
	beq	.resetbgmsfx
	inc	bgmsfx
	lda	bgmsfx
	cmp	#2
	bmi	.noturnoff
	startbgm	$F0	
.noturnoff
	jmp	donerightxa
.resetbgmsfx
	stz	bgmsfx
	jmp	donerightxa
	
c11xa
	a8
	inc	bgmspeed
	lda	bgmspeed
	cmp	#3				;too high, only (this number-1) is the amount of pal entries
	bmi	.noresetbgm
	stz	bgmspeed
.noresetbgm
	a8
	lda	bgmspeed
	beq	.nochange2222
	cmp	#1
	beq	.slow2222
	cmp	#2
	beq	.fast2222
.slow2222
	startbgm	$f4
	bra	.nochange2222
.fast2222
	startbgm	$f5
.nochange2222
	jmp	donerightxa
c12xa
	turnonoff	superfx2
	jmp	donerightxa

c13xa

	turnonoff	bouncedeath
	jmp	donerightxa

c14xa
	turnonoff	noenginemode
	jmp	donerightxa
c15xa
	a8
	lda	pgbg
	cmp	#36				;last entry
	beq	goto99hili
	cmp	#99
	beq	resethilite
	inc	pgbg
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

goto99hili
	lda	#99
	sta	pgbg
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

resethilite
	lda	#0
	sta	pgbg
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
c17xa
	a8
	lda	superfx2
	lbeq	foxy_continue_l
	lda	fpsspeed
	cmp	#2
	beq	.got0
	inc	fpsspeed
	jmp	donerightxa
.got0
	lda	#0
	sta	fpsspeed
	jmp	donerightxa
xa17
	a8
	lda	#2
	sta	stopcounting
	lda	#3					;page number
	sta	pagenumber
	lda	#18					;position of PAGE on page 3
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

	
donerightxa	

norighttxa

	
;----------LEFT--------------------
	a16
	TESTKEYDOWN	LEFT
	lbeq	nolefttxa
	lda	trig0
	bit	#pad_left
	lbeq	nolefttxa
	a8
	trigse	10
	lda	menuselected
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.page22&WM,x)
.page22
	dw	d0xaa&WM
	dw	d1xaa&WM
	dw	d2xaa&WM
	dw	d3xaa&WM
	dw	d4xaa&WM
	dw	d5xaa&WM
	dw	d6xaa&WM
	dw	d7xaa&WM
	dw	d8xaa&WM
	dw	d9xaa&WM
	dw	d10xaa&WM
	dw	d11xaa&WM
	dw	d12xaa&WM
	dw	d13xaa&WM
	dw	d14xaa&WM
	dw	d15xaa&WM
	dw	doneleftxa&WM
	dw	doneleftxa&WM
	dw	d18xaa&WM
	dw	doneleftxa&WM
d0xaa
	turnonoff	rainbowlaser
	jmp	doneleftxa

d1xaa
	lda	bigheadmode
	beq	.turnbiggerheadona
	cmp	#2
	beq	.turnbigheadona
	stz	bigheadmode
	lda	#0
	sta.l	m_bigheadmode
	sta.l	m_biggerheadmode
	jmp	doneleftxa
.turnbigheadona
	lda	#1
	sta	bigheadmode
	sta.l	m_bigheadmode
	lda	#0
	sta.l	m_biggerheadmode

	jmp	doneleftxa
.turnbiggerheadona
	lda	#2
	sta	bigheadmode
	lda	#1
	sta.l	m_biggerheadmode
	lda	#0
	sta.l	m_bigheadmode

	jmp	doneleftxa

d2xaa
	lda	wiremode
	beq	.goto2wire
	dec	wiremode
	lda	wiremode
	sta.l	m_wiremode
	jmp	doneleftxa
.goto2wire
	lda	#2
	sta	wiremode
	sta.l	m_wiremode
	jmp	doneleftxa
d3xaa
	turnonoff	skipscramble
	jmp	doneleftxa
d4xaa
	turnonoff	darkmode
	jmp	doneleftxa	
d5xaa
	a8
	dec	palnumber
	lda	palnumber
	bpl	.noresetleft
	lda	#12			;too low, reset to the amount of pal entries
	sta	palnumber
.noresetleft
	jmp	doneleftxa

d6xaa
	turnonoff	nobgmode
	jmp	doneleftxa
d7xaa
	a8
	lda	dotsstars
	beq	.resetds2
	dec	dotsstars
	jmp	doneleftxa
.resetds2
	lda	#3
	sta	dotsstars
	jmp	doneleftxa
d8xaa
	turnonoff	showcolbox
	jmp	doneleftxa
d9xaa
	dec	nanmode
	lda	nanmode
	bmi	.resetnanmode2

;	lda	nanmode
	cmp	#6
	beq	.wobble1x
	cmp	#7
	beq	.wobble2x
	cmp	#8
	beq	.wabblex
	cmp	#9
	beq	.celx
	bra	.nowobblex
.wabblex
	lda	#1
	sta.l	m_wabblemode
	lda	#0
	sta.l	m_celmode
	bra	.donewobx
.celx
	lda	#1
	sta.l	m_celmode
	bra	.donewobx
.wobble2x
	lda	#2
	sta.l	m_wobblemode
	lda	#0
	sta.l	m_wabblemode
	bra	.donewobx
.wobble1x
	lda	#1
	sta.l	m_wobblemode
	bra	.donewobx
.nowobblex
	lda	#0
	sta.l	m_wobblemode
	sta.l	m_wobblemode
	sta.l	m_celmode
.donewobx

	jmp	doneleftxa
.resetnanmode2
	lda	#9
	sta	nanmode
	lda	#1
	sta.l	m_celmode
	jmp	doneleftxa	
d10xaa
	a8
	lda	bgmsfx
	beq	.resetbgmsfx2
	dec	bgmsfx
	lda	bgmsfx
	cmp	#2
	bmi	.noturnoff2
	startbgm	$F0	
.noturnoff2

	jmp	doneleftxa
.resetbgmsfx2
	lda	#3
	sta	bgmsfx
	jmp	doneleftxa
d11xaa
	dec	bgmspeed
	lda	bgmspeed
	bpl	.noresetleftbgm
	lda	#2			;too low, reset to the amount of entries
	sta	bgmspeed
.noresetleftbgm
	a8
	lda	bgmspeed
	beq	.nochange22
	cmp	#1
	beq	.slow22
	cmp	#2
	beq	.fast22
.slow22
	startbgm	$f4
	bra	.nochange22
.fast22
	startbgm	$f5
.nochange22
	jmp	doneleftxa

d12xaa
	turnonoff	superfx2
	jmp	doneleftxa	

d13xaa

	turnonoff	bouncedeath
	jmp	doneleftxa	
d14xaa
	turnonoff	noenginemode
	jmp	doneleftxa	
d15xaa
	a8
	lda	pgbg
	beq	.goto99hili
	cmp	#99
	beq	.resethiliteback
	
	dec	pgbg
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

.goto99hili
	lda	#99
	sta	pgbg
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l	
.resethiliteback
	lda	#36			;last entry for background list
	sta	pgbg
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

d18xaa
	a8
	lda	#8
	sta	stopcounting
	lda	#14					;position of PAGE on page 1
	sta	menuselected
	lda	#1
	sta	pagenumber
	sta	keyldown
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

doneleftxa	

nolefttxa
	a16
;---------L Trigger-------------------
	TESTJOYPAD	TLEFT,cont0l
	beq		notriggerleftt
	lda	trig0
	bit	#pad_tleft
	beq		notriggerleftt
	lda	#8
	sta	stopcounting
	lda	#1					;page number
	sta	pagenumber			
	lda	#14					;position of PAGE on page 1
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
notriggerleftt

;---------R Trigger-------------------
	TESTJOYPAD	TRIGHT,cont0l
	beq		notriggerrightt
	lda	trig0
	bit	#pad_tright
	beq		notriggerrightt

	lda	#2
	sta	stopcounting
	lda	#18				;POSITION of PAGE on page 3
	sta	menuselected
	lda	#3
	sta	pagenumber
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

notriggerrightt

;---------start - exit-------------------
	a16
	TESTJOYPAD	START
	lbeq		noexit2
	lda	trig0
	bit	#pad_start
	lbeq		noexit2
	a8
	lda	scopemode
	beq	.noscope
	lda	calibrated
	bne	.noscope
	a8
	lda	pgbg
	sta	pgbgtemp
	lda	#99
	sta	pgbg
	lda	#5
	sta	stopcounting			;set STOPCOUNTING to a value of 5
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
.noscopeforyou
	jmp	foxy_continue_l
	
.noscope

	lda	menuselected
	cmp	#15
	beq	randomit
	lda	menuselected
	cmp	#16
	beq	fpsmenustuff
	cmp	#17
	beq	configmenustuff
	cmp	#19
	bne	noexit2
	stz	stopcounting
	jml	restart

fpsmenustuff
	lda	#20
	sta	stopcounting
	stz	menuselected
	lda	#1
	sta.l		m_clrbitmaps
	jmp	foxy_continue_l	

configmenustuff
	lda	#21
	sta	stopcounting
	stz	menuselected
	lda	#1
	sta.l		m_clrbitmaps
	jmp	foxy_continue_l	

randomit
	jsl	randomizebg
	jmp	foxy_continue_l
	
noexit2
;	stz	cont0
;	stz	contl0
;	stz	cont0l
;	stz	contl0l
	jmp	self
	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				END SPECIAL MENU CODE PAGE 2
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------		



	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
			;BGM TEST SCREEN
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------

bgmtestmenu
	stz	foxy_ptr				
	stz	foxy_shape		
	jsl	scrollthebg	
	a8
	
	TESTKEYDOWN	TLEFT,cont0l
	beq	nocursedact
	TESTKEYDOWN	TRIGHT,cont0l
	beq	nocursedact
	lda	#1
	sta	cursedopen
	
nocursedact	
;----------TRACK NUMBER--------------	

	lda	menuselected
	cmp	#1
	lbne	nohilite12222xty

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222xty
	settext	3,5
	showtxt	tracknumbertext

	stz	hilite
	stz	hilite+1


	settext	18,5
	printvar	bgmtest
	showtxt	blankspace
	
	lda	#0
	sta.l	m_clrbitmaps

	
;----------SUBBGM--------------	
	lda	subbgmmode
	lbeq	.nosub
	lda	menuselected
	lbne	.nohi12222xtyii

	lda	#$FF
	sta	hilite
	sta	hilite+1
.nohi12222xtyii
	settext	0,1
	showtxt	subtracknumbertext

	stz	hilite
	stz	hilite+1


	settext	18,1
	printvar	subbgm
	showtxt	blankspace
	showtxt	blankspace
	
.nosub
;-------------TRACK TITLE------------
	settext	0,3

	lda	bgmtest
	IFNE	MSU1
	ELSEIF
	dec	a
	ENDC
	and	#$00FF
	asl	a
	tax
	lda.l	bgmlisttext,x
	sta	textpt
	a8
	lda	#bgmlisttext>>16
	sta	textpt+2
	a16
	jsl	printt_l
	a8
	
donewiththetext


;-----------PLAY--------
	lda	menuselected
	cmp	#2
	lbne	nohiliters

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohiliters
	settext	6,7
	showtxt	playrestarttext

	stz	hilite
	stz	hilite+1

;-----------FADE OUT--------
	lda	menuselected
	cmp	#3
	lbne	nohiliters2t

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohiliters2t
	settext	6,8
	showtxt	fadeouttext

	stz	hilite
	stz	hilite+1
	
;-----------SPEED UP--------
	lda	menuselected
	cmp	#4
	lbne	nohiliters1

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohiliters1
	settext	6,9
	showtxt	speeduptext

	stz	hilite
	stz	hilite+1

;-----------SLOW DOWN--------
	lda	menuselected
	cmp	#5
	lbne	nohiliters2

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohiliters2
	settext	6,10
	showtxt	slowdowntext

	stz	hilite
	stz	hilite+1


;-----------CURSED BGM--------
	a8
	lda	cursedopen
	lbeq	nocursed
	
	lda	menuselected
	cmp	#6
	lbne	nohiliters28733

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohiliters28733
	settext	0,13
	showtxt	cursedbgmtext

	stz	hilite
	stz	hilite+1
	
	settext	18,13
	onofftext	cursedbgm




nocursed	
;-------------SFX TITLE------------
	settext	0,15

	lda	soundtest
	dec	a
	and	#$00FF
	asl	a
	tax
	lda.l	sfxplaylist,x
	sta	textpt
	a8
	lda	#sfxplaylist>>16
	sta	textpt+2
	a16
	jsl	printt_l
	a8

;----------SOUND FX NUMBER--------------	
	lda	menuselected
	cmp	#7
	lbne	nohilite12222xty666

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222xty666
	settext	0,17
	showtxt	soundfxnumbertext

	stz	hilite
	stz	hilite+1


	settext	18,17
	printvar	soundtest
	showtxt	blankspace
	showtxt	blankspace
	

;----------PLAY SOUND--------------	
	lda	menuselected
	cmp	#8
	lbne	nohilite12222xty6666

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222xty6666
	settext	6,19
	showtxt	playsoundtext

	stz	hilite
	stz	hilite+1
	
	
;---------PREV PAGE------	
	lda	menuselected
	cmp	#9
	bne	nohilite1222xapp

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xapp
	settext	4,21
parentlabelpp
	showtxt	menupreviouspagetext

	stz	hilite
	stz	hilite+1

;---------PRESS START TO EXIT TEXT------	
	lda	menuselected
	cmp	#10
	lbne	nohilite12222xll

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222xll
	settext	4,22
	showtxt	menustartgametext

	stz	hilite
	stz	hilite+1

;---------SELECT-----------------
	
	TESTKEYDOWN	SELECT
	beq	.noselect4
	lda	trig0
	bit	#pad_SELECT
	beq	.noselect4
	jmp	select4


.noselect4

;---------DOWN-----------------
	TESTKEYDOWN	DOWN
	beq	nodownn2aa
	a16
	lda	trig0
	bit	#pad_down
	beq	nodownn2aa
select4
	a8
	trigse	9
	lda	menuselected
	cmp	#10				;Max number of items on menu
	bpl	.top2aa
	lda	cursedopen
	bne	.reginc
	lda	menuselected
	cmp	#5
	beq	.dblinc
.reginc
	inc	menuselected
	bra	downpt22aa
.dblinc
	inc	menuselected
	inc	menuselected
	bra	downpt22aa
.top2aa
	lda	subbgmmode
	beq	.do1
	stz	menuselected
	bra	downpt22aa
.do1
	lda	#1
	sta	menuselected
	
downpt22aa

nodownn2aa
	a16

;----------UP--------------------
	TESTKEYDOWN	UP
	beq	noupp2aa
	lda	trig0
	bit	#pad_up
	beq	noupp2aa
	a8
	trigse	9
	lda	subbgmmode
	bne	.norm
	lda	menuselected
	cmp	#1
	beq	bottom2aa
	bra	.rest
	
.norm
	lda	menuselected
	beq	bottom2aa				;Don't go lower than 0, go to the bottom
.rest
	lda	cursedopen
	bne	.normdec
	lda	menuselected
	cmp	#7
	beq	.dbldec

.normdec
	dec	menuselected
	bra	uppart22aa
.dbldec
	dec	menuselected
	dec	menuselected
	bra	uppart22aa
bottom2aa
	lda	#10				;Last item on list (same as above)
	sta	menuselected
uppart22aa




	;lda	#1
	;sta.l		m_clrbitmaps

noupp2aa
	a8

;----------subbgm--------------------
	TESTKEYDOWN	A,cont0l
	beq	rightstuff
	testkeydown	X,cont0l
	beq	rightstuff
	lda	#1
	sta	subbgmmode

	
rightstuff
;----------RIGHT--------------------
	TESTKEYDOWN	RIGHT
	lbeq	noright4u
	a16
	lda	trig0
	bit	#pad_right
	lbeq	noright4u
	a8
	trigse	10
	lda	menuselected
	cmp	#6
	beq	.cursedright
	cmp	#7
	beq	.rightsound
	cmp	#0
	beq	.subright
	cmp	#1
	bne	noright4u

	inc	bgmtest
	lda	bgmtest
	IFNE	MSU1
	cmp	#totaltracks-1				;number of bgm entries on the list (MAX BGM)
	ELSEIF
	cmp	#totaltracks				;number of bgm entries on the list (MAX BGM)
	ENDC
	bmi	noright4u
	beq	noright4u
	IFNE	MSU1
	lda	#0
	ELSEIF
	lda	#1
	ENDC
	sta	bgmtest
	bra	noright4u
.cursedright
	turnonoff	cursedbgm
	jmp	noleft4u.playbgm
.subright
	inc	subbgm
	bra	noright4u

.rightsound
	lda	soundtest
	cmp	#175
	beq	.resetsoundteststart
	cmp	#1
	beq	.doubleinc
	inc	soundtest
	bra	.donerightsound
.doubleinc
	lda	#3
	sta	soundtest
	bra	.donerightsound
.resetsoundteststart
	stz	soundtest
	inc	soundtest
	bra	.donerightsound	
.donerightsound
noright4u

;----------LEFT--------------------
	a16
	TESTKEYDOWN	LEFT
	lbeq	noleft4u
	lda	trig0
	bit	#pad_left
	lbeq	noleft4u
	a8
	trigse	10
	lda	menuselected
	cmp	#6
	beq	.cursedleft
	cmp	#7
	beq	.leftsound
	cmp	#0
	beq	.subleft
	cmp	#1
	bne	noleft4u
	dec	bgmtest
	lda	bgmtest
	IFNE	MSU1
	cmp	#255
	bne	noleft4u
	ELSEIF
	bne	noleft4u
	ENDC
	IFNE	MSU1
	lda	#totaltracks-1				;number of bgm entries on the list (MAX BGM)
	ELSEIF
	lda	#totaltracks				;number of bgm entries on the list (MAX BGM)
	ENDC
	sta	bgmtest
	bra	noleft4u
.cursedleft
	turnonoff	cursedbgm
	jmp	noleft4u.playbgm
.subleft
	dec	subbgm
	bra	noleft4u
	
.leftsound
	lda	soundtest
	cmp	#1
	beq	.resetsoundtestend
	cmp	#3
	beq	.goto1
	dec	soundtest
	bra	.doneleftsound
.goto1
	lda	#1
	sta	soundtest
	bra	.doneleftsound
.resetsoundtestend
	lda	#175
	sta	soundtest
.doneleftsound

noleft4u


;---------start - exit-------------------
	a16
	TESTJOYPAD	START
	lbeq		noexit2xmm
	lda	trig0
	bit	#pad_start
	lbeq		noexit2xmm
	a8
	lda	menuselected
	cmp	#0
	beq	.playsubbgm
	cmp	#1
	beq	.playbgm
	cmp	#2
	beq	.playbgm
	cmp	#3
	lbeq	.fadeout
	cmp	#4
	lbeq	.speedupbgm
	cmp	#5
	lbeq	.slowdownbgm
	cmp	#7
	lbeq	.playsound
	cmp	#8
	lbeq	.playsound
	cmp	#9
	lbeq	.page2back
	cmp	#10
	lbne	noexit2xmm
	a8
	lda	scopemode
	beq	.noscope
	lda	calibrated
	bne	.noscope
	a8
	lda	pgbg
	sta	pgbgtemp
	lda	#99
	sta	pgbg
	lda	#5
	sta	stopcounting			;set STOPCOUNTING to a value of 5
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
.noscopeforyou
	jmp	foxy_continue_l
	
.noscope

	stz	stopcounting
	jml	restart
	
.playsubbgm
	a8
	lda	subbgm
	sta	bgm_music
	stz	bgmcnt
	jmp	self
.playbgm	local
	a8i16
	lda	cursedbgm
	IFNE	MSU1
	bra	.noncursed
	ELSEIF
	beq	.noncursed
	ENDC
	a16
	lda	bgmtest
	and	#$00FF
	dec	a
	asl	a
	tax
	lda.l	bgmplaylistcursed,x
	sta	textpt+0
	a8
	lda	#bgmplaylistcursed>>16
	sta	textpt+2
	bra	.continue
.noncursed
	a16
	lda	bgmtest
	IFNE	MSU1
	a8i16
	;dec	a	; Correct track number; MSU-1 tracks start from 0 in my pcm set -sl
	; Now we set up the parameters for starting MSU-1 playback
	tax	; Move A to X for track number
	lda	#audiostate_repeat ; Put audiostate in A
	jsl	msuplay_l ; jump to MSU-1 driver playback routine
	a16
.continue
	ELSEIF
	and	#$00FF
	dec	a
	asl	a
	tax
	lda.l	bgmplaylist,x
	sta	textpt+0
	a8
	lda	#bgmplaylist>>16
	sta	textpt+2
.continue
	jsl	do_bgm_reset
.startwait
	ldy	#5000		;wait about 1 frame
.wait	dey
	bne	.wait
	jsl	do_bgm_generic_l
	ENDC
	jmp	self

	

.playsound
	lda	soundtest
	jsl	setport3_l
	jmp	self
	
.fadeout
	a8
	startbgm	$F1
	IFNE	MSU1
	msufade
	ENDC
	jmp	self

.slowdownbgm
	a8
	startbgm	$F4
	jmp	self
.speedupbgm
	a8
	startbgm	$F5
	jmp	self
.page2back
	lda	#2
	sta	stopcounting
	lda	#3					;page number
	sta	pagenumber			
	lda	#3					;position of BGM TEST on page 3
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
	
noexit2xmm
	jmp	self

	

;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				END BGM TEST MENU
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				START FPS MENU
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
fpsmenu
	stz	foxy_ptr				
	stz	foxy_shape		
	jsl	scrollthebg	
	a8
	

;-------------------------------------------------
	jsl	scrollthebg
;-----------SPECIAL MENU TITLE-----------
	settext	6,0
	showtxt	menutitletext

;--------------FPS MENU TEXT---------	
	settext	11,2
	showtxt	fpsmenutext	
	

;-------PAL Mode----------
	lda	menuselected
	cmp	#0
	bne	nohilite11pop

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite11pop
	settext	2,3
	showtxt	regiontext

	stz	hilite
	stz	hilite+1
	settext	20,3
	onofftxt	ntscpalswap
	
	lda	#0
	sta.l		m_clrbitmaps	


;-------FPS----------
	lda	menuselected
	cmp	#1
	bne	nohilite11popxxx

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite11popxxx
	settext	2,4
	showtxt	maxfpstext

	stz	hilite
	stz	hilite+1

	settext	20,4
	a8
	lda	ntscpalswap
	beq	.ntscspeed
.palspeed	
	lda	fpsspeed
	beq	.p0
	cmp	#1
	beq	.p1
	cmp	#3
	beq	.p0
	lda	#50
	printd
	bra	.don
.p0	lda	#25
	printd
	bra	.don
.p1	lda	#25
	printd	
	bra	.don
	
.ntscspeed
	lda	fpsspeed
	beq	.p0x
	cmp	#1
	beq	.p1x
	cmp	#3
	beq	.p0x
	lda	#60
	printd
	bra	.don
.p0x	lda	#20
	printd
	bra	.don
.p1x	lda	#30
	printd

.don
	lda	#0
	sta.l		m_clrbitmaps	



;-------FPS Counter----------
	lda	menuselected
	cmp	#2
	bne	nohilite11popx

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite11popx
	settext	2,6
	showtxt	fpscountertext

	stz	hilite
	stz	hilite+1
	settext	20,6
	onofftxt	fpscounteron
	
	lda	#0
	sta.l		m_clrbitmaps	
	
;-------noobj mode----------
	lda	menuselected
	cmp	#3
	bne	nohilite11popx54

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite11popx54
	settext	2,8
	showtxt	noobjmodetext

	stz	hilite
	stz	hilite+1
	settext	20,8
	onofftxt	noobjmode
	
	lda	#0
	sta.l		m_clrbitmaps	

;---------PRESS START TO EXIT TEXT------	
	lda	menuselected
	cmp	#4
	lbne	nohilite12222xllaas

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222xllaas
	settext	4,22
	showtxt	menupreviouspagetext

	stz	hilite
	stz	hilite+1



;---------DOWN-----------------
	TESTKEYDOWN	DOWN
	beq	nodownn2aapo
	a16
	lda	trig0
	bit	#pad_down
	beq	nodownn2aapo
	a8
	trigse	9
	lda	menuselected
	cmp	#4				;Max number of items on menu
	bpl	.top2aa
	inc	menuselected
	bra	nodownn2aapo
.top2aa
	stz	menuselected
nodownn2aapo
	a16

;----------UP--------------------
	TESTKEYDOWN	UP
	beq	noupp2aapo
	lda	trig0
	bit	#pad_up
	beq	noupp2aapo
	a8
	trigse	9
	lda	menuselected
	beq	bottom2aapo

	dec	menuselected
	bra	noupp2aapo

bottom2aapo
	lda	#4				;Last item on list 
	sta	menuselected
noupp2aapo

	;lda	#1
	;sta.l		m_clrbitmaps
	a8

	
;----------RIGHT--------------------
	TESTKEYDOWN	RIGHT
	lbeq	noright4u4
	a16
	lda	trig0
	bit	#pad_right
	lbeq	noright4u4
	a8
	trigse	10
	lda	menuselected
	beq	.0	
	cmp #1
	beq	.1
	cmp #2
	beq	.2
	cmp #3
	lbeq	.3
	jmp	noright4u4
	
.0
	turnonoff	ntscpalswap
	lda ntscpalswap
	beq	noright4u4
	lda fpsspeed
	cmp #2
	beq	noright4u4
	lda #0
	sta	fpsspeed
	bra	noright4u4
.1
	a8
	lda	superfx2
	lbeq	foxy_continue_l

	; disables 60fps for platforms that can't handle it
	lda	machinetype ; Can't let you have 60FPS on real hardware and certain emulators, Star Fox!
	cmp #mister
	lbeq	noright4u4
	cmp #canoe
	lbeq	noright4u4
	cmp #hardwaree
	lbeq	noright4u4
	cmp	#sd2snes ; sd2snes/fxpak is basically hardware too
	lbeq	noright4u4

	lda	ntscpalswap
	beq	.norm1x
	lda fpsspeed
	beq	.do2
	stz	fpsspeed
	bra noright4u4
.do2
	lda #2
	sta	fpsspeed
	bra	noright4u4
.norm1x

	lda	fpsspeed
	cmp	#3
	beq	.got0
	inc	fpsspeed
	bra	noright4u4
.got0
	lda	#0
	sta	fpsspeed
	bra noright4u4

.2
	turnonoff	fpscounteron
	bra	noright4u4
.3
	turnonoff	noobjmode
	;bra	noright4u4


noright4u4

;----------LEFT--------------------
	a16
	TESTKEYDOWN	LEFT
	lbeq	noleft4u4
	lda	trig0
	bit	#pad_left
	lbeq	noleft4u4
	a8
	trigse	10
	lda	menuselected
	beq	.0x
	cmp	#1
	beq	.1x
	cmp	#2
	beq	.2x
	cmp	#3
	lbeq	.3x
	jmp	noleft4u4
.0x
	turnonoff	ntscpalswap
	lda ntscpalswap
	beq	noleft4u4
	lda fpsspeed
	cmp #2
	beq	noleft4u4
	lda #0
	sta	fpsspeed

	bra	noleft4u4
.1x
	a8
	lda	superfx2
	lbeq	foxy_continue_l

	; disables 60fps for platforms that can't handle it (i think)
	lda	machinetype ; Can't let you have 60FPS on real hardware and certain emulators, Star Fox!
	cmp #mister
	lbeq	noleft4u4
	cmp #canoe
	lbeq	noleft4u4
	cmp #hardwaree
	lbeq	noleft4u4
	cmp	#sd2snes ; sd2snes/fxpak is basically hardware too
	lbeq	noleft4u4


	lda	ntscpalswap
	beq	.norm1x
	lda fpsspeed
	cmp #2
	beq	.do3
	lda #2
	sta fpsspeed
	bra noleft4u4
.do3
	stz	fpsspeed
	bra	noleft4u4
.norm1x
	dec	fpsspeed
	lda	fpsspeed
	bpl	noleft4u4
	lda	#3
	sta	fpsspeed
	bra	noleft4u4
	
.2x
	turnonoff	fpscounteron
	bra	noleft4u4

.3x
	turnonoff	noobjmode
	;bra	noleft4u4

noleft4u4


;---------start - exit-------------------
	a16
	TESTJOYPAD	START
	lbeq		noexit2xmm4
	lda	trig0
	bit	#pad_start
	lbeq		noexit2xmm4
	a8
	lda	menuselected
	cmp	#4
	lbne	noexit2xmm


.page2back
	lda	#9
	sta	stopcounting
	lda	#2					;page number
	sta	pagenumber			
	lda	#16					;position of fps menu on page 2
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
	
noexit2xmm4
	lda #0
	sta.l	m_clrbitmaps
	jmp	self

	

;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				END FPS MENU
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				START config MENU
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
configmenu
	stz	foxy_ptr				
	stz	foxy_shape		
	jsl	scrollthebg	
	a8
	

;-------------------------------------------------
	jsl	scrollthebg
;-----------SPECIAL MENU TITLE-----------
	settext	6,0
	showtxt	menutitletext

;--------------FPS MENU TEXT---------	
	settext	5,2
	showtxt	configmenutext	
	
;--------------reset defaults TEXT---------	

	menucheck	0

	settext	2,5
	showtxt	resetdefaultstext

	stz	hilite
	stz	hilite+1	
	
;--------------classic preset TEXT---------	

	menucheck	1

	settext	2,7
	showtxt	classicpresettext

	stz	hilite
	stz	hilite+1

;---------PRESS START TO EXIT TEXT------	

	settext	1,19
	showtxt	version

	IFNE	MSU1
	settext	10,19
	showtxt	msu1text
	ENDC

	settext	1,20
	showtxt	builddatetext

	menucheck	2

	settext	4,22
	showtxt	menupreviouspagetext

	stz	hilite
	stz	hilite+1

;---------DOWN-----------------
	TESTKEYDOWN	DOWN
	beq	nodownn2aapo21
	a16
	lda	trig0
	bit	#pad_down
	beq	nodownn2aapo21
	a8
	trigse	9
	lda	menuselected
	cmp	#2				;Max number of items on menu
	bpl	.top2aa21
	inc	menuselected
	bra	nodownn2aapo21
.top2aa21
	stz	menuselected
nodownn2aapo21
	a16

;----------UP--------------------
	TESTKEYDOWN	UP
	beq	noupp2aapo12
	lda	trig0
	bit	#pad_up
	beq	noupp2aapo12
	a8
	trigse	9
	lda	menuselected
	beq	bottom2aapo12

	dec	menuselected
	bra	noupp2aapo12

bottom2aapo12
	lda	#2				;Last item on list 
	sta	menuselected
noupp2aapo12

	;lda	#1
	;sta.l		m_clrbitmaps

;--------------------start

	a8
	TESTJOYPAD	start
	lbeq		.nostart
	a16
	lda	trig0
	bit	#pad_start
	lbeq		.nostart

	lda	menuselected
	beq	.0
	cmp	#1
	lbeq	.1
	cmp	#2
	lbeq	.2
	
	
	jmp	noexit2xmm4cfg
	
;-------defaults
.0
	a8

	trigse	$A0h
	
	lda	#2
	sta	firerate	
	sta	nocrosshairpls

	lda	#1
	sta	superfx2
	sta	numplayers
	sta	enemy_firing
	sta	rapidfire
	sta	doboostmeter
	sta	newcamera

	lda	#0
	sta	nobgmode
	sta	newgameplus
	sta	godmode
	sta	randomfire
	sta	scored
	sta	pepperskip
	sta	endurance
	sta	levelfeatures
	sta	rainbowlaser
	sta	bigheadmode
	sta.l	m_bigheadmode
	sta.l	m_biggerheadmode
	sta	playertwocpuactivated
	sta	skipscramble
	sta.l	m_playertwoactivated
	sta	darkmode
	sta	mistmode
	sta	palnumber
	sta	secretgodmode
	sta	strat_valid
	sta	pweptemp
	sta	bgmspeed
	sta	quickstart
	sta	curr_ship
	sta	showcolbox
	sta	mosaicon
	sta	nanmode
	sta	wiremode
	sta	shpmode
	sta	fpscounteron
	sta	mousemode
	sta	mousemodetemp
	sta	scopemode
	sta	nttmode
	sta	bouncedeath
	sta	noborders
	sta.l	m_wobblemode
	sta	classichp
	sta	barrelroll
	sta	noenginemode
	sta	hilitecolor
	sta	bgmsfx
	sta	dotsstars
	sta	craymode
	sta	randomsound
	sta	randombgm
	sta	kandomode
	sta	randompos
	sta	viewshit
	sta	cursedbgm
	sta	cursedopen
	sta	kandoallow
	sta	nohud
	sta	moredots
	sta	colorwarp
	sta	lsdmode
	sta	colortrip
	sta	randompalette
	sta	allatonce
	sta	randomobjpal
	sta	colortripobj
	sta	gridlines
	sta	multitapmode
	sta	fpsspeed
	sta	currxhair
	sta	currxhair2
	sta	currxhair3
	sta	currxhair4
	sta	currxhair5
	sta.l	m_wabblemode
	sta.l	m_celmode
	sta	curr_ship2
	sta	curr_ship3
	sta	curr_ship4
	sta	curr_ship5
	sta	ntscpalswap
	sta	noobjmode
	jmp	noexit2xmm4cfg
	
;-------classic
.1
	a8

	trigse	$A0h
	
	lda	#2
	sta	firerate	

	lda	#1
	sta	classichp
	sta	superfx2
	sta	numplayers
	sta	enemy_firing
	sta	doboostmeter
	sta	nocrosshairpls

	lda	#0
	sta	rapidfire
	sta	nobgmode
	sta	newgameplus
	sta	godmode
	sta	randomfire
	sta	scored
	sta	pepperskip
	sta	endurance
	sta	levelfeatures
	sta	rainbowlaser
	sta	bigheadmode
	sta.l	m_bigheadmode
	sta.l	m_biggerheadmode
	sta	playertwocpuactivated
	sta	skipscramble
	sta.l	m_playertwoactivated
	sta	darkmode
	sta	mistmode
	sta	palnumber
	sta	secretgodmode
	sta	strat_valid
	sta	pweptemp
	sta	bgmspeed
	sta	quickstart
	sta	curr_ship
	sta	showcolbox
	sta	mosaicon
	sta	nanmode
	sta	wiremode
	sta	shpmode
	sta	fpscounteron
	sta	mousemode
	sta	mousemodetemp
	sta	scopemode
	sta	nttmode
	sta	bouncedeath
	sta	noborders
	sta.l	m_wobblemode
	sta	newcamera
	sta	barrelroll
	sta	noenginemode
	sta	hilitecolor
	sta	bgmsfx
	sta	dotsstars
	sta	craymode
	sta	randomsound
	sta	randombgm
	sta	kandomode
	sta	randompos
	sta	viewshit
	sta	cursedbgm
	sta	cursedopen
	sta	kandoallow
	sta	nohud
	sta	moredots
	sta	colorwarp
	sta	lsdmode
	sta	colortrip
	sta	randompalette
	sta	allatonce
	sta	randomobjpal
	sta	colortripobj
	sta	gridlines
	sta	multitapmode
	sta	fpsspeed
	sta	currxhair
	sta	currxhair2
	sta	currxhair3
	sta	currxhair4
	sta	currxhair5
	sta.l	m_wabblemode
	sta.l	m_celmode
	sta	curr_ship2
	sta	curr_ship3
	sta	curr_ship4
	sta	curr_ship5
	sta	ntscpalswap
	sta	noobjmode
	jmp	noexit2xmm4cfg


.2
	a8
	lda	#9
	sta	stopcounting
	lda	#2					;page number
	sta	pagenumber			
	lda	#17					;position of config menu on page 2
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

.nostart
	
	
noexit2xmm4cfg
	lda #0
	sta.l	m_clrbitmaps
	jmp	self	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				START SHIP SELECT MENU
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	


shipselectmenu
	stz	foxy_ptr
	stz	foxy_shape
	jsl	scrollthebg
;-------SHIP--------------
	lda	menuselected						;Load menuselected
	cmp	#1									;Compare against 0	(redundant)
	bne	nohilite11hgandnullshape1			;if this line is not the highlighted line, skip past the highlighting code
	lda	#$FF								;
	sta	hilite								;highlight code
	sta	hilite+1							;
nohilite11hgandnullshape1				
	settext	0,4								;set position
	showtxt	SHIPTEXT						;show the text "SHIP"
	stz	hilite								;end highlight
	stz	hilite+1							;
	settext	15,4							;set position

	lda	selectedplayer
	beq	.p1
	cmp	#1
	beq	.p2
	cmp	#2
	beq	.p3
	cmp	#3
	lbeq	.p4
	cmp	#4
	lbeq	.p5
	
.p1
	lda	curr_ship							;Load current ship TEXT
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;Transfer this number to X
	lda.l	shiplistshape,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
	
	lda	curr_ship							;load current ship number
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;transfer to X
	lda.l	shiplistshape,x					;load the proper ship SHAPE
	sta	foxy_shape							;store this to Foxy_Shape, which will envoke the code that displays models in this screen
	jmp	.dunn
	
.p2
	lda	curr_ship2							;Load current ship TEXT
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;Transfer this number to X
	lda.l	shiplistshape,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
	
	lda	curr_ship2							;load current ship number
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;transfer to X
	cpx	#0
	bne	.np2
	lda	#peppy1
	bra	.jmp2
.np2	
	lda.l	shiplistshape,x					;load the proper ship SHAPE
.jmp2
	sta	foxy_shape							;store this to Foxy_Shape, which will envoke the code that displays models in this screen
	jmp	.dunn	
	
.p3
	lda	curr_ship3						;Load current ship TEXT
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;Transfer this number to X
	lda.l	shiplistshape,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
	
	lda	curr_ship3							;load current ship number
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;transfer to X
	cpx	#0
	bne	.np3
	lda	#falco1
	bra	.jmp3
.np3
	lda.l	shiplistshape,x					;load the proper ship SHAPE
.jmp3
	sta	foxy_shape							;store this to Foxy_Shape, which will envoke the code that displays models in this screen
	bra	.dunn	
	
.p4
	lda	curr_ship4							;Load current ship TEXT
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;Transfer this number to X
	lda.l	shiplistshape,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
	
	lda	curr_ship4							;load current ship number
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;transfer to X
	cpx	#0
	bne	.np4
	lda	#slippy1
	bra	.jmp4
.np4	
	lda.l	shiplistshape,x					;load the proper ship SHAPE
.jmp4
	sta	foxy_shape							;store this to Foxy_Shape, which will envoke the code that displays models in this screen
	bra	.dunn	
	
.p5
	lda	curr_ship5							;Load current ship TEXT
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;Transfer this number to X
	lda.l	shiplistshape,x
	clc
	adc	#foxy_shape-10
	sta	textpt
	stz	textpt+2

	jsl	printt_l
	
	lda	curr_ship5							;load current ship number
	asl	a									;multiply by 2 (each ship takes up 2 slots)
	tax										;transfer to X
	cpx	#0
	bne	.np5
	lda	#playertwo1
	bra	.jmp5
.np5	
	lda.l	shiplistshape,x					;load the proper ship SHAPE
.jmp5
	sta	foxy_shape							;store this to Foxy_Shape, which will envoke the code that displays models in this screen
;	bra	.dunn
	
.dunn
	lda	#1									;load #1 into accumulator
	sta.l	m_clrbitmaps					;store this, enabling the screen to erase each frame


;-------Current Player--------------
	lda	menuselected						;Load menuselected
	cmp	#2									;Compare against 1
	bne	nohilitemodelview5431					;if this line is not the highlighted line, skip past the highlighting code
	lda	#$FF								;
	sta	hilite								;highlight code
	sta	hilite+1							;
nohilitemodelview5431
	settext	0,5								;set position
	showtxt	currplayertext					;show the text "MODEL VIEW"
	stz	hilite								;end highlight
	stz	hilite+1							;	
		
	settext	15,5
	lda		selectedplayer
;	printvar	selectedplayer
	inc	a
	printd
	

;-------Model View--------------
	lda	ptwodead
	bne	nohilitemodelview	;if its not = 0 (is = 1), dont highlight
	lda	menuselected						;Load menuselected
	cmp	#3									;Compare against 1
	bne	nohilitemodelview					;if this line is not the highlighted line, skip past the highlighting code
	lda	#$FF								;
	sta	hilite								;highlight code
	sta	hilite+1							;
nohilitemodelview
	settext	0,6								;set position
	showtxt	modelviewtext					;show the text "MODEL VIEW"
	stz	hilite								;end highlight
	stz	hilite+1							;	
	
;---------PREV PAGE------	
	lda	menuselected
	cmp	#4
	bne	nohiliteforprev

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohiliteforprev
	settext	7,22
	showtxt	menupreviouspagetext
	stz	hilite								;end highlight
	stz	hilite+1							;
	
	
;---------SELECT-----------------
	
	lda	ptwodead
	bne	.noselect5
	TESTKEYDOWN	SELECT
	beq	.noselect5
	lda	trig0
	bit	#pad_SELECT
	beq	.noselect5
	jmp	select5


.noselect5

;---------DOWN-----------------
	jsl	doanimation			;do ship animation

	lda	ptwodead
	bne	downpt22aa1

	TESTKEYDOWN	DOWN	;these 5 lines check to see if down has been pressed, but to also jump out if its being held down after the first time it executes the code
	beq	downpt22aa1
	lda	trig0
	bit	#pad_down
	beq	downpt22aa1
select5
	a8
	trigse	9
	a16
	lda	menuselected
	cmp	#4				;Max number of items on menu
	bpl	top2aa1			;if its at that number or higher, reset it
	inc	menuselected	;otherwise, increase and skip the zeroing out
	bra	downpt22aa1	
top2aa1
	lda	#1
	sta	menuselected	;reset it to 1
;	bra	downpt22aa1
downpt22aa1


;----------UP--------------------
	lda	ptwodead
	bne	uppart22aa1
	TESTKEYDOWN	UP
	beq	uppart22aa1
	lda	trig0
	bit	#pad_up
	beq	uppart22aa1
	a8
	trigse	9
	a16
	lda	menuselected
	cmp	#1
	beq	bottom2aa1
	dec	menuselected
	bra	uppart22aa1
bottom2aa1
	lda	#4				;Last item on list (same as above)
	sta	menuselected
uppart22aa1

;----------RIGHT--------------------
	lda	ptwodead
	lbne	norightforthis	;if its not = 0 (is = 1), dont highlight
	TESTKEYDOWN	RIGHT
	lbeq	norightforthis
	lda	trig0
	bit	#pad_right
	lbeq	norightforthis
	a8
	trigse	10
	a16
	lda	menuselected
	cmp	#1
	beq	.1
	cmp	#2
	lbeq	.2
	jmp	norightforthis
	
.1
	lda	selectedplayer
	beq	.p1
	cmp	#1
	beq	.p2
	cmp	#2
	beq	.p3
	cmp	#3
	lbeq	.p4
	cmp	#4
	lbeq	.p5

.p1
	a8
	lda	curr_ship
	beq	.jumpupto7		;if = 0, go here
	cmp	totalshipcountvar			;max number of ships
	bpl	.jumpdownto0
	inc	curr_ship
	bra	.endthissection
.jumpupto7
	lda	#7
	sta	curr_ship
	bra	.endthissection
.jumpdownto0
	stz	curr_ship

.endthissection
	lda	curr_ship
	asl	a
	tax
	a16
	lda.l	shiplistshape,x
	sta	foxy_shape
	jmp	norightforthis
	
.p2
	a8
	lda	curr_ship2
	beq	.jumpupto72		;if = 0, go here
	cmp	totalshipcountvar			;max number of ships
	bpl	.jumpdownto02
	inc	curr_ship2
	bra	.endthissection2
.jumpupto72
	lda	#7
	sta	curr_ship2
	bra	.endthissection2
.jumpdownto02
	stz	curr_ship2

.endthissection2
	lda	curr_ship2
	asl	a
	tax
	a16
	lda.l	shiplistshape,x
	sta	foxy_shape
	jmp	norightforthis	

.p3
	a8
	lda	curr_ship3
	beq	.jumpupto73		;if = 0, go here
	cmp	totalshipcountvar			;max number of ships
	bpl	.jumpdownto03
	inc	curr_ship3
	bra	.endthissection3
.jumpupto73
	lda	#7
	sta	curr_ship3
	bra	.endthissection3
.jumpdownto03
	stz	curr_ship3

.endthissection3
	lda	curr_ship3
	asl	a
	tax
	a16
	lda.l	shiplistshape,x
	sta	foxy_shape
	jmp	norightforthis
	
.p4
	a8
	lda	curr_ship4
	beq	.jumpupto74		;if = 0, go here
	cmp	totalshipcountvar			;max number of ships
	bpl	.jumpdownto04
	inc	curr_ship4
	bra	.endthissection4
.jumpupto74
	lda	#7
	sta	curr_ship4
	bra	.endthissection4
.jumpdownto04
	stz	curr_ship4

.endthissection4
	lda	curr_ship4
	asl	a
	tax
	a16
	lda.l	shiplistshape,x
	sta	foxy_shape
	bra	norightforthis
	
	
.p5
	a8
	lda	curr_ship5
	beq	.jumpupto75		;if = 0, go here
	cmp	totalshipcountvar			;max number of ships
	bpl	.jumpdownto05
	inc	curr_ship5
	bra	.endthissection5
.jumpupto75
	lda	#7
	sta	curr_ship5
	bra	.endthissection5
.jumpdownto05
	stz	curr_ship5

.endthissection5
	lda	curr_ship5
	asl	a
	tax
	a16
	lda.l	shiplistshape,x
	sta	foxy_shape
	bra	norightforthis
	
.2
	inc	selectedplayer
	a8
	lda	multitapmode
	beq	.nocheck
	a16
	lda	numplayers
	cmp	#1
	beq	.1stuff
.nocheck
	a16
	lda	selectedplayer
	inc	a
	cmp	numplayers
	beq	.noproblem
	bpl	.problem
	bra	.noproblem
.problem
	stz	selectedplayer
	bra	.noproblem
.1stuff
	lda	selectedplayer
	cmp	#5
	beq	.problem
.noproblem	
norightforthis

;----------LEFT--------------------
	a16
	lda	ptwodead
	lbne	noleftforthis	;if its not = 0 (is = 1), dont highlight
	TESTKEYDOWN	LEFT
	lbeq	noleftforthis
	lda	trig0
	bit	#pad_left
	lbeq	noleftforthis
	a8
	trigse	10
	a16
	lda	menuselected
	cmp	#1
	beq	.1
	cmp	#2
	lbeq	.2
	jmp	noleftforthis
.1

	lda	selectedplayer
	beq	.p1x
	cmp	#1
	beq	.p2x
	cmp	#2
	beq	.p3x
	cmp	#3
	lbeq	.p4x
	cmp	#4
	
	lbeq	.p5x

.p1x
	lda	curr_ship
	beq	.jumpuptoendoflist		;if = 0, go here
	cmp	#7				
	beq	.resetittozero			;if = 7, go here
	dec	curr_ship
	bra	.alsoendthissection
.jumpuptoendoflist
	lda	totalshipcountvar						;max number of ships
	sta	curr_ship				;store it to be at the end of the list
	bra	.alsoendthissection
.resetittozero
	stz	curr_ship				;zero it out

.alsoendthissection
	lda	curr_ship
	asl	a
	tax
	lda.l	shiplistshape,x
	sta	foxy_shape
	jmp	noleftforthis

.p2x
	lda	curr_ship2
	beq	.jumpuptoendoflist2		;if = 0, go here
	cmp	#7				
	beq	.resetittozero2			;if = 7, go here
	dec	curr_ship2
	bra	.alsoendthissection2
.jumpuptoendoflist2
	lda	totalshipcountvar						;max number of ships
	sta	curr_ship2				;store it to be at the end of the list
	bra	.alsoendthissection2
.resetittozero2
	stz	curr_ship2				;zero it out

.alsoendthissection2
	lda	curr_ship2
	asl	a
	tax
	lda.l	shiplistshape,x
	sta	foxy_shape
	jmp	noleftforthis
.p3x
	lda	curr_ship3
	beq	.jumpuptoendoflist3		;if = 0, go here
	cmp	#7				
	beq	.resetittozero3			;if = 7, go here
	dec	curr_ship3
	bra	.alsoendthissection3
.jumpuptoendoflist3
	lda	totalshipcountvar						;max number of ships
	sta	curr_ship3				;store it to be at the end of the list
	bra	.alsoendthissection3
.resetittozero3
	stz	curr_ship3				;zero it out

.alsoendthissection3
	lda	curr_ship3
	asl	a
	tax
	lda.l	shiplistshape,x
	sta	foxy_shape
	jmp	noleftforthis

.p4x
	lda	curr_ship4
	beq	.jumpuptoendoflist4		;if = 0, go here
	cmp	#7				
	beq	.resetittozero4			;if = 7, go here
	dec	curr_ship4
	bra	.alsoendthissection4
.jumpuptoendoflist4
	lda	totalshipcountvar						;max number of ships
	sta	curr_ship4				;store it to be at the end of the list
	bra	.alsoendthissection4
.resetittozero4
	stz	curr_ship4				;zero it out

.alsoendthissection4
	lda	curr_ship4
	asl	a
	tax
	lda.l	shiplistshape,x
	sta	foxy_shape
	bra	noleftforthis


.p5x
	lda	curr_ship5
	beq	.jumpuptoendoflist5		;if = 0, go here
	cmp	#7				
	beq	.resetittozero5			;if = 7, go here
	dec	curr_ship5
	bra	.alsoendthissection5
.jumpuptoendoflist5
	lda	totalshipcountvar						;max number of ships
	sta	curr_ship5				;store it to be at the end of the list
	bra	.alsoendthissection5
.resetittozero5
	stz	curr_ship5				;zero it out

.alsoendthissection5
	lda	curr_ship5
	asl	a
	tax
	lda.l	shiplistshape,x
	sta	foxy_shape
	bra	noleftforthis



.2
	dec	selectedplayer
	a8
	lda	multitapmode
	beq	.nocheck
	a16
	lda	numplayers
	cmp	#1
	beq	.1stuff2
.nocheck
	a16
	lda	selectedplayer
	bmi	.fixme
	bra	.okiedokie
.fixme
	lda	numplayers
	dec	a
	sta	selectedplayer
	bra	.okiedokie
.1stuff2
	lda	selectedplayer
	bmi	.revertagain
	bra	.okiedokie
.revertagain
	lda	#4
	sta	selectedplayer
.okiedokie	

noleftforthis

;---------start - exit-------------------
	TESTJOYPAD	START
	beq		nostarttogoback
	lda	trig0
	bit	#pad_start
	beq		nostarttogoback
	
	lda	menuselected
	cmp	#1
	lbeq	randomship
	cmp	#3
	beq	modelviewcode
	cmp	#4
	bne	nostarttogoback
	
	lda	#2
	sta	stopcounting
	stz	menuselected
	stz	foxy_shape
	lda	#1
	sta	m_clrbitmaps
	jmp	foxy_continue_l
	
modelviewcode
	lda	ptwodead	;load
	eor	#1			;flip bit 1
	sta	ptwodead	;store
	jmp	self
	
nostarttogoback

	lda	ptwodead	;load
	lbeq	nocontrols	;if = 0, jump out

	TESTKEYDOWN	LEFT
	beq	noleft11
	lda.l	m_roty
	clc
	adc	#5
	sta.l	m_roty
noleft11

	TESTKEYDOWN	RIGHT
	beq	noright11
	lda.l	m_roty
	sec
	sbc	#5
	sta.l	m_roty

noright11
	TESTKEYDOWN	UP
	beq	noup11
	lda.l	m_rotx
	clc
	adc	#5
	sta.l	m_rotx
noup11
	TESTKEYDOWN	DOWN
	beq	nodown11
	lda.l	m_rotx
	sec
	sbc	#5
	sta.l	m_rotx
nodown11

	TESTKEYDOWN	TLEFT,cont0l
	beq	nozoomup1
	a16
	lda.l	m_bigz
	sec
	sbc	#20
	cmp	#50
	bcc	nozoomup1
	sta.l	m_bigz
nozoomup1
	a8
	TESTKEYDOWN	TRIGHT,cont0l
	beq	nozoomout1
	a16
	lda.l	m_bigz
	clc
	adc	#20
	cmp	#3000
	bcs	nozoomout1
	sta.l	m_bigz
nozoomout1

nocontrols
	jmp	self
	
randomship
.again
	jsl	random_l
	and	#127
	beq	.ok
	cmp	#7
	bmi	.again
	cmp	#shipcount
	bpl	.again
.ok
	sta	curr_ship
	jmp	self
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				END SHIP SELECT CODE 
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				START MENU PAGE 3 CODE 
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
specialmenupg3
	a8
	jsl	scrollthebg
	
	lda	tempval
	lbne	kandomodescreen



;-----------SPECIAL MENU TITLE-----------
	settext	6,0
	showtxt	menutitletext

;---------SHIP SELECT------	
	lda	menuselected
	cmp	#0
	bne	uniquelabelhere

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelhere
	settext	8,2
	showtxt	shipselecttext

	stz	hilite
	stz	hilite+1
	lda	#0
	sta.l		m_clrbitmaps

;-------CROSSHAIR----------
	lda	menuselected
	cmp	#1
	bne	nohilite111xxxxy444abc96aab

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc96aab
	settext	6,3
	showtxt	crosshairtext

	stz	hilite
	stz	hilite+1

;-----------MODEL TEST MODE-------------

	lda	menuselected
	cmp	#2				;position of selection
	bne	nomodl

	lda	#$FF
	sta	hilite
	sta	hilite+1
nomodl

	settext	7,4
	showtext	menumodeltestmodetext

	stz	hilite
	stz	hilite+1

;---------BGM TEST------	
	lda	menuselected
	cmp	#3
	bne	nohilite1222xa16

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xa16
	settext	8,5
parentlabel44xxx
	showtxt	BGMTESTtext

	stz	hilite
	stz	hilite+1


;---------THANKS------	
	lda	menuselected
	cmp	#4
	bne	nohilite1222xa1

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xa1
	settext	10,6
parentlabel44z
	showtxt	thankstext

	stz	hilite
	stz	hilite+1


;---------NTT TEST------	
	lda	menuselected
	cmp	#5
	bne	nohilite1222xa1e

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xa1e
	settext	7,7
parentlabel44
	showtxt	nttpadtesttext

	stz	hilite
	stz	hilite+1


;---------CALIBRATE SCOPE------	
	lda	menuselected
	cmp	#6
	bne	nohilite1222xa1elmao

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xa1elmao
	settext	6,8
parentlabel44pp
	showtxt	multitaptext

	stz	hilite
	stz	hilite+1




;-------randomize level order----------
	lda	menuselected
	cmp	#7
	bne	nohilite3umpireexljhga3

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpireexljhga3
	settext	0,10
	showtxt	randomizelevelstext

	stz	hilite
	stz	hilite+1
	settext	23,10
	onofftxt	randomlevels
	
;-------randomize obj palette----------
	lda	menuselected
	cmp	#8
	bne	nohilite3umpireexljhga

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpireexljhga
	settext	0,11
	showtxt	randomobjpalettetext

	stz	hilite
	stz	hilite+1
	settext	23,11
	onofftxt	randomobjpal
	
;-------randomize bg palette----------
	lda	menuselected
	cmp	#9
	bne	nohilite3umpireexljhg

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpireexljhg
	settext	0,12
	showtxt	randompalettetext

	stz	hilite
	stz	hilite+1
	settext	23,12
	onofftxt	randompalette
	
;-------grid lines----------
	lda	menuselected
	cmp	#10
	bne	nohilite3umpireexl

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpireexl
	settext	0,13
	showtxt	gridlinestext

	stz	hilite
	stz	hilite+1
	settext	23,13
	onofftxt	gridlines

;-------No HUD----------
	lda	menuselected
	cmp	#11
	bne	nohilite3umpireex

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpireex
	settext	0,14
	showtxt	nohudtext

	stz	hilite
	stz	hilite+1
	settext	23,14
	onofftxt	nohud

;-------Classic HP----------
	lda	menuselected
	cmp	#12
	bne	nohilite3umpire

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpire
	settext	0,15
	showtxt	classichptext

	stz	hilite
	stz	hilite+1
	settext	23,15
	onofftxt	classichp

;-------Classic Camera----------
	lda	menuselected
	cmp	#13
	bne	nohilite3umpire2

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite3umpire2
	settext	0,16
	showtxt	centershiptext

	stz	hilite
	stz	hilite+1
	settext	23,16
	offontxt	newcamera

;-------Rapid Fire----------
	lda	menuselected
	cmp	#14
	bne	nohilite111xxxxx

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxx
	settext	0,17
	showtxt	rapidfiretext

	stz	hilite
	stz	hilite+1

	settext	23,17
	onofftxt	rapidfire


;-------Infinite brake/boost----------
	lda	menuselected
	cmp	#15
	bne	nohilite111xxxxxoi

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxxoi
	settext	0,18
	showtxt	boostmetertext

	stz	hilite
	stz	hilite+1

	settext	23,18
	onofftxt	doboostmeter


;-------MORE DOTS----------
	lda	menuselected
	cmp	#16
	bne	nohilite111xxxxy444abc96

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc96
	settext	0,19
	showtxt	moredotstext

	stz	hilite
	stz	hilite+1

	settext	23,19
	onofftxt	moredots
	
;-------Barrel Rolls----------
	lda	menuselected
	cmp	#17
	bne	nohilite111xxxxy444abc96aa

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc96aa
	settext	0,20
	showtxt	barrelrolltext

	stz	hilite
	stz	hilite+1

	settext	23,20
	onofftxt	barrelroll



;-------HELPER BALLS----------
;	lda	menuselected
;	cmp	#16
;	bne	nohilite111xxxxy444abc96aabK

;	lda	#$FF
;	sta	hilite
;	sta	hilite+1
;nohilite111xxxxy444abc96aabK
;	settext	0,19
;	showtxt	helperballstext

;	stz	hilite
;	stz	hilite+1

;	settext	23,19
;	onofftxt	helperballs




;---------PAGE------	
	lda	menuselected
	cmp	#18			;position of selection
	bne	nohilite1222xapper

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xapper
	settext	4,21
	showtxt	menupagetext

	stz	hilite
	stz	hilite+1

	settext	11,21
	printvar	pagenumber

	
;---------PRESS START TO EXIT TEXT------	
	lda	menuselected
	cmp	#19
	lbne	nohilite12222x5pl

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222x5pl
	settext	4,22
	showtxt	menustartgametext

	stz	hilite
	stz	hilite+1

;---------SELECT-----------------
	
	TESTKEYDOWN	SELECT
	beq	.noselect6
	lda	trig0
	bit	#pad_SELECT
	beq	.noselect6
	jmp	select6


.noselect6
	
;---------DOWN-----------------
	a8
	TESTKEYDOWN	DOWN	;these 5 lines check to see if down has been pressed, but to also jump out if its being held down after the first time it executes the code
	beq	nodownpg3
	a16
	lda	trig0
	bit	#pad_down
select6
	a8
	beq	nodownpg3
	a8
	trigse	9
	a16
	lda	menuselected
	cmp	#19				;Max number of items on menu
	bpl	topothelist		;if its at that number or higher, reset it
	inc	menuselected	;otherwise, increase and skip the zeroing out
	bra	nodownpg3	
topothelist
	stz	menuselected	;reset it to 1
	bra	nodownpg3
nodownpg3


;----------UP--------------------
	a8
	TESTKEYDOWN	UP
	beq	nouppg3
	a16
	lda	trig0
	bit	#pad_up
	a8
	beq	nouppg3
	a8
	trigse	9
	a16
	lda	menuselected
	beq	bottomothelist
	dec	menuselected
	bra	nouppg3
bottomothelist
	lda	#19				;Last item on list (same as above)
	sta	menuselected
nouppg3

;----------RIGHT--------------------
	a8
	TESTKEYDOWN	RIGHT
	bne	noclearright
	stz	keyldown
	
noclearright

	lda	keyldown
	lbne	donerightpg3

	a8
	TESTKEYDOWN	RIGHT
	lbeq	donerightpg3
	a16
	lda	trig0
	bit	#pad_right
	a8
	lbeq	donerightpg3
	a8
	trigse	10

	lda	menuselected
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.thetab&wm,x)
.thetab
	dw	donerightpg3&WM
	dw	donerightpg3&WM
	dw	donerightpg3&WM
	dw	donerightpg3&WM
	dw	donerightpg3&WM
	dw	donerightpg3&WM
	dw	donerightpg3&WM
	dw	f5s&WM
	dw	f6s&WM
	dw	f7s&WM
	dw	f8s&WM
	dw	f9s&WM
	dw	f10s&WM
	dw	f11s&WM
	dw	f12s&WM
	dw	f13s&WM
	dw	f14s&WM
	dw	f15s&WM
;	dw	f17s&WM
;	dw	donerightpg3&WM
	dw	f18s&WM
	dw	donerightpg3&WM
	
f5s
	turnonoff	randomlevels
	jmp	donerightpg3	
f6s
	turnonoff	randomobjpal
	jmp	donerightpg3
f7s
	turnonoff	randompalette
	jmp	donerightpg3
f8s	
	turnonoff	gridlines
	jmp	donerightpg3
f9s
	turnonoff	nohud
	jmp	donerightpg3
f10s
	turnonoff	classichp
	jmp	donerightpg3
f11s
	turnonoff	newcamera
	jmp	donerightpg3
f12s
	turnonoff	rapidfire
	jmp	donerightpg3
f13s
	turnonoff	doboostmeter
	jmp	donerightpg3
f14s
	turnonoff	moredots
	jmp	donerightpg3
f15s
	turnonoff	barrelroll
	jmp	donerightpg3

f17s
	turnonoff	helperballs
	jmp	donerightpg3
	
f18s
	lda	#8
	sta	stopcounting
	lda	#14			;POSITION OF PAGE on page 1
	sta	menuselected
	lda	#1
	sta	pagenumber
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

donerightpg3

;----------LEFT--------------------
	a8
	TESTKEYDOWN	LEFT
	lbeq	doneleftpg3
	a16
	lda	trig0
	bit	#pad_left
	a8
	lbeq	doneleftpg3
	a8
	trigse	10
	lda	menuselected
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.thetab&wm,x)
.thetab
	dw	doneleftpg3&WM
	dw	doneleftpg3&WM
	dw	doneleftpg3&WM
	dw	doneleftpg3&WM
	dw	doneleftpg3&WM
	dw	doneleftpg3&WM
	dw	doneleftpg3&WM
	dw	g5t&WM
	dw	g6t&WM
	dw	g7t&WM
	dw	g8t&WM
	dw	g9t&WM
	dw	g10t&WM
	dw	g11t&WM
	dw	g12t&WM
	dw	g13t&WM
	dw	g14t&WM
	dw	g15t&WM
;	dw	g17t&WM
;	dw	doneleftpg3&WM
	dw	g18t&WM
	dw	doneleftpg3&WM

g5t
	turnonoff	randomlevels
	jmp	doneleftpg3
g6t
	turnonoff	randomobjpal
	jmp	doneleftpg3
g7t
	turnonoff	randompalette
	jmp	doneleftpg3
g8t
	turnonoff	gridlines
	
	jmp	doneleftpg3
g9t
	turnonoff	nohud
	jmp	doneleftpg3
g10t
	turnonoff	classichp
	jmp	doneleftpg3
g11t
	turnonoff	newcamera
	jmp	doneleftpg3
g12t
	turnonoff	rapidfire
	jmp	doneleftpg3	
	
g13t
	turnonoff	doboostmeter
	jmp	doneleftpg3	
	
g14t
	turnonoff	moredots
	jmp	doneleftpg3	

g15t
	turnonoff	barrelroll
	jmp	doneleftpg3	

g17t
	turnonoff	helperballs
	jmp	doneleftpg3	
	
g18t
	lda	#9
	sta	stopcounting
	lda	#18				;POSITION OF PAGE on page 2
	sta	menuselected
	lda	#2
	sta	pagenumber
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

doneleftpg3
	a16
;---------L Trigger-------------------
	TESTJOYPAD	TLEFT,cont0l
	beq		notriggerlefttt
	lda	trig0
	bit	#pad_tleft
	beq		notriggerlefttt
	lda	#9
	sta	stopcounting
	lda	#2					;page number
	sta	pagenumber			
	lda	#18					;position of PAGE on page 2
	sta	menuselected
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
notriggerlefttt

;---------R Trigger-------------------
	TESTJOYPAD	TRIGHT,cont0l
	beq		notriggerrighttt
	lda	trig0
	bit	#pad_tright
	beq		notriggerrighttt

	lda	#8
	sta	stopcounting
	lda	#14				;POSITION of PAGE on page 1
	sta	menuselected
	lda	#1
	sta	pagenumber
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l

notriggerrighttt
	a8
	lda	kandoallow
	beq	.nokando
	lda	menuselected
	cmp	#4			;position of THANKS for secret menu on page 3
	bne	.nokando

;	TESTKEYDOWN	X,cont0l
;	beq	.nokando
	TESTKEYDOWN	Y
	beq	.nokando
	TESTKEYDOWN	A,cont0l
	beq	.nokando
;	TESTKEYDOWN	B
;	beq	.nokando
	lda	#1
	sta	tempval
	sta.l		m_clrbitmaps
	stz	menuselected
	trigse	120
.nokando
;---------start - exit-------------------
	a8
	TESTJOYPAD	START
	lbeq		nostartpg3
	a16
	lda	trig0
	bit	#pad_start
	a8
	lbeq		nostartpg3
	
	lda	menuselected
	lbeq	.0m				;if = 0
	cmp	#1
	lbeq	.17m
	cmp	#2
	lbeq	.1m
	cmp	#3				;start game position
	lbeq	.2m
	cmp	#4
	lbeq	.3m
	cmp	#5
	lbeq	.4m			;ntt test
	cmp	#6
	lbeq	.5m			;multitap

	cmp	#19
	lbne	nostartpg3
	a8
	lda	scopemode
	beq	.noscope
	lda	calibrated
	bne	.noscope
	a8
	lda	pgbg
	sta	pgbgtemp
	lda	#99
	sta	pgbg
	lda	#5
	sta	stopcounting			;set STOPCOUNTING to a value of 5
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
.noscopeforyou
	jmp	foxy_continue_l
	
.noscope
	
	stz	stopcounting
	jml	restart				;start game
	
.0m
	lda	#1
	sta	stopcounting
	sta	menuselected
	lda	#1
	sta.l		m_clrbitmaps
	stz	selectedplayer
	lda	#250
	sta.l	m_bigz
	jmp	foxy_continue_l	

.1m						;model test
	lda	#12
	sta	stopcounting
	a16
	lda	#a_wing
	ldx	#2
	sta	foxy_shape
	stx	foxy_ptr
	a8
	lda	#1
	sta.l	m_clrbitmaps
	sta	keyrdown
	jmp	foxy_continue_l

.2m								;bgm test
	lda	bgmsfx
	cmp	#2
	lbpl	foxy_continue_l
	lda	#4
	sta	stopcounting			;set STOPCOUNTING to a value of 4
	lda	#1
	sta.l		m_clrbitmaps
	a8
	lda	#1
	sta	menuselected
	IFNE	MSU1
	lda	#0
	ENDC
	sta	bgmtest
	IFNE	MSU1
	lda	#1
	ENDC
	sta	soundtest
	startbgm	$F1
	IFNE	MSU1
	msufade
	ENDC
	jmp	foxy_continue_l
	
.3m								;thanks
	a8
	lda	#3
	sta	stopcounting			;set STOPCOUNTING to a value of 3
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	bgmsfx
	cmp	#2
	lbpl	foxy_continue_l
	IFNE	MSU1
	msuplay	eschatos,repeat
	ELSEIF
	bgm2	eschatos
	ENDC
;	startbgm	10
	jmp	foxy_continue_l
	
.4m
	lda	nttmode
	lbeq	self
.bypass1
	a8
	lda	#6
	sta	stopcounting			;set STOPCOUNTING to a value of 5
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
	jmp	foxy_continue_l


.5m								;multitap test
	lda	multitapmode
	lbeq	self
.bypass2
	a8
	lda	#7
	sta	stopcounting			;set STOPCOUNTING to a value of 5
	lda	#1
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
	jmp	foxy_continue_l

.17m
	a8
	lda	pgbg
	sta	pgbgtemp
	lda	#99
	sta	pgbg
	lda	#14
	sta	stopcounting			;set STOPCOUNTING to a value of 11 for xhair menu
	lda	#1
	sta	tempplayernum
	sta.l		m_clrbitmaps
	stz	menuselected
	lda	#1
	sta	keyrdown
;	bgm2	kandojingle		
;	startbgm	10
	jmp	foxy_continue_l

nostartpg3

	jmp	self			;jump to main loop


;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				END SPECIAL MENU PAGE 3
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	

;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				kando mode stuff
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------		
kandomodescreen

;-----------SECRET MENU TITLE-----------
	settext	8,0
	showtxt	secretmenutext

;---------CRAY MODE------	
	lda	menuselected
	cmp	#0
	bne	uniquelabelforyou

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyou
	settext	0,2
	showtxt	craymodetext

	stz	hilite
	stz	hilite+1

	settext	23,2
	printvar	craymode

	lda	#0
	sta.l		m_clrbitmaps

;---------random spawn pos------	
	lda	menuselected
	cmp	#1
	bne	uniquelabelforyoutt

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutt
	settext	0,3
	showtxt	randompostext

	stz	hilite
	stz	hilite+1

	settext	23,3
	onofftext	randompos


;---------random bgm------	
	lda	menuselected
	cmp	#2
	bne	uniquelabelforyoutttt

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttt
	settext	0,4
	showtxt	randombgmtext

	stz	hilite
	stz	hilite+1

	settext	23,4
	onofftext	randombgm


;-------random sfx----------
	lda	menuselected
	cmp	#3
	bne	nohilite111xxxxy444abc9asxii

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite111xxxxy444abc9asxii
	settext	0,5
	showtxt	randomsoundtext

	stz	hilite
	stz	hilite+1

	settext	23,5
	onofftext	randomsound


;---------kando mode------	
	lda	menuselected
	cmp	#4
	bne	uniquelabelforyoutttttt

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt
	settext	0,6
	showtxt	kandomodetext

	stz	hilite
	stz	hilite+1

	settext	23,6
	onofftext	kandomode

	
;---------Auto Safari------	
	lda	menuselected
	cmp	#5
	bne	uniquelabelforyoutttttt1

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt1
	settext	0,7
	showtxt	autosafaritext

	stz	hilite
	stz	hilite+1

	settext	23,7
doyouevenlabelbro
	onofftext	viewshit
	

	
;---------Party Rave Mode------	
	lda	menuselected
	cmp	#6
	bne	uniquelabelforyoutttttt12

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt12
	settext	0,8
	showtxt	lsdmodetext

	stz	hilite
	stz	hilite+1

	settext	23,8
ANOTHERLABELoooooh
	onofftext	lsdmode


	
;---------Color Trip Mode------	
	lda	menuselected
	cmp	#7
	bne	uniquelabelforyoutttttt1244

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt1244
	settext	0,9
	showtxt	colortriptext

	stz	hilite
	stz	hilite+1

	settext	23,9

WHYDOWENEEDLABELS
	onofftext	colortrip
	
;---------Color Trip OBJ Mode------	
	lda	menuselected
	cmp	#8
	bne	uniquelabelforyoutttttt12441

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt12441
	settext	0,10
	showtxt	colortripobjtext

	stz	hilite
	stz	hilite+1

	settext	23,10

	onofftext	colortripobj

;---------All At Once Mode------	
	lda	menuselected
	cmp	#9
	bne	uniquelabelforyoutttttt1244a

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt1244a
	settext	0,11
	showtxt	allatoncetext

	stz	hilite
	stz	hilite+1

	settext	23,11

	onofftext	allatonce

;---------texture warp mode------	
	lda	menuselected
	cmp	#10
	bne	uniquelabelforyoutttttt1244abc

	lda	#$FF
	sta	hilite
	sta	hilite+1
uniquelabelforyoutttttt1244abc
	settext	0,12
	showtxt	colorwarptext

	stz	hilite
	stz	hilite+1

	settext	23,12

	onofftext	colorwarp

;---------PREV PAGE------	
	lda	menuselected
	cmp	#11
	bne	nohilite1222xa6abcd

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite1222xa6abcd
	settext	4,21
parentlabel6xabd
	showtxt	menupreviouspagetext

	stz	hilite
	stz	hilite+1

;---------PRESS START TO EXIT TEXT------	
	lda	menuselected
	cmp	#12
	lbne	nohilite12222x5443

	lda	#$FF
	sta	hilite
	sta	hilite+1
nohilite12222x5443
	settext	4,22
	showtxt	menustartgametext

	stz	hilite
	stz	hilite+1
;--------------------------


	TESTKEYDOWN	SELECT
	beq	.noselectsm
	lda	trig0
	bit	#pad_SELECT
	beq	.noselectsm
	jmp	downdowndown
.noselectsm
;---------DOWN-----------------
	a8
	TESTKEYDOWN	DOWN	;these 5 lines check to see if down has been pressed, but to also jump out if its being held down after the first time it executes the code
	beq	nodownsm
	a16
	lda	trig0
	bit	#pad_down
	a8
	beq	nodownsm
downdowndown
	a8
	trigse	9
	a16
	lda	menuselected
	cmp	#12				;Max number of items on menu
	bpl	topothelist2		;if its at that number or higher, reset it
	inc	menuselected	;otherwise, increase and skip the zeroing out
	bra	nodownsm
topothelist2
	stz	menuselected	;reset it to 0
nodownsm


;----------UP--------------------
	a8
	TESTKEYDOWN	UP
	beq	noupsm
	a16
	lda	trig0
	bit	#pad_up
	a8
	beq	noupsm
	a8
	trigse	9
	a16
	lda	menuselected
	beq	bottomothelist2
	dec	menuselected
	bra	noupsm
bottomothelist2
	lda	#12				;Last item on list (same as above)
	sta	menuselected
noupsm



;---------RIGHT--------------
	a8
	TESTKEYDOWN	RIGHT
	lbeq	donerightsm
	a16
	lda	trig0
	bit	#pad_right
	a8
	lbeq	donerightsm
	a8
	trigse	10

	lda	menuselected
	beq	.0sm
	cmp	#1
	beq	.1sm
	cmp	#2
	beq	.2sm
	cmp	#3
	beq	.3sm
	cmp	#4
	beq	.4sm
	cmp	#5
	beq	.5sm
	cmp	#6
	lbeq	.6sm
	cmp	#7
	lbeq	.7sm
	cmp	#8
	lbeq	.8sm
	cmp	#9
	lbeq	.9sm
	cmp	#10
	lbeq	.10sm

.0sm
	lda	craymode
	cmp	#6
	bpl	.resetcray
	inc	craymode
	jmp	donerightsm
.resetcray
	stz	craymode
	jmp	donerightsm
.1sm
	turnonoff	randompos
	jmp	donerightsm
.2sm
	turnonoff	randombgm
	jmp	donerightsm
.3sm
	turnonoff	randomsound
	jmp	donerightsm
.4sm
	turnonoff	kandomode
	jmp	donerightsm
.5sm
	turnonoff	viewshit
	jmp	donerightsm
.6sm
	turnonoff	lsdmode
	jmp	donerightsm
.7sm
	turnonoff	colortrip
	jmp	donerightsm
.8sm
	turnonoff	colortripobj
	jmp	donerightsm
.9sm
	turnonoff	allatonce
	jmp	donerightsm
.10sm
	turnonoff	colorwarp
	lda	colorwarp
	sta.l	m_colorwarp
	sta.l	m_colorwarp+1
	jmp	donerightsm



donerightsm
;--------------------------------
;---------LEFT--------------
	a8
	TESTKEYDOWN	LEFT
	lbeq	doneleftsm
	a16
	lda	trig0
	bit	#pad_left
	a8
	lbeq	doneleftsm
	a8
	trigse	10

	lda	menuselected
	beq	.0smx
	cmp	#1
	beq	.1smx
	cmp	#2
	beq	.2smx
	cmp	#3
	beq	.3smx
	cmp	#4
	beq	.4smx
	cmp	#5
	beq	.5smx
	cmp	#6
	lbeq	.6smx
	cmp	#7
	lbeq	.7smx
	cmp	#8
	lbeq	.8smx
	cmp	#9
	lbeq	.9smx
	cmp	#10
	lbeq	.10smx

.0smx
	lda	craymode
	beq	.resetcray2
	dec	craymode
	jmp	doneleftsm
.resetcray2
	lda	#6
	sta	craymode
	jmp	doneleftsm
.1smx
	turnonoff	randompos
	jmp	doneleftsm
.2smx
	turnonoff	randombgm
	jmp	doneleftsm
.3smx
	turnonoff	randomsound
	jmp	doneleftsm
.4smx
	turnonoff	kandomode
	jmp	doneleftsm
.5smx
	turnonoff	viewshit
	jmp	doneleftsm
.6smx
	turnonoff	lsdmode
	jmp	doneleftsm
.7smx
	turnonoff	colortrip
	jmp	doneleftsm
.8smx
	turnonoff	colortripobj
	jmp	doneleftsm
.9smx
	turnonoff	allatonce
	jmp	doneleftsm
.10smx
	turnonoff	colorwarp
	lda	colorwarp
	sta.l	m_colorwarp
	sta.l	m_colorwarp+1
	jmp	doneleftsm



doneleftsm


;---------start - exit-------------------
	a16
	TESTJOYPAD	START
	beq		noexit2xsm
	lda	trig0
	bit	#pad_start
	beq		noexit2xsm

	lda	menuselected
	cmp	#11
	lbeq	dopage2
	cmp	#12
	bne	noexit2xsm

	stz	stopcounting
	jml	restart

dopage2
	stz	tempval
	lda	#1
	sta.l	m_clrbitmaps
	jml	page2

;--------------------------------
noexit2xsm
	jmp	self			;jump to main loop


;----------------END SECRET MENU----------------
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------	
;				SCOPE CALIBRATION PAGE
;-----------------------------------------------	
;-----------------------------------------------	
;-----------------------------------------------		
;defaulthcenter	equ	$008A
;defaultvcenter	equ	$0069



	
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;			NTT PAD TEST
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

ntttestmenu
	jsl	scrollthebg
	settext	4,0
	showtext zerokeytext

	settext	11,0
	lda	jpread
	and #jp0
	printx
.done0
;-----	
	settext	4,1
	showtext onekeytext

	settext	11,1
	lda	jpread
	and #jp1
	printx
.done1
;-----
;-----	
	settext	4,2
	showtext twokeytext

	settext	11,2
	
	lda	jpread
	and #jp2
	printx
.done2
;-----	
;-----	
	settext	4,3
	showtext threekeytext

	settext	11,3
	
	lda	jpread
	and #jp3
	printx
.done3
;-----	
;-----	
	settext	4,4
	showtext fourkeytext

	settext	11,4
	
	lda	jpread
	and #jp4
	printx
.done4
;-----	
	
;-----	
	settext	4,5
	showtext fivekeytext

	settext	11,5
	
	lda	jpread
	and #jp5
	printx
.done5
;-----	
		
;-----	
	settext	4,6
	showtext sixkeytext

	settext	11,6
	
	lda	jpread
	and #jp6
	printx
.done6
;-----			
;-----	
	settext	4,7
	showtext sevenkeytext

	settext	11,7
	
	lda	jpread
	and #jp7
	printx
.done7
;-----	
;-----	
	settext	4,8
	showtext eightkeytext
lablablablablablablalbalbalblal
	settext	11,8
	
	lda	jpread
	and #jp8
	printx
.done8
;-----		
;-----	
	settext	4,9
	showtext ninekeytext

	settext	11,9
	
	lda	jpread
	and #jp9
	printx
.done9
;-----		
;-----	
	settext	4,10
dolabelsgrowontrees
	showtext startext
	

	settext	11,10
	
	lda	jpread
	and #jpstar
	printx
.donestar
;-----	
;-----	
	settext	4,11
	showtext hashkeytext

	settext	11,11
	
	lda	jpread
	and #jphash
	printx
.donehash
;-----	
;-----	
	settext	4,12
	showtext periodtext

	settext	11,12
	
	lda	jpread
	and #jpperiod
	printx
.doneperiod
;-----	
;-----	
	settext	4,13
	showtext cbuttontext

	settext	11,13
	
	lda	jpread
	and #jpc
	printx
donec
;-----	
;-----	
	settext	4,14
	showtext hanguptext
	settext	11,14
	
	lda	jpread
	and #jphangup
	printx
.donehangup
;-----	


;---------PREV PAGE------	
	a8
	lda	#$FF
	sta	hilite
	sta	hilite+1
	settext	4,22
laybeyl
	showtxt	menupreviouspagetext
	a8
	stz	hilite
	stz	hilite+1
	lda	#0
	sta.l		m_clrbitmaps		

;------
	a16
	TESTJOYPAD	START
	beq		noexit2xa111
	lda	trig0
	bit	#pad_start
	beq		noexit2xa111
	a8
	lda	#2
	sta	stopcounting
	lda	#3					;page number
	sta	pagenumber			
	lda	#5					;position of ntt pad test on page 3
	sta	menuselected
	a16
	lda	#0
	sta	foxy_shape
	a8
	stz	foxy_ptr
	lda	#1
	sta.l	m_clrbitmaps
	jmp	foxy_continue_l
	
noexit2xa111
	jmp	self











triggerdefaults
	lda	#2
	sta	firerate	
	sta	nocrosshairpls

	lda	#1
	sta	superfx2
	sta	numplayers
	sta	enemy_firing
	sta	rapidfire
	sta	doboostmeter
	sta	newcamera

	lda	#0
	sta	nobgmode
	sta	newgameplus
	sta	godmode
	sta	randomfire
	sta	scored
	sta	pepperskip
	sta	endurance
	sta	levelfeatures
	sta	rainbowlaser
	sta	bigheadmode
	sta.l	m_bigheadmode
	sta.l	m_biggerheadmode
	sta	playertwocpuactivated
	sta	skipscramble
	sta.l	m_playertwoactivated
	sta	darkmode
	sta	mistmode
	sta	palnumber
	sta	secretgodmode
	sta	strat_valid
	sta	pweptemp
	sta	bgmspeed
	sta	quickstart
	sta	curr_ship
	sta	showcolbox
	sta	mosaicon
	sta	nanmode
	sta	wiremode
	sta	shpmode
	sta	fpscounteron
	sta	mousemode
	sta	mousemodetemp
	sta	scopemode
	sta	nttmode
	sta	bouncedeath
	sta	noborders
	sta.l	m_wobblemode
	sta	classichp
	sta	barrelroll
	sta	noenginemode
	sta	hilitecolor
	sta	bgmsfx
	sta	dotsstars
	sta	craymode
	sta	randomsound
	sta	randombgm
	sta	kandomode
	sta	randompos
	sta	viewshit
	sta	cursedbgm
	sta	cursedopen
	sta	kandoallow
	sta	nohud
	sta	moredots
	sta	colorwarp
	sta	lsdmode
	sta	colortrip
	sta	randompalette
	sta	allatonce
	sta	randomobjpal
	sta	colortripobj
	sta	gridlines
	sta	multitapmode
	sta	fpsspeed
	sta	currxhair
	sta	currxhair2
	sta	currxhair3
	sta	currxhair4
	sta	currxhair5
	sta.l	m_wabblemode
	sta.l	m_celmode
	sta	curr_ship2
	sta	curr_ship3
	sta	curr_ship4
	sta	curr_ship5
	sta	ntscpalswap
	sta	noobjmode


;save
	stz	memo
	stz	memi
	a8
	
	lda	superfx2
	savemem

	lda	nobgmode
	savemem
	
	lda	newgameplus
	and	#1
	savemem

	lda	godmode
	savemem	

	lda	randomfire
	savemem	

	lda	scored
	and	#1
	savemem	

	lda	pepperskip
	savemem

	lda	endurance
	savemem

	lda	levelfeatures
	savemem

	lda	enemy_firing
	savemem
	
	lda	rainbowlaser
	savemem

	lda	bigheadmode
	savemem

	lda.l	m_bigheadmode
	savemem

	lda.l	m_biggerheadmode
	savemem

	lda	skipscramble
	and	#1
	savemem

	lda	rapidfire
	and	#1
	savemem

	lda	firerate
	savemem

	lda	darkmode
	savemem

	lda	mistmode
	savemem

	lda	palnumber
	savemem

	lda	strat_valid
	savemem

	lda	pweptemp
	savemem

	lda	bgmspeed
	savemem

	lda	curr_ship
	savemem

	lda	showcolbox
	savemem

	lda	nanmode
	savemem

	lda	wiremode
	savemem

	lda	fpscounteron
	savemem

	lda	bouncedeath
	savemem

	lda	nocrosshairpls
	savemem

	lda	noborders
	savemem

	lda	doboostmeter
	savemem

	lda.l	m_wobblemode
	savemem

	lda	newcamera
	savemem

	lda	playerW_HP
	savemem

	lda	playerB_HP
	savemem

	lda	classichp
	savemem

	lda	barrelroll
	savemem

	lda	noenginemode
	savemem

	lda	hilitecolor
	savemem

	lda	bgmsfx
	savemem

	lda	dotsstars
	savemem

	lda	randomsound
	savemem

	lda	randombgm
	savemem

	lda	randompos
	savemem

	lda	viewshit
	savemem

	lda	cursedopen
	savemem

	lda	nohud
	savemem

	lda	moredots
	savemem

	lda	randompalette
	savemem

	lda	randomobjpal
	savemem

	lda	gridlines
	savemem

	lda	fpsspeed
	savemem

	lda	currxhair
	savemem

	lda	currxhair2
	savemem

	lda	currxhair3
	savemem

	lda	currxhair4
	savemem
	
	lda	currxhair5
	savemem

	lda.l	m_wabblemode
	savemem

	lda.l	m_celmode
	savemem

	lda	curr_ship2
	savemem

	lda	curr_ship3
	savemem

	lda	curr_ship4
	savemem

	lda	curr_ship5
	savemem

	lda	ntscpalswap
	savemem

	lda	noobjmode
	savemem

	stz	memo
	stz	memo+1
	stz	memi
	stz	memi+1
	rtl



















;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------


;-------------------------------------------------







;-------------------------------------------------
;-------------------------------------------------





do_bgm_generic_l
	jml	[textpt]




		





