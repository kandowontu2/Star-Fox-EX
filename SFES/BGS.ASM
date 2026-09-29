;***************************************************************************
;*                                                                         *
;*                           SuperNES version.                             *
;*                                                                         *
;*                           Argonaut Software.                            *	   
;*_________________________________________________________________________*
;*                                                                         *
;*   File: BGS.ASM                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: Definitions for level backgrounds.                              *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 5/5/92                                                          *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:                                                                 *
;*	 Krister Wombell, Dylan Cuthbert                            *
;*                                                                         *
;***************************************************************************

	INCPUBLICS	bgs.ext

******************************************************
**
** Screen set up code
**


if_vofson	equ	1
if_hofson	equ	2
if_zroton	equ	4
if_ground	equ	8
if_space	equ	16
if_snow	equ	32
if_pollen	equ	64
if_lava	equ	128

	shorta
	longi

;---------------------------------------------------------------

bg_hole_1	init_bg	mode2
	bg2chr	bhole
	bg2scr	bhole

	palette	2d
	set_bg
	info	hon,voff,zon,space
	pstrat	playerspaceflyin,a,abc
	bg2Yscroll	0
	hofmode	bhole
	a16
	lda	#0
	sta.l	testk2
	lda	#bholelimit
	sta.l	testk3
	lda	#1
	sta.l	testk4
	a8
	bgm2	bhole
	IFNE	MSU1
	msuplay	levelblackhole,repeat
	ENDC
	space	night

bg_1_1i_1	init_bg	mode2
	bg2chr	b
	bg2scr	b
	palette	2b
	set_bg
	info	hon,voff,zoff,nodots
	pstrat	playeropening,a,ab
	hofmode	tunnel3
	set_zdepthtable	tunnel
	jsl	do_bgm_10
	lda	#0
	sta.l	m_meters
	IFNE	MSU1
	msuplay	scramble,repeat
	ENDC
	shadowheight 0
	tunnel	night
	
bg_5_1i_1	init_bg	mode2
;	bg2chr	b
;	bg2scr	b
;	palette	2b
	bg2chr	22
	bg2scr	22

	palette	space
	set_bg
	info	hon,voff,zoff,space
	pstrat	playeropening2,a,ab
	hofmode	rotate
	set_zdepthtable	tunnel
	bg2Yscroll	232
	jsl	do_bgm_10
	lda	#0
	sta.l	m_meters
	IFNE	MSU1
	msuplay	scramble,repeat
	ENDC
;	shadowheight 0
	tunnel	night

bg_5_3i_1	init_bg	mode2sp
;	bg2chr	b
;	bg2scr	b
;	palette	2b
	bg2chr	rb
	bg2scr	rb

	palette	newspace
	set_bg
	info	hon,voff,zoff,nodots
	pstrat	playeropening2,a,ab
	hofmode	rotate
	set_zdepthtable	tunnel
	jsl	do_bgm_10
	lda	#0
	sta.l	m_meters
;	shadowheight 0
	tunnel	night

bg_1_1a_1	blink
;	init_bg	mode1
;	bg2chr	tst
;	bg2scr	tst
;	palette	tm3
;	set_bg
;	info	hon,voff,zoff,nodots
;;	pstrat	playertakeoff,a,ab			   
;	hofmode	tunnel3
;	set_zdepthtable	tunnel
;	bgm	10
;	flashtunnel
;	shadowheight 0
;	tunnel	night

bg_1_1b_1	
	blink
;	init_bg	mode2		;what I see from the tunnel
;	bg2chr	stp
;	bg2scr	stp
;	palette	2d
;	gamepal	blue
;	set_zdepthtable	stage1
;	set_bg
;	info	hon,von,zon,nodots
;	bg2Yscroll	140
;	shadowheight 39<<mybase_scale
;	hofmode	rotate
;	planet	night

bg_1_1c_1	init_bg	mode2		;what I see from the tunnel
	bg2chr	stp
	bg2scr	stp
	palette	2d
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	11
	IFNE	MSU1
	msuplay	level1_1,repeat
	ENDC
;	lda	#1
;	sta.l	m_meters
	planet	night

bg_2_1k_1	init_bg	mode2		;what I see from the tunnel
	bg2chr	stp
	bg2scr	stp

	palette	bm
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	11
;	lda	#1
;	sta.l	m_meters
	planet	night

bg_3_1k_1	init_bg	mode2		;what I see from the tunnel
	bg2chr	stp
	bg2scr	stp

	palette	light
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	11
;	lda	#1
;	sta.l	m_meters
	planet	night
	
bg_3_1c_1	init_bg	mode2		;what I see from the tunnel
	bg2chr	stp
	bg2scr	stp
	palette	2g
	gamepal	red
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	11
	IFNE	MSU1
	msuplay	level1_1,repeat
	ENDC
;	lda	#1
;	sta.l	m_meters
	planet	red

bg_training_1	init_bg	mode2		;training
	bg2chr	stars
	bg2scr	stars

	palette	stars
;	gamepal	blue
	set_bg
	pstrat	playertraining,a,abc
;	set_zdepthtable	normal
	info	von,hon,zon,nodots	;what I see from the ground
	hofmode	rotate
;	shadowheight 0
	bg2Yscroll	-128
	bgm	training
	IFNE	MSU1
	msuplay training,repeat
	ENDC
	space	night

bg_1_2_1	init_bg	mode2
	bg2chr	stars
	bg2scr	stars

	palette	stars
	set_bg
	info	von,hon,zon,space
	pstrat	playerinsidespaceflyin,a,abc
	bgm2	12
	IFNE	MSU1
	msuplay	level1_2,repeat
	ENDC
	hofmode	rotate
	bg2Yscroll	232
	space	night

bg_1_23_1	init_bg	mode2
	bg2chr	stars
	bg2scr	stars

	palette	stars
	set_bg
	info	von,hon,zon,ground
	pstrat	playeronplanet,b,ab
	hofmode	rotate
	bgm2	12
	IFNE	MSU1
	msuplay	level1_2,repeat
	ENDC
	planet	night
	
bg_special_1	init_bg	mode2		;out of this dimension
	bg2chr	m
	bg2scr	m

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	bgm2	special
	IFNE	MSU1
	msuplay	levelootd,repeat
	ENDC
	hofmode	bhole
	a16
	lda	#0
	sta.l	testk2
	lda	#bholelimit
	sta.l	testk3
	lda	#1
	sta.l	testk4
	a8
	bg2Yscroll	-64
	space	night


bg_1_3i_1	init_bg	mode2			;space armada start -warpout from asteroid-
	bg2chr	34
	bg2scr	34

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerwarpout,a,ab
	hofmode	rotate
	bg2Yscroll	60
	bg2Xscroll  125
	bgm	13
	IFNE	MSU1
	msuplay	level1_3,repeat
	ENDC
	space	night

bg_1_3i2p_1	init_bg	mode2			;space armada part 1
	bg2chr	34
	bg2scr	34

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	bg2Yscroll	60
	bg2Xscroll  125
	bgm2	13b
	IFNE	MSU1
	msuplay	level1_3,repeat
	ENDC
	space	night
	
bg_1_3a_1	init_bg	mode2			;space armada part 2
	bg2chr	34
	bg2scr	34

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerinspace,a,abc
	hofmode	rotate
	bg2Yscroll	60
	bg2Xscroll  125
	bgmrestart	13b
	space	night

bg_1_3b_1	init_bg	mode1			;space armada tunnel
	bg2chr	tsp
	bg2scr	tsp
	palette	tm3
	set_bg
	info	hon,voff,zoff,nodots
	pstrat	playerinmtunnel,a,ab
	hofmode	tunnel3
	shadowheight 0
	bgmrestart	13b
	tunnel	night

bg_1_3c_1	init_bg	mode2			;space armada part 3
	bg2chr	34
	bg2scr	34

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerinspace,a,abc
	bgmrestart	13b
	hofmode	rotate
	bg2Yscroll	60
	bg2Xscroll  125
	space	night
	
bg_1_3d_1	init_bg	mode2			;space armada boss -atomic core-
	bg2chr	13b
	bg2scr	13b,vsc_base2+2*k,4*k
	palette	2b
	set_bg
	info	voff,hon,zoff,nodots
	pstrat	playerinnucleus
	hofmode	nograd
	bg2Yscroll	248
	shadowheight nucleusheight
	nucleus	night

bg_1_3da_1	init_bg	mode2			;space armada pre stage clear -big ship explosion-
	bg2chr	13b
	bg2scr	13b,vsc_base2+2*k,4*k
	palette	2b
	set_bg
	info	von,hon,zon,nodots
	pstrat	playerwashent
	hofmode	nograd
	bg2Yscroll	248		264
	shadowheight nucleusheight
	nucleus	night
	
	
bg_1_3daa_1	init_bg	mode2			;space armada pre stage clear -big ship explosion-
	bg2chr	city
	bg2scr	city
	palette	city
	set_bg
	info	von,hon,zon,ground
	pstrat	playerwashent3
	hofmode	rotate
	bg2Yscroll	232
;	shadowheight nucleusheight
	nucleus	night
	
bg_5_2da_1	;init_bg	mode2			
;	bg2chr	13b
;	bg2scr	13b,vsc_base2+2*k,4*k
;	palette	2b
;	set_bg
	info	voff,hon,zoff,nodots
	pstrat	playerwashent2
;	hofmode	nograd
;	bg2Yscroll	248		264
;	shadowheight nucleusheight
	nucleus	night

bg_1_3e_1	init_bg	mode2			;space armada stage clear
	bg2chr	space
	bg2scr	13
	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerclearship2
	hofmode	rotate
	bg2Yscroll	213
	space	night

bg_1_4_1	init_bg	mode2			;meteor
	bg2chr	14
	bg2scr	14

	palette	light
	set_bg
	info	von,hon,zon,ground
;	pstrat	playerplanetflyin,b,ab
	pstrat	playeronplanet2,b,ab
	hofmode	rotate
	bg2Yscroll	232
	bg2Xscroll  55
	shadowheight 0
	bgm2	14
	IFNE	MSU1
	msuplay	level1_4,repeat
	ENDC
	set_zdepthtable	mist
	planet	night

bg_1_14_1	init_bg	mode2			;meteor boss
	bg2chr	14
	bg2scr	14

	palette	light
	set_bg
	info	von,hon,zon,ground
	pstrat	playerplanetflyin,b,ab
	hofmode	rotate
	bg2Yscroll	232
	bg2Xscroll  55
	shadowheight 0
	bgm2	14
	IFNE	MSU1
	msuplay	level1_4,repeat
	ENDC
	set_zdepthtable	mist
	planet	night
	
bg_1_4b_1	set_zdepthtable	normal
	gamepal	red
	shadowheight 0
	setdepth red
	rtl


bg_1_5_1	init_bg	mode2
	bg2chr	lsb
	bg2scr	lsb

	palette	2c
	set_bg
	info	hon,von,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	scrollbg	164
	bgm2	15
	IFNE	MSU1
	msuplay	level1_2,repeat
	ENDC
	space	night

bg_space_credits_1	init_bg	mode2
	bg2chr	lsb
	bg2scr	lsb

	palette	2c
	set_bg
	info	hon,von,zon,snow
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	bhole
	scrollbg	164
	bgm2	15
	space	night
	
bg_1_6a_1	init_bg	mode2
	bg2chr	f1
	bg2scr	f1

	palette	2a
	gamepal	red
	set_bg
	info	hon,von,zon,ground
	pstrat	playerdivegnd,a,ab
	hofmode	rotate
	bg2Yscroll	232
	bgm2	16
	IFNE	MSU1
	msuplay	level1_6,repeat
	ENDC
	shadowheight 0
	flashbg
	planet	night


bg_1_6b_1	jsl	bg16b26c
;	startbgm	$12
	pstrat	playernull,a,ab
	tunnel	red

bg16b26c	init_bg	mode1
	bg2chr	tst
	bg2scr	tst
	palette	tm3
	gamepal	red
	set_bg
	info	hon,voff,zoff,nodots
	shadowheight 0
	hofmode	tunnel3
	rtl

bg_1_6c_1	init_bg	mode2
	bg2chr	bhole
	bg2scr	last

	palette	2f
	gamepal	red
	set_bg
	info	hon,von,zon,nodots
	pstrat	playerinspace,a,abc
	hofmode	bhole
	bg2Yscroll	0
	a16
	lda	#0
	sta.l	testk2
	lda	#bholelimit
	sta.l	testk3
	lda	#1
	sta.l	testk4
	a8
	final	night

bg_6_6c_1	init_bg	mode2			;mario and luigis lair
	bg2chr	bhole
	bg2scr	last

	palette	city
	gamepal	red
	set_bg
	info	hon,von,zon,nodots
	pstrat	playerinspace,a,abc
	hofmode	bhole
	bg2Yscroll	0
	a16
	lda	#0
	sta.l	testk2
	lda	#bholelimit
	sta.l	testk3
	lda	#1
	sta.l	testk4
	a8
	final	night
	
bg_6_6d_1	init_bg	mode2			;mario and luigis lair
	bg2chr	bhole
	bg2scr	last

	palette	city
	gamepal	red
	set_bg
	info	hon,von,zon,nodots
	pstrat	playerinspace,a,abc
	hofmode	noise
	bg2Yscroll	0
	a16
	lda	#0
	sta.l	testk2
	lda	#bholelimit
	sta.l	testk3
	lda	#1
	sta.l	testk4
	a8
	final	night

bg_6_6e_1	init_bg	mode2			;mario and luigis lair
	bg2chr	bhole
	bg2scr	last

	palette	city
	gamepal	red
	set_bg
	info	hon,von,zon,nodots
	pstrat	playerinspace,a,abc
	hofmode	laced
	bg2Yscroll	0
	a16
	lda	#0
	sta.l	testk2
	lda	#bholelimit
	sta.l	testk3
	lda	#1
	sta.l	testk4
	a8
	final	night


bg_1_7a_1	init_bg	mode1
	bg2chr	tst
	bg2scr	tst
	palette	tm3
	gamepal	red
	set_bg
	info	hon,voff,zoff,nodots
	pstrat	playerOutofLB1,a,ab
	hofmode	tunnel3
	shadowheight 0
	set_zdepthtable	normal
	tunnel	marine

bg_1_7b_1	init_bg	mode2
	bg2chr	f1
	bg2scr	f1
	palette	2a
	gamepal	red
	set_bg
	info	hon,von,zon,ground
	pstrat	playerOutofLB2,a,ab
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	224		232-32
	planet	night

bg_1_7c_1	init_bg	mode2
	bg2chr	lsb
	bg2scr	lsb
	palette	2c
	set_bg
	info	hon,von,zon,space
	pstrat	playerOutofLB3,a,ab
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232-60
	bgm2	endseq
	IFNE	MSU1
	msuplay	gameenddemo,repeat
	ENDC
	space	night


bg_2_2_1	init_bg	mode2			;sector x
	bg2chr	22
	bg2scr	22

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	bg2Yscroll	232
	bg2Xscroll  160
	bgm2		22
	IFNE	MSU1
	msuplay	level2_2,repeat
	ENDC
	space	night

bg_2_3a_1	init_bg	mode2
	bg2chr	23
	bg2scr	23
	palette	2a
	set_bg
	gamepal	blue
	info	von,hon,zon,snow
	pstrat	playeronplanet2,a,ab
	bgm2	23
	IFNE	MSU1
	msuplay	level2_3,repeat
	ENDC
	bg2Yscroll	232
	set_zdepthtable	mist
	shadowheight 0
	hofmode	rotate
	planet	mist

bg_2_3a_2	set_zdepthtable	normal
	shadowheight 0
	setdepth	night
	rtl

	
bg_2_3b_1	init_bg	mode1
	bg3chr	23b,24*k,2*k
	bg3scr	23h,25*k,2*k
	set_bg3
	waittrans

	bg2chr	bm,vchr_logback,$40*32
	bg2scr	23b

	palette	bm
	set_bg

	lda	#(25*k)>>8
	sta	bg3sc
	lda	#(24*k)>>12
	sta	bg34nba

	setbg3vofs	24
	info	hon,voff,zoff,nodots
	pstrat	playeronbridge,a,ab
	hofmode	water
	shadowheight 0
	water	marine

bg_2_3c_1	init_bg	mode2
	bg2chr	tsp
	bg2scr	tfs
	palette	tm3
	set_bg
	info	hon,voff,zoff,nodots
	lda	#1
	sta	bgmode
	pstrat	playerinstunnel,a,ab
	hofmode	tunnel2
	shadowheight 0
	tunnel	night

bg_2_3z_1	init_bg	mode1
	bg3chr	23b,24*k,2*k
	bg3scr	23h,25*k,2*k
	set_bg3
	waittrans
	bg2chr	bm,vchr_logback,$40*32
	bg2scr	23b

	palette	bm
	set_bg
	bg2Yscroll	256+16
	pstrat	playerundergnd2,b,ab		playerundergnd2
	info	hon,von,zon,ground
	shadowheight 0
	lda	#1
;	sta	noxrot
;	bgm	35
	hofmode	water
	shadowheight 0
	water	marine
	
bg_2_3zz_1	init_bg	mode1
	bg3chr	23b,24*k,2*k
	bg3scr	23h,25*k,2*k
	set_bg3
	waittrans

	bg2chr	bm,vchr_logback,$40*32
	bg2scr	23b

	palette	bm
	set_bg

	lda	#(25*k)>>8
	sta	bg3sc
	lda	#(24*k)>>12
	sta	bg34nba

	setbg3vofs	24
	info	hon,voff,zoff,nodots
	pstrat	playeronbridge,a,ab
	hofmode	water
	shadowheight 0
	water	marine
	
bg_2_4_1	init_bg	mode2
	bg2chr	24
	bg2scr	24

	palette	2f
	set_bg
	info	von,zon,hon,space
	pstrat	playerspaceflyin,a,abc
	bgm2	24
	IFNE	MSU1
	msuplay	level2_4,repeat
	ENDC
	hofmode	rotate
	bg2Yscroll	232
	space	night
	
bg_2_5_1	init_bg	mode2
	bg2chr	lsb
	bg2scr	lsb

	palette	2c
	set_bg
	pstrat	playerspaceflyin,a,abc
	info	hon,von,zoff,space
	hofmode	nograd
	scrollbg	164
	bgm2	25
	IFNE	MSU1
	msuplay	level1_2,repeat
	ENDC
	space	night
	
bg_2_6a_1
	init_bg	mode1
	bg2chr	cm
	bg2scr	tss
	palette	tm2
	set_bg
	waittrans

	lda	#(25*k)>>8
	sta	bg3sc
	lda	#(24*k)>>12
	sta	bg34nba

	bg3chr	fsbg3,24*k,2*k
	bg3scr	fsni,25*k,2*k
	set_bg3

	hofmode	tunnel2
	shadowheight 0
	info	hon,voff,zoff,nodots
	pstrat	playercolonyflyin,a,ab
	bgm2	26
	IFNE	MSU1
	msuplay	level2_6,repeat
	ENDC
	water	night,colony,3

bg_2_6b_1	
;	jsl	bg16b26c
;	pstrat	playerclearcolony,a,ab
;	tunnel	red

	bg2chr	tst
	bg2scr	tst
	palette	tm3
	set_bg
	gamepal	red
	info	hon,voff,zon,nodots
	pstrat	playerclearcolony,a,ab
	hofmode	tunnel3
	shadowheight 0
	tunnel	night
	
bg_2_6c_1	
	init_bg	mode1
	bg2chr	tst
	bg2scr	tst
	palette	tm3
	set_bg
	gamepal	red
	info	hon,voff,zoff,nodots
	pstrat	playerinLtunnel,a,ab
	hofmode	tunnel3
	shadowheight 0
	tunnel	red

;bg_2_6b_1			;HAVEN'T GOT YET
bg_2_6b_2
bg_2_6b_3
bg_2_6b_4
	planet	night


bg_3_2_1	init_bg	mode2
	bg2chr	32
	bg2scr	32

	palette	2b
	set_bg
	info	von,hon,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	bg2Yscroll	24
	bgm2	32
	IFNE	MSU1
	msuplay	level1_2,repeat
	ENDC
	space	night

bg_3_3a_1	init_bg	mode2
	bg2chr	33
	bg2scr	33

	palette	2c
	set_bg
	gamepal	blue
	info	von,hon,zon,pollen
	pstrat	playeronplanet2,b,ab	; NO FLY-IN BECAUSE STRANGE RESTART 
	shadowheight 0
	hofmode	rotate
	bg2Yscroll	232
	bgm2	33
	IFNE	MSU1
	msuplay	level3_3,repeat
	ENDC
	planet	mist

bg_3_4a_1	blink

bg_3_4b_1	init_bg	mode2			;sector z
	bg2chr	34
	bg2scr	34

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	bg2Yscroll	30
	bg2Xscroll  -110
	bgm2	34
	IFNE	MSU1
	msuplay	level2_2,repeat
	ENDC
	space	night

bg_3_4c_1	init_bg	mode2			;sector z tunnel
	bg2chr	tsp
	bg2scr	tsp

	palette	tm3
	set_bg
	info	hon,voff,zoff,nodots
	pstrat	playerinLtunnel,a,ab
	shadowheight 0
	hofmode	tunnel3
	tunnel	night,blue,5

bg_3_4d_1	init_bg	mode2			;sector z stage clear	
	bg2chr	34
	bg2scr	34

	palette	space
	set_bg
	info	von,hon,zon,space
	pstrat	playerclearship2
	hofmode	rotate
	bg2Yscroll	0		
	space	night

bg_3_5_1	init_bg	mode2
	bg2chr	holea
	bg2scr	holea

	palette	hole
	gamepal	red
	set_bg
	bg2Yscroll	15
	pstrat	playerundergnd,b,ab		playerundergnd
	info	hon,von,zon,ground
	shadowheight 0
	hofmode	rotate
	lda	#1
;	sta	noxrot
	bgm2	35
	IFNE	MSU1
	msuplay	level3_5,repeat
	ENDC
	undergnd	red

bg_3_6_1	init_bg	mode2
	bg2chr	lsb
	bg2scr	lsb

	palette	2c
	set_bg
	info	hon,von,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	scrollbg	164
	bgm2	36
	IFNE	MSU1
	msuplay	level1_2,repeat
	ENDC
	space	night

bg_3_7a_1	init_bg	mode2
	bg2chr	f1
	bg2scr	f1

	palette	2a
	gamepal	red
	set_bg
	info	hon,von,zon,ground
	pstrat	playerdivegnd,a,ab
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	flashbg
	bgm2	37
	IFNE	MSU1
	msuplay	level1_6,repeat
	ENDC
	planet	night


bg_cred_1	init_bg	mode2
	bg2chr	24
	bg2scr	24

	palette	2f
	set_bg
	info	von,zon,hon,space
	pstrat	playercred,b,abc
	hofmode	rotate
	bg2Yscroll	232
	space	night

bg_cont_1	init_bg	mode1
	bg2chr	cont
	bg2scr	cont

	palette	2ep
	set_bg
	info	voff,zoff,hoff,space
	pstrat	playeroncont,b,ab
	hofmode	nograd
	bg2Yscroll	0
	space	night

bg_intro_1	init_bg	mode2
	bg2chr	demo
	bg2scr	demo

	palette	2b
	set_bg
	info	von,zon,hon,space
	pstrat	playercred,b,abc
	hofmode	rotate
	bg2Yscroll	24
	space	night
	

bg_gameover_1	init_bg	mode1
	bg2chr	and
	bg2scr	and

	palette	2e
	set_bg
	info	von,zon,hon,space
	pstrat	playercred,b,abc
	hofmode	nograd
	bg2Xscroll	-128
	bg2Yscroll	0
	space	night

bg_gameover2_1	init_bg	mode1
	bg2chr	mar
	bg2scr	mar
	palette	mar
	set_bg
	info	von,zon,hon,space
	pstrat	playercred,b,abc
	hofmode	nograd
	bg2Xscroll	-128
	bg2Yscroll	0
	space	night

bg_titlei_1
	init_bg	mode1
	waittrans
	bg2chr	asteroid
	bg2scr	blank

	palette	macbeth

	set_bg
	info	voff,zoff,hoff,space
	pstrat	playercred,b,abc
	hofmode	rotate
	bg2Yscroll	257
	bgm2	newtitle
	IFNE	MSU1
	msuplay	newtitle,repeat
	ENDC
	lda	#1+2+4
	sta	tm
	space	night
	
bg_title_1
	init_bg	mode1
	bg3chr	ti3,0e000h/2,4*k
	bg3scr	ti3,0d000h/2,4*k
	set_bg3
	waittrans
	bg2chr	cp
	bg2scr	cp,vsc_base2+2*k,4*k

	palette	cpus

	set_bg
	lda	#(0e000h/2)>>12
	sta	bg34nba
	lda	#(0d000h/2)>>8
	sta	bg3sc
	stz	pal0palette
	stz	pal0palette+1
	setbg3vofs	9
	bg2Yscroll	257
	lda	#1+2+4
	sta	tm
	space	night
	
bg_6_1_1	init_bg	mode2sp		;Corneria - Capitol (FX Trax)
;	bg2chr	desert
;	bg2scr	desert
;	palette	vortex
	bg2chr	fxdes
	bg2scr	fxdes
	palette	fxgreen
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
;	bg2Yscroll	232
	bgm2	sgproto
	IFNE	MSU1
	msuplay	level5_1,repeat
	ENDC
	planet	night


bg_5_1_1	init_bg	mode2sp		;Corneria - Capitol (FX Trax)
	bg2chr	fxdes
	bg2scr	fxdes
	palette	fxblue
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
;	bg2Yscroll	232
	pstrat	playerplanetflyin,b,abc
	bgm2	sgproto
	IFNE	MSU1
	msuplay	level5_1,repeat
	ENDC
	planet	night


bg_5_1e_1	init_bg	mode2
	bg2chr	sgsx
	bg2scr	sgsx
	palette	fxgreen
	set_bg
	info	hon,von,zon,space
	pstrat	playerinsidespaceflyin,b,abc
	hofmode	rotate
	bg2Yscroll	232
	space	night
	rtl

bg_7_1_1	init_bg	mode2		;Corneria - Capitol (FX Trax)
	bg2chr	yama
	bg2scr	yama
	palette	yama				;fortn blue - corn orange
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
;	bg2Yscroll	232
	bgm2	interstellar
	IFNE	MSU1
	msuplay	level7_1,repeat
	ENDC
	planet	night

bg_7_1a_1	palette	corn
	rtl
	
bg_5_2_1	init_bg	mode2		;Black City
	bg2chr	city
	bg2scr	cityp
	palette	city
	gamepal	norm
	set_bg
	set_zdepthtable	normal
	pstrat	playerplanetflyin,b,abc
	info	hon,von,zon,ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	gekkou
	IFNE	MSU1
	msuplay	level5_2,repeat
	ENDC
	planet	night
	
bg_5_2a_1
	init_bg	mode1
	bg2chr	gektun
	bg2scr	gektun
	palette	fortn
	set_bg
	waittrans

	lda	#(25*k)>>8
	sta	bg3sc
	lda	#(24*k)>>12
	sta	bg34nba

	hofmode	tunnel2
	shadowheight 0
	info	hon,voff,zoff,nodots
	pstrat	playerinLtunnel2,a,ab
	tunnel	night

bg_5_2b_1	init_bg	mode2		;Black City
	bg2chr	city
	bg2scr	city
	palette	city
	gamepal	norm
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	planet	night
	
	
bg_5_2z_1	jsl	bg52b26c
;	startbgm	$12
	pstrat	playernull,a,ab
	tunnel	red

bg52b26c	init_bg	mode1
	bg2chr	gektun
	bg2scr	gektun
	palette	fortn
	set_bg
	info	hon,voff,zoff,nodots
	shadowheight 0
	hofmode	tunnel3
	rtl



bg_5_3_1	init_bg	mode2sp		;Blue/Black Space
	bg2chr	rb
	bg2scr	rb
	palette	newspace
	gamepal	norm
	set_bg
	set_zdepthtable	mist
	pstrat	playerspaceflyin,b,abc
	info	hon,von,zon,space
	hofmode	rotate
	sectorkfade
	shadowheight	0
	bg2Yscroll	232
	bgm2	sectork
	IFNE	MSU1
	msuplay	level5_3,repeat
	ENDC
	space	night

bg_5_4_1	init_bg	mode2		;Alpha Corneria
	bg2chr	alpha
	bg2scr	alpha
	palette	fxblue
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	alpha
	IFNE	MSU1
	msuplay	level5_4,repeat
	ENDC
	planet	night	
	
bg_6_6_1	init_bg	mode2sp		;Red Venom Road Alpha
	bg2chr	macbeth
	bg2scr	macbeth
	palette	macbeth
	gamepal	magma
	set_bg
	set_zdepthtable	normal
	pstrat	playeronlava,b,abc
	info	hon,von,zon,nodots
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	kazaru
	IFNE	MSU1
	msuplay	level5_5,repeat
	ENDC
	planet	night


bg_7_5_1	init_bg	mode2		;Red Venom Road Alpha
	bg2chr	venoma
	bg2scr	venoma
	palette	fxdes
	gamepal	red
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,lava
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	kazaru2
	IFNE	MSU1
	msuplay	level5_5,repeat
	ENDC
	planet	night
	
bg_5_5_1	init_bg	mode2		;Red Venom Road Alpha
	bg2chr	venoma
	bg2scr	venoma
	palette	fxdes
	gamepal	red
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,lava
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	kazaru
	IFNE	MSU1
	msuplay	level5_5,repeat
	ENDC
	planet	night
	
bg_australia_1	init_bg	mode2sp		;Red Venom Road Alpha
	bg2chr	desert
	bg2scr	desert
	palette	vortex
	gamepal	red
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,lava
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	australia
	IFNE	MSU1
	msuplay	levelaustralia,repeat
	ENDC
	planet	night
	
bg_6_2_1	init_bg	mode2sp		;Fortuna - Pebble Beach
	bg2chr	fortn
	bg2scr	fortn
	palette	fortn
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playeronwater,b,ab
	info	hon,von,zon,nodots
	hofmode	rotate
	waterfade
;	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	pebble
	IFNE	MSU1
	msuplay	level6_2,repeat
	ENDC
	water	marine
	
bg_6_3_1	init_bg	mode2sp		;New Asteroid
	bg2chr	asteroid
	bg2scr	asteroid
	palette	newspace
	gamepal	norm
	set_bg
	set_zdepthtable	normal
	pstrat	playerspaceflyin,b,abc
	info	hon,von,zon,space
	hofmode	rotate
	bg2Yscroll	232
	bgm2	tarkus
	IFNE	MSU1
	msuplay	level6_3,repeat
	ENDC
	space	night
	
bg_6_3h_1	init_bg	mode2sp		;New Asteroid
	bg2chr	asteroid
	bg2scr	asteroid
	palette	newspace
	gamepal	norm
	set_bg
	set_zdepthtable	normal
	pstrat	playerspaceflyin,b,abc
	info	hon,von,zon,space
	hofmode	rotate
	bg2Yscroll	232
	bgm2	tarkush
	space	night
	
bg_6_32_1
	init_bg	mode2
	bg2chr	stars
	bg2scr	stars
	palette	stars
	set_bg
    pstrat    playerspaceflyin,b,abc
    info    hon,von,zon,space
    hofmode    rotate
	space	night

bg_6_33_1
	init_bg	mode2
	bg2chr	m
	bg2scr	m
;	palette space
	set_bg
    pstrat    playerspaceflyin,b,abc
    info    hon,von,zon,space
    hofmode    rotate
	space	night
	
bg_6_4_1	init_bg	mode2sp		;Corneria Surface Starfox2
	bg2chr	corn
	bg2scr	corn
	palette	corn
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playerplanetflyin,b,ab
	info	hon,von,zon,ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	shmuppy
	IFNE	MSU1
	msuplay	level6_4,repeat
	ENDC
	planet	night	

bg_6_42_1
	hofmode	osc
	rtl

bg_6_5_1	init_bg	mode2		;Purple venom Highway
	bg2chr	vhwyp
	bg2scr	vhwyp
	palette	corn
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playerspaceflyin,b,abc
	info	hon,von,zon,nodots
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	tolimas
	IFNE	MSU1
	msuplay	level6_5,repeat
	ENDC
	planet	night
	
bg_7_2_1	init_bg	mode2		;Papetoon
	bg2chr	vordes
	bg2scr	vordes
	palette	vortex
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,ground	;what I see from the ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232
	bgm2	papetoon
	IFNE	MSU1
	msuplay	level7_2,repeat
	ENDC
	planet	night

bg_7_3_1	init_bg	mode2		;Eis
	bg2chr	vorice
	bg2scr	vorice
	palette	vortex
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playeronplanet2,b,abc
	info	hon,von,zon,snow	;what I see from the ground
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	238
	bgm2	eis
	IFNE	MSU1
	msuplay	level7_3,repeat
	ENDC
	planet	night

bg_7_4_1	init_bg	mode2		;Kuruso
	bg2chr	vorclo
	bg2scr	vorclo
	palette	vortex
	gamepal	blue
	set_bg
	set_zdepthtable	normal
	pstrat	playerspaceflyin,b,abc
	info	hon,von,zon,nodots	;what I see from the ground
	hofmode	rotate
	bg2Yscroll	232
	bgm2	kuruso
	IFNE	MSU1
	msuplay	level7_4,repeat
	ENDC
	space	night


bg_6_7a_1	init_bg	mode1
	bg2chr	tst
	bg2scr	tst
	palette	tm3
	gamepal	red
	set_bg
	info	hon,voff,zoff,nodots
	pstrat	playerOutofLB1,a,ab
	hofmode	tunnel3
	shadowheight 0
	set_zdepthtable	normal
	tunnel	marine

bg_6_7b_1	init_bg	mode2
	bg2chr	venoma
	bg2scr	venoma
	palette	fxdes
	gamepal	red
	set_bg
	info	hon,von,zon,ground
	pstrat	playerOutofLB2,a,ab
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	224		232-32
	planet	night

bg_6_7c_1	init_bg	mode2
	bg2chr	lsb
	bg2scr	lsb
	palette	2c
	set_bg
	info	hon,von,zon,space
	pstrat	playerOutofLB3,a,ab
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232-60
	bgm2	endseq
	IFNE	MSU1
	msuplay	gameenddemo,repeat
	ENDC
	space	night

bg_9_7c_1	init_bg	mode2
	bg2chr	finalspace
	bg2scr	finalspace
	palette	macbeth
	set_bg
	info	hon,von,zon,space
	pstrat	playerOutofLB3,a,ab
	hofmode	rotate
	shadowheight 0
	bg2Yscroll	232-60
	bgm2	endseq
	IFNE	MSU1
	msuplay	gameenddemo,repeat
	ENDC
	space	night

;FXGREEN USED FOR SGSX

bg_comet_1	init_bg	mode2sp		;Purple venom Highway
	bg2chr	sun
	bg2scr	sun
	palette	fxpink
	gamepal	norm
	set_bg
	set_zdepthtable	normal
	pstrat	playerspaceflyin,b,abc
	info	hon,von,zon,lava
	hofmode	rotate
;	shadowheight 0
	bg2Yscroll	232
	sunfade
	bgm2	cometbgm
	IFNE	MSU1
	msuplay	levelcomet,repeat
	ENDC
	planet	night
	
;----------------------------------------------------------
initmode1
	a8i16
	waittrans
	lda	#36
	sta	trans_flag
	waittrans
	rts
	
initmode2	a8i16
	waittrans
	lda	#38
	sta	trans_flag
	waittrans
	rts

initmode2sp	a8i16
	waittrans
	lda	#40
	sta	trans_flag
	waittrans
	rts

dec_chr_l	php
	a16
	lda	#dec_base
	sta.l	m_decaddr
	a8
	lda	#mdecrunch>>16
	ldx	#mdecrunch&WM
	jsl	runmario_l
	plp
	rtl

dec_bg_l	php
	a16
	lda	#scr_offset
	sta.l	m_decoffset
	lda	#dec_base+6144
	sta.l	m_decaddr
	a8
	lda	#mdecrunch>>16
	ldx	#mdecrunch&WM
	jsl	runmario_l
	plp
	rtl

dec_bg3_l	php
	a16
	lda	#0
	sta.l	m_decoffset
	lda	#dec_base+6144
	sta.l	m_decaddr
	a8
	lda	#mdecrunch>>16
	ldx	#mdecrunch&WM
	jsl	runmario_l
	plp
	rtl

dec_l	php
	a16
	lda	#dec_base
	sta.l	m_decaddr
	a8
	lda	#mdecrunch>>16
	ldx	#mdecrunch&WM
	jsl	runmario_l
	plp
	rtl

bgbase	=	(*&~WM)+1

bg2chr	SHORTA
	LONGI

	a16
	pla
	tax
	clc
	adc	#7
	pha


	lda	#0
	sta.l	m_decoffset

	lda.l	bgbase+2,x
	and	#255
	sta.l	m_enddatabnk

	lda.l	bgbase,x
	sta.l	m_enddata

	lda.l	bgbase+3,x
	sta	vram1addr
	lda.l	bgbase+5,x
	sta	vram1len

	a8
	jsl	dec_chr_l

	rts


bg2scr	SHORTA
	LONGI

	a16
	pla
	tax
	clc
	adc	#7
	pha

	lda.l	bgbase,x
	sta.l	m_enddata
	lda.l	bgbase+2,x
	and	#255
	sta.l	m_enddatabnk
	lda.l	bgbase+3,x
	sta	vram2addr
	lda.l	bgbase+5,x
	sta	vram2len
	a8

	jsl	dec_bg_l

	rts

dopalette_l
	jsr	dopalette
	rtl

dopalette	SHORTA
	LONGI

	a16
	pla
	tax
	clc
	adc	#5
	pha

	lda.l	bgbase,x
	sta	vram3addr
	a8
	lda.l	bgbase+2,x
	sta	vram3addr+2
	a16

	lda.l	bgbase+3,x
	sta	vram3len

	lda	vram3addr
	clc
	adc	#7*32-1
	tay

	phy

	a8
	lda	randompalette
	beq	.normalstuff

	phb
	lda	vram3addr+2
	pha
	plb	; switch bank

	
	ldx	#7*32-1
.notfinished2
;	lda.w	0,y
	jsl	random_l
	sta.l	pal0palette,x
	dey
	dex
	bpl	.notfinished2
	jmp	.donestuff



.normalstuff
	phb
	lda	vram3addr+2
	pha
	plb	; switch bank

	
	ldx	#7*32-1
.notfinished
	lda.w	0,y
	sta.l	pal0palette,x
	dey
	dex
	bpl	.notfinished


.donestuff
	lda	nobgmode
	beq	.norm
	jsl	makeBG2black_l
.norm	
	
	plb
	ply
	rts

;----------------------------------------------------------


bglists	dw	0
	db	0

	defbg	1_1i
	defbg	5_1i
	defbg	5_3i
	defbg	1_1a,2_1a,3_1a
	defbg	1_1b,2_1b
	defbg	2_1k
	defbg	3_1k
	defbg	3_1c
	defbg	1_1c
	defbg	1_2
	defbg	1_23
	defbg	1_3i
	defbg	1_3i2p
	defbg	1_3a
	defbg	1_3b
	defbg	1_3c
	defbg	1_3d
	defbg	1_3da
	defbg	1_3daa
	defbg	5_2da
	defbg	1_3e
	defbg	1_4
	defbg	1_14
	defbg	1_5,2_5
	defbg	1_6a
	defbg	1_6b,3_7b
	defbg	1_6c,3_7c
	defbg	1_7a
	defbg	1_7b
	defbg	1_7c
	defbg	cred
	defbg	space_credits
	defbg	2_2
	defbg	2_3a
	defbg	2_3b
	defbg	2_3z
	defbg	2_3zz
	defbg	2_3c
	defbg	2_4
	defbg	2_6a
	defbg	2_6b
	defbg	2_6c

	defbg	3_2
	defbg	3_3a
	defbg	3_4a
	defbg	3_4b
	defbg	3_4c
	defbg	3_4d
	defbg	3_5
	defbg	3_6
	defbg	3_7a

	defbg	5_1
	defbg	5_1e
	defbg	5_2
	defbg	5_2a
	defbg	5_2b
	defbg	5_2z
	defbg	5_3
	defbg	5_4
	defbg	5_5

	defbg	6_1
	defbg	6_2
	defbg	6_3
	defbg	6_3h
	defbg	6_32
	defbg	6_33
	defbg	6_4
	defbg	6_42
	defbg	6_5
	defbg	6_6
	defbg	6_6c
	defbg	6_6d
	defbg	6_6e
	defbg	6_7a
	defbg	6_7b
	defbg	6_7c

	defbg	9_7c

	defbg	7_1
	defbg	7_1a
	defbg	7_2
	defbg	7_3
	defbg	7_4
	defbg	7_5
	defbg	australia

	defbg	comet

	
	defbg	hole
	defbg	intro
	defbg	title
	defbg	titlei
	defbg	cont
	defbg	gameover
	defbg	gameover2
	defbg	special
	defbg	training

	dw	0,0	; terminate list

do_bgm_generic2_l
	jml	[textpt]
