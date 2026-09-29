
	incpublics	irq.ext




NOBGTRANS	=	0

	shorta
	shorti
irqcode_l	ldx	trans_flag
	jmp	(.tab&WM,x)
.tab	irv	irqblank
	irv	irqbit1		;2
	irv	irqbit2		;4
	irv	irqbit3		;6
	irv	irqplanets	;8
	irv	foxirq1		;10
	irv	foxirq2		;12
	irv	foxirq3		;14
	irv	newbg2chr	;16
	irv	newbg2scr	;18
	irv	randtrans	;20
	irv	newbg3		;22
	irv	contirqbit3	;24
	irv	endseqbit1	;26
	irv	endseqbit2	;28
	irv	endseqbit3	;30
	irv	endseqbit0	;32
	irv	irqplanets2	;34
	irv	irqsetmode1	;36
	irv	irqsetmode2	;38
	irv	irqsetmode2sp	;40

	shorta
	shorti
irqsetmode1	i16
	lda	#hdmaf_inidisp+hdmaf_win
	sta	hdmaen_gc
	sta	hdmaen
	lda	#1
	sta	bgmode
	stz	gamemode
	lda	#1+2+16
	sta	tm
	lda	#(vsc_base2+1*k)>>8
	sta	bg3sc
	lda	#vsc_base2>>12
	sta	bg34nba
	stz	bg2vofs
	stz	bg2vofs

	stz	bg3scrollflag
	stz	flashtunnelon
	stz	flashbg
	stz	dospacesc
	;gamepal	norm
	jsl	loadpal
;	lda	#gamepal_norm
	sta	gamepal
	jsl	setgamepal_l

	lda	darkmode
	set_zdepthtable	normal
	a16
	lda	#128
	sta.l	m_scrollXoff
	stz	lastpalfade
	stz	defaultID
	stz	bg2Xscroll
	lda	#0
	sta.l	bholescaleval
	a8
	stz	noxrot
	stz	fadepal
	stz	tunnelscroll

	stz	trans_flag
	rtl

irqsetmode2sp
	shorta
	shorti
	lda	#1
	sta	twosp

irqsetmode2
	shorta
	shorti
	i16
	lda	#hdmaf_inidisp+hdmaf_win
	sta	hdmaen_gc
	sta	hdmaen
	lda	twosp
	beq	.2
	stz	twosp
	lda	#%00100010
	bra	.d
.2
	lda	#2
.d
	sta	bgmode		; mode 2
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
	stz	flashbg
	stz	dospacesc
	;gamepal	norm
	jsl	loadpal
;	lda	#gamepal_norm
	sta	gamepal
	jsl	setgamepal_l
	set_zdepthtable	normal

	a16
	lda	#128
	sta.l	m_scrollXoff
	stz	lastpalfade
	stz	defaultID
	stz	bg2Xscroll
	lda	#0
	sta.l	bholescaleval
	a8
	stz	tunnelscroll
	stz	noxrot
	stz	fadepal
	stz	trans_flag
	rtl


	
	shorta
	shorti
newbg2chr
	i16
	lda	#cgdata&$ff		;DNLD palette
	sta	ch0addrb
	lda	#0
	sta	cgadd
	ldx	vram3addr
	stx	ch0addra1tl
	lda	vram3addr+2
	sta	ch0atbank
	ldx	vram3len
	stx	ch0dataddrl
	stz	ch0params
	lda	#1
	sta	mdmaen

	lda	#$80		;DNLD chars
	sta	vmainc
	lda	#(vmdatal&$ff)
	sta	ch0addrb
	ldx	vram1addr
	stx	vmaddl
	ldx	#($700000+dec_base)&WM
	stx	ch0addra1tl
	lda	#(($700000+dec_base)>>16)
	sta	ch0atbank
	ldx	vram1len
	stx	ch0dataddrl
	lda	#1
	sta	ch0params
	lda	#1
	sta	mdmaen

	inc	trans_flag
	inc	trans_flag
	rtl


	shorta
	shorti
newbg2scr	i16
	lda	#$80		;DNLD screen
	sta	vmainc
	lda	#(vmdatal&$ff)
	sta	ch0addrb
	ldx	vram2addr
	stx	vmaddl
	ldx	#($700000+dec_base+6144)&WM
	stx	ch0addra1tl
	lda	#(($700000+dec_base+6144)>>16)
	sta	ch0atbank
	ldx	vram2len
	stx	ch0dataddrl
	lda	#1
	sta	ch0params
	lda	#1
	sta	mdmaen

	lda	#cgdata&$ff		;DNLD game palette
	sta	ch0addrb
	lda	#16*pal3d
	sta	cgadd
	a16
	lda	#gamepalbuff&WM
	sta	ch0addra1tl
	a8
	lda	#gamepalbuff>>16
	sta	ch0atbank
	ldx	#32
	stx	ch0dataddrl
	stz	ch0params
	lda	#1
	sta	mdmaen

	stz	trans_flag
	rtl

	shorta
	shorti
newbg3	i16
	lda	#$80		;DNLD chars
	sta	vmainc
	lda	#(vmdatal&$ff)
	sta	ch0addrb
	ldx	vram1addr
	stx	vmaddl
	ldx	#($700000+dec_base)&WM
	stx	ch0addra1tl
	lda	#(($700000+dec_base)>>16)
	sta	ch0atbank
	ldx	vram1len
	stx	ch0dataddrl
	lda	#1
	sta	ch0params
	lda	#1
	sta	mdmaen

	lda	#$80		;DNLD screen
	sta	vmainc
	lda	#(vmdatal&$ff)
	sta	ch0addrb
	ldx	vram2addr
	stx	vmaddl
	ldx	#($700000+dec_base+6144)&WM
	stx	ch0addra1tl
	lda	#(($700000+dec_base+6144)>>16)
	sta	ch0atbank
	ldx	vram2len
	stx	ch0dataddrl
	lda	#1
	sta	ch0params
	lda	#1
	sta	mdmaen
	stz	trans_flag
	rtl


	shorta
	shorti
randtrans	i16
	IFEQ	NOBGTRANS
	lda	#$80
	sta	vmainc
	lda	#(vmdatal&$ff)
	sta	ch0addrb
	ldx	vram1addr
	stx	vmaddl
	ldx	#($700000+dec_base)&WM
	stx	ch0addra1tl
	lda	#(($700000+dec_base)>>16)
	sta	ch0atbank
	ldx	vram1len
	stx	ch0dataddrl
	lda	#1
	sta	ch0params
	lda	#1
	sta	mdmaen
	ENDC
	stz	trans_flag
	rtl





	shorta
	shorti


pepperscreensize	=	16*24*32
peppersize1	=	(pepperscreensize/3)&-2
peppersize2	=	peppersize1
peppersize3	=	pepperscreensize-peppersize1-peppersize2

; irq code for the planet selection screen (to fade up pepper

irqplanets2
; irq code for the planet selection screen

	lda	planetdma
	lbeq	.nowt
	dec	a
	lbeq	.1
	dec	a
	lbeq	.2
	dec	a
	lbeq	.3

	i16
	ldx	vmap2
	dmaxvram	0,(bitmapbase+bitmap1),planbmpsz

	a16
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

	stz	planetdma
	
	jmp	.nowt

	shorta
.3	i16
	ldx	#p_bg2_cgx+64/2+peppersize1/2+peppersize2/2
	dmaxvram	7,(bitmapbase+bitmap1)+peppersize1+peppersize2,peppersize3
	bra	.dmaed
.2	i16
	ldx	#p_bg2_cgx+64/2+peppersize1/2
	dmaxvram	7,(bitmapbase+bitmap1)+peppersize1,peppersize2
	bra	.dmaed
.1	i16
	ldx	#p_bg2_cgx+64/2
	dmaxvram	7,(bitmapbase+bitmap1),peppersize1
	bra	.dmaed

.dmaed
	lda	planetdma
	inc	a
	cmp	#4
	bne	.okay
	lda	#0
.okay	sta	planetdma

.nowt	lda.l	pepperfade
	cmp	#255
	beq	.nochange
	and	#%11111
	beq	.nochange
	dec	a

	ora	#%11100000

	sta	coldata
	sta.l	pepperfade

.nochange	jsr	startmus
	rtl

	shorta
	shorti
irqplanets
	IFEQ	1
	lda	irqtoggle
	beq	.norm

	waithtime	100,130

	a16
	lda	#228		; top of the screen
	sta	vtimel		; set position for irq

	a8
	lda	ch3hdmaline
	clc
	adc	#200-120
	sta	ch3hdmaline

	stz	irqtoggle
	rtl
.norm
	a16
	lda	#100		; top of the screen
	sta	vtimel		; set position for irq
	ENDC



	a8i16
	lda	#1
	sta	irqtoggle

	lda	lsdmode
	beq	.done

	jsr	lsdmodeact2
.done

	i16
	dmaoaram	0,0,spriteblk,4*(8+maxplanetlines)

;-------------------------------------------------------------
; planet dma:

planBMPSZ	equ	16*16*64

pamount1	=	(planbmpsz/4)
pamount2	=	(planbmpsz/4)

pamount3	=	(planbmpsz/4)
pamount4	=	(planbmpsz/4)

	lda	planetdma
	lbeq	.nodma

	dec	a
	lbeq	.1
	dec	a
	beq	.2
	dec	a
	lbeq	.3
	
.4
	a16
	lda	vmap2
	clc
	adc	#(pamount1+pamount2+pamount3)/2
	tax
	a8
	dmaxvram	0,(bitmapbase+bitmap1)+pamount1+pamount2+pamount3,pamount4
	jmp		.end

.1
	a8i16
	ldx	vmap2
	dmaxvram	0,(bitmapbase+bitmap1),pamount1
	bra	.end

.2
	a16
	lda	vmap2
	clc
	adc	#pamount1/2
	tax
	a8
	dmaxvram	0,(bitmapbase+bitmap1)+pamount1,pamount2
	bra	.end

.3
	a16
	lda	vmap2
	clc
	adc	#(pamount1+pamount2)/2
	tax
	a8
	dmaxvram	0,(bitmapbase+bitmap1)+pamount1+pamount2,pamount3

.end

	lda	ntscpalswap
	beq	.ntsc1
.pal1
	lda	planetdma
	inc	a
	sta	planetdma

	cmp	#3
	bra	.done1

.ntsc1
	lda	planetdma
	inc	a
	sta	planetdma

	cmp	#5


.done1
	bne	.nodma
	stz	planetdma

.nodma
;-------------------------------------------------------------

	lda	z2
	pha

	ldx	#4*4

	lda	flashship
	bit	#1
	beq	.normal
	clc
	adc	#64
	sta	flashship
	rol	a
	bcc	.normal

	a16
	stz	spriteblk+0,x
	stz	spriteblk+4,x
	stz	spriteblk+8,x
	stz	spriteblk+12,x
	stz	spriteblk+2,x
	stz	spriteblk+6,x
	stz	spriteblk+10,x
	stz	spriteblk+14,x
	a8
	jmp	.noship

.normal
;---- move the ship
	lda	shipxy+1
	cmp	newshipxy+1
	bmi	.incit
	lda	shipxy
	sec
	sbc	newshipxy
	beq	.xok
	bcc	.oneway
	sta	z2
	lda	shipxy+1
	sec
	sbc	newshipxy+1
	beq	.dox
	cmp	z2
	bne	.xok
.dox
	dec	shipxy
	bra	.xok
.oneway
	sta	z2
	lda	newshipxy+1
	sec
	sbc	shipxy+1
	beq	.dox2
	cmp	z2
	bne	.xok
.dox2
	inc	shipxy
.xok
	lda	shipxy+1
	cmp	newshipxy+1
	beq	.yok
	bpl	.decit
.incit
	inc	shipxy+1
	lda	shipxy
	cmp	newshipxy
	beq	.yok
	inc	shipxy
	bra	.yok
.decit
	dec	shipxy+1
.yok



	lda	shipxy
	clc
	adc	#8
	sta	spriteblk,x
	sta	spriteblk+8,x
	clc
	adc	#8
	sta	spriteblk+4,x
	sta	spriteblk+12,x


	lda	shipxy+1
	clc
	adc	#8
	sta	spriteblk+1,x
	sta	spriteblk+5,x
	clc
	adc	#8
	sta	spriteblk+9,x
	sta	spriteblk+13,x

	lda	shipangle
	beq	.one
	dec	a
	beq	.other
	lda	#$b+2
	bra	.decided
.one	lda	#7+2
	bra	.decided
.other	lda	#3+2
.decided
	sta	spriteblk+2,x
	inc	a
	sta	spriteblk+6,x
	inc	a
	sta	spriteblk+10,x
	inc	a
	sta	spriteblk+14,x

	lda	#%111110
	sta	spriteblk+3,x
	sta	spriteblk+7,x
	sta	spriteblk+11,x
	sta	spriteblk+15,x
.noship
	lda	comet
	lbeq	.nocomet

	ldx	#0
	a8
;	lda	whichroute
;	cmp	#11
;	beq	.comet1
;	lda	#140				;lightx
	lda	lightx
	sec
	sbc	#15
	sta	spriteblk,x
	sta	spriteblk+4,x
	clc
	adc	#8
	sta	spriteblk+8,x
	sta	spriteblk+12,x
;	lda	#85					;lighty
	lda	lighty
;	bra	.cont
;.comet1
;	lda	#140				;lightx
;	sec
;	sbc	#15
;	sta	spriteblk,x
;	sta	spriteblk+4,x
;	clc
;	adc	#8
;	sta	spriteblk+8,x
;	sta	spriteblk+12,x
;	lda	#85					;lighty
.cont
	sta	spriteblk+1,x
	sta	spriteblk+9,x
	clc
	adc	#8
	sta	spriteblk+5,x
	sta	spriteblk+13,x

	lda	spriteblk+2,x
	cmp	#15+2
	bne	.otherframe
	lda	#19+2
	bra	.thisframe
.otherframe
	lda	#15+2
.thisframe
	sta	spriteblk+2,x
	inc	a
	sta	spriteblk+10,x
	inc	a
	sta	spriteblk+6,x
	inc	a
	sta	spriteblk+14,x

	lda	#%00011110
	sta	spriteblk+3,x
	sta	spriteblk+7,x
	sta	spriteblk+11,x
	sta	spriteblk+15,x

	lda	whichroute
	cmp	#11
	bne	.normale
	lda	stage
	cmp	#4
	bpl	.normale
	lda	lightx
	cmp	#141
	lbmi	.donecomet
	dec	lightx
	dec	lightx
	inc	lighty
	inc	lighty
	lda	lightx
	cmp	#141
	lbmi	.donecomet
	bra	.nofinish


.normale
	dec	lightx
	dec	lightx
	inc	lighty
	inc	lighty
	lda	lightx
	cmp	#18
	bcc	.finishup
.nofinish
	lda	lighty
	cmp	#224
	lbcc	.donecomet
.finishup	stz	comet
	lda	#deg45-deg22/8
	sta	lightangle+1
	jmp	.donecomet
.nocomet				;comet behaviour on map screen
	a16
	lda	x1
	pha
	lda	z1
	pha
	lda	x2
	pha
	lda	z2
	pha

	a8
	stz	x1
	lda	#125
	sta	z1
	lda	lightangle+1
	
	jsr	rotate_8xz_ram

	a16
	lda	x2
	sexa
	clc
	adc	#128
	sta	lightx
	lda	z2
	sexa
	clc
	adc	#100
	sta	lighty
	
	lda	#200
	sta	lightz

	lda	lightangle
	clc
	adc	#16
	sta	lightangle

	a8
	lda	whichroute
	cmp	#11
	beq	.cometspec
.cometnorm
	lda	lightangle+1
	cmp	#deg180+deg45
	bne	.cometganai
	lda	#1
	sta	comet
	lda	#255
	sta	lightx
	lda	#0
	sta	lighty
	stz	lightx+1
	stz	lighty+1
	bra	.cometganai
.cometspec
	lda	stage
	cmp	#4
	bpl	.cometnorm
	lda	#1
	sta	comet
	lda	#224
	sta	lightx
	lda	#1
	sta	lighty
	stz	lightx+1
	stz	lighty+1


.cometganai

	a16
	pla
	sta	z2
	pla
	sta	x2
	pla
	sta	z1
	pla
	sta	x1
	a8
.donecomet
;-------------------------------------------------------------
	pla
	sta	z2
	jsr	startmus
	rtl


	shorta
foxirq1	i16
	lda	#tm_fox2
	sta	trans_flag
	jmp	irqbit1.jmpin

	shorta
foxirq2	i16
	lda	#tm_fox3
.set	sta	trans_flag
	jmp	irqbit2.jmpin

	shorta
foxirq3	i16
	lda	scopemode
	beq	.noscope
	jsr	scope_read
.noscope
	waithtime	50,70

	dmaoaram	0,0,spriteblk,300
	stz	trans_flag
	lda	vmap1+1		;set new screen base select
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	#(vchr_physback>>12)<<4
	sta	bg12nba

	ldx	vmap1		;swap double buffering
	ldy	vmap2
	stx	vmap2
	sty	vmap1

	lda	#$80
	sta	vmainc
	a8
	lda	stopcounting
	bne	.nocreditstuff
	a16
	lda	#vsc_base2+32*24+29
	sta	vmaddl
	lda	credits
	clc
	adc	#((vchr_logback-vchr_physback)/16+$68)!(5<<10)!(1<<13)
	sta	vmdatal
.nocreditstuff
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

	a8
	lda	mousemode
	beq	.nomouse
	jsr	mouse_read2
.nomouse

	a8
	lda	colortrip
	bne	.nopal
	IFEQ	HARDWARE
	jsr	checkwater
	jsr	checksectork
	jsr	checksun
	ENDC
	jsr	checkcalib
	jsr	checktitl
.nopal

	lda	multitapmode
	beq	.nomulti
	jsr	read_mpa			;multitap
	a8
	lda	numplayers
	cmp	#1
	bne	.nomulti
	a16
	lda	con1
	sta	cont1l
	sta	con2
	sta	con3
	sta	con4
	sta	con5
.nomulti
;--------------NTT PAD READ - FOR CONTINUE/PREGAME SCREEN-------------

	a8
	stz jpread+0
	stz jpread+1
	lda nttmode
	beq .nontt
	ldx #16
.startlp
	lda $4016
	lsr a ; shift into carry
	ror jpread+1 ; rotate carry into jpread, shift
	ror jpread+0 ; rotate carry into jpread, shift
	dex
	bne .startlp
	a16
	lda	jpread
	eor jpprev
	and jpread
	sta jptrig

	lda	jpread
	sta	jpprev
;------------------END NTT PAD READ
.nontt

	a8
	lda	lsdmode
	beq	.reallydone

	jsr	lsdmodeact
	
.reallydone
	jsr	startmus
	rtl

;--------------------------------------------------------------------------
	shorta
	longi
contirqbit3	i16
	waithtime	50,70
	dmaoaram	0,0,spriteblk,328
	lda	#1+2+16	
	sta	tm

	stz	trans_flag
	lda	vmap1+1		;set new screen base select
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	#(vchr_physback>>12)<<4
	sta	bg12nba

	ldx	vmap1		;swap double buffering
	ldy	vmap2
	stx	vmap2
	sty	vmap1

	a16
	lda	joy1l
	eor	cont0l
	and	joy1l
	sta	trig0

	a8
	lda	bg2vofsreq
	sta	bg2vofs
	lda	bg2vofsreq+1
	sta	bg2vofs
	lda	bg2hofsreq
	sta	bg2hofs
	lda	bg2hofsreq+1
	sta	bg2hofs

	stz	cgadsub
	stz	coldata
	stz	wh0
	stz	wh1

	jsr	getcont0

	a16
	lda	contsmart
	and	#$ff
	beq	.skc
	lda	gameframe
	and	#1
	bne	.doc
	stz	nmitemp
	bra	.wrc
.doc
	lda	contsmart
	and	#$ff
	cmp	#31
	jbe	.ok
	lda	#31
.ok	sta	nmitemp
	asl	a
	asl	a
	asl	a
	asl	a
	asl	a
	sta	nmitemp2
	asl	a
	asl	a
	asl	a
	asl	a
	asl	a
	ora	nmitemp2
	ora	nmitemp
	sta	nmitemp
.wrc	a8
	lda	#3
	sta	cgadd
	lda	nmitemp
	sta	cgdata
	lda	nmitemp+1
	sta	cgdata
	dec	contsmart
.skc
	a8

	lda	lsdmode
	beq	.done
	jsr	lsdmodeact
.done

	jsr	setinidisp
	jsr	startmus
	rtl



;--------------------------------------------------------------------------
	shorta
	shorti
endseqbit0	jsr	seqscroll
	jsr	setinidisp
	lda	#1
	sta	gamevwpos
	jsr	startmus
	rtl

	shorta
	shorti
endseqbit1	i16
	lda	#28
	sta	trans_flag
	ldx	vmap1
	ramnastyoff
	dmaxvram	0,(bitmapbase+bitmap1),gametranlen1
	ramnastyon
	jsr	seqscroll
	jsr	setinidisp
	lda	#1
	sta	transbmp1
	jsr	startmus
	rtl

	shorta
	shorti
endseqbit2	i16
	lda	#30
	sta	trans_flag
	a16
	lda	vmap1
	clc
	adc	#gametranlen1/2
	tax
	a8
	ramnastyoff
	dmaxvram	0,(bitmapbase+bitmap1+gametranlen1),gametranlen2
	ramnastyon
	jsr	seqscroll
	jsr	setinidisp
	lda	#2
	sta	transbmp1
	lda	drawmap+1
	list	off
	lsr	a
	lsr	a
	sta	mscrbase
	jsr	startmus
	rtl


	shorta
	shorti
endseqbit3	lda	noirqbit3
	bne	.doi3
	rtl
.doi3
	i16
	lda	vmap1+1		;set new screen base select
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	#(vchr_physback>>12)<<4
	sta	bg12nba

	ldx	vmap1		;swap double buffering
	ldy	vmap2
	stx	vmap2
	sty	vmap1

	jsr	seqtext

	jsr	window_buffer

	a8i16
	jsr	setwindowpri

	jsr	seqscroll

	jsr	setinidisp

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

	a8
	jsr	startmus

	lda	#32
	sta	trans_flag
	rtl



;--------------------------------------------------------------------------
	shorta
	shorti
irqblank	lda	#1
	sta	gamevwpos
	jsr	startmus
	rtl

	shorta
irqbit1	i16
	lda	#4
	sta	trans_flag
.jmpin	local	 
	ldx	vmap1
	ramnastyoff

	lda	ntscpalswap
	beq	.ntsc
.pal
	dmaxvram	0,(bitmapbase+bitmap1),gametranlen1+3096
	bra	.donep
.ntsc
	dmaxvram	0,(bitmapbase+bitmap1),gametranlen1
.donep
	ramnastyon
	lda	#1
	sta	transbmp1
	lda	fpsspeed
	cmp #2
	bmi	.no60
	cmp #3
	beq	.no60
	lda	trans_flag
	cmp	#4
	beq	irqbit2
	lda	trans_flag
	cmp	#tm_fox2
	lbeq	foxirq2
.no60
	jsr	startmus
	rtl

	shorta
irqbit2	i16
	lda	dogyirq
	beq	.game
.cont	lda	#24
	sta	trans_flag
	bra	.jmpin
.game
	lda	#6
	sta	trans_flag
.jmpin	local

	lda	ntscpalswap
	beq	.ntsc
.pal
	a16
	lda	vmap1
	clc

	adc	#gametranlen1/2+3096/2	
	tax
	a8
	ramnastyoff

	dmaxvram	0,(bitmapbase+bitmap1+gametranlen1+3096),gametranlen2-3096
	bra	.donep
.ntsc
	a16
	lda	vmap1
	clc

	adc	#gametranlen1/2
	tax
	a8
	ramnastyoff

	dmaxvram	0,(bitmapbase+bitmap1+gametranlen1),gametranlen2
.donep

	ramnastyon
	lda	#2
	sta	transbmp1
	lda	drawmap+1
	lsr	a
	lsr	a
	sta	mscrbase

	lda	ntscpalswap
	bne	.swap

	lda	fpsspeed
	cmp	#3
	beq	.no30
	cmp	#1
	bmi	.no30

.swap	
	lda	trans_flag
	cmp	#6
	beq	irqbit3
	lda	trans_flag
	cmp	#24
	lbeq	contirqbit3
	cmp	#tm_fox3
	lbeq	foxirq3
	
.no30
	jsr	startmus
;	rtl
	rtl



	shorta
	shorti
irqbit3	lda	noirqbit3
	bne	.doi3
	rtl
.doi3
	lda	scopemode
	beq	.noscope
	jsr scope_read			;READ SUPER SCOPE VALUES IF SCOPEMODE IS ON
.noscope
	i16
	waithtime	50,70
	dmaoaram	0,0,spriteblk,328
	dmavram		0,bg2offsets+32,bg2voffsbak,64  ;DMA bg2 v offsets

	lda	lsdmode
	bne	.lsdmode
	dmacgram	0,0,pal0palette,8*32		;DMA palette 0-7
	bra	.skipper

.lsdmode


	jsr	lsdmodeact
	
.skipper

	
	lda	flashtunnelon
	beq	.skip
	;jsr	irqrand
	lda	rand
	cmp	#((20)*255)/100		;20% chance of a flash
	bcs	.skip
	dmacgram	0,0,redtunnel,64
.skip
	lda	flashbg
	beq	.skipt
	;jsr	irqrand
	lda	rand
	cmp	#((2)*255)/100		;2% chance of a flash
	bcs	.skipt
	dmacgram	0,5*16,thundercol,32
.skipt
	lda	colortrip
	bne	.nopal

	jsr	checkwater
	jsr	checksectork
	jsr	checksun
	jsr	checktitl
.nopal

; Commented out for CGRAM line 2 fix
;	lda	#2*16+4
;	sta	cgadd
;	lda	shieldup
;	beq	.nope
;	lda	#$e0
;	sta	cgdata
;	lda	#$7e
;	sta	cgdata
;	bra	.conti
;.nope
;	lda	#$1f
;	sta	cgdata
;	stz	cgdata
.conti

	lda	bg3scrollflag
	beq	.nobg3
	lda	bg3scroll		;BG3 scroll
	sta	bg3hofs
	lda	bg3scroll+1
	sta	bg3hofs
.nobg3
	ldx	hdmabg2hofs1		;Double buffer HDMA
	ldy	hdmabg2hofs2
	stx	hdmabg2hofs2
	sty	hdmabg2hofs1
	sty	ch2addra1tl

	jsr	window_buffer

	jsr	setbg2vofs

	lda	vmap1+1			;Double buffer screen
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	ora	#(vchr_physback>>12)<<4
	sta	bg12nba

	jsr	setwindowpri

	jsr	startmus		;Music

	a8
	lda	mousemode
	bne	.mouseandscope
	lda	scopemode
	bne	.mouseandscope


	a16
	lda	joy1l
	eor	cont0l
	and	joy1l
	sta	trig0
	jsr	getcont0
	a8
	lda	cont1
	sta	cont1l
	lda	joy2l
	sta	contl1
	lda	joy2h
	sta	cont1

	bra	.donehack
	
.mouseandscope

	a16
	lda	joy1l
	eor	cont0l
	and	joy1l
	sta	trig0
	jsr	getcont0
	lda	cont1
	sta	cont1l
	lda	mousemode
	beq	.donehack
	jsr	mouse_read2
;	jsr	scope_read	
.donehack
	a8
	lda	multitapmode
	beq	.nomulti
	jsr	read_mpa			;multitap
	a8
	lda	numplayers
	cmp	#1
	bne	.nomulti
	a16
	lda	con1
	sta	cont1l
	sta	con2
	sta	con3
	sta	con4
	sta	con5
	a8
.nomulti

;--------------NTT PAD READ - FOR NORMAL GAMEPLAY-----------

	a8
	stz	jptrig+0
	stz	jptrig+1
	stz jpread+0
	stz jpread+1
	lda nttmode
	beq .nontt
	ldx #16
.startlp
	lda $4016
	lsr a ; shift into carry
	ror jpread+1 ; rotate carry into jpread, shift
	ror jpread+0 ; rotate carry into jpread, shift
	dex
	
	bne .startlp
	a16
	lda	jpread
	eor jpprev
	and jpread
	sta jptrig

	lda	jpread
	sta	jpprev

;------------------END NTT PAD READ
.nontt
	a8
	jsr	setinidisp

	ldx	vmap1			;Bitmap double buffering
	ldy	vmap2
	stx	vmap2
	sty	vmap1

	stz	trans_flag
	rtl

controller_read_hack
    longa ; 16-bit accumulator, don't emit REP instruction
    
    lda    joy1l,x
    bit    #$000F  ; Get controller signature
    bne    .ignore ; If not zero, then the controller isn't connected to this port
    
    pha
    eor    cont0l,x
    and    joy1l,x
    sta    trig0,x
    pla
    sta    cont0l,x
    rts
    
.ignore
    stz    cont0l,x
    stz    trig0,x
	a8
	jsr	mouse_read2


	
	
	a8
  rts

;--------------------------------------------------------------------------
	shorta
	longi
setbg2vofs	a8
	lda	bg2vofsoverride
	beq	.ok
	lda	bg2vofsreq
	sta	bg2vofs
	lda	bg2vofsreq+1
	sta	bg2vofs
	lda	bg2hofsreq
	sta	bg2hofs
	lda	bg2hofsreq+1
	sta	bg2hofs
	rts
.ok
	lda	inatunnel
	beq	.skipdd

	a16
	lda	oldviewposz
	lsr	a
	lsr	a
	and	#62
	tax
	lda.l	chequered_tables,x
;	lda	#0
	tay
	a8
	phb
	lda	#chequered_tables>>16
;	lda	#0>>16
	pha
	plb
	ldx	#0
.lp	lda.w	0,y
	bpl	.norm
	and	#127
	sta.l	xhdma_bg2vofs+3,x
	inx
	lda	#cscr2&BM
	sta.l	xhdma_bg2vofs+3,x
	inx
	lda	#cscr2>>8
	sta.l	xhdma_bg2vofs+3,x
	bra	.finishoff
.norm	sta.l	xhdma_bg2vofs+3,x
	inx
	lda	#cscr1&BM
	sta.l	xhdma_bg2vofs+3,x
	inx
	lda	#cscr1>>8
	sta.l	xhdma_bg2vofs+3,x
.finishoff
	inx
	iny
	cpx	#224*3
	bne	.lp
	plb
.skipdd
	rts

;--------------------------------------------------------------------------
	shorta
setinidisp	lda	fadedir		;Set inidisp
	lbeq	.done
	bpl	.fadeup
.fadedown	cmp	#-2
	beq	.qfadedown
	cmp	#-3
	beq	.sfadedown
.fade1	lda	fade
.setdown	beq	.off
	dec	a
	beq	.off
	sta.l	xinidisp1
	sta.l	xinidisp2
	sta.l	xinidisp1a
	sta	fade
	bra	.done
.off	lda	#$80
	sta.l	xinidisp1
	sta.l	xinidisp2
	sta.l	xinidisp1a
	stz	fadedir
	stz	fade
	bra	.done
.sfadedown	lda	gameframe
	and	#1
	beq	.fade1
	rts
.qfadedown	lda	fade
	beq	.off
	dec	a
	beq	.off
	bra	.setdown
.fadeup	cmp	#2
	beq	.qfadeup
	lda	fade
.setup	cmp	#15
	beq	.on
	inc	a
	sta.l	xinidisp1
	sta.l	xinidisp2
	sta.l	xinidisp1a
	sta	fade
	bra	.done
.on	stz	fadedir
	lda	#15
	sta	fade
	bra	.done
.qfadeup	lda	fade
	cmp	#15
	beq	.on
	inc	a
	cmp	#15
	beq	.on
	inc	a
	bra	.setup
.done
	rts

;-----------------------------------------------------------------------
	shorta
	longi
getcont0	a8
	lda	cont0		;store old one
	sta	cont0l
	lda	contl0
	sta	contl0l

	lda	c_type
	and	#3
	asl	a
	xba
	lda	#0
	xba
	tax
	jmp	(.conttab,x)
.conttab	dw	typea&WM
	dw	typeb&WM
	dw	typec&WM
	dw	typed&WM
typea	lda	joy1l
	sta	contl0
	lda	joy1h
	sta	cont0
	rts

typeb	lda	joy1l
	sta	contl0
	lda	joy1h
	and	#%11000000
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	xba
	lda	#0
	xba
	tax
	lda	joy1h
	and	#%00111111
	ora.l	typey_b,x  ;nmitemp
	sta	cont0
	rts

typec	lda	joy1l
	sta	contl0
	lda	joy1h
	and	#%00001100
	lsr	a
	lsr	a
	xba
	lda	#0
	xba
	tax
	lda.l	typeu_d,x
	sta	nmitemp
	lda	joy1h
	and	#%11110011
	ora	nmitemp
	sta	cont0
	rts

typed	lda	joy1l
	sta	contl0
	lda	joy1h
	and	#%00001100
	lsr	a
	lsr	a
	xba
	lda	#0
	xba
	tax
	lda.l	typeu_d,x
	sta	nmitemp
	lda	joy1h
	and	#%00110011
	ora	nmitemp
	pha
	lda	joy1h
	and	#%11000000
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	xba
	lda	#0
	xba
	tax
	lda.l	typey_b,x
	sta	nmitemp
	pla
	ora	nmitemp
	sta	cont0
	rts

typey_b	db	%00000000,%10000000,%01000000,%11000000
typeu_d	db	%00000000,%00001000,%00000100,%00001100


;-----------------------------------------------------------------------
seqscroll_l
	jsr	seqscroll
	rtl

seqscroll	php
	a8
	lda	bg1hofsbak
	sta	bg1hofs
	lda	bg1hofsbak+1
	sta	bg1hofs
	lda	bg1vofsbak
	sta	bg1vofs
	lda	bg1vofsbak+1
	sta	bg1vofs

	lda	bg2hofsbak
	sta	bg2hofs
	lda	bg2hofsbak+1
	sta	bg2hofs
	lda	bg2vofsbak
	sta	bg2vofs
	lda	bg2vofsbak+1
	sta	bg2vofs

	lda	bg3hofsbak
	sta	bg3hofs
	lda	bg3hofsbak+1
	sta	bg3hofs
	lda	bg3vofsbak
	sta	bg3vofs
	lda	bg3vofsbak+1
	sta	bg3vofs

	ai16
	lda	bg1hofsbak
	ldx	bg1hofsreq
	ldy	#bg1xspd
	jsr	ramchase
	sta	bg1hofsbak
	lda	bg1vofsbak
	ldx	bg1vofsreq
	ldy	#bg1yspd
	jsr	ramchase
	sta	bg1vofsbak

	lda	bg2hofsbak
	ldx	bg2hofsreq
	ldy	#bg2xspd
	jsr	ramchase
	sta	bg2hofsbak
	lda	bg2vofsbak
	ldx	bg2vofsreq
	ldy	#bg2yspd
	jsr	ramchase
	sta	bg2vofsbak

	lda	bg3hofsbak
	ldx	bg3hofsreq
	ldy	#bg3xspd
	jsr	ramchase
	sta	bg3hofsbak
	lda	bg3vofsbak
	ldx	bg3vofsreq
	ldy	#bg3yspd
	jsr	ramchase
	sta	bg3vofsbak
.skipe
	plp
	rts

seqwindow	php

	plp
	rts


;-----------------------------------------------------------------------
seqtext	php
	a8i16
	lda	bgflags
	bit	#bgf_text
	bne	.do
	plp
	rts
.do
	ldx	seq_tptr
	ldy	seq_vm
	sty	vmaddl
.lp
	lda.l	seq_buffer,x
	inx
	cmp	#0
	beq	.end
	cmp	#1
	bne	.notpos
	a16
	lda.l	seq_buffer,x
	inx
	inx
	clc
	adc	#0e000h/2
	sta	vmaddl
	tay
	a8
	bra	.lp
.notpos
	a16
	and	#0ffh
	phx
	tax
	lda.l	etesttrans-32,x
	and	#0ffh
	plx
	ora	#1<<13
	clc
	adc	#256
	sta	vmdatal
	a8
	iny
	sty	seq_vm
	stx	seq_tptr
	plp
	rts
.end
	lda	bgflags
	and	#~bgf_text
	sta	bgflags
	plp
	rts

;-----------------------------------------------------------------------
	longa
	longi
ramchase
	stx	nmitemp
	cmp	nmitemp
	sty	nmitemp
	beq	.nc
	bmi	.pos
	sec
	sbc	nmitemp
	bra	.nc
.pos	clc
	adc	nmitemp
.nc
	rts

;-----------------------------------------------------------------------
startmus	php
	ai8
	lda	bgmcnt
	beq	.start
	dec	a
	beq	.check
	bra	.trig3
.start	lda	bgm_music
	sta	apu_port0
	inc	bgmcnt
	bra	.trig3
.check	lda	apu_port0
	cmp	bgm_music
	bne	.start
	stz	apu_port0
	inc	bgmcnt
.trig3

	lda	sdpck3		;check last sound
	beq	.sndp040
	cmp	apu_port3
	bne	.reject

	stz	sdpck3
	stz	apu_port3
.sndp040
	lda	pausesnd
	bne	.pause

	ldx	sdgpt3
	cpx	sdspt3
	beq	.ret
	lda	sdport3,x
	sta	apu_port3
	sta	sdpck3
	lda	sdgpt3
	inc	a
	and	#15
	sta	sdgpt3
.ret	plp
	rts
.reject
	plp
	rts

.pause
	sta	apu_port3
	sta	sdpck3
	stz	sdspt3
	stz	sdgpt3
	stz	pausesnd
	plp
	rts


;-----------------------------------------------------------------------
	IFNE	0
irqrand	lda	rand
	clc
	sbc	rand+1
	sta	rand+1
	sbc	rand+2
	sta	rand+2
	sbc	rand+3
	sta	rand+3
	sbc	rand
	sta	rand
	rts
	ENDC
;-----------------------------------------------------------------------
	shorta
	longi
setwindowpri	ldx	windowptr		;Set window values
	beq	.noreq
	cpx	#wa_wipe*wm_sizeof+windowarray
	beq	.wipe
	lda	wm_cgadsub,x
	sta	cgadsub
	lda	wm_coldata,x
	beq	.nowrite
	sta	coldata
	bra	.notindiv
.nowrite	lda	wm_coldata_r,x
	and	#%11111
	ora	#%100000
	sta	coldata
	lda	wm_coldata_g,x
	and	#%11111
	ora	#%1000000
	sta	coldata
	lda	wm_coldata_b,x
	and	#%11111
	ora	#%10000000
	sta	coldata
.notindiv	lda	wm_ts,x
	sta	ts
	lda	wm_cgswsel,x
	bit	#%110000
	bne	.window
	ora	#%00010000
	sta	cgswsel
	lda	#%10000000
	sta	wobjsel		; enable window 2
	lda	#16
	sta	wh2
	lda	#256-16
	sta	wh3
	bra	.donereq
.window	sta	cgswsel
	lda	#%00100000
	sta	wobjsel		; enable window 1
	bra	.donereq
.noreq
	lda	#%00000010
	sta	cgswsel
	lda	#%01010000
	sta	cgadsub
	lda	#%11100000
	sta	coldata
	lda	#%111
	sta	ts
.donereq
	stz	w12sel
	stz	w34sel
	stz	wbglog
	lda	#%1100
	sta	wobjlog
	stz	tmw
	rts
.wipe
	lda	#%10111011
	sta	w12sel
	lda	#%10111011
	sta	w34sel
	lda	#%00001011
	sta	wobjsel
	lda	wm_wbglog,x		;#%01010101
	sta	wbglog
	and	#%11
	sta	wobjlog
	lda	#1+2+4+8+16
	sta	tmw
	stz	cgadd
	stz	cgdata
	stz	cgdata
	rts

;--------------------------------------------------------------------------------------
window_buffer	php
	a16
	ldx	hdmacirclebuf1		;Double buffer windows
	lda	hdmacirclebuf2
	stx	hdmacirclebuf2
	sta	hdmacirclebuf1
	sta	ch3addra1tl
	a8
	lda	whichcircle
	eor	#1
	sta	whichcircle
	plp
	rts

checkwater
	lda	waterfade
	lbeq	.skiptnew
	lda	waterframe
	cmp	#2
	lbmi	.0
	cmp	#4
	lbmi	.1
	cmp	#6
	lbmi	.2
	cmp	#8
	lbmi	.3
	cmp	#10
	lbmi	.4
	cmp	#12
	lbmi	.5
	cmp	#14
	lbmi	.6
	cmp	#16
	lbmi	.7
	cmp	#17
	lbmi	.8
.0	
	dmacgram	0,4*16,water1,32
	inc	waterframe
	jmp	.skiptnew

.1	
	dmacgram	0,4*16,water2,32
	inc	waterframe
	jmp	.skiptnew

.2	
	dmacgram	0,4*16,water3,32
	inc	waterframe
	jmp	.skiptnew

.3	
	dmacgram	0,4*16,water4,32
	inc	waterframe
	jmp	.skiptnew

.4	
	dmacgram	0,4*16,water5,32
	inc	waterframe
	jmp	.skiptnew

.5	
	dmacgram	0,4*16,water6,32
	inc	waterframe
	jmp	.skiptnew

.6	
	dmacgram	0,4*16,water7,32
	inc	waterframe
	jmp	.skiptnew

.7	
	dmacgram	0,4*16,water8,32
	inc	waterframe
	jmp	.skiptnew



.8
	stz	waterframe
	jmp	.0

.skiptnew
	rts

checksectork
	lda	sectorkfade
	lbeq	.skiptnew
	lda	sectorkframe
	cmp	#3
	lbmi	.0
	cmp	#6
	lbmi	.1
	cmp	#9
	lbmi	.2
	cmp	#12
	lbmi	.3
	cmp	#15
	lbmi	.4
	cmp	#18
	lbmi	.5
	cmp	#21
	lbmi	.6
	cmp	#24
	lbmi	.7
	cmp	#25
	lbmi	.8
.0	
	dmacgram	0,4*16,sectork1,32
	inc	sectorkframe
	jmp	.skiptnew

.1	
	dmacgram	0,4*16,sectork2,32
	inc	sectorkframe
	jmp	.skiptnew

.2	
	dmacgram	0,4*16,sectork3,32
	inc	sectorkframe
	jmp	.skiptnew

.3	
	dmacgram	0,4*16,sectork4,32
	inc	sectorkframe
	jmp	.skiptnew

.4	
	dmacgram	0,4*16,sectork5,32
	inc	sectorkframe
	jmp	.skiptnew

.5	
	dmacgram	0,4*16,sectork6,32
	inc	sectorkframe
	jmp	.skiptnew

.6	
	dmacgram	0,4*16,sectork7,32
	inc	sectorkframe
	jmp	.skiptnew

.7	
	dmacgram	0,4*16,sectork8,32
	inc	sectorkframe
	jmp	.skiptnew



.8
	stz	sectorkframe
	jmp	.0

.skiptnew
	rts

checksun
	lda	sunfade
	lbeq	.skiptnew
	lda	sunframe
	cmp	#2
	lbmi	.0
	cmp	#4
	lbmi	.1
	cmp	#6
	lbmi	.2
	cmp	#8
	lbmi	.3
	cmp	#10
	lbmi	.4
	cmp	#12
	lbmi	.5
	cmp	#14
	lbmi	.6
	cmp	#16
	lbmi	.7
	cmp	#18
	lbmi	.8
.0	
	dmacgram	0,3*16,sun1,32
	inc	sunframe
	jmp	.skiptnew

.1	
	dmacgram	0,3*16,sun2,32
	inc	sunframe
	jmp	.skiptnew

.2	
	dmacgram	0,3*16,sun3,32
	inc	sunframe
	jmp	.skiptnew

.3	
	dmacgram	0,3*16,sun4,32
	inc	sunframe
	jmp	.skiptnew

.4	
	dmacgram	0,3*16,sun5,32
	inc	sunframe
	jmp	.skiptnew

.5	
	dmacgram	0,3*16,sun6,32
	inc	sunframe
	jmp	.skiptnew

.6	
	dmacgram	0,3*16,sun7,32
	inc	sunframe
	jmp	.skiptnew

.7	
	dmacgram	0,3*16,sun8,32
	inc	sunframe
	jmp	.skiptnew



.8
	stz	sunframe
	jmp	.0

.skiptnew
	rts

checktitl
	lda	titlfade
	lbeq	.skiptnew
	lda	titlframe
	cmp	#2
	lbmi	.0
	cmp	#4
	lbmi	.1
	cmp	#6
	lbmi	.2
	cmp	#8
	lbmi	.3
	cmp	#10
	lbmi	.4
	cmp	#12
	lbmi	.5
	cmp	#14
	lbmi	.6
	cmp	#16
	lbmi	.7
	jmp	.8
.0	
	dmacgram	0,1*16,titl1,32
	dmacgram	0,0*16,titl01,32
	inc	titlframe
	jmp	.skiptnew

.1	
	dmacgram	0,1*16,titl2,32
	dmacgram	0,0*16,titl02,32
	inc	titlframe
	jmp	.skiptnew

.2	
	dmacgram	0,1*16,titl3,32
	dmacgram	0,0*16,titl03,32
	inc	titlframe
	jmp	.skiptnew

.3	
	dmacgram	0,1*16,titl4,32
	dmacgram	0,0*16,titl04,32
	inc	titlframe
	jmp	.skiptnew

.4	
	dmacgram	0,1*16,titl5,32
	dmacgram	0,0*16,titl05,32
	inc	titlframe
	jmp	.skiptnew

.5	
	dmacgram	0,1*16,titl6,32
	dmacgram	0,0*16,titl06,32
	inc	titlframe
	jmp	.skiptnew

.6	
	dmacgram	0,1*16,titl7,32
	dmacgram	0,0*16,titl07,32
	inc	titlframe
	jmp	.skiptnew

.7	
	dmacgram	0,1*16,titl8,32
	dmacgram	0,0*16,titl08,32
	inc	titlframe
	jmp	.skiptnew



.8
	cmp	#63
	bpl	.zero
	inc	titlframe
;	jmp	.0
	dmacgram	0,1*16,titl9,32
	dmacgram	0,0*16,titl09,32
	rts
.zero
	stz	titlframe
	jmp	.0

.skiptnew
	rts


checkcalib
	lda	calibscr
	lbeq	.skiptnew
	dmacgram	0,6*16,calib1,32
.skiptnew
	rts


lsdmodeact
	a16
	jsl	random_l
	and	#$ffff
	tay
	sty	palfade
	sty	lastpalfade
	ldy	#2
	sty	palcnt
	a8
	lda	#30
	sta	palnum
	phy
	ldy	#7*32-1
.again

	jsl	random_l
	and	#31
	beq	.again
	sta	textpt
	dmacgram2	0,0,textpt,y
	dey
	beq	.done
	bpl	.again
.done
	ply
	rts
lsdmodeact2
	phy
	ldy	#8
.again

	jsl	random_l
	and	#15
	beq	.again
	sta	textpt
	dmacgram2	0,0,textpt,y
	dey
	beq	.done
	bpl	.again
.done
	ply
	rts


;****************************************************************
;*								*
;*		mouse.x65					*
;*		Super NES Mouse System file			*
;*		March 11, 1992          			*
;*		(c) 1992 Nintendo of Ameica Inc.		*
;*								*
;****************************************************************
;
;****************************************************************
;****************************************************************
;*								*
;*		  Mouse Driver Routine (Ver 1.00)		*
;*						         	*
;****************************************************************
;****************************************************************

		db	'START OF MOUSE BIOS'	;do not delete


;*******************************************************************
;*  ============================================================== *
;*        Mouse_read						           *
;*  ============================================================== *
;*								   *
;*  If this routine is called every frame, then the mouse status   *
;*     will be set to the appropriate registers.		       *
;*										     *
;* INPUT								           *
;*     None (Mouse key read automatically				  *
;*										     *
;* OUTPUT								          *
;*     Connection status (mouse_con) D0=1 Mouse connected to Joy1  *
;*					     D1=1 Mouse connected to Joy2  *
;*										     *
;*     Switch (mouse_sw0,1)  D0=left switch turbo		      *
;*				   D1=right switch turbo		     *
;*										     *
;*     Switch (mouse_swt0,1) D0=left switch trigger		    *
;*				   D1=right switch trigger		   *
;*										     *
;*     Mouse movement (ball) value				         *
;*		(mouse_x) D7=0 Positive Turn, D7=1 Negative Turn     *
;*			     D6-D0 X movement value		    *
;*		(mouse_y) D7=0 Positive Turn, D7=1 Negative Turn     *
;*			     D6-D0 Y movement value		    *
;*										     *
;*										     *
;******************************************************************* 

mouse_read_l2
	PHB
	LDA	#$7F
	PHA
	PLB

	jsr	mouse_read2

	PLB
	rtl

mouse_read2
	PHB
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC

	php
	;sep	#$30		
.10
	lda	mousemode
	beq	.30

	lda	$4212
	and	#%00000001
	bne	.10		; Automatic read okay?

	ldx	#$01		; Joy 2
	lda	$421a
	jsr	mouse_data

	lda	connect_st1
	beq	.20

	jsr	speed_change	
	stz	connect_st1
	plp
	plb
	rts
.20
	dex
	lda	$4218		; Joy 1    
	jsr	mouse_data

	lda	connect_st0
	beq	.30

	jsr	speed_change	
	stz	connect_st0
.30
	plp
	plb
	rts


mouse_data
	sta	reg0l		; (421a 4218 save to reg0)  
	and	#%00001111
	cmp	#$01		; Is mouse connected?        
	beq	.m10

	stz	mouse_con0,x	; No connection

	stz	mouse_x0,x
	stz	mouse_y0,x
	stz	mouse_sw0,x
	stz	mouse_swt0,x
	stz	mouse_sb0,x
	
	rts
.m10
	lda	mouse_con0,x	; When mouse is connected, speed will change
	bne	.m20		; Previous connection status
				;	(mouse.com judged by lower 1 bit)

	lda	#$01		; Connection check flag ON
	sta	mouse_con0,x
	sta	connect_st0,x
	rts

  
.m20
	lda	#$01		; Connection check flag ON
	sta	mouse_con0,x
	ldy	#16		; Read 16-bit data
.m30
	lda	$4016,x
	lsr	a
	rol	mouse_x0,x
	rol	mouse_y0,x
	dey
	bne	.m30

	stz	mouse_sw0,x

	rol	reg0l
	rol	mouse_sw0,x
	rol	reg0l
	rol	mouse_sw0,x	; Switch Turbo  

	lda	mouse_sw0,x
	eor	mouse_sb0,x	; Get Switch trigger 
	bne	.m40

	stz	mouse_swt0,x
	rts
.m40
	lda	mouse_sw0,x
	sta	mouse_swt0,x
	sta	mouse_sb0,x
	rts


;*******************************************************************
;*  =============================================================  *
;*	Speed_change				           		   *
;*  =============================================================  *
;*  Set speed to mouse_sp_set.  Give mouse port the value of x and *
;*	call this routine.					   *
;*  If this routine is called without setting mouse_sp_set, then   *
;*      previous speed will be assigned to current speed.          *
;*  Normally, mouse speed data will be saved to mouse_sp.	   *
;*  If mouse speed cannot be set properly, then error code will    *
;*  	be set to mouse_sp.					   *	
;*								   *
;* INPUT							   *
;*      X=connection port (X:0=joy1 1=joy2)				*
;*      MOUSE_sp_seT0= JOY1 setting speed				  *
;*      MOUSE_sp_seT1= JOY2 setting speed				  * 
;* OUTPUT							   *
;*      MOUSE_sp0 = Joy1 Mouse speed				       *
;*	          (0=slow, 1=medium, 2=fast, $80=error code        *
;*      MOUSE_sp1 = Joy2 Mouse speed				       *
;*	          (0=slow, 1=medium, 2=fast, $80=error code        *
;*******************************************************************

speed_change
	php
	sep	#$30

	lda	mouse_con,x	
	beq	.s25

	lda	#$10		
	sta	reg0h		

.s10
	lda	#$01
	sta	$4016
	lda	$4016,x		; Speed change (1 step)
	stz	$4016

	lda	#$01		; Read Speed data   
	sta	$4016		; Shift register clear
	lda	#$00
	sta	$4016

	sta	mouse_sp0,x	; Speed register clear  

	ldy	#10		; Shift register read has no meaning
.s20
	lda	$4016,x		;
	dey
	bne	.s20

	lda	$4016,x		; Read Speed  
	lsr	a
	rol	mouse_sp0,x

	lda	$4016,x
	lsr	a
	rol	mouse_sp0,x
	lda	mouse_sp0,x

	cmp	mouse_sp_set0,x	; Set speed or not? 
	beq	.s30

	dec	reg0h		; For error check         
	bne	.s10

.s25
	lda	#$80		; Speed change error    
	sta	mouse_sp0,x
.s30
	plp
	rts





;-----------SCOPE SCUFF---------------



	db	'MODIFIED SHVC MOUSE BIOS Ver1.00' 	;do not delete
	db	'MODIFIED BY KANDOWONTU'
; From Yoshi's Safari

	db "START OF SCOPE BIOS"
scope_read_l
	jsr	scope_read
	rtl
	
scope_read     php
		sep #$20
		; ADDED CODE
		; Set DB to $80
		phb
		lda #$80
		pha
		plb
		; ADDED CODE
		a8

;**

		lda	$213F   ; (STAT78)
		and	#$40
		beq	_NoLatch

		lda	$213C   ; (OPHCT) H counter, low byte
		sta	scope_h+0

		lda	$213C   ; (OPHCT) H counter, high byte
		and	#$01    ; Mask open-bus away
		sta	scope_h+1

		lda	$213D   ; (OPVCT) V counter, low byte
		sta	scope_v+0

		lda	$213D   ; (OPVCT) V counter, high byte
		and	#$01    ; Mask open-bus away
		sta	scope_v+1

;**
		stz	scope_no_latch_flag
		bra _yeslatch
_NoLatch	inc scope_no_latch_flag
_yeslatch	sep #$20
		a16
		; Wait for auto-joypad read
_WaitJoypad  lda $4212 ; HVBJOY
		and #$01
		bne _WaitJoypad
		a16
		lda $421A ; JOY2L
		sta scope_held
		eor scope_prev
		and scope_held
		sta scope_new
		
		lda scope_held
		sta scope_prev

		plb ; ADDED, see top of routine (we're setting DB to 0 temporarily)
		plp
		rts

	db "NINTENDO SHVC SCOPE BIOS Ver1.00"
	db "MODIFIED BY KANDOWONTU"
	db "END OF SCOPE BIOS"


	db	"START OF MULTI5 BIOS"
	
c_ad1	equ	$4016
c_ad2	equ	$4017

read_mpa
	ai8
	stz	status
.loop1
	lda	$4212
	and	#1
	bne	.loop1

	lda	$4219
	sta	con1+1
	lda	$4218
	sta	con1
	and	#$f
	sta	sgn1
	lda	c_ad1
	lsr	a
	rol	sgn1

	lda	$421B
	sta	con2+1
	lda	$421A
	sta	con2
	and	#$f
	sta	sgn2
	lda	$421F
	sta	con3+1
	lda	$421E
	sta	con3
	and	#$f
	sta	sgn3
	lda	c_ad2
	lsr	a
	rol	sgn2
	lsr	a
	rol	sgn3

;output 0 to pp7
	lda	#$7f
	sta	$4201

	ldy	#$10
.loop3
	lda	c_ad2
	a16
	rep	#$20
	lsr	a
	rol	con4
	lsr	a
	rol	con5
	a8
	dey
	bne	.loop3

	lda	con4
	and	#$f
	sta	sgn4
	lda	con5
	and	#$f
	sta	sgn5
	lda	c_ad2
	lsr	a
	rol	sgn4
	lsr	a
	rol	sgn5

;output 1 to pp7

	lda	#$0FF
	sta	$4201

	rts

    DB	"MODIFIED FROM SHVC MULTI5 BIOS V1.00"
    DB	"END OF MULTI5 BIOS"




