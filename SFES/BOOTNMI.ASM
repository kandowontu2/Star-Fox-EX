	incpublics	bootnmi.ext


	shorta
	shorti
startboot	disable
	clc
	xce
	IFNE	MSU1
	stz	msu_volume	; silence the chip if the game was reset
	stz	msu_control
	ENDC
	a16
	lda	#cfgr_ms1+cfgr_noirq	;HighSpeed Multiply (MS1) ON
	sta	m_cfgr
	lda	resetval
	cmp	#$7F7F
	lbeq	continueboot

	ai8
	
	LDX #$00
.Loop
	LDA.L ResetValues,x
	BEQ .IsReset
	CMP $0100,x
	BNE .NotReset
	INX
	BRA .Loop

.IsReset
	JMP	continueboot

.NotReset
	LDX #$00
.Loop2
	LDA.L ResetValues,x
	STA $0100,x
	BEQ .End
	INX
	BRA .Loop2

.End
	JMP End2abc

ResetValues
	db 03,05,07,$AF,00	;just some random string, ignore it

End2abc

	SED 
	LDA #$FF 
	CLC 
	ADC #$FF 
	CLD 
	CMP #$64 
	BNE NotZsnes 
	lda #zsnes
	sta	machinetype
	jmp	continueboot
	
NotZsnes


	a16i8
	STZ $00
	STZ $02
	STZ $04
	STZ $06
	STZ $08
	STZ $0A
	STZ $0C
	STZ $0E
	a8

;INITIAL WRAM VALUES
;This test requires a block of untouched RAM.

TestWRAM
	LDA #$00
	TAX
	XBA
	LDA #$FF
.Loop
	AND $0200,x
	XBA
	ORA $0200,x
	XBA
	INX
	BNE .Loop
	sta $00
	XBA
	sta $01


TestCGRAMORA
	LDA #$00
	TAX
.Loop
	STX $2121
	LDY $213B
	ORA $213B
	INX
	BNE .Loop
	sta $02
	
	lda $00
	cmp #$55
	bne	not9xORsd2snes
	
	lda $02
	cmp #$FF
	beq	sd2sness

	lda #snes9x
	sta	machinetype
	jmp	continueboot
	
sd2sness
	lda #sd2snes
	sta	machinetype
	jmp	continueboot

not9xORsd2snes



	lda $00
	bne	notnso
	lda $01
	bne	bsnesplusormesen
;	beq	notnso			
	lda $02
	beq	bsness			;bsnes

	;blink 4				;canoe
	lda 	#canoe
	sta	machinetype
	jmp	continueboot
	
bsness

	lda	#bsnes
	sta	machinetype	 ;bsnes
	jmp	continueboot
	
bsnesplusormesen

	lda $02
	beq	bsnespluss

	lda #1
	sta recheck
	bra notnso

	
bsnespluss
	lda #2
	sta	recheck



	
notnso
	
TestWDM
	LDA #$00
	db $42 
	INC A
	sta $03
	

	STZ $4204
	STZ $4205
	LDA #$FF
	STA $4206 ;divide 0 by FF (answer=0, to clear it)
	NOP #8
	LDA #$FF
	STA $4204 ;Testing if the division registers emulate the delay properly (zsnes and snes9x does one thing, bsnes and hardware does another)
	STA $4205 ;divide FFFF by 3 (answer=5555)
	LDA #$03
	STA $4206
	LDA $4214
	STA $04

;TEST A: CGRAM ACCESS
;This test does not require the SNES to be uninitialized in any way. However, it does write to VRAM and CGRAM.
TestA
	LDA #$03
	STA $2105
	LDA #$70
	STA $2107
	STZ $210B
	STZ $210D
	STZ $210D
	LDA #$FF
	STA $210E
	LDA #$07
	STA $210E
	STZ $2123
	LDA #$01
	STA $212C
	STZ $212D
	LDA #$30
	STA $2130
	STZ $2131
	LDA #$E0
	STA $2132
	STZ $2133

	STZ $2100
;LDA #$0F
;STA $2100

	LDA #%10000000
	STA $2115
	Ai16
	db $A9
.Blank
	STA $2116
	LDA #$1809
	STA $4300
	LDA #0000
	STA $4302
	LDY #0000>>16
	STY $4304
	LDA #$FFFF
	STA $4305
	a8
	LDY #$01
	STY $420B

	a16
	LDY #$00
	STY $2121
	LDA #$2208
	STA $4300
	LDA #0000
	STA $4302
	LDY #0000>>16
	STY $4304
	LDA #$0200
	STA $4305
	LDY #$01
	STY $420B
	a8i16
	LDX #$0FFF ;some stupidly high value, in case we hit vblank
	LDY #$FFFF
	LDA #$FF
.Loop
	STY $2121
	STA $2122 ;the other 2122 write is handled by Y
	DEX
	BNE .Loop
	i8

	LDA #$80
	STA $2100
	NOP #128 ;waste a scanline
	STZ $2121
	LDA $213B
	sta $05



	lda $00
	cmp #$80
	bne	.nothardware
	lda $01
	cmp #$BF
	bne	.nothardware
	
	lda	#hardwaree
	sta	machinetype	 ;bsnes
	jmp	continueboot
	
	
.nothardware
	lda $05
	cmp #$FF
	bne	mesencheck
	
	
	lda recheck
	cmp #2
	bne	misterit
	
	bra	aresares
	

misterit
	lda 	#mister
	sta	machinetype
	bra	continueboot
	
mesencheck
	lda	recheck
	cmp #1
	bne	notsuper

	lda $00
	cmp #$FF
	bne	notsuper

	lda	#analoguent
	sta	machinetype	 ;bsnes
	jmp	continueboot



notsuper
	lda recheck
	cmp #2
	bne	cooo
	
	lda #bsnesplus
	sta	machinetype
	jmp	continueboot
	
	
cooo
	
	lda	recheck
	cmp #1
	bne	continueboot

	lda	#mesen
	sta	machinetype	 ;bsnes
	jmp	continueboot
	
aresares
	lda 	#ares
	sta	machinetype


continueboot


	
	ai16
	lda #$7F7F
	sta resetval
	
	stz	memo
	stz	memi
	lda	#0
	tcd
	ldx	#$02ff
	txs
	ai8
	pha
	plb
	ai8
	lda	machinetype
	pha

	jsl	startsfx_l

	jsr	initialise_ram
	
	pla
	sta	machinetype
	ai16
	lda #$7f7f
	sta resetval
	ldx	#$2ff
	txs			; reset the stack
	ai8

;	lda	#1
;	sta	randomlevels
;	stz	$3037
;	lda	#$15
;	sta	$ffd6
	savemode
	ai16
	; seeding
	LDA #$E528 ; seed, can be anything except 0
	STA rand
	LDY $2F0 ; get startup ram garbage saved earlier
	TYA
	EOR	rand
	STA	rand
	LDA	rand
	beq	.zero ; seed can't be zero or the RNG func will do nothing
	bne	.randomseeddone
.zero
	LDA	#$E528 ; backup seed
	STA	rand
.randomseeddone
	returnmode


	lda #1
	sta	$3033

	;initialize SRAM if not initialized ($71F000-$71FFFF)

	; So it turns out that the SD2SNES inits SRAM as all 0's,
	; and because of that the old way of init'ing sram did not work properly.
	; So now we check against something less likely to already be there at first time boot.
	; -sl

	lda #$71
	pha
	plb
	a8
	lda $FFFC ; check for 'SFEX' magic number identifier at $FFFC
	cmp #$53 ;S
	beq	.magic1good
	bne	.magiccheckfail
.magic1good
	lda $FFFD
	cmp #$46 ;F
	beq	.magic2good
	bne	.magiccheckfail
.magic2good
	lda $FFFE
	cmp #$45 ;E
	beq	.magic3good
	bne	.magiccheckfail
.magic3good
	lda $FFFF
	cmp #$58 ;X
	beq	.magic4good
	bne	.magiccheckfail
.magic4good
	bra	.noinit	;magic found, don't init sram
.magiccheckfail

	ai16
	ldx #$1002
	lda #$0000
.loopme
	sta $effd,x
	dex
	dex
	bpl	.loopme
	ai8
	; write magic starting at $FFFC
	lda	#$53 ;S
	sta	$FFFC
	lda	#$46 ;F
	sta	$FFFD
	lda	#$45 ;E
	sta	$FFFE
	lda	#$58 ;X
	sta	$FFFF
	; write default settings
	lda #0
	pha
	plb
	jsl	triggerdefaults

	bra	.noload		;don't load data	
	
	
.noinit
	ai8
	lda #$00
	pha
	plb

	;load save data-----------------
	
	jsl	loaddata


.noload
	;done init
	ai8


	stz	scope_h_offset
	stz	scope_v_offset
	lda	#100
	sta	playerB_hp
	lda	#100
	sta	playerW_hp	

	jsl	initialise_l
	jsl	intro_l

;** TEST, COMMENT OUT IN FINAL VERSION
;	jsl	endseq_l

	jsl	titleseq_l


	a8
	lda	#0
	sta.l	contexit
	lda	#0
	sta	defaulttrain
	jmp	firsttimeuse

restart	ai16
	clc
	xce
	lda	#0
	tcd
	ldx	#$2ff
	txs			; reset the stack
	ai8

	disable

	jsl	startsfx_l

	
;--------------------------LOAD AND PUSH AND THEN PULL AND STORE ANY ALCS THAT YOU WANT TO KEEP
	
	a8
	lda	machinetype
	pha
	
	lda	superfx2
	sta	m_clsr ; SUNLITFIX make sure chip speed is applied as desired after pregame menu
	pha
	savemem

	lda	nobgmode
	pha
	savemem

	
	lda	newgameplus
	and	#1
	pha
	savemem
	lda	defaulttrain
	pha
	lda.l	contexit
	pha
	lda	c_type
	pha
;	savemem
	lda	godmode
	pha
	savemem	
	lda	randomfire
	pha
	savemem	
	lda	scored
	and	#1
	pha
	savemem	
	lda	pepperskip
	pha
	savemem
	lda	endurance
	pha
	savemem
	lda	levelfeatures
	pha
	savemem
	lda	enemy_firing
	pha
	savemem
	
;page 1 done	
	
	lda	rainbowlaser
	pha
	savemem
	lda	bigheadmode
	pha
	savemem
	lda.l	m_bigheadmode
	pha
	savemem
	lda.l	m_biggerheadmode
	pha
	savemem
	lda	playertwocpuactivated
	pha
;	savemem
	lda	font
	pha
;	savemem
	lda	skipscramble
	and	#1
	pha
	savemem
	lda.l	m_playertwoactivated
	pha
;	savemem
	lda	rapidfire
	and	#1
	pha
	savemem
	lda	firerate
	pha
	savemem
	lda	darkmode
	pha
	savemem
	lda	mistmode
	pha
	savemem
	lda	palnumber
	pha
	savemem
	lda	secretgodmode
	pha
;	savemem
	lda	strat_valid
	pha
	savemem
	lda	pweptemp
	pha
	savemem
	lda	bgmspeed
	pha
	savemem
	lda	quickstart
	pha
;	savemem
	lda	curr_ship
	pha	
	savemem
	lda	showcolbox
	pha
	savemem
	lda	mosaicon
	pha
;	savemem
	lda	nanmode
	pha
	savemem

	lda	wiremode
	pha
	savemem
	lda	shpmode
	pha
;	savemem
	lda	totalshipcountvar
	pha
;	savemem
	lda	fpscounteron
	pha
	savemem
	lda	mousemode
	pha
;	savemem
	lda	mousemodetemp
	pha
;	savemem
	lda	scopemode
	pha
;	savemem
	a16
	lda	scope_h_offset
	pha
;	savemem16
	lda	scope_v_offset
	pha
;	savemem16
	a8
	lda	nttmode
	pha
;	savemem
	lda	bouncedeath
	pha
	savemem
	lda	nocrosshairpls
	pha
	savemem
	lda	noborders
	pha
	savemem
	lda	doboostmeter
	pha
	savemem
	lda.l	m_wobblemode
	pha
	savemem
	lda	newcamera
	pha
	savemem
	lda	playerW_HP
	pha
	savemem
	lda	playerB_HP
	pha
	savemem
	lda	classichp
	pha
	savemem
	lda	barrelroll
	pha
	savemem
	lda	noenginemode
	pha
	savemem
	lda	hilitecolor
	pha
	savemem
	lda	bgmsfx
	pha
	savemem
	lda	dotsstars
	pha
	savemem
	lda	craymode
	pha
;	savemem
	lda	randomsound
	pha
	savemem
	lda	randombgm
	pha
	savemem
	lda	kandomode
	pha
;	savemem
	lda	randompos
	pha
	savemem
	lda	viewshit
	pha
	savemem
	lda	cursedbgm
	pha
;	savemem
	lda	cursedopen
	pha
	savemem
	lda	kandoallow
	pha
;	savemem
	lda	nohud
	pha
	savemem
	lda	moredots
	pha
	savemem
	lda	colorwarp
	pha
;	savemem
	lda	lsdmode
	pha
;	savemem
	lda	colortrip
	pha
;	savemem
	lda	randompalette
	pha
;	savemem
;	lda	temprand1
;	pha
;	savemem
;	lda	temprand2
;	pha
;	savemem
;	lda	temprand3
;	pha
;	savemem
;	lda	temprand4
;	pha
;	savemem
	lda	allatonce
	pha
;	savemem
	lda	randomobjpal
	pha
	savemem
	lda	colortripobj
	pha
;	savemem
	lda	gridlines
	pha
	savemem
	lda	multitapmode
	pha
;	savemem
	lda	numplayers
	pha
;	savemem
	lda	fpsspeed
	pha
	savemem
	lda	currxhair
	pha
	savemem
	lda	currxhair2
	pha
	savemem
	lda	currxhair3
	pha
	savemem
	lda	currxhair4
	pha
	savemem
	lda	currxhair5
	pha
	savemem
	lda.l	m_wabblemode
	pha
	savemem
	lda.l	m_celmode
	pha
	savemem
	lda	curr_ship2
	pha
	savemem
	lda	curr_ship3
	pha
	savemem
	lda	curr_ship4
	pha
	savemem
	lda	curr_ship5
	pha
	savemem
	lda	ntscpalswap
	pha
	savemem
	lda	noobjmode
	pha
	savemem
	lda	randomlevels
	pha
	lda	rand	; save rand or RNG dies
	pha
	lda	rand+1
	pha
	
	
	
;-----------------------------------
	jsr	initialise_ram			;clear all values
;-----------------------------------



	a8
	pla
	sta	rand+1
	pla
	sta	rand
	pla
	sta	randomlevels
	pla
	sta	noobjmode
	pla
	sta	ntscpalswap
	pla
	sta	curr_ship5
	pla
	sta	curr_ship4
	pla
	sta	curr_ship3
	pla
	sta	curr_ship2
	pla
	sta.l	m_celmode
	pla
	sta.l	m_wabblemode
	pla
	sta	currxhair5
	pla
	sta	currxhair4
	pla
	sta	currxhair3
	pla
	sta	currxhair2
	pla
	sta	currxhair
	pla
	sta	fpsspeed
	pla
	sta	numplayers
	pla
	sta	multitapmode
	pla
	sta	gridlines
	pla
	sta	colortripobj
	pla
	sta	randomobjpal
	pla
	sta	allatonce
	pla
;	sta	rand+3
;	pla
;	sta	rand+2
;	pla
;	sta	rand+1
;	pla
;	sta	rand
;	pla	; BODGE: rand has to be saved properly, i just get new temprand values now
	sta	randompalette
	pla
	sta	colortrip
	pla
	sta	lsdmode
	pla
	sta	colorwarp
	lda	colorwarp
	sta.l	m_colorwarp
	sta.l	m_colorwarp+1
	lda	gridlines
	sta.l	m_gridlines
	sta.l	m_gridlines+1
	pla
	sta	moredots
	lda	moredots
	sta.l	m_moredots
	sta.l	m_moredots+1
	pla
	sta	nohud
	pla
	sta	kandoallow
	pla
	sta	cursedopen
	pla
	sta	cursedbgm
	pla
	sta	viewshit
	pla
	sta	randompos
	pla
	sta	kandomode
	pla
	sta	randombgm
	pla
	sta	randomsound
	pla
	sta	craymode
	pla
	sta	dotsstars
	
	pla
	sta	bgmsfx
	
	lda	bgmsfx
	beq	.donebgmsfx
	cmp	#1
	beq	.nosfx
	cmp	#2
	beq	.nobgm
	cmp	#3
	beq	.both
	bra	.donebgmsfx
.nosfx
	lda	#1
	sta	nosfx
	bra	.donebgmsfx
.nobgm
	lda	#1
	sta	nobgm
	bra	.donebgmsfx
.both
	lda	#1
	sta	nosfx
	sta	nobgm
.donebgmsfx	
	pla
	sta	hilitecolor
	pla
	sta	noenginemode
	pla
	sta	barrelroll
	pla
	sta	classichp
	pla
	sta	playerB_hp
	pla
	sta	playerW_hp
	pla
	sta	newcamera
	pla
	sta.l	m_wobblemode
	pla
	sta	doboostmeter
	pla
	sta	noborders
	pla
	sta	nocrosshairpls
	pla
	sta	bouncedeath
	pla
	sta	nttmode
	a16
	pla
	sta	scope_v_offset
	pla
	sta	scope_h_offset
	a8
	pla
	sta	scopemode
	pla
	sta	mousemodetemp
	pla
	sta	mousemode

	pla
	sta	fpscounteron

	pla
	sta	totalshipcountvar
	
	pla
	sta	shpmode



	pla
	sta	wiremode
	lda	wiremode
	sta.l	m_wiremode


	pla
	sta	nanmode
	lda	nanmode
	sta.l	m_nanmode
	cmp	#6
	beq	.wobble1
	cmp	#7
	beq	.wobble2
	bra	.nowobble
.wobble2
	lda	#2
	sta.l	m_wobblemode
	bra	.nowobble
.wobble1
	lda	#1
	sta.l	m_wobblemode
.nowobble
	pla
	sta	mosaicon
	lda	mosaicon
	sta	mosaic

	pla
	sta	showcolbox
	pla
	sta	curr_ship
	pla
	sta	quickstart
	pla
	sta	bgmspeed
	pla
	sta	pweptemp
	pla
	sta	strat_valid
	pla
	sta	secretgodmode
	pla	
	sta	palnumber
	pla
	sta	mistmode
	pla
	sta	darkmode
	pla
	sta	firerate
	pla
	sta	rapidfire

	lda	nosfx
	and	#1
	beq	.skipnosfx
	lda	#1
	sta	nosetport3		;shuts off sound fx
.skipnosfx

	pla
	sta.l	m_playertwoactivated	
	pla
	sta	skipscramble
	pla
	sta	font
	pla
	sta	playertwocpuactivated
	pla
	sta.l	m_biggerheadmode
	pla
	sta.l	m_bigheadmode
	pla
	sta	bigheadmode
	pla
	sta	rainbowlaser

	lda.l	m_playertwoactivated
	sta	playertwoactivated

	lda	doboostmeter
	sta.l	m_doboostmeter

	pla
	sta	enemy_firing
	pla
	sta	levelfeatures
	pla
	sta	endurance
	pla
	sta	pepperskip
	pla
	sta	scored
	pla	
	sta	randomfire
	pla
	sta	godmode

	
	pla
	sta	c_type
	pla
	sta.l	contexit
	pla
	sta	defaulttrain
	pla
	sta	newgameplus

	pla
	sta	nobgmode

	pla
	sta	superfx2	
	
	pla
	sta	machinetype

; get new temprand values
	jsl	random_l
	sta	temprand1
	jsl	random_l
	sta	temprand2
	jsl	random_l
	sta	temprand3
	jsl	random_l
	sta	temprand4

	a16
	lda #$7F7F
	sta	resetval
	
	a8
	lda	multitapmode ; if multitap is on, do not apply classic hp
	bne	.donehp
	lda	classichp
	bne	.classic

	lda	#100
	sta	playerw_hp
	sta	playerb_hp
	bra	.donehp

.classic
	lda	#5
	sta	playerw_hp

	lda	#40
	sta	playerb_hp

.donehp

	phx
	ldx	pcboxobj_B
	s_set_aldata		x,playerb_hp,#playerB_AP
	plx

	a8
	lda	playerb_hp
	sta.l	m_playerb_hpact
	clc
	adc	#4
	sta.l	m_playerb_hp


	lda	#1
	sta	firstdnld
	sta.l	oncewipe

	lda	superfx2
	beq	.donefx
	sta	m_clsr
;	stz	$3037
	lda	#$15
	sta	$ffd6
.donefx

	jsl	initialise_l
	

firsttimeuse	a16
	jsl	briefing_l
	jsl	initialise_l
	php
	a8
	lda	#4
	sta	whichroute
	lda	#1
	sta	map2
	plp

	jml	planetseq2_l


;-----------------------------------------------------------------------
; clear all ram
initialise_ram
	php

	a8
	lda	#$7e
	pha
	plb

	ai16
	ldx	#$2000	;clr ext. RAM
.7epage	stz.w	0,x
	stz.w	2,x
	stz.w	4,x
	stz.w	6,x
	txa
	clc
	adc	#8
	tax
	bne	.7epage

	a8
	lda	#$7f
	pha
	plb
	a16

.7fpage	stz.w	0,x
	stz.w	2,x
	stz.w	4,x
	stz.w	6,x
	txa
	clc
	adc	#8
	tax
	bne	.7fpage

	a8
	lda	#$70
	pha
	plb

	ai16

	ldx	#32768-8	; clear mario ram
.ooop2
	stz.w	0,x
	stz.w	2,x
	stz.w	4,x
	stz.w	6,x
	txa
	sec
	sbc	#8
	tax
	bpl	.ooop2

	a8
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC
	a16

	ldx	#$2000-$300-8	;clr Work RAM
.sssp	stz	$300,x
	stz	$302,x
	stz	$304,x
	stz	$306,x
	txa
	sec
	sbc	#8
	tax
	bpl	.sssp

	ldx	#$fe
.zpage	stz	0,x
	dex
	dex
	bpl	.zpage

	jsl	copy_to_0101_l

	a8
	lda	stat78r		; ntsc/pal
	and	#1<<4
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	sta	ntscpalswap


	plp
	rts


	shorta
	shorti
;------ reset SFX regs ------------------------------
startsfx_l
	disable

	waitdma	1
	waitdma	0

	lda	#$8f
	sta	$2100
	lda	#0
	sta	$2101
	sta	$2102
	sta	$2103

	sta	$2105
	sta	$2106
	sta	$2107
	sta	$2108
	sta	$2109
	sta	$210a
	sta	$210b
	sta	$210c

	sta	$210d
	sta	$210d
	sta	$210e
	sta	$210e
	sta	$210f
	sta	$210f
	sta	$2110
	sta	$2110
	sta	$2111
	sta	$2112
	sta	$2112
	sta	$2113
	sta	$2113
	sta	$2114
	sta	$2114

	ldx	#$80
	stx	$2115
	
	sta	$2116
	sta	$2117

	sta	$211a

	ldx	#1
	sta	$211b
	stx	$211b
	sta	$211c
	sta	$211c
	sta	$211d
	sta	$211d
	sta	$211e
	stx	$211e
	sta	$211f
	sta	$211f
	sta	$2120
	sta	$2120

	sta	$2121

	sta	$2122
	sta	$2123
	sta	$2124
	sta	$2125
	sta	$2126
	sta	$2127
	sta	$2128
	sta	$2129
	sta	$212a
	sta	$212b
	sta	$212c
	sta	$212d
	sta	$212e

	ldy	#$30
	sty	$2130

	sta	$2131
	ldx	#$e0
	stx	$2132
	sta	$2133

	sta	$4200
	ldx	#$ff
	stx	$4201
	sta	$4202
	sta	$4203
	sta	$4204
	sta	$4205
	sta	$4206
	sta	$4207
	sta	$4208
	sta	$4209
	sta	$420a
	sta	$420b
	sta	$420c
	IFNE	fastrom
	pha
	a8
	lda	#1
	sta	$420d
	sta	bgmtest
	pla
	ELSEIF
	sta	$420d
	pha
	a8
	lda	#1
	sta	bgmtest
	pla
	ENDC

	rtl

	shorta
	longi
fnmi_l
	rtl



