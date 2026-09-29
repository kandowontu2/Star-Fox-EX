;***************************************************************************
;*                              -----------                                *
;*                              StarGlider                                 *
;*                              -----------                                *
;*                                                                         *
;*                           SuperNES version.                             *
;*																		   *
;*                           Argonaut Software.      		   			   * 
;*_________________________________________________________________________*
;*                                                                         *
;*   File: ENDSEQ.ASM                                                      *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: End sequence code                                               *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 10/9/92                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:   Krister Wombell.                                              *
;*                                                                         *
;***************************************************************************

bg3xinit	equ	128
bg3yinit	equ	-17
bg2xinit	equ	0
bg2yinit	equ	256
bg1xinit	equ	0
bg1yinit	equ	0

bg1xmove	equ	6*8
bg1ymove	equ	3*8
bg2xmove	equ	6*8
bg2ymove	equ	3*8
bg3xmove	equ	12*8
bg3ymove	equ	6*8

bg1xspd	equ	2
bg1yspd	equ	1
bg2xspd	equ	2
bg2yspd	equ	1
bg3xspd	equ	4
bg3yspd	equ	2

	incpublics	endseq.ext
;--------------------------------------------------------------------------
defseq	MACRO
	dw	\1&07fffh		;mapobj for object
	db	\1>>16
	dw	\2&WM
	ENDM

defdemo	MACRO
	mapobj	\1,\2,\3,\4,\5,\6
	setvarobj	mapvar1
	mapwait	1000
	ENDM

setdpos	MACRO
	db	1
	dw	\1
	ENDM

q_stratmac	MACRO
	a8
	ENDM

q_seqmac	MACRO
	a16
	ENDM

q_rept_strat MACRO
	lda	\1
.lp\@	pha
	jsr	dostratlist
	pla
	dec	a
	bne	.lp\@
	ENDM

q_set_han	MACRO
	lda	#(\1)&WM
	sta	seq_handler
	ENDM

q_set_cnt	MACRO
	lda	\1
	sta	democnt
	ENDM

q_set_viewdist MACRO
	a16
	lda	\1
	sta	outdist
	sta	viewdist
	ENDM

q_set_Xpos	MACRO
	a16
	lda	\1
	sta	mapvar2
	ENDM

q_init_text	MACRO
	ldx	#(\1)-demotxtbase
	jsr	prtdemotxt
	ENDM

q_end	MACRO
	rts
	ENDM

q_chk_cnteq	MACRO
	lda	democnt
	cmp	\1
	lbeq	\2
	ENDM

q_chk_cntne	MACRO
	lda	democnt
	cmp	\1
	lbne	\2
	ENDM

q_jsr	MACRO
	jsr	\1
	ENDM

q_add_var	MACRO
	lda	\1
	clc
	adc	\2
	sta	\1
	ENDM

q_sub_var	MACRO
	lda	\1
	sec
	sbc	\2
	sta	\1
	ENDM

q_jmp_varless MACRO
	lda	\1
	cmp	\2
	lbmi	\3
	ENDM

q_jmp_varmore MACRO
	lda	\1
	cmp	\2
	lbpl	\3
	ENDM

q_achase_var MACRO
	q_stratmac
	IFEQ	NARG-5
	s_achase_var	\1,\2,\3,\4,\5
	ELSEIF
	s_achase_var	\1,\2,\3,\4
	ENDC
	q_seqmac
	ENDM

q_fchase_var MACRO
	q_stratmac
	IFEQ	NARG-5
	s_achase_var	\1,\2,\3,\4,\5
	ELSEIF
	s_achase_var	\1,\2,\3,\4
	ENDC
	q_seqmac
	ENDM

q_set_text	MACRO
	a8
	ldx	#(\1)-demotxtbase
	ldy	#0
	sty	seq_tptr
.lp\@	lda.l	demotxtbase,x
	beq	.end\@
.ok\@	lda.l	demotxtbase,x
	phx
	tyx
	sta.l	seq_buffer,x
	plx
	inx
;	lda	#boss31-endseqboss
	iny
	bra	.lp\@
.end\@
	lda.l	demotxtbase+1,x
	bne	.ok\@
	tyx
	sta.l	seq_buffer,x
	a16
	ENDM

q_start_text MACRO
	lda	bgflags
	ora	#bgf_text
	sta	bgflags
	a16
	ENDM

q_set_bg	MACRO
	a8
	jsr	setmybg\1
	a16
	ENDM

q_set_viewhgt MACRO
	lda	\1
	sta	viewyoff
	ENDM
;--------------------------------------------------------------------------
endseq_l	php
	lda	endurance
	lbeq	.nobgm
	a8
	bgm2	endseq
	IFNE	MSU1
	msuplay	gameenddemo,repeat
	ENDC
	startbgm	012h
.nobgm	
	jsl	initgame3d_l
	jsl	setcharmapfox_l

	a8i16
	disable
	lda	#$80
	setinidisp1
	lda	whichroute
	cmp	#4
	bpl	.newstuff
	startbgm	012h
	IFNE	MSU1
	msuplay	bossroll,repeat
	ENDC
	jmp	.doneit
.newstuff
	bgm2	hurricane
	IFNE	MSU1
	msuplay	bossrollmap2,repeat
	ENDC
.doneit
	stz	doingend

	a8i16
	stz	cont0l
	stz	cont1l
	stz	trig0
	stz	trig1

	a16
	lda	#bg1xinit
	sta	bg1hofsbak
	sta	bg1hofsreq
	lda	#bg1yinit
	sta	bg1vofsbak
	sta	bg1vofsreq

	lda	#bg2xinit
	sta	bg2hofsbak
	sta	bg2hofsreq
	lda	#bg2yinit
	sta	bg2vofsbak
	sta	bg2vofsreq

	lda	#bg3xinit
	sta	bg3hofsbak
	sta	bg3hofsreq
	lda	#bg3yinit
	sta	bg3vofsbak
	sta	bg3vofsreq

	stz	democnt
	ldx	boss_ptr
	lda	#-1
	sta	boss_seq,x	;mark the end of the boss demos
	ldx	#0
	stx	boss_ptr

	stz	dotsflag
	stz	circleanim

	a8i16
	stz	gameframe
	lda	#1+8
	sta	bgmode
	lda	#1+2+4
	sta	tm
	stz	windowmode

	lda	#(0c000h/2)>>12
	sta	bg34nba
	lda	#(0e000h/2)>>8+1
	sta	bg3sc

	decvramnotrans	0,vchr_logback,bgetest2ccr,6*k
	decvramnotrans	0,vsc_base2+2*k,bgetest2pcr,4*k,scr_offset
	decvramnotrans	0,0d000h/2,bgetestccr,4*k

	lda	#32
	sta	trans_flag
	lda	#1
	sta	nosetport3
	enable

.self	local
	jsr	getaboss
	jsr	handler
	jsr	endtrans
	a8
	lda	stayblack
	bne	.black
	lda	#14
	sta	fade
	lda	#1
	sta	fadedir
	bra	.self
.black	cmp	#1
	beq	.set
	dec	stayblack
	bra	.self
.set	a16
	lda	#mroundwipeclear_circle
	sta	circleanim
	a8
	dec	stayblack
	bra	.self

end_endseq	plp
	ai16
	pla		;getaboss
end_endseq2	plp
	rtl
;----------------------------------------------------------------------------
endtrans_l	jsr	endtrans
	rtl
endtrans	a8i16
.notfinished
	lda	trans_flag
	cmp	#32
	bne	.notfinished
	stz	noirqbit3
	lda	#26		;start screen transferring
	sta	trans_flag

	jsl	do_circle_explosion_l
	jsl	find_window_pri_l
	a8i16
	lda	doingwipe
	bne	.skip2
	inc	noirqbit3
.skip2

	jsr	dostratlist
	jsl	getview_l
	jsl	showview_l
	jsl	build_drawlist_l
	jsl	generate_collist_l

	a8i16
.twait	lda	transbmp1
	beq	.twait
	jsl	clronehalf_l
.twait2	lda	transbmp1
	cmp	#2
	bne	.twait2
	stz	transbmp1

	ai16
	lda	#0
	sta.l	m_meters

	lda	dotsflag
	sta.l	m_dotsorstars
	beq	.skip
	jsl	mshowgrid_l
.skip
	jsl	do_3d_display_l

	jsl	do_window_wipe_l

 	a8
	lda	doingwipe
	beq	.nd3
	inc	noirqbit3
.nd3
	waitdma	110
	mapwait	1000
	a8
	lda	bgmspeed
	beq	.nochangext
	cmp	#1
	beq	.slowxt
	cmp	#2
	beq	.fastxt
.slowxt
	startbgm	$f4
	bra	.nochangext
.fastxt
	startbgm	$f5
.nochangext
	rts

dostratlist	php
	a8i16
	incw	gameframe

	phb
	lda	#07eh
	pha
	plb
	jsl	init_strats_l	;init coll player move, etc.
	ldx	allst		;do all strategies
.stratlp	stz	aldead
	jsl	do_strat_l
	lda	aldead
	bne	.killal
	ldy	_next,x
.killed	
	tyx
	bne	.stratlp
	bra	.cont

.startendseq	local
	pha
	ldx	boss_ptr
	inx
	inx
	stz	democnt			;sets time to be up for the current boss
	lda	#-1

	sta	boss_seq,x
	dex
	dex
	pla
	rts
	
.killal	ldy	_next,x
 	jsl	removedeadal_l
	bra	.killed
.cont	plb

	ldx	mapvar1
	beq	.sk
	s_copy_alvar2var	W,x,pviewposx,al_worldx
	s_copy_alvar2var	W,x,pviewposy,al_worldy
	s_add_var		W,pviewposy,viewyoff
	s_copy_alvar2var	W,x,pviewposz,al_worldz

	ldx	mapvar2
	beq	.sk
	stx		pviewposx

.sk
	plp
	rts

	longa
	longi
setboss_l	phx
	pha
	lda.l	boss_ptr
	tax
	beq	.do
	pla
	cmp.l	boss_seq-2,x
	beq	.noadd
	pha
.do	pla
	sta.l	boss_seq,x
	inx
	inx
	txa
	sta.l	boss_ptr
	plx
	rtl
.noadd	plx
	rtl
;------------------------------------------------------------------------
getaboss	php

	ai16
	dec	democnt
	bmi	.do
	plp
	rts
.do
	a8
	lda	doingend
	beq	.first
	cmp	#2
	bne	.nf
   	startbgm $f1
.nf
	a16
	lda	#mroundwipefill_circle
	sta	circleanim
	lda	#37
.flp	pha
	jsr	endtrans
	a16
	pla
	dec	a
	bne	.flp
.first
	a8
	stz	hdmaen
	waitdma	140
	waitdma	100
	stz	fade
	stz	fadedir
	lda	#$80
	setinidisp1
	sta	inidisp

	a16
	stz	mapcnt
	stz	lastplayz
	stz	lastzchange
	stz	viewposz		; reset map position
	jsl	kill_list_l		; format alien list

	stz	pviewposx
	stz	pviewposy
	stz	pviewposz

	a8i16
	ldx	allst
	s_make_obj	#nullshape,.kk
.kk	sty	playpt
	s_set_strat	y,playercred_Istrat
	s_make_obj	#nullshape,.kk2
.kk2	sty	viewpt

	ai16
	ldx	boss_ptr
	lda	boss_seq,x
	cmp	#-1
	lbeq	end_endseq
	inx
	inx
	stx	boss_ptr
	tax
	a8
.redo	local
	lda.l	endseqboss+2,x
	sta	mapbank
	a16
	lda.l	endseqboss,x
	pha

	lda.l	endseqboss+3,x
	sta	seq_handler

	inx
	inx
	inx
	inx
	inx
;	stx	demoptr
	plx
	jsl	newobjs_l

	stz	outvx
	stz	outvy
	stz	outvz
	stz	outdist

	a8i16
	jsl	initgame_strats_l

	jsr	handler

	a16
	lda	#mwipefill_circle
	sta	circleanim
	a8
	lda	#4
	sta	stayblack
	lda	#hdmaf_inidisp+hdmaf_win
	sta	hdmaen
	waitdma	150
	waitdma	140
	lda	#32
	sta	trans_flag

	lda	#1
	sta	doingend

	ldx	boss_ptr
	lda	boss_seq,x
	cmp	#-1
	bne	.nf2
	lda	#2
	sta	doingend
.nf2
	plp
	rts

	shorta
	longi
setmybga	dmacgram	0,0,(bgetestpac),512
	jmp		qsetit
setmybgb	dmacgram	0,0,(bgetest0pac),512
qsetit	local
	decvram		0,0e000h/2,bgetestpcr,4*k,256
	stz		cgadd
	stz		cgdata
	stz		cgdata
	lda		#1
	jsl		setpal_l
	setdepth	night
	set_zdepthtable	normal
	rts

qsetit_l	local
	jsr	qsetit
	rtl
;-----------------------------------------------------------------------------
prtdemotxt	php
	a8i16
.lp
	lda.l	demotxtbase,x
	inx
	cmp	#0
	beq	.end
	cmp	#1
	bne	.notpos
	a16
	lda.l	demotxtbase,x
	inx
	inx
	clc
	adc	#0e000h/2
	sta	vmaddl
	a8
	bra	.lp
.notpos
	a16
	and	#0ffh
	txy
	tax
	lda.l	etesttrans-32,x
	and	#0ffh
	tyx
	ora	#1<<13
	clc
	adc	#256
	sta	vmdatal

	a8
	bra	.lp
.end
	plp
	rts
;------------------------------------------------------------------------
handler	ai16
;	s_jmp_keydown	start,dostratlist.startendseq
	jmp	(seq_handler)

scrollinl	php
	a16
	lda	#bg1xinit+bg1xmove
	sta	bg1hofsreq
	lda	#bg1yinit+bg1ymove
	sta	bg1vofsreq
;	lda	#bg2xinit+bg2xmove
;	sta	bg2hofsreq
	lda	#bg2yinit+bg2ymove
	sta	bg2vofsreq
	lda	#bg3xinit+bg3xmove
	sta	bg3hofsreq
	lda	#bg3yinit+bg3ymove
	sta	bg3vofsreq
	plp
	rts

scrolloutr	php
	a16
	lda	#bg1xinit
	sta	bg1hofsreq
	lda	#bg1yinit
	sta	bg1vofsreq
;	lda	#bg2xinit
;	sta	bg2hofsreq
	lda	#bg2yinit
	sta	bg2vofsreq
	lda	#bg3xinit
	sta	bg3hofsreq
	lda	#bg3yinit
	sta	bg3vofsreq
	plp
    	rts

scrollinr	php
	a16
	lda	#bg1xinit-bg1xmove
	sta	bg1hofsreq
	lda	#bg1yinit+bg1ymove
	sta	bg1vofsreq
;	lda	#bg2xinit-bg2xmove
;	sta	bg2hofsreq
	lda	#bg2yinit+bg2ymove
	sta	bg2vofsreq
	lda	#bg3xinit-bg3xmove
	sta	bg3hofsreq
	lda	#bg3yinit+bg3ymove
	sta	bg3vofsreq
	plp
	rts

scrolloutl	php
	a16
	lda	#bg1xinit
	sta	bg1hofsreq
	sta	bg1hofsbak
	lda	#bg1yinit
	sta	bg1vofsreq
	sta	bg1vofsbak
	lda	#bg2yinit
	sta	bg2vofsreq
	sta	bg2vofsbak
	lda	#bg3xinit
	sta	bg3hofsreq
	sta	bg3hofsbak
	lda	#bg3yinit
	sta	bg3vofsreq
	sta	bg3vofsbak
	plp
    	rts




	longa
	longi
;_ihan > viewdist for fullscreen pre-view
;_han > viewdist for small screen pre-view
boss11_ihan
	q_set_bg		a
	q_set_bg		a
	q_set_han		boss11_han
	q_set_cnt		#180
	q_set_viewdist	#1500
	q_set_viewhgt	#0
	q_init_text		boss11txt
	q_set_text		boss11txt2
	q_rept_strat	#200
	q_end

boss11_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#2300,2
	q_achase_var	W,viewdist,#2300,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end

bossyoshi_ihan
	q_set_bg		b
	q_set_han		bossyoshi_han
	q_set_cnt		#200
	q_set_viewdist	#1000
	q_set_viewhgt	#000
	q_rept_strat	#200
	q_init_text		bossyoshitxt
	q_set_text		bossyoshitxt2
	q_end
	
bossyoshi_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1000,2
	q_achase_var	W,viewdist,#1000,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end

boss12_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#195
	q_set_viewdist	#1000
	q_set_viewhgt	#0
	q_init_text		boss12txt
	q_set_text		boss12txt2
	q_end

boss13_ihan
	q_set_bg		b
	q_set_han		boss13_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_set_viewhgt	#0
	q_init_text		boss13txt
	q_set_text		boss13txt2
	q_end


boss13_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1500,2
	q_achase_var	W,viewdist,#1500,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss14_ihan
	q_set_bg		a
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#2500
	q_set_viewhgt	#200
	q_init_text		boss14txt
	q_set_text		boss14txt2
	q_rept_strat	#230
	q_end

boss15_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_set_viewhgt	#0
	q_set_Xpos		#1
	q_rept_strat	#40
	q_init_text		boss15txt
	q_set_text		boss15txt2
	q_end

boss16_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1000
	q_set_viewhgt	#0
	q_init_text		boss16txt
	q_set_text		boss16txt2
	q_end

boss21_ihan
	q_set_bg		a
	q_set_bg		a
	q_set_han		boss11_han
	q_set_cnt		#180
	q_set_viewdist	#1500
	q_init_text		boss21txt
	q_set_text		boss21txt2
	q_rept_strat	#200
	q_end

boss22_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#195
	q_set_viewdist	#1500
	q_init_text		boss22txt
	q_set_text		boss22txt2
	q_end

boss23_ihan
	q_set_bg		a
	q_set_han		boss23_han
	q_achase_var	W,outvx,#14000,0
	q_set_cnt		#180
	q_set_viewdist	#200
	q_init_text		boss23txt
	q_set_text		boss23txt2
	q_end

boss23_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#400,2
	q_achase_var	W,viewdist,#400,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end

boss24_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_init_text		boss24txt
	q_set_text		boss24txt2
	q_end

boss25_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#220
	q_set_viewdist	#1000
	q_init_text		boss25txt
	q_set_text		boss25txt2
	q_end


boss26_ihan
	q_set_bg		b
	q_set_han		boss26_han
	q_set_cnt		#220
	q_set_viewdist	#500
	q_rept_strat	#50
	q_init_text		boss26txt
	q_set_text		boss26txt2
	q_end


boss26_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1000,2
	q_achase_var	W,viewdist,#1000,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end

boss31_ihan
	q_set_bg		a
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_set_viewhgt	#-400
	q_init_text		boss31txt
	q_set_text		boss31txt2
	q_rept_strat	#230
	q_end

;boss31_ihan
;	q_set_bg		a
;	q_set_bg		a
;	q_set_han		boss11_han
;	q_set_cnt		#180
;	q_set_viewdist	#1500
;	q_set_viewhgt	#0
;	q_init_text		boss31txt
;	q_set_text		boss31txt2
;	q_rept_strat	#200
;	q_end

boss32_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1000
	q_set_viewhgt	#0
	q_rept_strat	#50
	q_init_text		boss32txt
	q_set_text		boss32txt2
	q_end

boss33_ihan
	q_set_bg		a
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_set_viewhgt	#-300
	q_init_text		boss33txt
	q_set_text		boss33txt2
	q_end

boss34_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_set_viewhgt	#0
	q_init_text		boss34txt
	q_set_text		boss34txt2
	q_end

boss35_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1000
	q_set_viewhgt	#-300
	q_init_text		boss35txt
	q_set_text		boss35txt2
	q_rept_strat	#200
	q_end

boss36_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#1500
	q_set_viewhgt	#-200
	q_rept_strat	#300
	q_init_text		boss36txt
	q_set_text		boss36txt2
	q_end

boss37_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#250
	q_set_viewdist	#1500
	q_set_viewhgt	#-300
	q_rept_strat	#50
	q_init_text		boss37txt
	q_set_text		boss37txt2
	q_end

bossfinal_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#2000
	q_set_viewhgt	#-300
	q_rept_strat	#200
	q_init_text		bossfinaltxt
	q_set_text		bossfinaltxt2
	q_end

bossfinal2_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#200
	q_set_viewdist	#2000
	q_set_viewhgt	#-300
	q_rept_strat	#200
	q_init_text		bossfinaltxt3
	q_set_text		bossfinaltxt4
	q_end


boss51_ihan
	q_set_bg		b
	q_set_han		boss51_han
	q_set_cnt		#250
	q_set_viewdist	#1250
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss51txt
	q_set_text		boss51txt2
	q_end

boss51_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#2200,2
	q_achase_var	W,viewdist,#2200,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss52_ihan
	q_set_bg		b
	q_set_han		boss11_han
	q_set_cnt		#250
	q_set_viewdist	#600
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss52txt
	q_set_text		boss52txt2
	q_end


	
boss53_ihan
	q_set_bg		b
	q_set_han		boss53_han
	q_set_cnt		#250
	q_set_viewdist	#900
	q_set_viewhgt	#000
	q_rept_strat	#50
	q_init_text		boss53txt
	q_set_text		boss53txt2
	q_end

boss53_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1500,2
	q_achase_var	W,viewdist,#1500,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss54_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1200,2
	q_achase_var	W,viewdist,#1200,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss54_ihan
	q_set_bg		b
	q_set_han		boss54_han
	q_set_cnt		#250
	q_set_viewdist	#550
	q_set_viewhgt	#000
	q_rept_strat	#50
	q_init_text		boss54txt
	q_set_text		boss54txt2
	q_end

boss55_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#800,2
	q_achase_var	W,viewdist,#800,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss55_ihan
	q_set_bg		b
	q_set_han		boss55_han
	q_set_cnt		#250
	q_set_viewdist	#250
	q_set_viewhgt	#000
	q_rept_strat	#50
	q_init_text		boss55txt
	q_set_text		boss55txt2
	q_end

boss61_ihan
	q_set_bg		b
	q_set_han		boss51_han
	q_set_cnt		#250
	q_set_viewdist	#1250
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss61txt
	q_set_text		boss61txt2
	q_end
	
boss62_ihan
	q_set_bg		b
	q_set_han		boss51_han
	q_set_cnt		#250
	q_set_viewdist	#1300
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss62txt
	q_set_text		boss62txt2
	q_end

boss63_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1250,2
	q_achase_var	W,viewdist,#1250,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss63_ihan
	q_set_bg		b
	q_set_han		boss63_han
	q_set_cnt		#250
	q_set_viewdist	#700
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss63txt
	q_set_text		boss63txt2
	q_end

boss64_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1800,2
	q_achase_var	W,viewdist,#1800,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss64_ihan
	q_set_bg		b
	q_set_han		boss64_han
	q_set_cnt		#250
	q_set_viewdist	#950
	q_set_viewhgt	#50
	q_rept_strat	#50
	q_init_text		boss64txt
	q_set_text		boss64txt2
	q_end

boss65_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#800,2
	q_achase_var	W,viewdist,#800,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss65_ihan
	q_set_bg		b
	q_set_han		boss65_han
	q_set_cnt		#250
	q_set_viewdist	#250
	q_set_viewhgt	#25
	q_rept_strat	#50
	q_init_text		boss65txt
	q_set_text		boss65txt2
	q_end

boss64_han_2
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1200,2
	q_achase_var	W,viewdist,#1200,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss66_ihan
	q_set_bg		b
	q_set_han		boss66_han
	q_set_cnt		#250
	q_set_viewdist	#250
	q_set_viewhgt	#000
	q_rept_strat	#50
	q_init_text		boss66txt
	q_set_text		boss66txt2
	q_end

boss66_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#800,2
	q_achase_var	W,viewdist,#800,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end

boss71_ihan
	q_set_bg		b
	q_set_han		boss51_han
	q_set_cnt		#250
	q_set_viewdist	#1250
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss71txt
	q_set_text		boss71txt2
	q_end

boss72_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1600,2
	q_achase_var	W,viewdist,#1600,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss72_ihan
	q_set_bg		b
	q_set_han		boss72_han
	q_set_cnt		#250
	q_set_viewdist	#1000
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss72txt
	q_set_text		boss72txt2
	q_end

boss73_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#600,2
	q_achase_var	W,viewdist,#600,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss73_ihan
	q_set_bg		b
	q_set_han		boss73_han
	q_set_cnt		#250
	q_set_viewdist	#400
	q_set_viewhgt	#-50
	q_rept_strat	#50
	q_init_text		boss73txt
	q_set_text		boss73txt2
	q_end

boss74_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1000,2
	q_achase_var	W,viewdist,#1000,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss74_ihan
	q_set_bg		b
	q_set_han		boss74_han
	q_set_cnt		#250
	q_set_viewdist	#550
	q_set_viewhgt	#00
	q_rept_strat	#50
	q_init_text		boss74txt
	q_set_text		boss74txt2
	q_end

boss75_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1000,2
	q_achase_var	W,viewdist,#1000,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss75_ihan
	q_set_bg		b
	q_set_han		boss75_han
	q_set_cnt		#250
	q_set_viewdist	#400
	q_set_viewhgt	#000
	q_rept_strat	#50
	q_init_text		boss75txt
	q_set_text		boss75txt2
	q_end

boss5final_han
	q_jmp_varmore	democnt,#110,.ok
	q_chk_cnteq		#100,.prt
	q_jsr			scrollinr
	q_achase_var	W,outdist,#1200,2
	q_achase_var	W,viewdist,#1200,2
	q_end
.ok	q_jsr			scrolloutl
	q_end
.out
	q_end
.prt
	q_start_text
	q_end
	
boss5final_ihan
	q_set_bg		b
	q_set_han		boss5final_han
	q_set_cnt		#250
	q_set_viewdist	#800
	q_set_viewhgt	#000
	q_rept_strat	#50
	q_init_text		boss5finaltxt
	q_set_text		boss5finaltxt2
	q_end

endseqboss
boss11	defseq	boss11demo,boss11_ihan
boss12	defseq	boss12demo,boss12_ihan
boss13	defseq	boss13demo,boss13_ihan
boss14	defseq	boss14demo,boss14_ihan
boss15	defseq	boss15demo,boss15_ihan
boss16	defseq	boss16demo,boss16_ihan

boss21	defseq	boss11demo,boss21_ihan
boss22	defseq	boss12demo,boss22_ihan
boss23	defseq	boss23demo,boss23_ihan
boss24	defseq	boss24demo,boss24_ihan
boss25	defseq	boss25demo,boss25_ihan
boss26	defseq	boss26demo,boss26_ihan

boss31	defseq	boss31demo,boss31_ihan
boss32	defseq	boss32demo,boss32_ihan
boss33	defseq	boss33demo,boss33_ihan
boss34	defseq	boss13demo,boss34_ihan
boss35	defseq	boss35demo,boss35_ihan
boss36	defseq	boss36demo,boss36_ihan
boss37	defseq	boss37demo,boss37_ihan

bossfinal	defseq	bossfinaldemo,bossfinal_ihan
bossfinal2	defseq	bossfinaldemo2,bossfinal2_ihan

boss51	defseq	boss51demo,boss51_ihan
boss52	defseq	boss52demo,boss52_ihan
boss53	defseq	boss53demo,boss53_ihan
boss54	defseq	boss54demo,boss54_ihan
boss55	defseq	boss55demo,boss55_ihan

boss61	defseq	boss61demo,boss61_ihan
boss62	defseq	boss62demo,boss62_ihan
boss63	defseq	boss63demo,boss63_ihan
boss64	defseq	boss64demo,boss64_ihan
boss65	defseq	boss65demo,boss65_ihan
boss66	defseq	boss66demo,boss66_ihan

boss71	defseq	boss71demo,boss71_ihan
boss72	defseq	boss72demo,boss72_ihan
boss73	defseq	boss73demo,boss73_ihan
boss74	defseq	boss74demo,boss74_ihan
boss75	defseq	boss75demo,boss75_ihan

bossfinal5	defseq	bossfinaldemo5,boss5final_ihan
bossyoshi	defseq	bossyoshidemo,bossyoshi_ihan

boss11demo	defdemo	0000,0000,-70<<boss7_scale,-200,boss_7_1o,boss7_Istrat,2_4
boss12demo	defdemo	0000,0000,0000,2500,boss_1_2,boss1_istrat
boss14demo	defdemo	0000,2000,-600,1000,boss_h_0,bossh_istrat
boss15demo	defdemo	0000,0000,-1000,2500,boss_b_1,bossBrob_Istrat
boss16demo	defdemo	0000,0000,-1000,2500,boss_b_0,bossBrobdemo_Istrat

boss23demo	defdemo	0000,0000,-60,0000,boss_g_0,gnd_istrat
boss24demo	defdemo	0000,0000,-80,2000,flingboss,flingboss_istrat
boss25demo	defdemo	0000,0000,0000,2000,boss_e_0,gnd_istrat
boss26demo	defdemo	0000,-200,-70,-300,boss_9_5,madtrucker_istrat

boss31demo	defdemo	0000,3000,0000,375<<bossa_scale,boss_A_2,bossA_Istrat
boss32demo	defdemo	0000,000,000,1200,boss_0_1,webmonster_istrat,2_4
boss33demo	defdemo	0000,-100,0000,2500,boss_d_1,chicken_istrat
boss35demo	defdemo	0000,0000,0000,2500,boss_2_2,boss2_istrat
boss36demo	defdemo	0000,0000,2000,2500,boss_f_3,gnd_Istrat
boss37demo	defdemo	0000,-100,-500,0000,boss_f_4,airship_istrat

bossfinaldemo	defdemo	0000,0,Space_viewCY,-200,face_b,monolith_istrat
bossfinaldemo2	defdemo	0000,0,Space_viewCY,-200,face_b,monolith_istrat

boss51demo	defdemo	0000,0000,-1000,2500,linkhead,bossBrob_Istrat
boss52demo	defdemo	0000,0000,-300,3000,blackrose,blackrose_Istrat
boss53demo	defdemo	0000,0000,-0200,5200,ninja_0,ballboss_Istrat
boss54demo	defdemo	0000,0000,-130,1500,dodora_2,dodonew_istrat
boss55demo	defdemo	0000,0000,-0200,3200,wolfboss,starwolf_Istrat

boss61demo	defdemo	0000,0000,-1000,2500,linkhead,bossBrob_Istrat
boss62demo	defdemo	0000,0000,-80,2000,luigihsbw,flingboss_istrat
boss63demo	defdemo	0000,0000,0000,3500,boxxie,gnd_Istrat
boss64demo	defdemo	0000,0000,-100,2500,pierrot,newboss2_istrat
boss65demo	defdemo	0000,0000,-700,600,hoverboss,hoverboss_istrat
boss66demo	defdemo	0000,0000,-0200,3200,wolfen64boss,starwolf_Istrat

boss71demo	defdemo	0000,0000,-1000,2500,linkhead,bossBrob_Istrat
boss72demo	defdemo	0000,0000,-0200,3200,corncruiser,corncruiser_istrat
boss73demo	defdemo	0000,0000,0,1600,rex_b,rex_Istrat
boss74demo	defdemo	0000,0000,-100,600,pointyanim,skyboss_istrat
boss75demo	defdemo	0000,0000,-0200,3200,wolfenboss,starwolf_Istrat

bossfinaldemo5	defdemo	0000,-0200,-0200,3200,luigih,luigi_istrat

bossyoshidemo	defdemo	0000,000,000,600,yoshianm,yoshi_istrat

demotxtbase						;credits boss description

boss11txt	
	SETDPOS	7*32+6				;left text CORNERIA easy
	DB	'STAGE 1-1'
	SETDPOS	9*32+6
	DB	'CORNERIA'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "2 LAUNCHER"
	SETDPOS 19*32+6
	DB  "AND HATCH"
	DB	0
boss21txt	
	SETDPOS	7*32+6				;left text CORNERIA med
	DB	'STAGE 2-1'
	SETDPOS	9*32+6
	DB	'CORNERIA'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "2 LAUNCHER"
	SETDPOS 19*32+6
	DB  "AND HATCH"
	DB	0
boss31txt	
	SETDPOS	7*32+6				;left text CORNERIA hard
	DB	'STAGE 3-1'
	SETDPOS	9*32+6
	DB	'CORNERIA'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "TANK"
	DB	0
boss11txt2						;lower text CORNERIA easy
	SETDPOS	24*32+6
	DB	"NAME   - ATTACK CARRIER"
	SETDPOS	25*32+6
	DB	"WEAPON - MISSILE BLASTER"
	SETDPOS	26*32+6
	DB	"SIZE   - H70*W100*D150"
	SETDPOS	27*32+6
	DB	"HP     - 72"
	DB	0,0
boss21txt2						;lower text CORNERIA med
	SETDPOS	24*32+6
	DB	"NAME   - ATTACK CARRIER"
	SETDPOS	25*32+6
	DB	"WEAPON - MISSILE BLASTER"
	SETDPOS	26*32+6
	DB	"SIZE   - H70*W100*D150"
	SETDPOS	27*32+6
	DB	"HP     - 144"
	DB	0,0
boss31txt2						;lower text CORNERIA hard
	SETDPOS	24*32+6
	DB	"NAME   - DESTRUCTOR"
	SETDPOS	25*32+6
	DB	"WEAPON - PLASMA"
	SETDPOS	26*32+6
	DB	"SIZE   - H45*W150*D90"
	SETDPOS	27*32+6
	DB	"HP     - 108"
	DB	0,0
boss12txt						;left text ASTEROID easy
	SETDPOS	7*32+6
	DB	'STAGE 1-2'
	SETDPOS	9*32+6
	DB	'ASTEROID'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "SPACE BRA"
	SETDPOS 19*32+6
	DB  "WITH"
	SETDPOS 21*32+6
	DB  "NIPPLES"
	DB	0
boss12txt2						;lower text ASTEROID easy
	SETDPOS	24*32+6
	DB	"NAME   - ROCK CRUSHER"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H60*W86*D45"
	SETDPOS	27*32+6
	DB	"HP     - 99"
	DB	0,0

boss22txt						;left text SECTOR X
	SETDPOS	7*32+6
	DB	'STAGE 2-2'
	SETDPOS	9*32+6
	DB	'SECTOR %'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "SPACE BRA"
	SETDPOS 19*32+6
	DB  "WITH"
	SETDPOS 21*32+6
	DB  "NIPPLES"
	DB	0
boss22txt2						;lower text SECTOR X
	SETDPOS	24*32+6
	DB	"NAME   - ROCK CRUSHER"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H60*W86*D45"
	SETDPOS	27*32+6
	DB	"HP     - 134"
	DB	0,0

boss32txt						;left text ASTEROID hard
	SETDPOS	7*32+6
	DB	'STAGE 3-2'
	SETDPOS	9*32+6
	DB	'ASTEROID'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WEB"
	SETDPOS 19*32+6
	DB  "MONSTER"
	DB	0
boss32txt2						;lower text ASTEROID hard
	SETDPOS	24*32+6
	DB	"NAME   - BLADE BARRIER"
	SETDPOS	25*32+6
	DB	"WEAPON - WEB ATTACK"
	SETDPOS	26*32+6
	DB	"SIZE   - H90*W90*D65"
	SETDPOS	27*32+6
	DB	"HP     - 96"
	DB	0,0
boss13txt						;left text SPACE ARMADA
	SETDPOS	7*32+6
	DB	'STAGE 1-3'
	SETDPOS	9*32+6
	DB	'SPACE'
	SETDPOS	11*32+6
	DB	'ARMADA'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WASHING"
	SETDPOS 19*32+6
	DB  "MACHINE"
	DB	0
boss13txt2						;lower text SPACE ARMADA
	SETDPOS	24*32+6
	DB	"NAME   - ATOMIC BASE"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H600*W850*D1200"
	SETDPOS	27*32+6
	DB	"HP     - 32"
	DB	0,0

boss23txt						;left text TITANIA
	SETDPOS	7*32+6
	DB	'STAGE 2-3'
	SETDPOS	9*32+6
	DB	'TITANIA'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "AIRLOCK"
	SETDPOS 19*32+6
	DB  "BOSS"
	DB	0
boss23txt2						;lower text TITANIA
	SETDPOS	24*32+6
	DB	"NAME   - PROFESSOR HANGER"
	SETDPOS	25*32+6
	DB	"WEAPON - SHADOW THRUSTER"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W18*D30"
	SETDPOS	27*32+6
	DB	"HP     - 120"
	DB	0,0
boss33txt						;left text FORTUNA
	SETDPOS	7*32+6
	DB	'STAGE 3-3'
	SETDPOS	9*32+6
	DB	'FORTUNA'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "CHICKEN"
	DB	0
boss33txt2						;lower text FORTUNA
	SETDPOS	24*32+6
	DB	"NAME   - MONARCH DODORA"
	SETDPOS	25*32+6
	DB	"WEAPON - FIRE BREATH"
	SETDPOS	26*32+6
	DB	"SIZE   - H85*W160*D200"
	SETDPOS	27*32+6
	DB	"HP     - 70"
	DB	0,0
boss14txt						;left text METEOR
	SETDPOS	7*32+6
	DB	'STAGE 1-4'
	SETDPOS	9*32+6
	DB	'METEOR'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "THE SPIDER"
	DB	0
boss14txt2						;lower text METEOR
	SETDPOS	24*32+6
	DB	"NAME   - DANCING INSECTOR"
	SETDPOS	25*32+6
	DB	"WEAPON - FIRE BLASTER"
	SETDPOS	26*32+6
	DB	"SIZE   - H120*W87*D72"
	SETDPOS	27*32+6
	DB	"HP     - 114"
	DB	0,0
boss24txt						;left text SECTOR Y
	SETDPOS	7*32+6
	DB	'STAGE 2-4'
	SETDPOS	9*32+6
	DB	'SECTOR $'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "FLING BOSS"
	DB	0
boss24txt2						;lower text SECTOR Y
	SETDPOS	24*32+6
	DB	"NAME   - PLASMA HYDRA"
	SETDPOS	25*32+6
	DB	"WEAPON - PLASMA SPEWER"
	SETDPOS	26*32+6
	DB	"SIZE   - H96*W280*D55"
	SETDPOS	27*32+6
	DB	"HP     - 104"
	DB	0,0
boss34txt						;left text SECTOR Z
	SETDPOS	7*32+6
	DB	'STAGE 3-4'
	SETDPOS	9*32+6
	DB	'SECTOR #'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WASHING"
	SETDPOS 19*32+6
	DB  "MACHINE II"
	DB	0
boss34txt2						;lower text SECTOR Z
	SETDPOS	24*32+6
	DB	"NAME   - ATOMIC BASE II"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H92*W90*D1100"
	SETDPOS	27*32+6
	DB	"HP     - 64"
	DB	0,0
boss15txt						;left text VENOM ORBIT easy
	SETDPOS	7*32+6
	DB	'STAGE 1-5'
	SETDPOS	9*32+6
	DB	'VENOM'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "ENTITY"
	SETDPOS 19*32+6
	DB  "BOSS"
	DB	0
boss25txt						;left text VENOM ORBIT med
	SETDPOS	7*32+6
	DB	'STAGE 2-5'
	SETDPOS	9*32+6
	DB	'VENOM'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "CASTANET"
	DB	0
boss15txt2						;lower text VENOM ORBIT easy
	SETDPOS	24*32+6
	DB	"NAME   - PHANTRON"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W22*D31"
	SETDPOS	27*32+6
	DB	"HP     - 32"
	DB	0,0
boss25txt2						;lower text VENOM ORBIT med
	SETDPOS	24*32+6
	DB	"NAME   - METAL SMASHER"
	SETDPOS	25*32+6
	DB	"WEAPON - CRUSH ATTACK"
	SETDPOS	26*32+6
	DB	"SIZE   - H17*W20*D38"
	SETDPOS	27*32+6
	DB	"HP     - 120"
	DB	0,0
boss16txt						;left text VENOM GROUND easy
	SETDPOS	7*32+6
	DB	'STAGE 1-6'
	SETDPOS	9*32+6
	DB	'VENOM'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "ENTITY"
	SETDPOS 19*32+6
	DB  "BOSS II"
	SETDPOS 21*32+6
	DB  "REVENGE"
	DB	0
boss16txt2						;lower text VENOM GROUND easy
	SETDPOS	24*32+6
	DB	"NAME   - PHANTRON II"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W22*D31"
	SETDPOS	27*32+6
	DB	"HP     - 60"
	DB	0,0
boss26txt						;left text VENOM GROUND med
	SETDPOS	7*32+6
	DB	'STAGE 2-6'
	SETDPOS	9*32+6
	DB	'VENOM'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "MAD"
	SETDPOS 19*32+6
	DB  "TRUCKER"
	DB	0
boss26txt2						;lower text VENOM GROUND med
	SETDPOS	24*32+6
	DB	"NAME   - GALACTIC RIDER"
	SETDPOS	25*32+6
	DB	"WEAPON - AIR BIKERS"
	SETDPOS	26*32+6
	DB	"SIZE   - H80*W61*D25"
	SETDPOS	27*32+6
	DB	"HP     - 64"
	DB	0,0
boss35txt						;left text MACBETH
	SETDPOS	7*32+6
	DB	'STAGE 3-5'
	SETDPOS	9*32+6
	DB	'MACBETH'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "SPINNING"
	SETDPOS 19*32+6
	DB  "TOP"
	DB	0
boss35txt2						;lower text MACBETH
	SETDPOS	24*32+6
	DB	"NAME   - SPINNING CORE"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H63*W52*D45"
	SETDPOS	27*32+6
	DB	"HP     - 128"
	DB	0,0
boss36txt						;left text VENOM ORBIT hard
	SETDPOS	7*32+6
	DB	'STAGE 3-6'
	SETDPOS	9*32+6
	DB	'VENOM'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "AIRSHIP"
	DB	0
boss36txt2						;lower text VENOM ORBIT hard
	SETDPOS	24*32+6
	DB	"NAME   - GREAT COMMANDER"
	SETDPOS	25*32+6
	DB	"WEAPON - LASER"
	SETDPOS	26*32+6
	DB	"SIZE   - H73*W97*D250"
	SETDPOS	27*32+6
	DB	"HP     - 32"
	DB	0,0
boss37txt						;left text VENOM GROUND hard
	SETDPOS	7*32+6
	DB	'STAGE 3-7'
	SETDPOS	9*32+6
	DB	'VENOM'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "TRANS-"
	SETDPOS 19*32+6
	DB  "FORMER"
	DB	0
boss37txt2						;lower text VENOM GROUND hard
	SETDPOS	24*32+6
	DB	"NAME   - GREAT COMMANDER"
	SETDPOS	25*32+6
	DB	"WEAPON - IRON BALLS"
	SETDPOS	26*32+6
	DB	"SIZE   - H73*W97*D250"
	SETDPOS	27*32+6
	DB	"HP     - 140"
	DB	0,0
bossfinaltxt					;left text ANDROSS easy/med
	SETDPOS	7*32+6
	DB	"FINAL"
	SETDPOS	8*32+6
	DB	"STAGE"
	SETDPOS	10*32+6
	DB	"VENOM CORE"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "MONOLITH"
	SETDPOS 19*32+6
	DB  "LEV-1 * -2"
	SETDPOS 21*32+6
	DB  "LION LEV-3"
	DB	0
bossfinaltxt2					;lower text ANDROSS easy/med
	SETDPOS	24*32+6
	DB	"NAME   - ANDROSS..."
	SETDPOS	25*32+6
	DB	"WEAPON - TELEKINESIS"
	SETDPOS	26*32+6
	DB	"SIZE   - H100*W80*D30"
	SETDPOS	27*32+6
	DB	"HP     - 30 L1 L2 * 100 L3"
	DB	0,0
bossyoshitxt2					;left text ANDROSS easy/med
	SETDPOS	24*32+6
	DB	"NAME   - YOSHI"
	SETDPOS	25*32+6
	DB	"WEAPON - EGG TOSS"
	SETDPOS	26*32+6
	DB	"SIZE   - H93*W77*D250"
	SETDPOS	27*32+6
	DB	"HP     - 120"
	DB	0,0
bossyoshitxt					;lower text ANDROSS easy/med
	SETDPOS	7*32+6
	DB	'STAGE ???'
	SETDPOS	9*32+6
	DB	'SUISEI'
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "YOSHI"
	SETDPOS 19*32+6
	DB  "  "
	DB	0
bossfinaltxt3					;left text ANDROSS hard
	SETDPOS	7*32+6
	DB	"I AM"
	SETDPOS	11*32+6
	DB	"STILL"
	SETDPOS 15*32+6
	DB  "ALIVE"
	SETDPOS 19*32+6
	DB  "HA HA HA"
	DB	0
bossfinaltxt4					;lower text ANDROSS hard
	SETDPOS	24*32+6
	DB	"ALARM... FIREWALL HACKED"
	SETDPOS	25*32+6
	DB	"UNKNOWN         ATTACKER"
	SETDPOS	26*32+6
	DB	"DATA    LEAK    DETECTED"
	SETDPOS	27*32+6
	DB	"INT.  DATABASE CORRUPTED"
	DB	0,0
boss51txt
	SETDPOS	7*32+6		
	DB	"STAGE 5-1"
	SETDPOS	9*32+6
	DB	"CORNERIA"
	SETDPOS	10*32+6
	DB	"HABITABLE"
	SETDPOS	11*32+6
	DB	"ZONE"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "LINK HEAD"
	DB	0	
boss51txt2
	SETDPOS	24*32+6
	DB	"NAME   - LINKTRON"
	SETDPOS	25*32+6
	DB	"WEAPON - DUPLICATION"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W25*D35"
	SETDPOS	27*32+6
	DB	"HP     - 60"
	DB	0,0
boss52txt
	SETDPOS	7*32+6		
	DB	"STAGE 5-2"
	SETDPOS	9*32+6
	DB	"GEKOU"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "BLACK ROSE"
	DB	0	
boss52txt2
	SETDPOS	24*32+6
	DB	"NAME   - BLACK ROSE"
	SETDPOS	25*32+6
	DB	"WEAPON - DEFENSIVE ROLL"
	SETDPOS	26*32+6
	DB	"SIZE   - H50*W100*D150"
	SETDPOS	27*32+6
	DB	"HP     - 85"
	DB	0,0
boss53txt
	SETDPOS	7*32+6		
	DB	"STAGE 5-3"
	SETDPOS	9*32+6
	DB	"SECTOR K"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "BALL BOSS"
	DB	0
boss53txt2
	SETDPOS	24*32+6
	DB	"NAME   - MORPH BALL"
	SETDPOS	25*32+6
	DB	"WEAPON - ROLL BASH"
	SETDPOS	26*32+6
	DB	"SIZE   - H50*W50*D50"
	SETDPOS	27*32+6
	DB	"HP     - 100"
	DB	0,0
boss54txt
	SETDPOS	7*32+6		
	DB	"STAGE 5-4"
	SETDPOS	9*32+6
	DB	"ALPHA"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "KING"
	SETDPOS 19*32+6
	DB  "DODORA"
	DB	0
boss54txt2
	SETDPOS	24*32+6
	DB	"NAME   - KING DODORA"
	SETDPOS	25*32+6
	DB	"WEAPON - TAME DAMA"
	SETDPOS	26*32+6
	DB	"SIZE   - H40*W80*D100"
	SETDPOS	27*32+6
	DB	"HP     - 100"
	DB	0,0
boss55txt
	SETDPOS	7*32+6		
	DB	"STAGE 5-5"
	SETDPOS	9*32+6
	DB	"KAZARU"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WOLF"
	DB	0
boss55txt2
	SETDPOS	24*32+6
	DB	"NAME   - STAR WOLF"
	SETDPOS	25*32+6
	DB	"WEAPON - WOLF STORM"
	SETDPOS	26*32+6
	DB	"SIZE   - H20*W20*D20"
	SETDPOS	27*32+6
	DB	"HP     - 40*4"
	DB	0,0
boss61txt
	SETDPOS	7*32+6		
	DB	"STAGE 6-1"
	SETDPOS	9*32+6
	DB	"CORNERIA"
	SETDPOS	10*32+6
	DB	"HABITABLE"
	SETDPOS	11*32+6
	DB	"ZONE"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "LINK HEAD"
	DB	0	
boss61txt2
	SETDPOS	24*32+6
	DB	"NAME   - LINKTRON"
	SETDPOS	25*32+6
	DB	"WEAPON - DUPLICATION"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W25*D35"
	SETDPOS	27*32+6
	DB	"HP     - 60"
	DB	0,0
boss62txt
	SETDPOS	7*32+6		
	DB	"STAGE 6-2"
	SETDPOS	9*32+6
	DB	"PEBBLE"
	SETDPOS	10*32+6
	DB	"BEACH"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WEEGEE"
	DB	0
boss62txt2
	SETDPOS	24*32+6
	DB	"NAME   - LUIGI HYDRA"
	SETDPOS	25*32+6
	DB	"WEAPON - PLASMA"
	SETDPOS	26*32+6
	DB	"SIZE   - H96*W280*D55"
	SETDPOS	27*32+6
	DB	"HP     - 106"
	DB	0,0
boss63txt
	SETDPOS	7*32+6		
	DB	"STAGE 6-3"
	SETDPOS	9*32+6
	DB	"TARKUS-H"
	SETDPOS	10*32+6
	DB	"2-112"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "BOXXIE"
	DB	0
boss63txt2
	SETDPOS	24*32+6
	DB	"NAME   - CRIMSON KING"
	SETDPOS	25*32+6
	DB	"WEAPON - FIRE WITCH"
	SETDPOS	26*32+6
	DB	"SIZE   - H30*W30*D30"
	SETDPOS	27*32+6
	DB	"HP     - 80"
	DB	0,0
boss64txt
	SETDPOS	7*32+6		
	DB	"STAGE 6-4"
	SETDPOS	9*32+6
	DB	"CYGARD"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "PIERROT"
	DB	0
boss64txt2
	SETDPOS	24*32+6
	DB	"NAME   - PIERROT"
	SETDPOS	25*32+6
	DB	"WEAPON - MAGIC"
	SETDPOS	26*32+6
	DB	"SIZE   - H45*W35*D45"
	SETDPOS	27*32+6
	DB	"HP     - 100"
	DB	0,0
boss65txt
	SETDPOS	7*32+6		
	DB	"STAGE 6-5"
	SETDPOS	9*32+6
	DB	"TOLIMAS"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "HOVERBOSS"
	DB	0
boss65txt2
	SETDPOS	24*32+6
	DB	"NAME   - GYARAGA"
	SETDPOS	25*32+6
	DB	"WEAPON - SPAWNER"
	SETDPOS	26*32+6
	DB	"SIZE   - H50*W125*D125"
	SETDPOS	27*32+6
	DB	"HP     - 100"
	DB	0,0
boss66txt
	SETDPOS	7*32+6		
	DB	"STAGE 6-6"
	SETDPOS	9*32+6
	DB	"KAZARU"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WOLFEN64"
	DB	0
boss66txt2
	SETDPOS	24*32+6
	DB	"NAME   - STAR WOLF 64"
	SETDPOS	25*32+6
	DB	"WEAPON - WOLF STORM"
	SETDPOS	26*32+6
	DB	"SIZE   - H20*W20*D20"
	SETDPOS	27*32+6
	DB	"HP     - 50*4"
	DB	0,0

boss71txt
	SETDPOS	7*32+6		
	DB	"STAGE 7-1"
	SETDPOS	9*32+6
	DB	"CORNERIA"
	SETDPOS	10*32+6
	DB	"HABITABLE"
	SETDPOS	11*32+6
	DB	"ZONE"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "LINK HEAD"
	DB	0	
boss71txt2
	SETDPOS	24*32+6
	DB	"NAME   - LINKTRON"
	SETDPOS	25*32+6
	DB	"WEAPON - DUPLICATION"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W25*D35"
	SETDPOS	27*32+6
	DB	"HP     - 60"
	DB	0,0
boss72txt
	SETDPOS	7*32+6		
	DB	"STAGE 7-2"
	SETDPOS	9*32+6
	DB	"PAPETOON"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "CORN"
	SETDPOS 19*32+6
	DB  "CRUISER"
	DB	0
boss72txt2
	SETDPOS	24*32+6
	DB	"NAME   - GALAXIP"
	SETDPOS	25*32+6
	DB	"WEAPON - SPAWNER"
	SETDPOS	26*32+6
	DB	"SIZE   - H20*W40*D80"
	SETDPOS	27*32+6
	DB	"HP     - 60"
	DB	0,0
boss73txt
	SETDPOS	7*32+6		
	DB	"STAGE 7-3"
	SETDPOS	9*32+6
	DB	"EIS"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "REX"
	DB	0
boss73txt2
	SETDPOS	24*32+6
	DB	"NAME   - REXIUS"
	SETDPOS	25*32+6
	DB	"WEAPON - FIRE BREATH"
	SETDPOS	26*32+6
	DB	"SIZE   - H10*W20*D20"
	SETDPOS	27*32+6
	DB	"HP     - 100"
	DB	0,0
boss74txt
	SETDPOS	7*32+6		
	DB	"STAGE 7-4"
	SETDPOS	9*32+6
	DB	"KURAUDO"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "CLOUD BOSS"
	DB	0
boss74txt2
	SETDPOS	24*32+6
	DB	"NAME   - AIR RAIDER"
	SETDPOS	25*32+6
	DB	"WEAPON - LIGHTNING STORM"
	SETDPOS	26*32+6
	DB	"SIZE   - H25*W50*D80"
	SETDPOS	27*32+6
	DB	"HP     - 100"
	DB	0,0
boss75txt
	SETDPOS	7*32+6		
	DB	"STAGE 7-5"
	SETDPOS	9*32+6
	DB	"KAZARU"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "WOLFEN"
	DB	0
boss75txt2
	SETDPOS	24*32+6
	DB	"NAME   - STAR WOLF COMMAND"
	SETDPOS	25*32+6
	DB	"WEAPON - WOLF STORM"
	SETDPOS	26*32+6
	DB	"SIZE   - H30*W40*D45"
	SETDPOS	27*32+6
	DB	"HP     - 60*4"
	DB	0,0
boss5finaltxt
	SETDPOS	7*32+6		
	DB	"FINAL"
	SETDPOS	8*32+6
	DB	"STAGE"
	SETDPOS	10*32+6
	DB	"KAZARU"
	SETDPOS 15*32+6
	DB  "INT.DESC."
	SETDPOS 17*32+6
	DB  "LUIGIH-"
	SETDPOS 19*32+6
	DB  "MARIOH"
	DB	0
boss5finaltxt2
	SETDPOS	24*32+6			
	DB	"NAME   - SUPER MARIO BROS."
	SETDPOS	26*32+6
	DB	"WE ARE GOING TO"
	SETDPOS	27*32+6
	DB	"DESTROY YOUR FRANCHISE"
	DB	0,0

rotsize	=	deg45
rotnum	=	deg360/rotsize
prot	=	0

boss13demo	mapobj	0000,0000,(-50<<boss8_scale)+nucleusheight,210<<boss8_scale,boss_8_0,boss8_Istrat
	setvarobj	mapvar1
	mapobj	0000,0000,(-50<<boss8_scale)+nucleusheight,boss8_circ,hou_4,nucleuslauncher_Istrat
	setalvar	sbyte2,deg90+deg22
	mapobj	0000,0000,(-50<<boss8_scale)+nucleusheight,boss8_circ,hou_4,nucleuslauncher_Istrat
	setalvar	sbyte2,deg135+deg22
	mapobj	0000,0000,(-50<<boss8_scale)+nucleusheight,boss8_circ,hou_4,nucleuslauncher_Istrat
	setalvar	sbyte2,deg270-deg22
	mapobj	0000,0000,(-50<<boss8_scale)+nucleusheight,boss8_circ,hou_4,nucleuslauncher_Istrat
	setalvar	sbyte2,-deg22
	REPT	rotnum
	mapobj	0000,0000,0000+nucleusheight,boss8_circ,boss_8_4,nucleuspillar_Istrat
	setalvar	sbyte2,rotsize*prot
prot	=	prot+1
	ENDR
	mapwait	1000
;-------------------------------------------------------------------------
titleseq_l	php

titleredo	a8i16
	disable


;	jml	timeupin

;	lda	#1
;	sta	titlfade
	sta.l	oncewipe
	lda	#titlemap>>16
	ldx	#titlemap&$7fff
	sta	mapbank
	stx	mapptr
	jsl	initgame_l
	s_and_var		B,pshipflags3,#~psf3_enginesnd

	jsl	setcharmapfox_l

	a16
	lda	#0
	sta.l	m_meters
	sta	exitintro
	stz	gameframe

	a16
	lda	#880
	pha
.lp	jsl	setblack_l
	IFNE	MSU1
	jsl	friends_messages_l
	jsl	friends_messages2_l
	ENDC
	jsl	transfer_l
	a8
	lda	#1+8	;+64
	sta	bgmode
	a16
	pla

;	dec	a
	beq	.endtitle

	pha
;	lda	gameframe
;	cmp	#60000
;	bra	.lp
	a8
	lda	pshipflags
	ora	#psf_nofire!psf_noctrl!psf_nofire
	sta	pshipflags	
	lda	pshipflags3
	AND	#~psf3_enginesnd
	sta	pshipflags3
	lda	pshipflags3
	ORA	#psf3_nocollisions
	sta	pshipflags3
	TESTKEYDOWN	START
;	beq	.lp
	bra	.lp
	a16
	pla
	a8

	trigse		$10
	startbgm	$f1
	IFNE	MSU1
	msufade_alt
	ENDC

	lda	#-3
	sta	fadedir
.lp2	jsl	setblack_l
	jsl	transfer_l
	a8
	lda	#1+8
	sta	bgmode
	untilfaded .lp2
	plp
	rtl

.endtitle	a8
	startbgm	$f1
	IFNE	MSU1
	msufade_alt
	ENDC
	lda	#-3
	sta	fadedir
.lp3	jsl	setblack_l
	jsl	transfer_l
	a8
	lda	#1+8
	sta	bgmode
	untilfaded .lp3

	jsl	intro_l
	jmp	titleredo
;-------------------------------------------------------------------
; INTRO SEQUENCE

intro_l
	a8i16
;	bgm	init
	jsl	do_bgm_init
	a8i16
	ldx	#0
.ll	dex
	bne	.ll
	bgm2	fitunl
	IFNE	MSU1
	msuplay	fitunl,repeat
	ENDC

	disable

	lda	#intromap>>16
	ldx	#intromap&$7fff
	sta	mapbank
	stx	mapptr
	jsl	initgame_l
	s_and_var		B,pshipflags3,#~psf3_enginesnd

	jsl	setcharmapfox_l

	lda	#0
	sta.l	m_meters
	sta	exitintro
	sta.l	oncewipe
	stz	gameframe

.lp3	jsl	setblack_l
	jsl	transfer_l
	a8
	jsl	friends_messages_l
	jsl	friends_messages2_l
	
	s_jmp_keyup	x,.nosetxa
	s_jmp_keyup	a,.nosetxa
	lda	#1
	sta	kandoallow
	trigse	15
.nosetxa

	s_jmp_keyup	select,.noset

	s_jmp_keyup	left,.nosetl
	lda	#1
	sta	craymode
	jmp	.noset
.nosetl
	s_jmp_keyup	right,.nosetr
	lda	#2
	sta	craymode
	jmp	.noset
.nosetr
	s_jmp_keyup	x,.nosetx
	lda	#3
	sta	craymode
	jmp	.noset
.nosetx
	s_jmp_keyup	y,.nosety
	lda	#4
	sta	craymode
	jmp	.noset
.nosety
	s_jmp_keyup	a,.noseta
	lda	#5
	sta	craymode
	jmp	.noset
.noseta
	s_jmp_keyup	b,.nosetb
	lda	#6
	sta	craymode
	jmp	.noset
.nosetb

	s_jmp_keyup	a2,.noset4
	s_jmp_keyup	b2,.noset4	
	s_jmp_keyup	x2,.noset4
	s_jmp_keyup	y2,.noset4
	a8
	lda	#1
	sta	viewshit
.noset4

.noset
	jsl	random_l
	sta	temprand1
	jsl	random_l
	sta	temprand2
	jsl	random_l
	sta	temprand3
	jsl	random_l
	sta	temprand4
	
	lda	gameframe
	cmp	#45
	lbcc	.lp3

	lda	exitintro
	bne	.waitup
	s_jmp_keyup	start,.lp3
;	lda	cont0
;	ora	contl0
;	beq	.lp3
.waitup
	IFNE	MSU1
	msufade_alt
	ENDC
	lda	#-2
	sta	fadedir
	lda	#11
	sta	fade
.finishlp
	jsl	setblack_l
	jsl	transfer_l
	a8
	lda	fadedir
	bne	.finishlp
	rtl

tit_istrat
	s_start_strat
	jsl	setrandshape
	a8
	s_set_alvar	B,x,al_rotx,#-deg45+deg11+deg11+3-deg5
	s_set_alvar	B,x,al_roty,#deg45+deg90	;+deg11
	s_set_alvar	B,x,al_rotz,#0
	s_set_strat	x,tit4_strat
tit_strat
	s_start_strat
	s_add_alvar	B,x,al_rotz,#2
	s_add_playerz x
	s_end_strat

tit2_istrat
	s_start_strat
	jsl	setrandshape
	a8
	s_set_alvar	B,x,al_rotx,#deg45-deg11-deg11-3+deg5
	s_set_alvar	B,x,al_roty,#deg45-deg90	;+deg11
	s_set_alvar	B,x,al_rotz,#0
	s_set_strat	x,tit4_strat
tit2_strat
	s_start_strat
	s_sub_alvar	B,x,al_rotz,#2
	s_add_playerz x
	s_end_strat

tit3_istrat
	s_start_strat
	jsl	setrandshape
	a8
	s_set_alvar	B,x,al_rotx,#deg135
	s_set_alvar	B,x,al_roty,#deg135	;+deg11
	s_set_alvar	B,x,al_rotz,#0
	s_set_strat	x,tit4_strat
tit3_strat
	s_start_strat
	s_sub_alvar	B,x,al_rotz,#2
	s_add_playerz x
	s_end_strat
	
tit4_istrat
	s_start_strat
	jsl	setrandshape
	a8
	s_set_alvar	B,x,al_rotx,#deg135
	s_set_alvar	B,x,al_roty,#0	;+deg11
	s_set_alvar	B,x,al_rotz,#0
	s_set_strat	x,tit4_strat
tit4_strat
	s_start_strat

;	s_jmp_random	.nox
	s_add_rnd2alvar		x,al_rotx,#7
;.nox
;	s_jmp_random	.noy
	s_add_rnd2alvar		x,al_roty,#7
;.noy
;	s_jmp_random	.noz
;	s_add_rnd2alvar		x,al_rotz,#7
;.noz
	s_add_playerz x
	s_end_strat	
