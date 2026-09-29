; start in tunnel
;	initlevel	1_7a
	mapplayermode	toCslow	
	mapjsr	Ltunnelexit
	mapplayercantdie
	mapwait	200
	setbg	6_6
;	maptexitwait	-200
	mapwait	medpspeed*3
	initbg
	mapplayercantdie
	mapobj	0000,0,space_viewCY+64,2000,door_l,lseqdoor1_Istrat
	setalvar	rotx,0
	mapobj	0000,0000,space_viewCy,(100<<4)+2000,last_b_2,nocoll_Istrat
	setalvar	rotx,deg90
	mapobj	0000,0,space_viewCY,((148<<4)-30)+2000,last_b_3,nocollanim0_Istrat
	setalvar	rotx,-deg90
	start_65816
	lda	bgmspeed
	beq	.nochange111
	cmp	#1
	beq	.slow111
	cmp	#2
	beq	.fast111
.slow111
	startbgm	$f4
	bra	.nochange111
.fast111
	startbgm	$f5
.nochange111
	end_65816

	mapwait		1800+500

	mapplayermode	outofLB2b
	mapplayercantdie
	mapwait		500

	setbg	1_7b
	initbg
	mapplayercantdie
;	start_65816
;	lda	whichroute
;	cmp	#2
;	bmi	.doneandross2
;	end_65816
	start_65816
	lda	bgmspeed
	beq	.nochange12
	cmp	#1
	beq	.slow12
	cmp	#2
	beq	.fast12
.slow12
	startbgm	$f4
	bra	.nochange12
.fast12
	startbgm	$f5
.nochange12
	end_65816
;	andross2
;	start_65816
;.doneandross2
;	jsl		clearmap_l
;	end_65816	
;	mapplayercantdie

; outside view of player's ship escaping.

	mapobj	0000,0000,0000,1000,last_b_0,gnd_Istrat
	setvarobj	mapvar1
	setalvar	roty,deg180
	mapobj	0000,0000,-48<<4,1000,last_b_3,lseqdoor2_Istrat

;-----------------------
	mapobj	0000,0000,0,1000,nullshape,pshipoutoflb1_Istrat
	mapobj	0000,-50,-1500,1100,nullshape,viewoutoflb1_Istrat
	startbgm	$7
	mapplayercantdie
	mapwait	9500-(medpspeed*6)
	mapmsg	1



friendwait	=	medpspeed*30

fdeadmes_cock	=	21
fdeadmes_bunny	=	41
fdeadmes_frog	=	60


	mapjmpfrienddead	frog,.nf1
	mapwait	friendwait
	mapmsg	46
	mapgoto	.df
.nf1	
;	setvar.b	frog,1
;	mapmsg	60
;	setvar.b	frog,0
.df
	mapjmpfrienddead	bunny,.nb1
	mapwait	friendwait
	mapmsg	26
	mapgoto	.dr
.nb1	
;	setvar.b	bunny,1
;	mapmsg	41
;	setvar.b	bunny,0
.dr
	mapjmpfrienddead	cock,.nc1
	mapwait	friendwait
	mapmsg	6
	mapgoto	.dc
.nc1
;	setvar.b	cock,1
;	mapmsg	21
;	setvar.b	cock,0
.dc


.endwait
	mapif	chkstratdone1,.endcont
	mapwait	1
   	mapgoto	.endwait

.endcont


	setfadedown
	mapwaitfade

	start_65816
	jsl		clearmap_l
	end_65816

	meters_off		trans

;	start_65816
;	a8
;	stz	frog
;	stz	cock
;	stz	bunny
;	end_65816

; space end demo.

	setbg	1_7c
	initbg
	mapplayercantdie
;--------------
	mapobj	0000,0000,space_viewcy,1000,nullshape,pshipoutofLB3_Istrat	
.resume4

	setalvar	sbyte2,45	; 50
	mapobj	0000,0000,space_viewcy,5000,nullshape,viewoutofLB3_Istrat

	mapjmpfrienddead	cock,.nc,nowait
	mapobj	0000,0000,space_viewcy-100,0000,falco2,shipoutofLB3_Istrat
	setalvar.w	sword1,0
	setalvar.w	sword2,-100
	setalvar.w	ptr,600
	setalvar	sbyte2,10
.nc
	mapjmpfrienddead	frog,.nf,nowait
	mapobj	0000,70,space_viewcy+70,200,slippy2,shipoutofLB3_Istrat
	setalvar	rotz,deg45
	setalvar.w	sword1,-100
	setalvar.w	sword2,50
	setalvar.w	ptr,400
	setalvar	sbyte2,20
.nf
	mapjmpfrienddead	bunny,.nb,nowait
	mapobj	0000,-70,space_viewcy+70,400,peppy2,shipoutofLB3_Istrat
	setalvar	rotz,-deg45
	setalvar.w	sword1,100
	setalvar.w	sword2,75
	setalvar.w	ptr,200
	setalvar	sbyte2,30
.nb
	mapwait	1000
	start_65816
	lda	bgmspeed
	beq	.nochange1
	cmp	#1
	beq	.slow1
	cmp	#2
	beq	.fast1
.slow1
	startbgm	$f4
	bra	.nochange1
.fast1
	startbgm	$f5
.nochange1
	inc	gamebeaten
	end_65816
;	start_65816
;	a8
;	lda	bgmspeed
;	beq	.nochange13
;	cmp	#1
;	beq	.slow13
;	cmp	#2
;	beq	.fast13
;.slow13
;	startbgm	$f4
;	bra	.nochange13
;.fast13
;	startbgm	$f5
;.nochange13
;	a16
;	end_65816
	setfadeup
	mapwaitfade


.endwait1	mapif	chkstratdone1,.endcont1
	mapwait	1
   	mapgoto	.endwait1
.endcont1
	
;	mapwait	2500

	setvar.n	levelfinished,6

.lp	mapwait	30000
	mapgoto	.lp


