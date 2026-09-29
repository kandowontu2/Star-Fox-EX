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
;*   File: PLANETS.ASM                                                     *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: PLANET SELECTION SCREEN.                                        *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 10/4/92                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:                                                                 *
;*	Dylan Cuthbert.                                               *
;*                                                                         *
;***************************************************************************

	incpublics	planets2.ext

waitdma2243
	php
	a8
	lda	#222
	sta	dmatemp
	jsl	waitdma_ll

	lda	#0
.loop	dec	a
	bne	.loop
	plp
	rts
; --------------------------------------------------
;--------------------------------------------------------------
; initialise the planet selection, should only be done per game


planetseq3_l

	a8i16

;	jsr	convertroute3
	stz	stopcounting

	stz	sectorkfade
	stz	waterfade
	stz	waterframe
	stz	sectorkframe
	stz	sunframe
	stz	sunfade
	stz	fadepaltofxgreen
	stz	fadepaltofxblue
	stz	fadepaltofxdes
	stz	fadepaltofxpink
	stz	fadepaltoyamao
	stz	fadepaltoyamab
	stz	fadepalrandom
	stz	fadepaltocorn2
	stz	fadepaltocornnite
	stz	fadepaltit
	stz	fadepalrb1
	stz	fadepalrb2
	stz	fadepalrb3
	stz	fadepalrb4
	stz	fadepalrb5
	stz	sdpck3
	ldx	#0
	stx	sdgpt3
	stx	sdspt3
	stz	nosetport3

	disable




;	lda	#1
;	sta	stage
;	lda	#13
;	sta	whichroute

	a16
	lda	#0000
	sta.l	M_LXPOS
	sta	lightx
	lda	#0000
	sta.l	M_LYPOS
	sta	lighty
	lda	#150
	sta	lightz
	sta.l	M_LZPOS			; set light source position

	ldx	#planetlines_spr
	stx	currentsprite
	stz	flashship
	lda	#2					;
	sta	shipangle			; set ship to face to the right

	jsl	setup_planets_ll3

	jsr	copylight3
	a8
	lda	drawmap+1		; set mario draw base
	lsr	a
	lsr	a
	sta	mscrbase

	lda	#-1
	sta	currentplanet
	lda	#6
	sta.l	mspr_pal
	jsr	drawplanetsprites3	; draw them funky sprites/spheres

	jsr	blitscreen3
	jsr	switchbuffer3_fast3
	jsr	blitscreen3
	jsr	switchbuffer3_fast3

	jsl	setupplanetpal_ll3	; transfer the shaded palette

	ai16
	lda	#p_bg1_cgx1+(16*16+1)*8*8/2
	sta	vmaddl
	ldx	#0
.copyemall	lda	mycrapchars,x
	sta	vmdatal
	inx
	inx
	cpx	#4*8*30
	bne	.copyemall		; transfer the dot characters (4 of them)

	lda	#p_bg1_cgx2+(16*16+1)*8*8/2
	sta	vmaddl
	ldx	#0
.copyemall2	lda	mycrapchars,x
	sta	vmdatal
	inx
	inx
	cpx	#4*8*30
	bne	.copyemall2		; into both buffers (double buffered)

	a16
	stz	togglebit		; clear toggle (used when drawing lines)
	lda	#16
	sta	fadecount		; set fade to dark

	dec	stage		; stage set to previous for
				; drawing purposes
	bmi	.nodraw		; first time, so no lines
	
	inc	stage
	jsl	drawplanetlines_ll3
	lda	currentplanet
	pha
	dec	stage
	jsl	drawplanetlines_ll3	; draw lines between completed stages
	pla
.nodraw	pha
	inc	stage		; restore stage

	a8i16
	lda	currentplanet
	bpl	.nocando
	lda	#0
.nocando
	a16
	asl	a
	tax
	lda.l	startplanetpos3,x
	sta	shipxy
	sta	newshipxy

	jsr	drawroutename3	; tell the player how easy it is

	ai8
	lda	#1<<3
	sta	hdmaen

	waitdma	190	; wait for hdma to initialise
	waitdma	100
	a16
	pla
	a8
	pha
	enable
	bgm2	newmap
	pla
	cmp	#14
	beq	.blackholebgm
	cmp	#10
	bne	.normbgm
.blackholebgm	startbgm	$f
.normbgm

	lda	#-1
.nxtfad	pha
	waitdma	200
	jsr	waitdma2242

	pla
	inc	a
	inc	a
	sta.l	xinidisp5
	sta.l	xinidisp6
	sta.l	xinidisp7
	cmp	#$f
	bne	.nxtfad		; fade the screen in quickly

; fast planet screen check:
;	jsl	read_joypadt_ll3
;	TESTKEYDOWN	SELECT
;	beq	.nostart
;	TESTKEYDOWN	B
;	beq	.nostart
;	TESTKEYDOWN	A
;	beq	.nostart
;	fast
.nostart

	a8i16
	a8
	jsr	waitdma2242
	jsr	waitdma2242
	lda	bgmspeed
	beq	.nochange
	cmp	#1
	beq	.slow2
	cmp	#2
	beq	.fast2
.slow2
	jsr	waitdma2242
	startbgm	$f4
	bra	.nochange
.fast2
	jsr	waitdma2242	
	startbgm	$f5
.nochange
	a16
	lda	#0
	sta	hudrot+1
	stz	superspeeddelay
	stz	isoviewmode
	stz	crosshairflag
	stz	noview
	lda	#255
	sta	crosshairon
	lda	stage		; first timer?
	lbne	.shownext		; no, so join the dots
	lda	#10		; set stage to maximum, so
	sta	stage		; the complete line is drawn

;--------------------------
; first timer:
; let's initiate the virgin

	a16
	lda	#16
	sta.l	mspr_pal
.loophere
	inc	gameframe

	jsr	copylight3

	jsr	spinplanets3		; make the planets rotate

	lda.l	mspr_pal
	pha
	lda	#6
	sta.l	mspr_pal
	lda	#-2
	sta	currentplanet	; no current planet
	jsr	drawplanetsprites3	; draw them funky sprites/spheres
	pla
	sta.l	mspr_pal

	jsr	dma256screen3	; dma 256 colour screen
	lda.l	mspr_pal
	beq	.full
	sec
	sbc	#4
	sta.l	mspr_pal
;	jsr	fadelines2
.full
	jsr	switchbuffer3_fast3	; switch in new screen
	lda	gameframe
	bit	#2
	beq	.off
	jsl	drawplanetlines_ll3
	bra	.on
.off
	jsl	undrawplanetlines_ll33
.on
	jsl	read_joypad_ll3		; timed key read

	lda	trig0			; check for stage select
;	bit	#pad_SELECT!PAD_LEFT!pad_RIGHT!pad_UP!pad_DOWN
	bra	.nopress
.fadeoot
;	lda.l	mspr_pal
;	inc	a
;	inc	a			; fade out the lines
;	cmp	#16
;	beq	.nomorefadeout
;	sta.l	mspr_pal
;	jsr	fadelines223
	lda	#16
	sta.l	mspr_pal
;	bra	.fadeoot
.nomorefadeout
	jsr	waitdma2242
	jsl	undrawplanetlines_ll33	; clear the course line entirely
	lda	trig0
	bit	#PAD_LEFT!pad_SELECT!pad_UP
	a8
;	TESTJOYPAD	LEFT		; if left was pressed
	bne	.doleft			; go to doleft

.normal
	lda	whichroute
	inc	a			; else select next route
	cmp	#7			;	max route +1
	bne	.ok
	lda	#4			;	min route
.ok	sta	whichroute
	sta	actualroute
	bra	.carryon2
.doleft		
	lda	whichroute
	dec	a			; select previous route
	cmp	#3			;	min route -1
	bne	.ok2
	lda	#6			;	max route
.ok2	sta	whichroute
	sta	actualroute
.carryon2
	trigse	se_cursor
.nxtfad123
	jsr	fadelines223		; transfer the cgx
	jsr	waitdma2242
	jsl	drawplanetlines_ll3	; draw complete course (stage=max)
	lda.l	mspr_pal			; fade register
	beq	.okey
	dec	a
	dec	a
	sta.l	mspr_pal		; fade it up, palette 15 is dark
	bra	.nxtfad123
.okey

.carryon
	jsr	drawroutename3		; tell the player how easy it is
	a16


; NOTE: The following bit is best removed if the final game is released

.nopress

;	IFNE	planetcheat
;	IFNE	cesdemo-2
;	testjoypad	TRIGHT
;	beq	.end3
;	testjoypad	TLEFT
;	beq	.end3
;	testkeydown	TLEFT
;	bne	.end3
	stz	twoplayer
	lda	playertwoactivated
	cmp	#0
	beq	.notwoplayer
	stz	ponedead
	lda	#0
	sta.l	m_playeronedead
.notwoplayer
	a16

	testjoypad	TRIGHT
	beq	.nosecondplanet3
	a8
	lda	#1
	sta	map2
	stz	map3
	a16
	sta	firstdnld
	sta.l	oncewipe
	lda	#4
	sta	whichroute
	jsl	initialise_l
	jml	planetseq2_l

.nosecondplanet3
	testjoypad	TLEFT
	beq	.end3
	lda #1
	sta comet
	lda	#255
	sta	lightx
	lda	#0
	sta	lighty
	stz	lightx+1
	stz	lighty+1

.end3
	lda	secretgodmode
	bne	.skipngp
	lda	newgameplus
	bne	.nocheat
.skipngp
	TESTKEYDOWN	X,cont0l		; cheat mode select?
	beq	.nocheat
	TESTKEYDOWN	Y		; cheat mode select?
	beq	.nocheat
;	ENDC
	a8
	trigse	$A0h
	a16
	jsr	waitdma2242
	jsl	undrawplanetlines_ll33	; clear the appropiate bitz
	lda	#10
	sta	stage
	jsl	drawplanetlines_ll3
	stz	stage
	stz	togglebit
	lda	#16
	sta	fadecount
	jsl	drawplanetlines_ll3
	jmp	.cheatmode		; hit that funky cheat
.nocheat
;	ENDC

	lda	trig0
	bit	#pad_START!pad_A!pad_B
	lbeq	.loophere			; and around we go again, unless
					; the berk pushed start!A
					; now yer do' wanna do thaet...


	
	lda	pepperskip
	bne	.ministuff
	bra	.nomini
.ministuff
	stz	stage
	jmp	.exitpepper2



	
.nomini
	stz	stage			; select stage 0
	stz	currentplanet		; and the start planet
	jsl	drawplanetlines_ll3	; set the stage
	a8
	startbgm	$f1
	a16
	lbra	.continuewithgame	; and get on with it

;	IFNE	planetcheat

.cheatmode
	jsr	drawroutename3		; easy, normal or hard
	a8i16
.cheatloop


	IFEQ	0
	jsl	read_joypadt_ll3		; cheat
;	TESTJOYPAD	DOWN
;	bne		.newroute
;	TESTJOYPAD	UP
;	bne		.newroute
	bra		.nocheatdown
.newroute3
	inc	stage			; cheat
	jsr	waitdma2242		; cheat
	jsl	undrawplanetlines_ll33	; cheat
	stz	stage			; cheat
	lda	whichroute		; cheat
	inc	a			; cheat
	cmp	#12
	beq	.resetit
	cmp	#7			; cheat
	bne	.cheatok3		; cheat
	lda	#10			; cheat
	bra	.cheatok3
.resetit
	lda	#4
.cheatok3	sta	whichroute		; cheat
	sta	actualroute
	bra	.newroute2

.nocheatdown
	TESTJOYPAD	SELECT		; cheat
	beq	.cheatnosel		; cheat
.newroute	inc	stage			; cheat
	jsr	waitdma2242		; cheat
	jsl	undrawplanetlines_ll33	; cheat
	lda	#10
	sta	stage
	jsl	drawplanetlines_ll3
	stz	stage			; cheat
	lda	whichroute		; cheat
	dec	a			; cheat
	cmp	#9
	beq	.resetitagain
	cmp	#4			; cheat
	bpl	.cheatok45		; cheat
	lda	#11			; cheat
	bra	.cheatok45
.resetitagain
	lda	#6
.cheatok45	sta	whichroute		; cheat
	sta	actualroute
.newroute2
	trigse	se_cursor
	jsl	drawplanetlines_ll3	; cheat
	lda	#16			; cheat
	sta	fadecount		; cheat
	stz	togglebit		; cheat
	jsr	drawroutename3		; cheat
	jsr	setshippos3
.cheatnosel					; cheat
	TESTJOYPAD	LEFT		; cheat
	beq	.nocheatleft		; cheat
	lda	stage			; cheat
	beq	.nocheatleft		; cheat
;	lda	#16			; cheat
;	sta	fadecount		; cheat
;	stz	togglebit		; cheat
;	inc	stage			; cheat
;	jsr	waitdma2242		; cheat
;	jsl	undrawplanetlines_ll33	; cheat
;	dec	stage			; cheat
;	jsr	waitdma2242		; cheat
;	jsl	drawplanetlines_ll3	; cheat
	dec	stage			; cheat
	jsr	setshippos3
	bra	.waitoncemore		; cheat
.nocheatleft					; cheat
	TESTJOYPAD	RIGHT		; cheat
	beq	.nocheatright		; cheat
	inc	stage			; cheat
	lda	#16			; cheat
	sta	fadecount		; cheat
	stz	togglebit		; cheat
	jsr	waitdma2242		; cheat
	jsl	drawplanetlines_ll3	; cheat
	lbcs	.cheatfinished		; cheat
	dec	stage			; cheat
	bra	.waitoncemore		; cheat
.nocheatright				; cheat
	jsr	waitdma2242		; cheat
	jsl	drawplanetlines_ll3	; cheat
;	jsr	switchbuffer3_fast3	; cheat
;	jsr	fadecharsin3		; cheat
;	lbcc	.cheatloop		; cheat
	ENDC
.waitoncemore				; cheat
	jsl	read_joypadt_ll3		; cheat
	testjoypad	TRIGHT
	beq	.nosecondplanet4
	lda	#1
	sta	map2
	stz	map3
	sta	firstdnld
	sta.l	oncewipe
	lda	#4
	sta	whichroute
	jsl	initialise_l
	jml	planetseq2_l

.nosecondplanet4
	TESTJOYPAD	START		; cheat
	lbne	.cheatfinished		; cheat
	TESTJOYPAD	UP
	lbne	.newroute
	TESTJOYPAD	DOWN
	lbne	.newroute3
	TESTJOYPAD	SELECT		; cheat
	lbne	.newroute		; cheat
	TESTJOYPAD	RIGHT		; cheat
	beq	.noright		; cheat
	a8
	lda	whichroute
	cmp	#0
	beq	.ezmed
	cmp	#1
	beq	.ezmed
	cmp	#2
	beq	.hrd
	cmp	#3
	beq	.spcl
	cmp	#4
	beq	.spcl
	cmp	#5
	beq	.ezmed
	cmp	#6
	beq	.spcl
	cmp	#7
	beq	.xtraspcl
	cmp	#8
	beq	.xtraspcl
	cmp	#9
	beq	.xtraspcl
	cmp	#10
	beq	.xtraspcl
.xtraspcl
	bra	.dne
.ezmed
	lda	stage
	cmp	#5
	beq	.dne
	bra	.oktogo
.hrd
	lda	stage
	cmp	#6
	beq	.dne
	bra	.oktogo
.spcl
	lda	stage
	cmp	#4
	beq	.dne
	bra	.oktogo
.oktogo
	trigse	se_cursor
	inc	stage			; cheat
.dne
	jsr	setshippos3
	bra	.continue
.noright	TESTJOYPAD	LEFT		; cheat
	beq	.noleft			; cheat
;	inc	stage			; cheat
;	jsr	waitdma2242		; cheat
;	jsl	undrawplanetlines_ll33	; cheat
;	dec	stage			; cheat
;	beq	.continue		; cheat
	lda	stage
	beq	.continue
	dec	stage			; cheat
	jsr	setshippos3
;	jsr	waitdma2242		; cheat
;	jsl	drawplanetlines_ll3	; cheat
	trigse	se_cursor
.noleft					; cheat
	jmp	.waitoncemore		; cheat
.continue					; cheat
;	jsr	waitdma2242		; cheat
;	jsl	drawplanetlines_ll3	; cheat
	jmp	.waitoncemore
;	jmp	.cheatloop		; cheat
.cheatfinished				; cheat
;	jsr	waitdma2242		; cheat
	jsl	drawplanetlines_ll3	; cheat
	lda	pepperskip
	lbne	.exitpepper2
	jmp	.continuewithgame	; cheat

;	ENDC

	shorta
	longi
.shownext					;second and up time around
	a8
	jsr	drawroutename3		; tell the player how easy it is
;	lda	#2
.switchonloop
;;	pha
	a8
	lda	bgmspeed
	beq	.nochangex
	cmp	#1
	beq	.slow2x
	cmp	#2
	beq	.fast2x
.slow2x
	startbgm	$f4
	bra	.nochangex
.fast2x
	startbgm	$f5
.nochangex
	ldx	x1
	phx
	lda	#-1
	sta	currentplanet
	jsr	copylight3
	jsr	spinplanets3
	jsr	drawplanetsprites3
	jsr	dma256screen3
	jsr	switchbuffer3_fast3
	plx
	stx	x1
	jsr	moveshipalongpath3
	bcc	.switchonloop
;;	pla
;;	dec	a
;;	bne	.switchonloop

;	dec	stage
;	jsl	drawplanetlines_ll3	; draw lines between completed stages
;	inc	stage
;; join the dots to the next stage
;;	stz	trans_flag
;	dec	stage
.loopyd
;	jsr	waitdma2242
;;	jsr	switchbuffer3_fast3

;	jsr	fadecharsin3	; plinkety plink
;	bcc	.loopyd		; I am going dotty
;	inc	stage

	jsr	waitdma2242
	jsl	drawplanetlines_ll3	; just to make sure, draw it again
;	lbcc	.loopyd

	lda	#tm_planets
	sta	trans_flag
	lda	currentplanet
	pha
	lda	#-2
	sta	currentplanet
	stz	helpshots
	lda	playertwoactivated
	cmp	#0
	beq	.notwoplayer2
	stz	ponedead
	lda	#0
	sta.l	m_playeronedead
.notwoplayer2
.rotateforabit
	jsr	copylight3
	jsr	spinplanets3
	jsr	drawplanetsprites3
	jsr	dma256screen3		; dma 256 colour screen
	jsr	switchbuffer3_fast3
	jsl	read_joypad_ll3
	lda	lives
	cmp	#1
	bmi	.helpp1
	bra	.p2check
.helpp1
	lda	#1
	sta	lives
.p2check
	lda	livestwo
	cmp	#1
	bmi	.helpp2				;extra life if out of lives and other players beat the level
	bra	.donep2check
.helpp2
	lda	#1
	sta	livestwo
.donep2check
.p3check
	lda	livesthree
	cmp	#1
	bmi	.helpp3				;extra life if out of lives and other players beat the level
	bra	.donep3check
.helpp3
	lda	#1
	sta	livesthree
.donep3check
.p4check
	lda	livesfour
	cmp	#1
	bmi	.helpp4				;extra life if out of lives and other players beat the level
	bra	.donep4check
.helpp4
	lda	#1
	sta	livesfour
.donep4check
	stz	fastend
	a16

	testjoypad	TRIGHT
	beq	.end4
	lda #1
	sta comet
	lda	#255
	sta	lightx
	lda	#0
	sta	lighty
	stz	lightx+1
	stz	lighty+1

.end4
	lda	secretgodmode
	bne	.skipngp2
	lda	newgameplus
	bne	.nocheat2
.skipngp2
	TESTKEYDOWN	X,cont0l		; cheat mode select?
	beq	.nocheat2
	TESTKEYDOWN	Y		; cheat mode select?
	beq	.nocheat2
	a8
	trigse	$A0h
	a16
	jmp	.cheatmode
.nocheat2
	lda	trig0
	bit	#pad_B!pad_START!pad_A
	a8
	lbeq	.rotateforabit
	lda	pepperskip
	lbne	.exitpepper
	pla
	sta	currentplanet

.continuewithgame
	a8i16
	startbgm	$f1
	trigse	$10
	lda	#1
	sta	flashship

	lda	#4*20+3
.andagainwait
	pha
	jsr	waitdma2242
	pla
	dec	a
	bne	.andagainwait

	disable
	waitdma	224
	jsr	setupplanetwindow3	; set up the filter window's parameters
	jsr	waitdma2242
	jsr	waitdma2242

; here, we fade everything apart from the selected planet by using
; window 1 on BG1 and hdma channel 2

	a8i16
	ldx	#0
.andagainfade
	phx
	lda	#1
.nxtwait	pha
	txa
	jsr	fadecol03		; fade colour 0 and timed wait
;	jsr	waitdma2242
	pla
	dec	a
	bne	.nxtwait		; slow down the fade a bit
	plx
	txa
	ora	#%11100000
	sta	coldata			; fade it (5 bit resolution - )
	inx				;         (better than inidisp)
	cpx	#32
	bne	.andagainfade
.finished
; now clear the mario bitmap entirely
	jsr	clearscreen3

	a8
	jsr	waitdma2242
	waithtime	0,15
	lda	#1
	sta	tm			; enable only bg1
	a16

	jsr	clearlines3		; clear the lines
	jsr	drawselectedplanet3	; redraw the selected planet only
	enable
	jsr	dma256screen3		; and dma it
	disable
	jsr	switchbuffer3		; and show it
	jsr	disablewindow3		; turn off the window

	stz	bg1scrx
	stz	bg1scry
	stz	bg2scrx
	stz	bg2scry
	stz	scrdxl
	stz	scrdyl			; clear all scroll registers

;-----------------------------------
	ldx	#32			; 32 frames and counting

.scrollitabit
	phx
	stx	scrframesb
	jsr	calcdxdy3		; gradient for smooth scroll

	a16

	lda	scrdx
	clc
	adc	bg1scrx
	sta	bg1scrx
	lda	scrdy
	clc
	adc	bg1scry
	sta	bg1scry			; add the vectors

	jsr	waitdma2242
; copy the scroll regs in
	a8
	lda	bg1scrx
	sta	bg1hofs
	lda	bg1scrx+1
	sta	bg1hofs
	lda	bg1scry
	sta	bg1vofs
	lda	bg1scry+1
	sta	bg1vofs			; set the scroll registers

	plx
	dex
	bne	.scrollitabit

;----------------------------------------------------------
; initialise the hdma
	a8i16
	lda	#1<<1
	sta	hdmaen			; start inidisp hdma going
	waitdma	100
	waitdma	98			; wait for hdma to take hold


;----------------------------------------------------------
; ok, now for a bit of General Pepper...


	decvramwait	0,(p_bg2_cgx+pepperscreensize/2)+64/2,dogccr,4*k,0,planvw_pos2
	decbg2vramwait	0,p_bg2_scr,dogpcr,2*k,2,planvw_pos2


	jsr	copyfox3
;	jsr	clearpepperscreen3
;	jsr	dmapepperscreen3


	waitdma	planvw_pos2
; set up the fade to just fade bg2
	lda	#1+2
	sta	tm
	lda	#%10000010
	sta	cgadsub
	stz	cgswsel
	lda	#%11111111
	sta	coldata			; set up a filter fade
	sta.l	pepperfade

	ldx	#planvw_pos2+2	; top of the screen
	stx	vtimel		; set position for irq

	lda	#tm_planets2
	sta	trans_flag
	enable


	jsr	clearpepperscreen3
	jsr	dmapepperscreen3


;----------------------------------------------------------
; clear the mario bitmap again

	jsr	clearscreen3

	a16
	lda	#15
	sta.l	m_radius		; radius=16 (32x32)
	lda	#(15*32768)/16
	sta.l	m_scale			; set the intensity to max

; now comes the tricky bit, all the cgx and scr change entirely but
; the selected stage stays in the centre of the screen and the player
; shouldn't spot a thing (fingers crossed)

	jsr	drawplanetincentre3	; reposition planet in bitmap
	jsr	dma256screen3_fast	; dma it
;	jsr	switchbuffer3		; switch it in, then..

	a8
	lda	#-40
	sta	bg1vofs
	stz	bg1vofs
	stz	bg1hofs
	stz	bg1hofs			; reposition all scroll offsets

	lda	#p_bg1_scr2>>8
	sta	bg1sc			; change bg1 screen to square

; da da.. the screen format has been changed without anyone noticing

; trigger the zoom sound...
	a16
	lda	currentplanet
	asl	a
	tax
	a8
	lda.l	planetsprs3,x
	bit	#128
	bne	.spheresnd
	startbgm	bgm_mapselectshort
	bra	.miss
.spheresnd	startbgm	bgm_mapselect
.miss

; now the hdma is switching the screen on and off to give us an effective
; forced blanking period of over half the screen
	ldx	#40
.pauseabit
	phx
	jsr	spinplanets3
	jsr	drawplanetincentre3	; draw it
	jsr	dma256screen3_fast	; transfer it \
;	jsr	switchbuffer3_fast3	; show it      >(should only take 1 vbl)

	a16
	lda	currentplanet
	asl	a
	tax
	lda.l	planetsprs3,x
	bit	#128
	bne	.sphere
; zoom up for texture map
	lda.l	m_radius
	inc	a
	cmp	#126
	beq	.nomore
	sta.l	m_radius
	bit	#1
	beq	.nomore
	plx

	cpx	#20
	bne	.nofadeup
	a8
	lda	#254
	sta.l	pepperfade
.nofadeup	a16

	inx
	phx
	bra	.nomore
.sphere
; zoom up for sphere
	plx

	cpx	#5
	bne	.nofadeup2
	a8
	lda	#254
	sta.l	pepperfade
.nofadeup2	a16
	phx

	lda.l	m_radius
	inc	a
	cmp	#58
	beq	.nomore
	sta.l	m_radius		; zooooom in reet close
.nomore
; now to play around with light source position
	lda.l	m_roty
	clc
	adc	#4*256
	sta.l	m_roty

	lda.l	M_LXPOS
	sec
	sbc	#10
	sta.l	M_LXPOS

	lda.l	M_LZPOS
	clc
	adc	#10
	sta.l	M_LZPOS

	plx
	cpx	#16+2
	bcs	.con

	txy
	a8
	dex
	lda.l	fadetable3,x
;	sta	coldata			; fade the screen out

	tyx
	a16
.con
	dex
	lbne	.pauseabit


;-------------------------------------------------------------------
; now for the Pepper to speak
	a8i16
	ldx	#planvw_pos3+2	; top of the screen
	stx	vtimel		; set position for irq

	lda	#planmdm2
	sta	mario_draw_mode

	lda	#0
	sta.l	pepperchars

	lda	#34
	sta.l	xinidisp4-1

	waitdma	planvw_pos3

	stz	bg2vofs
	stz	bg2vofs
	stz	bg2hofs
	stz	bg2hofs

.muttering2
	jsr	clearpepperscreen3
	jsr	showplanetname3
	jsr	dmapepperscreen3

	a16
	lda.l	m_totalchars
	a8
	bne	.exitmutter
	lda.l	M_LASTCHAR
	cmp	#39
	beq	.nosound2
	trigse	$89
.nosound2
;	lda	#5
;.waitabit2	pha
;	waitdma	121
;	waitdma	120
;	pla
;	dec	a
;	beq	.waitabit2

	lda.l	pepperchars
	inc	a
	sta.l	pepperchars

	bra	.muttering2
.exitmutter
	lda	#0
	sta.l	pepperchars
.muttering
	jsr	clearpepperscreen3
	lda.l	pepperchars
	pha
	lda	#255
	sta.l	pepperchars
	jsr	showplanetname3
	pla
	sta.l	pepperchars
	jsr	pepperspeaking3
	jsr	dmapepperscreen3

	a16
	lda.l	m_totalchars
	a8
	bne	.nosound
	lda.l	M_LASTCHAR
	cmp	#39
	beq	.nosound
	trigse	$89
.nosound

	lda	#50
.waitabit2
	lda	stage
	cmp	#10
	bne	.waitabit
	stz	stage
.waitabit	pha
	jsl	read_joypadt_ll3
	waitdma	120
	TESTJOYPAD	start
	bne		.exitpepper
	TESTJOYPAD	B
	bne		.exitpepper
	TESTJOYPAD	A
	bne		.exitpepper
	pla
	dec	a
	beq	.waitabit

	lda.l	pepperchars
	cmp	#255
	beq	.exitpepper2
	inc	a
	sta.l	pepperchars

	lda	pepperskip
	lbne	.muttering2
	jmp	.muttering

.exitpepper
	pla
.exitpepper2
	a8
	lda	bgmsfx
	cmp	#2
	bpl	.nosoundxx
	trigse	$13
.nosoundxx
	waitdma	224
	waitdma	222	; wait one frame to trigger se
	waitdma	224
	waitdma	222	; wait another frame to trigger se

	disable
	a8
	lda	#%10000011
	sta	cgadsub
	stz	cgswsel
	lda	#%11100000
	sta	coldata			; set up a filter fade


	lda	#0
.fadeitallout
	pha
	waitdma	planvw_pos3+1
	waitdma	planvw_pos3
	pla
	ora	#%11100000
	sta	coldata
	and	#%11111
	inc	a
	cmp	#32
	bne	.fadeitallout



;------------------------------------------
; initialise game

;	jsr	convertroute3

	jsr	waitdma2242

.leaveplanets

	IFEQ	1
	a8
	stz	bg1hofs
	stz	bg1hofs
	stz	bg1vofs
	stz	bg1vofs

	stz	bg2hofs
	stz	bg2hofs
	stz	bg2vofs
	stz	bg2vofs

	stz	bg3hofs
	stz	bg3hofs
	stz	bg3vofs
	stz	bg3vofs

	stz	bg4hofs
	stz	bg4hofs
	stz	bg4vofs
	stz	bg4vofs

	stz	hdmaen

	lda	#$80
	sta	inidisp			; screen no more

	setdepth	night

	ai16
	jsl	kill_llist_ll
	a8i16
	lda	drawmap+1		;set mario draw base
	lsr	a
	lsr	a
	sta	mscrbase
	stz	trans_flag

	a16				;set text prt parameters
	lda	#1
	sta.l	m_clrbitmaps
	ENDC

	ai16
	setlevel			; set starting level


;	slow
	lda	pepperskip				;code to check for SNES mini mode, and if so, fix the level for the first level selection.
	lbeq	.skipit					;-kando
	lda	stage					;
	lbne	.skipit					;
;	bra	.skipit		;uncomment for proof that this next section is somewhat working
	ai16
	lda	whichroute
	cmp	#4
	beq	.4rr

.4rr
	lda	#level5_1&$7fff
	sta	mapptr
	a8
	lda	#level5_1>>16
	sta	mapbank
	a16
	jmp	.skipit
.skipit
	stz	stopcounting
	jml	gamestart

; and there we have it, all over and done with
























;-----------------------------------------------------
setshippos3
	php
	a8i16
	jsl	drawplanetlines_ll3

	lda	currentplanet
	a16
	and	#255
	asl	a
	asl	a
	tax
	lda.l	planetpos3+2,x
	sta	newshipxy
	sta	shipxy

	a8
	lda	stage
	pha
	lda	#20
	sta	stage
	jsl	drawplanetlines_ll3

	pla
	sta	stage

	plp
	rts
;-----------------------------------------------------
moveshipalongpath3
	php
	ai16
	lda	scored
	and	#1
	cmp	#0
	beq	.skipthescore
	lda.l	playerscore
	sta.l	playerscoretemp
.skipthescore
	lda	shipxy
	cmp	newshipxy
	lbne	.different

	a8
	ldx	x1
	beq	.nochk
	lda.l	stagepaths,x
	bpl	.noprobs
.nochk
	jsl	drawplanetlines_ll3
	lda	currentplanet
	a16
	stz	x1
	asl	a
	tax
	lda.l	endplanetpos3,x
	sta	newshipxy
	cmp	shipxy
	beq	.finished
	a8
	lda	newshipxy+1	; if new y<old y then new y = old y
	cmp	shipxy+1
	bmi	.different
	lda	shipxy+1
	sta	newshipxy+1
	a16
	lda	shipxy
	cmp	newshipxy
	beq	.finished
	a8
	jmp	.different
.noprobs	SHORTA
	cmp	#upchar&255
	beq	.oneangle
	cmp	#uprightchar&255
	beq	.otherangle
	lda	#2
	bra	.onedone
.otherangle
	lda	#1
	bra	.onedone
.oneangle	lda	#0
.onedone
	sta	shipangle

	a16
	ldy	currentsprite
	lda.l	stagepaths,x
	sta.w	sprchar,y
	lda	y1
	sta.w	sprx,y
	iny
	iny
	iny
	iny
	sty	currentsprite

	lda	y1
	clc
	adc.l	stagepaths+2,x
	sta	y1
	sec
	sbc	#16+(8<<8)
	sta	newshipxy


	inx
	inx
	inx
	inx
	stx	x1


.different
	plp
	clc
	rts

.finished	plp
	sec
	rts

;-----------------------------------------------------
copylight3
	php
	a8
	lda	oldcomet
	bne	.nosound
	lda	comet
	beq	.nosound
	trigse	$91
.nosound
	lda	comet
	sta	oldcomet
	ai16
	lda	lightz
	sta.l	M_LZPOS

	lda	comet
	and	#255
	bne	.faster
	lda.l	M_LXPOS
	ldx	lightx
	jsr	.chase
	sta.l	M_LXPOS
	
	lda.l	M_LYPOS
	ldx	lighty
	jsr	.chase
	sta.l	M_LYPOS

	plp
	rts

.faster
	lda.l	M_LXPOS
	ldx	lightx
	jsr	.chase2
	sta.l	M_LXPOS
	
	lda.l	M_LYPOS
	ldx	lighty
	jsr	.chase2
	sta.l	M_LYPOS

	plp
	rts

.chase	stx	x1
	cmp	x1
	bmi	.incme
	dec	a
	rts
.incme	inc	a
	rts
.chase2	stx	x1
	cmp	x1
	bmi	.incmetwice
	sec
	sbc	#16
	rts
.incmetwice	clc
	adc	#16
	rts

;-----------------------------------------------------
spinplanets3
	php
	ai16

	ldx	#0
.nxtone
	lda	roty1,x
	clc
	adc.l	.speeds,x
	sta	roty1,x
	inx
	inx
	cpx	#maxplanetspheres
	bne	.nxtone

	plp
	rts

.speeds	dw	6*256
	dw	-3*256
	dw	4*256
	dw	3*256
	dw	-5*256
	dw	-5*256

planet_rotz3
	dw	28*256
	dw	-10*256
	dw	40*256
	dw	50*256
	dw	-20*256
	dw	-28*256

;-----------------------------------------------------
clearlines3
; clear the line character data
	IFEQ	1
	php
	ai16
	jsr	waitdma2242
	lda	vmap2
	clc
	adc	#(16*16+singledot)*8*8/2
	sta	vmaddl

	ldx	#(64*4)/2/8
.andagainclear
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	dex
	bne	.andagainclear
	
	lda	vmap1
	clc
	adc	#(16*16+singledot)*8*8/2
	sta	vmaddl

	ldx	#(64*4)/2/8
.andagainclear2
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	stz	vmdatal
	dex
	bne	.andagainclear2

	plp
	ENDC
	rts


;-----------------------------------------------------
disablewindow3
	php
	a8
	jsr	waitdma2242
	stz	coldata
;	lda	#1<<3
;	sta	hdmaen
	stz	cgswsel
	stz	cgadsub
	stz	wobjsel
	plp
	rts

;-----------------------------------------------------
; copy the fox graphic from the map screen into
; its new position on the pepper screen (0-$180)

copyfox3
	php
	ai16

	waitdma	planvw_pos2

	disable

	a8
	lda	#128
	sta	vmainc
	a16

	ldx	#p_bg2_cgx+32*16
	ldy	#p_bg2_cgx+pepperscreensize/2+($40+2)*16
.madacopyshiteinai
	stx	vmaddl
	lda	vmdatalr
	sty	vmaddl
	sta	vmdatal	; copy word

	inx
	iny

	cpx	#(p_bg2_cgx+32*16)+20*16
	bne	.madacopyshiteinai

	enable

	plp
	rts
;-----------------------------------------------------

setupplanetwindow3
	php
	ai16

	waitdma	224

; set up a window for bg1 so everything can
; be faded apart from the selected planet

	lda	currentplanet
	asl	a
	asl	a
	tax
	a8
	lda.l	planetpos3+2,x
	inc	a
	sta	wh0	; left edge
	clc
	adc	#29
	sta	wh1	; right edge

	lda.l	planetpos3+3,x
	lsr	a
	sta	x1
	sta.l	xhdma_wv0

	lda.l	planetpos3+3,x
	sec
	sbc	x1
	sta.l	xhdma_wv1	; set vertical position

	lda	#(1<<2)!(1<<3)
	sta	hdmaen

	lda	#3<<4
	sta	wobjsel

	stz	wbglog
	lda	#%1100
	stz	wobjlog

	lda	#1+2
	sta	tm
	lda	#1
	sta	ts

	stz	tmw
	stz	tsw

	lda	#%00100000
	sta	cgswsel		; set filter on

	lda	#%10010011	; set subtraction mode
	sta	cgadsub

	lda	#%11100000
	sta	coldata

	plp
	rts

;-----------------------------------------------------

drawroutename3
	php
	ai16
	phx
	lda	x1
	pha
	lda	tpa
	pha

	jsl	CALCTOTALSCORE_L

	jsr	waitdma2242
	lda	#p_bg2_scr+32*25+28  ; level location
	sta	vmaddl

	lda	whichroute
	and	#255
	asl	a
	tax
	lda.l	chars3,x
	sta	vmdatal
	; inc	a
	; sta	vmdatal											; this part of code
	; inc	a												; determines how many tiles to load
	; sta	vmdatal											; for LEVEL1/2/3/4
	; inc	a
	; sta	vmdatal
	; inc	a
	; sta	vmdatal
	;inc	a
	;sta	vmdatal
	lda	scored
	and	#1
	cmp	#1
	beq	.skipplanetscore
	lda	#p_bg2_scr+32*24+24  ; score counter location -32*24 height - 24 L/R - same for level/bonus-
	sta	vmaddl
;	lda	#1000				 ; adds 6th 0 to the score counter
;	jsr	.countup             ; non functional > 100000
	lda	#100
	jsr	.countup
	lda	#10
	jsr	.countup
	lda	#1
	jsr	.countup

	lda	#$88+32+(6<<10)
	sta	vmdatal
	sta	vmdatal
.skipplanetscore
	ldy	credits
	beq	.nocreds
	lda	#p_bg2_scr+32*23+27  ; bonus location
	sta	vmaddl
	lda	#$be+32+(6<<10)
.creds
	sta	vmdatal
	dey
	bne	.creds
.nocreds

	pla
	sta	tpa
	pla
	sta	x1
	plx
	plp
	rts
.countup	sta	x1
	ldx	#-1
	lda	tpa
.countup2
	inx
	sec
	sbc	x1
	bpl	.countup2
.counted	clc
	adc	x1
	sta	tpa
	txa
	clc
	adc	#32+$88+(6<<10)
	sta	vmdatal
	rts
	

chars3
	dw	$6c+32+(6<<10)	; normal
	dw	$6c+32+(6<<10)	; easy
	dw	$6c+32+(6<<10)	; hard
	dw	$29+32+(6<<10)	; course 4
	dw	$ab+32+(6<<10)	; course 5 - (tiles+32+(palette row)<<10)
	dw	$ac+32+(6<<10)	; course 6
	dw	$ad+32+(6<<10)	; Black Hole
	dw	$14+32+(6<<10)	; OOTD
	dw	$ad+32+(6<<10)	; Credits
	dw	$ad+32+(6<<10)	; Credits2
	dw	0	; course 7	
	dw	$ad+32+(6<<10)	; course 7	
blitscreen3
	php
	a8i16
	ldx	vmap1			; blit the mario screen in
	dmaxvram	7,(bitmapbase+bitmap1),planbmpsz
	plp
	rts

clearscreen3
	php
	a8i16
	call_mario	mclrmapscreen
	plp
	rts

;-----------------------------------------------------


dmapepperscreen3
	php
	a8i16

.wait	lda	planetdma
	bne	.wait

	inc	planetdma

.wait2	lda	planetdma
	bne	.wait2

;	waitdma	planvw_pos3
;	ldx	#p_bg2_cgx+64/2
;	dmaxvram	7,(bitmapbase+bitmap1),peppersize1
;
;	waitdma	planvw_pos3
;	ldx	#p_bg2_cgx+64/2+peppersize1/2
;	dmaxvram	7,(bitmapbase+bitmap1)+peppersize1,peppersize2
;
;	waitdma	planvw_pos3
;	ldx	#p_bg2_cgx+64/2+peppersize1/2+peppersize2/2
;	dmaxvram	7,(bitmapbase+bitmap1)++peppersize1+peppersize2,peppersize3

	plp
	rts

;-----------------------------------------------------
clearpepperscreen3
	php
	a8i16

	call_mario	mclrpepperscreen

	plp
	rts


;-----------------------------------------------------

amount1	=	(planbmpsz/4)
amount2	=	(planbmpsz/4)
amount3	=	(planbmpsz/4)
amount4	=	(planbmpsz/4)

dma256screen3
	php
	a8i16

.notyet	lda	planetdma
	bne	.notyet

	lda	#1
	sta	planetdma

.notyet2	lda	planetdma
	bne	.notyet2

;	php
;	a8i16
;	jsr	waitforirq
;	ldx	vmap2
;	dmaxvram	7,(bitmapbase+bitmap1),amount1
;
;	jsr	waitforirq
;	a16
;	lda	vmap2
;	clc
;	adc	#amount1/2
;	tax
;	a8
;	dmaxvram	7,(bitmapbase+bitmap1)+amount1,amount2
;
;	jsr	waitforirq
;	a16
;	lda	vmap2
;	clc
;	adc	#(amount1+amount2)/2
;	tax
;	a8
;	dmaxvram	7,(bitmapbase+bitmap1)+amount1+amount2,amount3
;
;	jsr	waitforirq
;	a16
;	lda	vmap2
;	clc
;	adc	#(amount1+amount2+amount3)/2
;	tax
;	a8
;	dmaxvram	0,(bitmapbase+bitmap1)+amount1+amount2+amount3,amount4
;
;;	jsr	planetanim3

	plp
	rts

planetanim3
	php
	a16
	lda	gameframe
	and	#7
	rol	a
	tax
	a8
	jmp	(.tab,x)
.tab	dw	.ptrn1&WM
	dw	.ptrn2&WM
	dw	.ptrn3&WM
	dw	.ptrn4&WM
	dw	.ptrn4&WM
	dw	.ptrn3&WM
	dw	.ptrn2&WM
	dw	.ptrn1&WM
mapanimchar	=	$c2+32
.ptrn1	ldx		#p_bg2_cgx+mapanimchar*2*8
	dmaxvram	0,(mapanim_chars3),4*8*4
	jmp		.out
.ptrn2	ldx		#p_bg2_cgx+mapanimchar*2*8
	dmaxvram	0,(mapanim_chars3+4*8*4),4*8*4
	bra		.out
.ptrn3	ldx		#p_bg2_cgx+mapanimchar*2*8
	dmaxvram	0,(mapanim_chars3+4*8*4*2),4*8*4
	bra		.out
.ptrn4	ldx		#p_bg2_cgx+mapanimchar*2*8
	dmaxvram	0,(mapanim_chars3+4*8*4*3),4*8*4
.out
	inc	gameframe
	plp
	rts


;-----------------------------------------------------

amount1	=	planbmpsz

dma256screen3_fast
	php
	a8i16
.wait	lda	planetdma
	bne	.wait
	lda	#4
	sta	planetdma
.wait2	lda	planetdma
	bne	.wait2
	plp
	rts

	

;	a8i16
;	waitdma	planvw_pos2+4
;	ldx	vmap2
;	dmaxvram	0,(bitmapbase+bitmap1),amount1
;	plp
;	rts

;--------------------------------------------------------

switchbuffer3_fast3
	php
	a16
	bra	switchbuffer3.quick
switchbuffer3
	php
	a16
	waitdma	224
.quick	LOCAL
	lda	#p_bg1_cgx1
	cmp	vmap1
	beq	.switch1
	sta	vmap1
	lda	#p_bg1_cgx2
	sta	vmap2
	bra	.con

.switch1
	sta	vmap2
	lda	#p_bg1_cgx2
	sta	vmap1
.con
	a8
	lda	vmap1+1
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	#(p_bg2_cgx>>12)<<4
	sta	bg12nba

	plp
	rts

;---------------------------------------------------------
calcdxdy3
	php
	ai16
	lda	currentplanet
	and	#255
	asl	a
	asl	a
	tax
	lda	scrdxl
	sta	remainder
	lda.l	planetpos3+2,x
	and	#255
	sec
	sbc	#centrx
	sec
	sbc	bg1scrx
	beq	.nochange
	jsr	dividebynum3
.nochange	sta	scrdx
	lda	remainder
	sta	scrdxl

	lda	scrdyl
	sta	remainder
	lda.l	planetpos3+3,x
	and	#255
	sec
	sbc	#centry
	sec
	sbc	bg1scry
	beq	.nochange2
	jsr	dividebynum3
.nochange2	sta	scrdy
	lda	remainder
	sta	scrdyl
	
	plp
	rts

	longa
dividebynum3
; a is number (16 bit) to divide by x1
	php
	phx
	i16
	cmp	#32768
	bcs	.negative divide

	ldx	#-1
.divide	inx
	sec
	sbc	scrframesb
	bcs	.divide
	clc
	adc	scrframesb
	clc
	adc	remainder
	cmp	scrframesb
	bcc	.norm2
	sec
	sbc	scrframesb
	inx
.norm2	sta	remainder
	txa
	plx
	plp
	rts

.negative	ldx	#1
.ndivide	dex
	clc
	adc	scrframesb
	bcc	.ndivide
	sec
	sbc	scrframesb
	clc
	adc	remainder
	cmp	scrframesb
	bcc	.norm
	sec
	sbc	scrframesb
	dex
.norm	sta	remainder
	txa
	plx
	plp
	rts


;---------------------------------------------------------
drawselectedplanet3
	php
	ai16

	lda	currentplanet
	jsr	setupplanetcoord3

	lda	currentplanet
	and	#3
	xba
	lsr	a
	lsr	a
	lsr	a
	clc
	adc	#16
	sta.l	m_xc	;mspr_x
	lda	currentplanet
	and	#(~3)&255
	asl	a
	asl	a
	asl	a
	clc
	adc	#16
	sta.l	m_yc	;mspr_y
	lda	#6
	sta.l	mspr_pal
	lda	#(15*32768)/16
	sta.l	m_scale	; set the intensity

	lda	currentplanet
	asl	a
	tax
	lda.l	planetsprs3,x
	sta.l	msprite
	lda	#15
	sta.l	m_radius
	a8
	lda.l	msprite
	bmi	.sphere
	lda	#mdrawsprite32>>16
	ldx	#mdrawsprite32&$ffff
	jsl	RUNMARIO_L
	bra	.out
.sphere	and	#127
	sta.l	msprite
	lda	#mdrawtsphere>>16
	ldx	#mdrawtsphere&$ffff
	jsl	RUNMARIO_L
.out
	plp
	rts

;----------------------------------------------------------
setupplanetcoord3
; grab the true x and y of the planet
	php
	ai16
	asl	a
	pha
	asl	a
	tax
	lda.l	planetpos3+2,x
	and	#255
	sta.l	m_bigx
	lda.l	planetpos3+3,x
	and	#255
	sta.l	m_bigy
	lda	#0
	sta.l	m_bigz
	plx
	lda.l	planetsprs3+1,x
	and	#255
	tax
	lda.l	roty1,x
	sta.l	m_roty
	lda.l	planet_rotz3,x
	cmp	#-1
	bne	.ok
	tay
	lda.l	m_roty
	sta.l	m_rotz
	tya
	sta.l	m_roty
	bra	.other
.ok	sta.l	m_rotz
.other
	plp
	rts
;---------------------------------------------------------

drawplanetincentre3
	php
	ai16
	lda	#64
	sta.l	m_xc	;mspr_x
	sta.l	m_yc	;mspr_y
	lda	#6
	sta.l	mspr_pal

	lda	#32
	sta.l	m_sprsize

	lda.l	m_radius
	clc
	adc	#32-15
	sta.l	m_sprxscale

	lda	currentplanet
	jsr	setupplanetcoord3

	lda	currentplanet
	asl	a
	tax
	lda.l	planetsprs3,x
	sta.l	msprite
	a8
	lda.l	msprite
	bmi	.sphere
	lda	#musprite>>16
	ldx	#musprite&$ffff
	jsl	RUNMARIO_L
	bra	.out
.sphere	and	#127
	sta.l	msprite
	lda	#mdrawtsphere>>16
	ldx	#mdrawtsphere&$ffff
	jsl	RUNMARIO_L
.out
	plp
	rts
;---------------------------------------------------------

drawplanetsprites3
	php
	ai16
	lda.l	mspr_pal
	eor	#15
	and	#15
	xba

	asl	a
	asl	a
	asl	a
	lda	#(15*32768)/16
	sta.l	m_scale

	ldx	#0
	lda	#-16
	sta.l	m_xc	;mspr_x
	lda	#16
	sta.l	m_yc	;mspr_y
.nxtone
	lda.l	nebula_on
	bne	.fine
	cpx	#14
	bne	.fine

	jsr	.addxy

	jmp	.end
	
.fine	phx
	txa
	asl	a
	tax
	lda.l	planetsprs3,x
	and	#255
	sta.l	msprite
	txa
	lsr	a
	tax
	
; first let's grab the true x and y of the planet
	phx
	txa
	jsr	setupplanetcoord3
	plx


; now let's get the phoney x and y coordinates
	jsr	.addxy

	lda	#15
	sta.l	m_radius
	a8
	cpx	currentplanet
	beq	.nocando
	lda.l	msprite
	bmi	.sphere
	lda	currentplanet
	cmp	#-2		; no texture maps
	beq	.nocando
	lda	#mdrawsprite32>>16
	ldx	#mdrawsprite32&$ffff
	jsl	RUNMARIO_L
	bra	.nocando
	
.sphere
	and	#127
	sta.l	msprite
	lda	#mdrawtsphere>>16
	ldx	#mdrawtsphere&$ffff
	jsl	RUNMARIO_L
.nocando
	a16
	plx
.end	inx
	cpx	#16
	lbne	.nxtone

	plp
	rts

.addxy
	lda.l	m_xc	;mspr_x
	clc
	adc	#32
	sta.l	m_xc	;mspr_x
	cmp	#128
	bcc	.noyinc
	lda	#16
	sta.l	m_xc	;mspr_x
	lda.l	m_yc	;mspr_y
	clc
	adc	#32
	sta.l	m_yc	;mspr_y
.noyinc	rts

;---------------------------------------------------------

setupplanetpal_ll3
; this sets up the palette for the planet selection screen

	php
	a8i16
	stz	cgadd
	ldx	#0
.loop
	lda.l	planselpal3,x
	sta	cgdata
	inx
	cpx	#256*2
	bne	.loop

	plp
	rtl

;----------------------------------------------------------------
; fade colour 0 down with the rest of the screen
fadecol03	php
	a8i16
	pha
	jsr	waitdma2242

	pla
	a16
	and	#254
	tax
	a8

	stz	cgadd
	lda.l	fadetab0,x
	sta	cgdata
	lda.l	fadetab0+1,x
	sta	cgdata
	

	plp
	rts

;----------------------------------------------------------------
fadelines223
; fade the lines on vmap1
	IFEQ	1
	php
	ai16
	jsr	waitdma2242
	lda	vmap1
	jmp	fadin
	ENDC


;----------------------------------------------------------------

copychar3
	IFEQ	1
	php
	ai16
	lda	#(16*16+singledot)*8*8/2
	clc
	adc	vmap1
	sta	vmaddl
	lda	currentchar
	and	#255
	dec	a
	xba
	lsr	a
	lsr	a
	tax
	ldy	#16

temp	=	0
	REPT	16
	lda	mycrapchars+temp,x
	sta	vmdatal
temp	=	temp+2
	ENDR

	lda	fadecount
	and	#15
	inc	a
	cmp	#16
	bne	.ok
	dec	a
.ok
	asl	a
	tax
	lda.l	shaded_chars,x
	tax

	lda	togglebit
	bit	#1
	lbne	.firstdot

	ldy	#mycrapmask
temp	=	0
	REPT	16
	lda.w	temp&15,y
	eor	#65535
	and.l	shaded_chars+temp,x
	sta	vmdatal
temp	=	temp+2
	ENDR

	bra	.seconddot
.firstdot
temp	=	0
	REPT	16
	lda.l	shaded_chars+temp,x
	sta	vmdatal
temp	=	temp+2
	ENDR
.seconddot


	plp
	ENDC
	rts

;----------------------------------------------------------------

fadecharsin3
	php
	ai16
	lda	fadecount
	cmp	#14
	bcs	.getch
.carryon
	jsr	copychar3
	lda	fadecount
	inc	a
	sta	fadecount
	cmp	#14
	bcc	.nowrite
	ldx	currentsprite
	lda	currentaddr
	sta	sprx,x
	lda	currentchar
	sta	sprchar,x
	inx
	inx
	inx
	inx
	stx	currentsprite

;	lda	currentaddr
;	sta	vmaddl
;	lda	currentchar
;	clc
;	adc	#256
;	sta	vmdatal

	bra	.out
.nowrite
;	lda	currentaddr
;	sta	vmaddl
;	lda	currentchar
;	and	#1<<15
;	ora	#singledot+256
;	sta	vmdatal

.out	plp
	clc
	rts

.exit	plp
	sec
	rts

.getch
	jsr	drawlinesbitbybit3
	bcs	.exit

	stz	fadecount
	bra	.carryon

;--------------------------------------------------------------------
convertaddr3
	a8
	asl	a
	asl	a
	asl	a
	xba
	asl	a
	asl	a
	asl	a
	xba
	a16
	sta	currentaddr
	rts
;--------------------------------------------------------------------

drawlinesbitbybit3
	php
	ai16
	ldx	x1

;	lda	togglebit
;	bit	#1
;	bne	.norm

;	lda	y1

;	ldx	x1
;	lda.l	stagepaths,x
;	cmp	#-1
;	beq	.out
;	and	#1<<15
;	ora	#singledot
;	sta	currentchar
;	bra	.out2
	
.norm
	lda	y1
	clc
	adc.l	stagepaths+2,x
	sta	y1

	lda.l	stagepaths,x
	cmp	#-1
	beq	.out
	sta	currentchar
	inx
	inx
	inx
	inx
	stx	x1
	
.out2	inc	togglebit
	plp
	clc
	rts
.out
	plp
	sec
	rts

;------------------------------------------------------------------------

read_joypadt_ll3
; this sets up cont and trig after waiting for hvbjoy
	php
	a8
.notreadyyet2
	lda	hvbjoyr
	bit	#1
	beq	.notreadyyet2
.notreadyyet	lda	hvbjoyr
	bit	#1
	bne	.notreadyyet
	bra	read_joypad_ll3.readitall
	

;--------------------------------------------------------------------

read_joypad_ll3
; this sets up cont0-1 and trig0-1 (without timing)
	php
.readitall	LOCAL
	a16
	lda	joy1l
	pha
	eor	cont0l
	and	joy1l
	sta	trig0

	lda	joy2l
	pha
	eor	cont1l
	and	joy2l
	sta	trig1
	pla
	sta	cont1l
	pla
	sta	cont0l

	plp
	rtl

;-----------------------------------------------------------

undrawplanetlines_ll33
	php
	a8i16
	ldx	#planetlines_spr
	stx	currentsprite
	ldy	#maxplanetlines
	lda	#-8
.clragain
	sta	sprx,x
	sta	spry,x
	inx
	inx
	inx
	inx
	dey
	bne	.clragain
	
	plp
	rtl

;	stz	z1
;	bra	drawplanetlines_ll3.intoithere

;---------------------------------------------------------

drawplanetlines_ll3
	php
	ai16
	ldx	#planetlines_spr
	stx	currentsprite

;	lda	#-1
;	sta	z1
;.intoithere	LOCAL
	a8
	waitdma	30
	lda	stage
	sta	x1
	stz	x1+1
	ai16
	lda	whichroute
	asl	a
	and	#255
	tax
	lda.l	stagepaths,x
	tax

.chkformore
	lda.l	stagepaths,x
	and	#255
	lbeq	.out3
	cmp	#3
	beq	.pathstart
	cmp	#2
	beq	.pathchoice
.pathnext
	lda.l	stagepaths+1,x
	tax
	bra	.chkformore
.pathchoice
	lda.l	stagepaths+1,x
	tax
	lda	routes,x
	tax
	bra	.chkformore
.pathstart
	lda.l	stagepaths+1,x
	jsr	convertaddr3	; get sprite x and y
	tay
	lda.l	stagepaths+3,x
	and	#255
	sta	currentplanet
	lda.l	stagepaths+4,x
	sta	newmap
	lda.l	stagepaths+5,x
	sta	newmap+1
	a8
	lda.l	stagepaths+7,x
	sta.l	peppermsg
	lda.l	stagepaths+8,x
	sta	currentlevel
	a16
	txa
	clc
	adc	#9
	tax
	lda	x1
	beq	.out
.nxtchar
	tya
	phx

	ldx	currentsprite
	sta	sprx,x

	plx
	clc
	adc.l	stagepaths+2,x
	tay


	lda.l	stagepaths,x
	cmp	#-1
	beq	.out2
	phx

	ldx	currentsprite
	sta	sprchar,x
	inx
	inx
	inx
	inx
	stx	currentsprite

	plx

;	sta	vmaddl
;	clc
;	adc.l	stagepaths+2,x
;	tay
;	lda.l	stagepaths,x
;	cmp	#32768
;	beq	.out2
;	and	z1
;	clc
;	adc	#256
;	sta	vmdatal
	inx
	inx
	inx
	inx
	bra	.nxtchar
.out2	inx
	inx
	dec	x1
	jmp	.chkformore
.out3	plp
	sec
	rtl
	
.out	stx	x1
	sty	y1
	plp
	clc
	rtl

;---------------------------------------------------------

setup_planets_ll3
	php

	ai8
	disable

	stz	trans_flag
;Set Mario Chip for 16 colours 192 pixel high
	lda	#planmdm
	sta	mario_draw_mode

	screen_off

;clear video RAM
	stz	cgadd
	stz	vmaddl
	stz	vmaddh
	lda	#$80
	sta	inidisp
	sta	vmainc

;Clear VRAM
	lda	#$00
	ldx	#128
.ly	ldy	#0
.li	sta	vmdatal
	sta	vmdatah
	dey
	bne	.li
	dex
	bne	.ly

;init 3D system

	movi 0,clx1
	movi plannum_col*8-1,clx2
	movi 0,cly1
	movi plannum_row*8-1,cly2
	movi plannum_col*4,vanishx
	movi plannum_row*4,vanishy
	jsl	init3d2

	ai8

	lda	#deg180
	sta	roty
	lda	#-1
	sta	mariocode


;Set screen to blank chars
	ai16
	lda	#p_bg1_scr1
	sta	vmaddl
	lda	#plannum_col*plannum_row+1
	ldx	#1024
.cl	sta	vmdatal
	dex
	bne	.cl

	lda	#p_bg2_scr
	sta	vmaddl
	lda	#0
	ldx	#1024
.cl2	sta	vmdatal
	dex
	bne	.cl2

;Set character map 16 wide by 16 high
	a8i16
	jsl	SetCharMapplan_ll3

;Set double buffering (VRAM only)
	i16
	ldx	#p_bg1_cgx1
	stx	vmap1
	ldx	#p_bg1_cgx2
	stx	vmap2
	ldx	#bitmap1
	stx	drawmap
	ldx	#bitmap1
	stx	showmap
	lda	drawmap+1		;set mario draw base
	lsr	a
	lsr	a
	sta	mscrbase

;Set hardware pointers to screen
	lda	vmap1+1
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	#(p_bg2_cgx>>12)<<4
	sta	bg12nba

	lda	#p_vobj_base>>(6+8)
	sta	objsel

;Set bg screen base address'
	lda	#p_bg1_scr1>>8
	sta	bg1sc
	lda	#p_bg2_scr>>8
	sta	bg2sc
	lda	#3
	sta	bgmode

;Set window logic, position, size.
	stz	w12sel
	stz	w34sel		;wh0,1 set with hdma
	stz	wobjsel
	stz	wbglog
	stz	wobjlog
	stz	tmw
	stz	tsw
	stz	wh0
	stz	wh1

	stz	cgswsel
	lda	#1+2+16
	sta	tm
	stz	ts
	stz	cgadsub
	stz	coldata

;Setup HDMA tables
	a16
	ldx	#0
.loop	lda.l	hdma_start,x
	sta.l	xhdma_start,x
	inx
	inx
	cpx	#hdma_end-hdma_start
	bcc	.loop

	a8
	lda	#0		;inidisp
	sta	ch1params
	lda	#inidisp&$ff
	sta	ch1addrb
	ldx	#xhdma_inidisp2&WM
	stx	ch1addra1tl
	lda	#xhdma_inidisp2>>16
	sta	ch1atbank
	stz	ch1databank

	lda	#0
	sta	ch2params
	lda	#wobjsel&$ff
	sta	ch2addrb
	ldx	#xhdma_window&WM
	stx	ch2addra1tl
	lda	#xhdma_window>>16
	sta	ch2atbank
	stz	ch2databank

	lda	#0
	sta	ch3params
	lda	#inidisp&$ff
	sta	ch3addrb
	ldx	#xhdma_inidisp3&WM
	stx	ch3addra1tl
	lda	#xhdma_inidisp3>>16
	sta	ch3atbank
	stz	ch3databank

;Enable key pad reading + hdma tables (includes inidisp)


	decvramnotrans	0,(p_bg2_cgx+1024/2),bgmap2ccr,7*k
	decbg2vramnotrans	0,p_bg2_scr,bgmap2pcr,8*k,32
	jsr	clearscreen3
	jsl	p_init_sprites_ll3

	a8i16
	jsl	CLEARHVOFS_L

	lda	#$80
	sta.l	xinidisp5
	sta.l	xinidisp6
	sta.l	xinidisp7

	waitdma	224

	lda	#tm_planets
	sta	trans_flag	; set irq trans mode

	lda	#%00110001
	sta	nmitimen

	stz	irqtoggle
	stz	planetdma

	a16
;	ldx	#228		; top of the screen
	lda.l	planetdmapos1
	sta	vtimel		; set position for irq
;	lda	#100
	lda.l	planetdmapos2
	sta	htimel
	a8

	plp

	rtl


;-------------------------------------------------------------
p_init_sprites_ll3
	php
	a8i16

	ldx	#128*4+128/4-1		; clear the buffer
.lp2	stz	spriteblk,x
	dex
	bpl	.lp2

	dmaoaram	0,0,spriteblk,128*4+128/4	; clear all oram

	plp
	rtl


;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;------------REPT LOAD WARNING SPACE FILLING------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------

	longa
	longi
setsquare3
	REPT	4
	stx	vmaddl
lc	=	0
	REPT	4
	sta	vmdatal
lc	=	lc+1
	IFNE	lc-4
	clc
	adc	#plannum_row
	ENDC
	ENDR
	pha
	txa
	clc
	adc	#32
	tax
	pla
	sec
	sbc	#(plannum_row*3)-1
	ENDR

	rts

currentch	=	0

fuzzzcuntplanet	MACRO
	dw	((\2)*32)+(\1)+p_bg1_scr1
	db	(\1)*8,(\2)*8
	ENDM

fuzzzcuntplan2	MACRO
	db	(\1)*8,(\2)*8
	ENDM


;------------------------------------------------------------------

SetCharMapplan_ll3
	php
	a8
	lda	#128
	sta	vmainc
	ai16

	lda	#p_bg1_scr1
	sta	vmaddl

	lda	#16*16
	ldx	#32*32
.andagain
	sta	vmdatal
	dex
	bne	.andagain

	ldx	#0
	txy
.nxtplan	phx
	lda.l	planetpos3,x
	tax
	tya
	jsr	setsquare3
	tya
	clc
	adc	#16*4
	cmp	#16*16
	bcc	.ok
	sec
	sbc	#(16*16)-4
.ok
	tay
	plx
	inx
	inx
	inx
	inx
	cpx	#16*4
	bne	.nxtplan

	ldx	#((plannum_col*plannum_row)*(planchar_size/2))+p_bg1_cgx1
	stx	vmaddl
	ldx	#0
	ldy	#planchar_size/2
.lp	stx	vmdatal
	dey
	bne	.lp

	ldx	#((plannum_col*plannum_row)*(planchar_size/2))+p_bg1_cgx2
	stx	vmaddl
	ldx	#0
	ldy	#planchar_size/2
.lp2	stx	vmdatal
	dey
	bne	.lp2

;---------------------------------------------------------------

	lda	#p_bg1_scr2
	sta	vmaddl


	a8
	lda	#128
	sta	vmainc
	ai16
	lda	#p_bg1_scr2
	sta	vmaddl
	lda	#0
	ldy	#0
.lolv
	pha
	lda	#plannum_col*plannum_row+(6<<10)+(1<<13)
	rept	(32-plannum_col)/2		;clear out borders
	sta	vmdatal
	endr
	pla

	ldx	#0
.lolh	sta	vmdatal
	clc
	adc	#plannum_row
	inx
	cpx	#plannum_col
	bne	.lolh

	pha
	lda	#plannum_col*plannum_row+(6<<10)+(1<<13)
	rept	(32-plannum_col)/2
	sta	vmdatal
	endr
	pla

	sec
	sbc	#plannum_col*plannum_row-1
	iny
	cpy	#plannum_row
	bne	.lolv

	lda	#plannum_col*plannum_row+(6<<10)+(1<<13)
	ldx	#32*(32-plannum_col)/4
.nxtclr	sta	vmdatal
	sta	vmdatal
	sta	vmdatal
	sta	vmdatal
	dex
	bne	.nxtclr

	plp
	rtl


;--------------------------------------------------------




	IFEQ	1
;--------------------------------------------------------------
; this deals with the split up dma-ing of new backgrounds

modechange_ll
	php
	ai16

	ldx	bg_dmalist
	beq	.continue
	lda.l	bglists,x
	sta	x1
	lda.l	bglists+1,x
	sta	x2
	ora	x1
	beq	.continue

	lda	gameframe
	and	bgtransspeed
	bne	.clear

	inx
	inx
	inx
	stx	bg_dmalist

	a8
	lda	#1+16
	sta	tm
	lda	#.clear>>16
	pha
	a16
	lda	#(.clear-1)&WM
	pha

	a8
	lda	x1
	pha
	ldx	x2
	dex
	phx

	rtl

	ENDC

.clear


.continue
	plp
	rtl

;------------------------------------

convertroute3
	php
	a8
	lda	whichroute
	
	beq	.swap1
	cmp	#5
	bne	.ok
	lda	#4
	bra	.ok
.swap1	lda	#4
.ok	sta	whichroute
	plp
	rts


;------------------------------------

pepperspeaking3
	php
	ai16
	lda.l	peppermsg
	and	#255
	dec	a
	cmp	#-1
	beq	.finished
	asl	a
	tax
	lda.l	messages,x
	inc	a	; skip which friend
	inc	a	; skip which sound
	sta.l	m_txtdata

	lda	#5
	sta.l	m_textcolour
	lda	#24*8
	sta.l	m_textrightclip
	lda	#2
	sta.l	m_x1
	sta.l	m_y1
	lda.l	pepperchars
	and	#255
	sta.l	m_totalchars
	txa
	call_mario	mgprintstr


	ai16
	lda	#13
	sta.l	m_textcolour
	lda	#24*8-2
	sta.l	m_textrightclip
	lda	#0
	sta.l	m_x1
	sta.l	m_y1
	lda.l	pepperchars
	and	#255
	sta.l	m_totalchars
	txa
	call_mario	mgprintstr

.finished
	plp
	rts

;------------------------------------
showplanetname3
	php
	ai16
	lda	currentplanet
	and	#255
	tax
	lda.l	planetnames,x
	and	#255
	dec	a
	cmp	#-1
	beq	.finished
	asl	a
	tax
	lda.l	messages,x
	inc	a	; skip which friend
	inc	a	; skip which sound
	sta.l	m_txtdata

	lda	#1
	sta.l	m_textcolour
	lda	#24*8
	sta.l	m_textrightclip
	lda	#2
	sta.l	m_x1
	lda	#2+48
	sta.l	m_y1
	lda.l	pepperchars
	and	#255
	sta.l	m_totalchars
	txa
	call_mario	mgprintstr


	ai16
	lda	#4
	sta.l	m_textcolour
	lda	#24*8-2
	sta.l	m_textrightclip
	lda	#0
	sta.l	m_x1
	lda	#48
	sta.l	m_y1
	lda.l	pepperchars
	and	#255
	sta.l	m_totalchars
	txa
	call_mario	mgprintstr

.finished
	plp
	rts

cesx	=	224-40
;---------------------------------------------------------------------------

;	IFNE	CONTEST

	shorta
;------------------------------------


planetsprs3 ;dpsphere - 3d texture / dpspr - 2d texture 		;for zooming/general pepper stuff
	dpspr	space2 			;5-1/6-1

planetpos3		  ; L 02/R 1a - U 05/D 16 planet position on map screen	(1 is highest y, 17 is lowest Y)
	fuzzzcuntplanet	$04,$0b	; 0 X-1

	
startplanetpos3				; ship placement before stage
	fuzzzcuntplan2	$04,$0b	; 0 X-1

endplanetpos3				; ship placement after stage
	fuzzzcuntplan2	$03,$0b	; 0 X-1
	

planselpal3
	inccolfile	data\gfx\map2_c.col,0,15
	inccolfile	data\map-obj.col,0,1
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0
	rgbw	$1f,$1f,0


fadetable3
	db	%11100000+(32-1)
	db	%11100000+(32-1)
	db	%11100000+(32-2)
	db	%11100000+(32-3)
	db	%11100000+(32-4)
	db	%11100000+(32-6)
	db	%11100000+(32-8)
	db	%11100000+(32-10)
	db	%11100000+(32-12)
	db	%11100000+(32-14)
	db	%11100000+(32-16)
	db	%11100000+(32-18)
	db	%11100000+(32-20)
	db	%11100000+(32-22)
	db	%11100000+(32-25)
	db	%11100000+(32-28)
	db	%11100000+(32-31)


	
mapanim_chars3
	incbinfile	data\mapanim.chr

;	?*-waitdma2242










