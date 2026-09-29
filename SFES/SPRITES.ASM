;�������������������������������������������������������������������������ͻ
;�                                                                         �
;�                               StarFox                                   �
;�                              ---------                                  �
;�                                                                         �
;�                           SuperNES version.                             �
;�                                                                         �
;�                           Argonaut Software.                            �
;�                                                                         �
;�������������������������������������������������������������������������͹
;�                                                                         �
;�  File : sprites.asm                                                     �
;�                                                                         �
;�������������������������������������������������������������������������͹
;�                                                                         �
;�  Descr : Sprite routines                                                �
;�                                                                         �
;�������������������������������������������������������������������������͹
;�                                                                         �
;�  Date created : 18/03/1992                                              �
;�                                                                         �
;�������������������������������������������������������������������������͹
;�                                                                         �
;�  Author: Krister Wombell                                                �
;�                                                                         �
;�������������������������������������������������������������������������ͼ

	PUBLIC	init_sprites_l



init_sprites_l
	php
	a8i16
	stz	crosshairon
	stz	stageclear
	stz	stagecnt
;	stz	gameover
	stz	scramble

	decvramnotrans	0,vobj_base,sprites,4*k
	ldx	#(128*4+128/4)-1		; clear the buffer
.lp2	stz	spriteblk,x
	dex
	bpl	.lp2
	dmaoaram	0,0,spriteblk,(128*4)+(128/4)	; clear all oram
	plp
	rtl


do_sprites_l
	a8i16
	lda	dogyirq
	bne	.skipsprites
	ldx	#0
	stx	spritespos
	stx	mespos
	stx	mesendpos

	lda	stayblack
	inc	a
	bne	.nodo
	lda.l	m_meters
	beq	.nodo
	lda	playertwocpuactivated
	bne	.nop2ch
	lda	playertwoactivated
	beq	.nop2ch
;	jsl	crosshair2_l
	lda	multitapmode
	bne	.nop2ch				;temporary?
	lda	ptwodead
	bne	.nop2ch
	jsr	do_crosshair2
.nop2ch
	jsr	do_spec_weap
	a8
	lda	twoplayer
	beq	.notwo
	jsr	do_spec_weaptwo
.notwo
	lda	multitapmode
	bne	.nocrosshair		;temporary?
	lda	ponedead
	bne	.nocrosshair
	jsr	do_crosshair
.nocrosshair

	jsr	do_lives
	jsr	do_livestwo
;	lda	multitapmode
;	beq	.notwolives
;	jsr	do_livesthree
;	jsr	do_livesfour
;	jsr	do_livesfive
.notwolives

	jsr	do_shield
	jsr	do_enemy
	jsr	do_arrows
	jsr	prt_stageclear
.nodo
	jsr	do_1credit
	a8
	lda	doingwipe
	bne	.skipsc
	jsr	prt_scramble
.skipsc
	jsr	do_stage

	jsr	reset_sprites
.skipsprites	rtl


;------------------------------
reset_sprites_l
	jsr	reset_sprites
	rtl

reset_sprites
	a16
	lda	#328
	sec
	sbc	spritespos
	bmi	.end
	ldx	spritespos
.lp	stz	spriteblk,x
	inx
	inx
	dec	a
	dec	a
	bpl	.lp
	rts
.end	a8
	stratdebug
	rts


do_lives	a8i16
	lda	multitapmode
	lbne	multilives
	lda	godmode
	lbne	.nolives
	ldx	spritespos
	a16
	ldaspr	03dh,pri2
	sta	spriteblk+2,x

	a8
	lda.l	m_playertwoactivated
	beq	.norm1
	a16
	lda	#$2912
	bra	.cont1
.norm1
	a8
	lda	classichp
	beq	.reallynorm
	a16
	lda	#$AD10
	bra	.cont1
.reallynorm
	a16
	lda	#$AF1B
.cont1
	sta	spriteblk,x

	ldaspr	062h,pri2
	sta	spriteblk+6,x

	a8
	lda.l	m_playertwoactivated
	a16
	beq	.norm2
	lda	#$291A
	bra	.cont2
.norm2
	a8
	lda	classichp
	beq	.reallynorm2
	a16
	lda	#$AD19
	bra	.cont2
.reallynorm2
	a16
	lda	#$AF23
.cont2

	sta	spriteblk+4,x

	lda	lives
	and	#$ff
	bne	.ok
	lda	#1
.ok	dec	a
	sta	x1

	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+10,x

	a8
	lda.l	m_playertwoactivated
	beq	.norm3
	a16
	lda	#$2922
	bra	.cont3
.norm3
	a8
	lda	classichp
	beq	.reallynorm3
	a16
	lda	#$AD22
	bra	.cont3

.reallynorm3
	a16
	lda	#$AF2B


.cont3

	sta	spriteblk+8,x

	txa
	clc
	adc	#12
	sta	spritespos
.nolives
	rts

;------------

multilives
	lda	twoplayer
	lbeq	.rts	
	ldx	spritespos
	a16
	ldaspr	03dh,pri2
	sta	spriteblk+2,x

	lda	#$102F

	sta	spriteblk,x

;	ldaspr	062h,pri2
;	sta	spriteblk+6,x

;	lda	#$1838
;	sta	spriteblk+4,x
;	a8
	lda	lives
	and	#$ff
	bne	.ok
	lda	#1
.ok	dec	a
	sta	x1
	a16
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+6,x

	lda	#$172F
	sta	spriteblk+4,x

	lda	livestwo
	and	#$ff
	bne	.ok2
	lda	#1
.ok2	dec	a
	sta	x1
	a16
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+10,x

	lda	#$1F2F
	sta	spriteblk+8,x

	lda	numplayers
	cmp	#1
	beq	.do3
	cmp	#3
	lbmi	.don
.do3
	lda	livesthree
	and	#$ff
	bne	.ok3
	lda	#1
.ok3	dec	a
	sta	x1
	a16
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+14,x

	lda	#$272F
	sta	spriteblk+12,x

	lda	numplayers
	cmp	#1
	beq	.do4
	cmp	#4
	lbmi	.don
.do4
	lda	livesfour
	and	#$ff
	bne	.ok4
	lda	#1
.ok4	dec	a
	sta	x1
	a16
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+18,x

	lda	#$2F2F
	sta	spriteblk+16,x
	
	lda	numplayers
	cmp	#1
	beq	.do5
	cmp	#5
	lbmi	.don
.do5
	lda	livesfive
	and	#$ff
	bne	.ok5
	lda	#1
.ok5	dec	a
	sta	x1
	a16
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+22,x

	lda	#$372F
	sta	spriteblk+20,x

.don
	txa
	clc
	adc	#24
	sta	spritespos
.rts
	rts



multibombs
	lda	twoplayer
	lbeq	.rts
	ldx	spritespos

	a16
	lda	specwepcntone
	and	#$ff
	sta	x1
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+2,x

	lda	#$173F
	sta	spriteblk,x

	lda	speccnttwo
	and	#$ff
	sta	x1
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+6,x

	lda	#$1F3F
	sta	spriteblk+4,x

	lda	numplayers
	cmp	#1
	beq	.do3
	cmp	#3
	lbmi	.don
.do3
	lda	speccntthree
	and	#$ff
	sta	x1
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+10,x
	lda	#$273F
	sta	spriteblk+8,x
	
	lda	numplayers
	cmp	#1
	beq	.do4
	cmp	#4
	lbmi	.don
.do4
	lda	speccntfour
	and	#$ff
	sta	x1
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+14,x
	lda	#$2F3F
	sta	spriteblk+12,x

	lda	numplayers
	cmp	#1
	beq	.do5
	cmp	#5
	lbmi	.don
.do5
	lda	speccntfive
	and	#$ff
	sta	x1
	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+18,x

	lda	#$373F
	sta	spriteblk+16,x


.don
	txa
	clc
	adc	#20
	sta	spritespos
.rts
	rts


;---------------

do_livestwo	a8i16
	lda	multitapmode
	bne	.notwolives
	lda	godmode
	bne	.notwolives
	lda.l	m_playertwoactivated
	beq	.notwolives
	ldx	spritespos
	a16
	ldaspr	03dh,pri2
	sta	spriteblk+2,x

	lda	#$29D1

	sta	spriteblk,x

	ldaspr	062h,pri2
	sta	spriteblk+6,x
	lda	#$29D9
	sta	spriteblk+4,x

	lda	livestwo
	and	#$ff
	bne	.ok
	lda	#1
.ok	dec	a
	sta	x1

	ldaspr	063h,pri2
	clc
	adc	x1
	sta	spriteblk+10,x
	lda	#$29E1

	sta	spriteblk+8,x

	txa
	clc
	adc	#12
	sta	spritespos
.notwolives
	rts

do_shield	a8i16
;-----first player
	lda	godmode
	lbne	.off
	lda	ponedead
	cmp	#1
	lbeq	.off1
	ldx	spritespos
	lda	multitapmode
	bne	.multistuff

	lda.l	m_playertwoactivated
	beq	.normshield
	a16
	lda	#$210F
	sta	spriteblk,x
	lda	#$2117
	sta	spriteblk+4,x
	lda	#$211F
	sta	spriteblk+8,x
	lda	#$2127
	sta	spriteblk+12,x
	bra	.ready
.multistuff
	a16
	lda	#$100F
	sta	spriteblk,x
	lda	#$1017
	sta	spriteblk+4,x
	lda	#$101F
	sta	spriteblk+8,x
	lda	#$1027
	sta	spriteblk+12,x
	bra	.ready
.normshield
	a8
	lda	classichp
	bne	.classicshield
	a16
	lda	#$bA18
	sta	spriteblk,x
	lda	#$bA20
	sta	spriteblk+4,x
	lda	#$bA28
	sta	spriteblk+8,x
	lda	#$bA30
	sta	spriteblk+12,x
	bra	.ready
.classicshield
	a16
	lda	#$b70E
	sta	spriteblk,x
	lda	#$b716
	sta	spriteblk+4,x
	lda	#$b71E
	sta	spriteblk+8,x
	lda	#$b726
	sta	spriteblk+12,x	
.ready
	ldaspr	04bh,pri2
	sta	spriteblk+2,x
	ldaspr	04ch,pri2
	sta	spriteblk+6,x
	ldaspr	04dh,pri2
	sta	spriteblk+10,x
	ldaspr	04eh,pri2
	sta	spriteblk+14,x
	txa
	clc
	adc	#16
	sta	spritespos
.off1
;---second player
	a8
	lda	multitapmode
	bne	.off
	lda.l	m_playertwoactivated
	lbeq	.off
	a16
	ldx	spritespos
	lda	#$21CB
	sta	spriteblk,x
	lda	#$21D3
	sta	spriteblk+4,x
	lda	#$21DB
	sta	spriteblk+8,x
	lda	#$21E3
	sta	spriteblk+12,x
	ldaspr	04bh,pri2
	sta	spriteblk+2,x
	ldaspr	04ch,pri2
	sta	spriteblk+6,x
	ldaspr	04dh,pri2
	sta	spriteblk+10,x
	ldaspr	04eh,pri2
	sta	spriteblk+14,x
	txa
	clc
	adc	#16
	sta	spritespos

	IFEQ	1
;---third player
	a8
	lda	numplayers
	cmp	#3
	lbmi	.off
	a16
	ldx	spritespos
	lda	#$C00F
	sta	spriteblk,x
	lda	#$C017
	sta	spriteblk+4,x
	lda	#$C01F
	sta	spriteblk+8,x
	lda	#$C027
	sta	spriteblk+12,x
	ldaspr	04bh,pri2
	sta	spriteblk+2,x
	ldaspr	04ch,pri2
	sta	spriteblk+6,x
	ldaspr	04dh,pri2
	sta	spriteblk+10,x
	ldaspr	04eh,pri2
	sta	spriteblk+14,x
	txa
	clc
	adc	#16
	sta	spritespos
;---fourth player
	a8
	lda	numplayers
	cmp	#4
	lbmi	.off
	a16
	ldx	spritespos
	lda	#$B80F
	sta	spriteblk,x
	lda	#$B817
	sta	spriteblk+4,x
	lda	#$B81F
	sta	spriteblk+8,x
	lda	#$B827
	sta	spriteblk+12,x
	ldaspr	04bh,pri2
	sta	spriteblk+2,x
	ldaspr	04ch,pri2
	sta	spriteblk+6,x
	ldaspr	04dh,pri2
	sta	spriteblk+10,x
	ldaspr	04eh,pri2
	sta	spriteblk+14,x
	txa
	clc
	adc	#16
	sta	spritespos

;---fifth player
	a8
	lda	numplayers
	cmp	#5
	lbmi	.off
	a16
	ldx	spritespos
	lda	#$B00F
	sta	spriteblk,x
	lda	#$B017
	sta	spriteblk+4,x
	lda	#$B01F
	sta	spriteblk+8,x
	lda	#$B027
	sta	spriteblk+12,x
	ldaspr	04bh,pri2
	sta	spriteblk+2,x
	ldaspr	04ch,pri2
	sta	spriteblk+6,x
	ldaspr	04dh,pri2
	sta	spriteblk+10,x
	ldaspr	04eh,pri2
	sta	spriteblk+14,x
	txa
	clc
	adc	#16
	sta	spritespos
	ENDC


.off	rts




;----------------------------------------------
; returns xs and ys (8 bit) screen coordinates
; pass x pointing to the alien

rotproj_l
	php
	a16
	stz	x1
	stz	y1
	stz	z1
	stz	x2
	stz	y2
	stz	z2


	a8
	stz	x1
	stz	y1
	lda	#-30
	sta	z1


	lda	al_rotx,x
	jsl	rotate_8yz_l
	lda	x2
	sta	x1
	lda	y2
	sta	y1
	lda	z2
	sta	z1

	lda	al_roty,x
	jsl	rotate_8xz_l

	a16
	lda	x2
	sexa
	clc
	adc	al_worldx,x
	sec
	sbc	viewposx
	sta.l	m_x1

	lda	y2
	sexa
	clc
	adc	al_worldy,x
	sec
	sbc	viewposy
	sta.l	m_y1

	lda	z2
	sexa
	clc
	adc	al_worldz,x
	sec
	sbc	viewposz
	sta.l	m_z1


	a8
	lda	#mwmatrotp16>>16
	ldx	#mwmatrotp16&$ffff
	jsl	runmario_l
	a16
	lda.l	m_bigx
	sta	x1
	lda.l	m_bigy
	sta.l	y1
	lda.l	m_bigz
	sta	z1

	ai8
	jsl	projectlog_l
	plp

	rtl




	longi
prt_scramble
	a8
	lda	scramble
	and	#$ff
	beq	.no
	dec	a
	sta	scramble
	lda	gameframe
	and	#7
	cmp	#3
	jae	.no
	a16
	ldy	spritespos
	sty	mespos
	lda	#$4848							;HEX y/x-pos SCRAMBLE text
	sta	tpx
	ldx	spritespos
	phx
	ldx	#scramblemes-sprsbase
	jsr	print_sprite_mes
	plx
	a16
.setred	lda	spriteblk+2,x
	ora	#2<<9
	sta	spriteblk+2,x
	inx
	inx
	inx
	inx
	cpx	spritespos
	bne	.setred
	ldy	spritespos
	sty	mesendpos
.no	rts

;prt_gameover
;	a16
;	lda	gameover
;	and	#$ff
;	beq	.no
;	ldy	spritespos
;	sty	mespos
;	lda	#$5038
;	sta	tpx
;	ldx	#gameovermes-sprsbase
;	jsr	print_sprite_mes
;	ldy	spritespos
;	sty	mesendpos
;.no	rts


do_stage	a16
	lda	stagecnt
	bne	.dostage
	rts
.dostage	dec	a
	sta	stagecnt

	a16
	lda	stagecnt
	and	#7							;STAGE- > X text distance before stage score screen
	cmp	#3
	bcs	.setstage
	rts
.setstage
	lda	prttraining
	and	#$ff
	bne	.train

	ldy	spritespos
	sty	mespos
	lda	#$4850						;HEX y/x-pos STAGE-X text at the beginning
	sta	tpx
	ldx	#stagemes-sprsbase
	jsr	print_sprite_mes

	lda	stage
	inc	a
	asl	a
	tax
	lda.l	stageptrs,x
	tax
	jsr	print_sprite_mes

	ldy	spritespos
	sty	mesendpos
	rts
.train	ldy	spritespos
	sty	mespos
	lda	#$4848						;HEX y/x-pos TRAINING text
	sta	tpx
	ldx	#trainingmes-sprsbase
	jsr	print_sprite_mes
	ldy	spritespos
	sty	mesendpos
	rts

prt_stageclear
	a16
	lda	stageclear
	and	#$ff
	beq	.no
	ldy	spritespos
	sty	mespos
	lda	#$3020						;HEX y/x-pos STAGE-X CLEAR text before stage score screen
	sta	tpx
	ldx	#stagemes-sprsbase
	jsr	print_sprite_mes
	lda	stage
	inc	a
	asl	a
	tax
	lda.l	stageptrs,x
	tax
	jsr	print_sprite_mes
	lda	tpx
	clc
	adc	#8							;STAGE-X > CLEAR text distance 				 "
	sta	tpx
	ldx	#clearmes-sprsbase
	jsr	print_sprite_mes
	ldy	spritespos
	sty	mesendpos
.no	rts


	longa
	longi
print_sprite_mes
	ldy	spritespos
.loop	phx
	lda.l	sprsbase,x
	cmp	#-1
	lbeq	.end
	tax

	lda.l	sprsbase,x
	cmp	#-2
	bne	.whole
	lda.l	sprsbase+2,x
	sta.w	spriteblk+2,y
	lda.l	sprsbase+4,x
	sta.w	spriteblk+6,y
	lda	tpx
	sta.w	spriteblk,y
	lda	tpx
	clc
	adc	#$0800
	sta.w	spriteblk+4,y
	tya
	clc
	adc	#8
	tay
	lda	tpx
	clc
	adc	#$0008
	sta	tpx
	bra	.done
.whole
	sta.w	spriteblk+2,y
	lda.l	sprsbase+2,x
	sta.w	spriteblk+6,y
	lda.l	sprsbase+4,x
	sta.w	spriteblk+10,y
	lda.l	sprsbase+6,x
	sta.w	spriteblk+14,y

	lda	tpx
	sta.w	spriteblk,y
	lda	tpx
	clc
	adc	#$0008
	sta.w	spriteblk+4,y
	lda	tpx
	clc
	adc	#$0800
	sta.w	spriteblk+8,y
	lda	tpx
	clc
	adc	#$0808
	sta.w	spriteblk+12,y

	tya
	clc
	adc	#16
	tay
	lda	tpx
	clc
	adc	#$0010
	sta	tpx
.done	plx
	inx
	inx
	jmp	.loop
.end
	sty	spritespos
	plx
	rts

sprsbase

stagemes								;STAGE- text before stage score screen
	dw	sspr-sprsbase
	dw	tspr-sprsbase
	dw	aspr-sprsbase
	dw	gspr-sprsbase
	dw	espr-sprsbase
	dw	dashspr-sprsbase
	dw	-1
clearmes								;CLEAR text 			"
	dw	cspr-sprsbase
	dw	lspr-sprsbase
	dw	espr-sprsbase
	dw	aspr-sprsbase
	dw	rspr-sprsbase
	dw	-1
scramblemes								;SCRAMBLE headline -y/x-pos 401-
	dw	sspr-sprsbase
	dw	cspr-sprsbase
	dw	rspr-sprsbase
	dw	aspr-sprsbase
	dw  mspr-sprsbase
	dw	bspr-sprsbase
	dw	lspr-sprsbase
	dw	espr-sprsbase
	dw	-1

stageptrs	dw	lev0mes-sprsbase		;STAGE-1 > -10 headline
	dw	lev1mes-sprsbase
	dw	lev2mes-sprsbase
	dw	lev3mes-sprsbase
	dw	lev4mes-sprsbase
	dw	lev5mes-sprsbase
	dw	lev6mes-sprsbase
	dw	lev7mes-sprsbase
	dw	lev8mes-sprsbase
	dw	lev9mes-sprsbase
	dw	lev10mes-sprsbase
lev0mes	dw	zerospr-sprsbase
	dw	-1
lev1mes	dw	onespr-sprsbase
	dw	-1
lev2mes	dw	twospr-sprsbase
	dw	-1
lev3mes	dw	threespr-sprsbase
	dw	-1
lev4mes	dw	fourspr-sprsbase
	dw	-1
lev5mes	dw	fivespr-sprsbase
	dw	-1
lev6mes	dw	sixspr-sprsbase
	dw	-1
lev7mes	dw	sevenspr-sprsbase
	dw	-1
lev8mes	dw	eightspr-sprsbase
	dw	-1
lev9mes	dw	ninespr-sprsbase
	dw	-1
lev10mes	dw	onespr-sprsbase
	dw	zerospr-sprsbase
	dw	-1

;gameovermes	dw	gspr-sprsbase		;GAME OVER headline
;	dw	aspr-sprsbase
;	dw	mspr-sprsbase
;	dw	espr-sprsbase
;	dw	spacespr-sprsbase
;	dw	ospr-sprsbase
;	dw	vspr-sprsbase
;	dw	espr-sprsbase
;	dw	rspr-sprsbase
;	dw	-1

trainingmes	dw	tspr-sprsbase			;TRAINING headline -y/x-pos 476-
	dw	rspr-sprsbase
	dw	aspr-sprsbase
	dw	ispr-sprsbase
	dw	nspr-sprsbase
	dw	ispr-sprsbase
	dw	nspr-sprsbase
	dw	gspr-sprsbase
	dw	-1

;continuemes	dw	smco1spr-sprsbase
;	dw	smco2spr-sprsbase
;	dw	smco3spr-sprsbase
;	dw	smco4spr-sprsbase
;	dw	smco5spr-sprsbase
;	dw	-1

okmes	dw	smok1spr-sprsbase
	dw	smok2spr-sprsbase
	dw	-1

nomoremes	dw	smnm1spr-sprsbase
	dw	smnm2spr-sprsbase
	dw	smnm3spr-sprsbase
	dw	smnm4spr-sprsbase
	dw	-1

smco1spr	dw	$67+3<<12+spradd+1<<9,$68+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd,$4f+3<<12+spradd
smco2spr	dw	$69+3<<12+spradd+1<<9,$6a+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd,$4f+3<<12+spradd
smco3spr	dw	$6b+3<<12+spradd+1<<9,$6c+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd,$4f+3<<12+spradd
smco4spr	dw	$6d+3<<12+spradd+1<<9,$6e+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd,$4f+3<<12+spradd
smco5spr	dw	-2,$6f+3<<12+spradd+1<<9,$4f+3<<12+spradd

smok1spr	dw	$70+3<<12+spradd+1<<9,$71+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd+1<<9,$4f+3<<12+spradd+1<<9
smok2spr	dw	-2,$72+3<<12+spradd+1<<9,$4f+3<<12+spradd

smnm1spr	dw	$73+3<<12+spradd+1<<9,$74+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd+1<<9,$4f+3<<12+spradd+1<<9
smnm2spr	dw	$75+3<<12+spradd+1<<9,$76+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd+1<<9,$4f+3<<12+spradd+1<<9
smnm3spr	dw	$77+3<<12+spradd+1<<9,$78+3<<12+spradd+1<<9
	dw	$4f+3<<12+spradd+1<<9,$4f+3<<12+spradd+1<<9
smnm4spr	dw	-2,$79+3<<12+spradd+1<<9,$4f+3<<12+spradd+1<<9


spacespr	dw	-2,$4f+3<<12+spradd,$4f+3<<12+spradd
dashspr	dw	-2,20+3<<12+spradd,21+3<<12+spradd
onespr	dw	$4f+3<<12+spradd,22+3<<12+spradd
	dw	$4f+3<<12+spradd,23+3<<12+spradd
twospr	dw	24+3<<12+spradd,25+3<<12+spradd
	dw	26+3<<12+spradd,27+3<<12+spradd
threespr	dw	28+3<<12+spradd,29+3<<12+spradd
	dw	30+3<<12+spradd,31+3<<12+spradd
fourspr	dw	32+3<<12+spradd,33+3<<12+spradd
	dw	34+3<<12+spradd,35+3<<12+spradd
fivespr	dw	36+3<<12+spradd,37+3<<12+spradd
	dw	38+3<<12+spradd,39+3<<12+spradd
sixspr	dw	40+3<<12+spradd,41+3<<12+spradd
	dw	42+3<<12+spradd,43+3<<12+spradd
sevenspr	dw	44+3<<12+spradd,45+3<<12+spradd
	dw	46+3<<12+spradd,47+3<<12+spradd
eightspr	dw	48+3<<12+spradd,49+3<<12+spradd
	dw	50+3<<12+spradd,51+3<<12+spradd
ninespr	dw	52+3<<12+spradd,53+3<<12+spradd
	dw	54+3<<12+spradd,55+3<<12+spradd
zerospr	dw	56+3<<12+spradd,57+3<<12+spradd
	dw	58+3<<12+spradd,59+3<<12+spradd
aspr	dw	08+3<<12+spradd,09+3<<12+spradd
	dw	10+3<<12+spradd,11+3<<12+spradd
bspr	dw	$57+3<<12+spradd,$58+3<<12+spradd
	dw	$5f+3<<12+spradd,$60+3<<12+spradd
cspr	dw	$50+3<<12+spradd,$51+3<<12+spradd
	dw	$52+3<<12+spradd,$53+3<<12+spradd
espr	dw	16+3<<12+spradd,17+3<<12+spradd
	dw	18+3<<12+spradd,19+3<<12+spradd
gspr	dw	12+3<<12+spradd,13+3<<12+spradd
	dw	14+3<<12+spradd,15+3<<12+spradd
ispr	dw	-2,$16+3<<12+spradd,$17+3<<12+spradd
lspr	dw	$54+3<<12+spradd,$4f+3<<12+spradd
	dw	$55+3<<12+spradd,$56+3<<12+spradd
mspr	dw	$5b+3<<12+spradd,$5c+3<<12+spradd
	dw	$5d+3<<12+spradd,$5e+3<<12+spradd
nspr	dw	$42+3<<12+spradd,$43+3<<12+spradd
	dw	$44+3<<12+spradd,$45+3<<12+spradd
ospr	dw	$38+3<<12+spradd,$39+3<<12+spradd
	dw	$3a+3<<12+spradd,$3b+3<<12+spradd
rspr	dw	$57+3<<12+spradd,$58+3<<12+spradd
	dw	$59+3<<12+spradd,$5a+3<<12+spradd
sspr	dw	00+3<<12+spradd,01+3<<12+spradd
	dw	02+3<<12+spradd,03+3<<12+spradd
tspr	dw	04+3<<12+spradd,05+3<<12+spradd
	dw	06+3<<12+spradd,07+3<<12+spradd
vspr	dw	$6d+3<<12+spradd,$6e+3<<12+spradd
	dw	$6f+3<<12+spradd,$6f+3<<12+spradd+1<<14
pspr	dw	$34+3<<12+spradd,$35+3<<12+spradd
	dw	$46+3<<12+spradd,$47+3<<12+spradd
dspr	dw	$38+3<<12+spradd,$48+3<<12+spradd
	dw	$3a+3<<12+spradd,$48+3<<12+spradd+1<<15



;set specflash with 50 to flash 1 smartbomb
do_spec_weap	a8			;yyxx
;	lda	godmode
;	lbne	.skip
	lda	multitapmode
	bne	.multi
	lda	ponedead
	cmp	#1
	lbeq	.skip
	lda.l	m_playertwoactivated
	beq	.norm
	a16
	lda	#$2071				;yyxx
	bra	.cont
.norm
	a8
	lda	doboostmeter
	bne	.origpos
	a16
	lda	#$BA71
	bra	.cont
.origpos
	a16
	lda	#$b6e1
	bra	.cont

.multi
	lda	twoplayer
	beq	.rts
	a16
	lda	#$0F3F
	sta	tpx
	ldx	spritespos
	ldy	#1
	bra	.nof
.cont
	sta	tpx
	ldx	spritespos
	ldy	specwepcntone
	beq	.skip
.resume
	a8
	lda	specflash
	beq	.nof
	dec	specflash
	dey
	bne	.nof
	bra	.set2
.nof
	a16
.loop	lda	tpx
	sta	spriteblk,x
	ldaspr	60,pri2
	sta	spriteblk+2,x
	lda	tpx
	sec
	sbc	#9
	sta	tpx
	inx
	inx
	inx
	inx
	dey
	bne	.loop
.set2
	a8
	lda	specflash
	beq	.skip
	lda	gameframe
	and	#7
	cmp	#3
	jb	.skip
	a16
	lda	tpx
	sta	spriteblk,x
	ldaspr	60,pri2
	sta	spriteblk+2,x
	lda	tpx
	sec
	sbc	#9
	sta	tpx
	inx
	inx
	inx
	inx
.skip	stx	spritespos
.rts	rts

do_spec_weaptwo	a8
;	lda	godmode
;	lbne	.skip
	lda	multitapmode
	lbne	multibombs
	a16
	lda	#$2083
	sta	tpx
	ldx	spritespos
	ldy	speccnttwo
	beq	.skip

	a8
	lda	specflash
	beq	.nof
	dec	specflash
	dey
	bne	.nof
	bra	.set2
.nof
	a16
.loop	lda	tpx
	sta	spriteblk,x
	ldaspr	60,pri2
	sta	spriteblk+2,x
	lda	tpx
	clc
	adc	#9
	sta	tpx
	inx
	inx
	inx
	inx
	dey
	bne	.loop
.set2
	a8
	lda	specflash
	beq	.skip
	lda	gameframe
	and	#7
	cmp	#3
	jb	.skip
	a16
	lda	tpx
	sta	spriteblk,x
	ldaspr	60,pri2
	sta	spriteblk+2,x
	lda	tpx
	sec
	sbc	#9
	sta	tpx
	inx
	inx
	inx
	inx
.skip	stx	spritespos
	rts



do_crosshair	php
	a8i16
	lda	splayerflymode
	and	#spfm_inside
	bne	.nocheckthis
	lda	nocrosshairpls
	lbne	.nocrosshair
	bra	.donechek
.nocheckthis
	lda	nocrosshairpls
	cmp	#2
	lbeq	.nocrosshair
.donechek
	lda	crosshairflag
	cmp	#crosshairoff
	bne	.on
	stz	crosshairon
	plp
	rts
.on
	lda	pshipflags
	cmp	#psf_noctrl!psf_nofire
	bne	.on2
	stz	crosshairon
	plp
	rts
.on2
	lda	pstratflags
	cmp	#pstf_notdie
	bne	.on3
	stz	crosshairon
	plp
	rts
.on3
	lda	pshipflags
	cmp	#psf_noyctrl
	bne	.on4
	stz	crosshairon
	plp
	rts
.on4

	a16
	lda	arsebandX
	sta	xs
	lda	arsebandY
	sta	ys

chx	equ	124
chy	equ	100

	a16
	ldx	spritespos

	ldaspr	061h,col1,pri2
	sta	spriteblk+2,x
	a8
	lda	xs
	clc
	adc	#-8+chx
	sta	spriteblk,x
	lda	ys
	clc
	adc	#-8+chy
	sta	spriteblk+1,x

	a16
	ldaspr	061h,col1,pri2,hflip
	sta	spriteblk+6,x
	a8
	lda	xs
	clc
	adc	#8+chx
	sta	spriteblk+4,x
	lda	ys
	clc
	adc	#-8+chy
	sta	spriteblk+5,x

	a16
	ldaspr	061h,col1,pri2,vflip
	sta	spriteblk+10,x
	a8
	lda	xs
	clc
	adc	#-8+chx
	sta	spriteblk+8,x
	lda	ys
	clc
	adc	#8+chy
	sta	spriteblk+9,x

	a16
	ldaspr	061h,col1,pri2,hflip,vflip
	sta	spriteblk+14,x
	a8
	lda	xs
	clc
	adc	#8+chx
	sta	spriteblk+12,x
	lda	ys
	clc
	adc	#8+chy
	sta	spriteblk+13,x
	txa
	clc
	adc	#16
	sta	spritespos
.nocrosshair
	plp
	rts

do_crosshair2	php
	a8i16

	lda	nocrosshairpls
	lbne	.nocrosshair

	lda	crosshairflag
	cmp	#crosshairoff
	bne	.on
	stz	crosshairon
	plp
	rts
.on
	lda	pshipflags
	cmp	#psf_noctrl!psf_nofire
	bne	.on2
	stz	crosshairon
	plp
	rts
.on2
	lda	pstratflags
	cmp	#pstf_notdie
	bne	.on3
	stz	crosshairon
	plp
	rts
.on3
	lda	pshipflags
	cmp	#psf_noyctrl
	bne	.on4
	stz	crosshairon
	plp
	rts
.on4

	a16
	lda	arsebandX2
	sta	xs
	lda	arsebandY2
	sta	ys

	a16
	ldx	spritespos

	ldaspr	061h,col1,pri2,hflip,vflip
	sta	spriteblk+2,x
	a8
	lda	xs
	clc
	adc	#-8+chx
	sta	spriteblk,x
	lda	ys
	clc
	adc	#-8+chy
	sta	spriteblk+1,x

	a16
	ldaspr	061h,col1,pri2,vflip
	sta	spriteblk+6,x
	a8
	lda	xs
	clc
	adc	#8+chx
	sta	spriteblk+4,x
	lda	ys
	clc
	adc	#-8+chy
	sta	spriteblk+5,x

	a16
	ldaspr	061h,col1,pri2,hflip
	sta	spriteblk+10,x
	a8
	lda	xs
	clc
	adc	#-8+chx
	sta	spriteblk+8,x
	lda	ys
	clc
	adc	#8+chy
	sta	spriteblk+9,x

	a16
	ldaspr	061h,col1,pri2
	sta	spriteblk+14,x
	a8
	lda	xs
	clc
	adc	#8+chx
	sta	spriteblk+12,x
	lda	ys
	clc
	adc	#8+chy
	sta	spriteblk+13,x
	txa
	clc
	adc	#16
	sta	spritespos
.nocrosshair
	plp
	rts


do_enemy	a8
	lda.l	m_bossmaxhp
	and	#255
	bne	.do
	rts
.do
	bpl	.noshift
	lsr	a
.noshift	sta	x1
	lda	#224-24
	sec
	sbc	x1
	a16
	and	#255

	pha
	lda.l	m_playertwoactivated
	beq	.nop2
	pla
	ora	#$C000
	bra	.cont
.nop2
	pla
	ora	#$1000
.cont
	ldy	#$71+spradd+(2<<12)
	ldx	#4
	stx	tpx
	ldx	spritespos
.lp	sta	spriteblk+0,x
	pha
	tya
	sta	spriteblk+2,x
	pla
	clc
	adc	#8
	iny
	inx
	inx
	inx
	inx
	dec	tpx
	bne	.lp
	stx	spritespos
	rts



do_arrows	a16
	stz	tpa

	jsr	do_up_arrow
	jsr	do_down_arrow
	jsr	do_left_arrow
	jsr	do_right_arrow

	lda	gameframe
	and	#1
	beq	.ok2
	lda	sprframe
	clc
	adc	#16
	cmp	#16*4
	bne	.ok
	lda	tpa
	beq	.nos
	a8
	trigse	$8a
	a16
.nos	lda	#0
.ok	sta	sprframe
.ok2
	rts

do_up_arrow	lda	arrows
	bit	#sprar_up
	bne	.do
	rts
.do	inc	tpa
	lda	#uptab-artab
	jmp	setarrows

do_down_arrow	lda	arrows
	bit	#sprar_down
	bne	.do
	rts
.do	inc	tpa
	lda	#downtab-artab
	jmp	setarrows

do_left_arrow	lda	arrows
	bit	#sprar_left
	bne	.do
	rts
.do	inc	tpa
	lda	#lefttab-artab
	jmp	setarrows

do_right_arrow	lda	arrows
	bit	#sprar_right
	bne	.do
	rts
.do	inc	tpa
	lda	#righttab-artab
	jmp	setarrows

setarrows	clc
	adc	sprframe
	tax

	ldy	spritespos
	lda.l	artab,x
	sta.w	spriteblk,y
	lda.l	artab+2,x
	sta.w	spriteblk+2,y

	lda.l	artab+4,x
	sta.w	spriteblk+4,y
	lda.l	artab+6,x
	sta.w	spriteblk+6,y

	lda.l	artab+8,x
	sta.w	spriteblk+8,y
	lda.l	artab+10,x
	sta.w	spriteblk+10,y


	lda.l	artab+12,x
	sta.w	spriteblk+12,y
	lda.l	artab+14,x
	sta.w	spriteblk+14,y

	tya
	clc
	adc	#16
	sta	spritespos
	rts

artab
uptab
	dw	$1877,($3e+spradd)+(2<<12)
	dw	$187f,($3e+spradd)+(2<<12)+(1<<14)
	dw	0,0
	dw	0,0

	dw	$1877,($3e+spradd)+(2<<12)
	dw	$187f,($3e+spradd)+(2<<12)+(1<<14)
	dw	$2177,($3e+spradd)+(2<<12)
	dw	$217f,($3e+spradd)+(2<<12)+(1<<14)

	dw	0,0
	dw	0,0
	dw	$2177,($3e+spradd)+(2<<12)
	dw	$217f,($3e+spradd)+(2<<12)+(1<<14)

	dw	0,0
	dw	0,0
	dw	0,0
	dw	0,0


downtab
	dw	$c177,($3e+spradd)+(2<<12)+(1<<15)
	dw	$c17f,($3e+spradd)+(2<<12)+(1<<15)+(1<<14)
	dw	0,0
	dw	0,0

	dw	$c177,($3e+spradd)+(2<<12)+(1<<15)
	dw	$c17f,($3e+spradd)+(2<<12)+(1<<15)+(1<<14)
	dw	$b877,($3e+spradd)+(2<<12)+(1<<15)
	dw	$b87f,($3e+spradd)+(2<<12)+(1<<15)+(1<<14)

	dw	0,0
	dw	0,0
	dw	$b877,($3e+spradd)+(2<<12)+(1<<15)
	dw	$b87f,($3e+spradd)+(2<<12)+(1<<15)+(1<<14)

	dw	0,0
	dw	0,0
	dw	0,0
	dw	0,0

righttab
	dw	$68e1,($70+spradd)+(2<<12)
	dw	$70e1,($70+spradd)+(2<<12)+(1<<15)
	dw	0,0
	dw	0,0

	dw	$68e1,($70+spradd)+(2<<12)
	dw	$70e1,($70+spradd)+(2<<12)+(1<<15)
	dw	$68d8,($70+spradd)+(2<<12)
	dw	$70d8,($70+spradd)+(2<<12)+(1<<15)

	dw	0,0
	dw	0,0
	dw	$68d8,($70+spradd)+(2<<12)
	dw	$70d8,($70+spradd)+(2<<12)+(1<<15)

	dw	0,0
	dw	0,0
	dw	0,0
	dw	0,0

lefttab
	dw	$6818,($70+spradd)+(2<<12)+(1<<14)
	dw	$7018,($70+spradd)+(2<<12)+(1<<14)+(1<<15)
	dw	0,0
	dw	0,0

	dw	$6818,($70+spradd)+(2<<12)+(1<<14)
	dw	$7018,($70+spradd)+(2<<12)+(1<<14)+(1<<15)
	dw	$6821,($70+spradd)+(2<<12)+(1<<14)
	dw	$7021,($70+spradd)+(2<<12)+(1<<14)+(1<<15)

	dw	0,0
	dw	0,0
	dw	$6821,($70+spradd)+(2<<12)+(1<<14)
	dw	$7021,($70+spradd)+(2<<12)+(1<<14)+(1<<15)

	dw	0,0
	dw	0,0
	dw	0,0
	dw	0,0



do_1credit	a8
	lda	onecredspr
	beq	.creds

	lda	credits
	a16
	and	#$ff
	ldx	#$3fa0					;HEX y/x-pos BONUS logo / stage score screen
	stx	tpa
	ldx	spritespos
.lp	pha
	jsr	genfoxspr
	lda	tpa
	clc
	adc	#17
	sta	tpa
	pla
	dec	a
	bne	.lp
	stx	spritespos
.creds
	rts


	longa
	longi
genfoxspr	lda	tpa
	sta	spriteblk,x
	ldaspr	040h,col2,pri2
	sta	spriteblk+2,x

	lda	tpa
	clc
	adc	#8
	sta	spriteblk+4,x
	ldaspr	040h,col2,pri2,hflip
	sta	spriteblk+6,x

	lda	tpa
	clc
	adc	#0800h
	sta	spriteblk+8,x
	ldaspr	041h,col2,pri2
	sta	spriteblk+10,x

	lda	tpa
	clc
	adc	#0808h
	sta	spriteblk+12,x
	ldaspr	041h,col2,pri2,hflip
	sta	spriteblk+14,x

	txa
	clc
	adc	#16
	tax
	rts



