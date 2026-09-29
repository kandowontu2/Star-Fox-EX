level7_5
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	7_5,mscramwipe_circle
	start_65816
	a8
	lda	colortrip
	beq	.nocolortrip
	end_65816
	setvar.n	palfrom,64
	setvar.n	palto,64
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip
	end_65816

	setrestart
	
	mapwait	1000


;	mapobj	1500,0100,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-400,0000,5000,k_base_2,HARD90YR2_ISTRAT
;	mapobj	0000,-400,0000,5000,brokenbu2,HARD180YR_ISTRAT

	teamtext2	43,44,45

	mapobj	0000,0000,0000,4000,mantis,hardplasma180_Istrat	
	
	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,k_base_2,HARD90YR2_ISTRAT
	mapobj	0000,200,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,400,0000,5000,k_base_0,HARD180YR_ISTRAT

	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,-400,-200,-100,guard_0,patret,8,10

	mapwait	1000
	

	mapobj	0500,000,-300,3000,w_l,winglazerman_Istrat				;I'm chargin mah lazers!



	mapobj	0000,-300,0000,4000,BIGFROG,hardplasma180tough_Istrat
	
	mapobj	0000,300,0000,6000,BIGFROG,hardplasma180tough_Istrat

	mapwait	2000

	mapobj	1500,0300,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-400,0000,5000,k_base_2,HARD90YR2_ISTRAT
;	mapobj	1500,0400,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,k_base_0,HARD180YR_ISTRAT

	special		0000,-300,-1300,2300,longface,zacos_istrat
	cspecial	0000,0300,-1300,2300,longface,zacos_istrat
	special		0000,-600,-1300,2300,longface,zacos_istrat
	cspecial	0000,0600,-1300,2300,longface,zacos_istrat	
	cspecial	0000,0000,-1300,2300,longface,zacos_istrat	

;	mapobj	1500,0100,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,k_base_2,HARD90YR2_ISTRAT
;	mapobj	0000,-0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-300,0000,5000,brokenbu2,HARD180YR_ISTRAT
	pathcspecial	0000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10

	mapwait	1500
	
	pathcspecial	1000,000,-230,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,200,-200,4000,EISEI_0,itachi_b,2,4

	cspecial	1500,0000,-50,3200,bom_wing,bomwing_Istrat,2,8
;	mapobj	1500,0200,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,400,0000,5000,brokenbu2,HARD180YR_ISTRAT

	mapwait	3000

	mapobj	2000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT
	
;	mapobj	1500,0400,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	1500,-0300,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT

	mapobj	0300,-0300,-150,2000,androsscubee,zaco1L_istrat,10,10
	mapobj	0300,400,-170,2000,androsscubee,zaco1R_istrat,10,10
	mapobj	0300,100,-300,2000,androsscubee,zaco1R_istrat,10,10
	mapobj	0300,-0400,-150,2000,androsscubee,zaco1L_istrat,10,10
	mapobj	0300,200,-170,2000,androsscubee,zaco1R_istrat,10,10
	mapobj	0300,000,-300,2000,androsscubee,zaco1R_istrat,10,10

	mapwait	1500
	
;	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
	mapobj	0000,300,0000,5000,k_base_2,HARD90YR2_ISTRAT

	mapwait	1500
	
	cspecial	0000,0200,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,-100,-1500,2300,cobramk3,zacos_istrat
	cspecial	0000,0500,-1500,2300,cobramk3,zacos_istrat	

	mapwait	1500

	cspecial	000,0300,-0250,6000,cobramk3,shou0a_istrat
	special		000,-0300,-0250,6000,cobramk3,shou0a_istrat	

	cspecial	1500,0000,-50,3200,bom_wing,bomwing_Istrat,2,8
	
;	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-300,0000,5000,k_base_2,HARD90YR2_ISTRAT

	mapobj	0500,300,-200,1000,spaceplane,zaco1R_istrat,10,10
	mapobj	0500,500,-100,1000,spaceplane,zaco1L_istrat,10,10
	
;	mapobj	1500,0200,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,400,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	0000,-300,0000,5000,brokenbu2,HARD180YR_ISTRAT
	mapwait	1500
	
	special		0000,-300,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,0300,-1300,2300,cobramk3,zacos_istrat
	special		0000,-600,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,0600,-1300,2300,cobramk3,zacos_istrat	
	cspecial	0000,0000,-1300,2300,cobramk3,zacos_istrat	

	mapwait	2000

	
;	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-200,0000,5000,brokenbu2,HARD180YR_ISTRAT
	mapobj	0000,-400,0000,5000,k_base_2,HARD90YR2_ISTRAT

	cspecial	0000,0200,-1500,2300,cobramk3,zacos_istrat
	cspecial	0000,-100,-1500,2300,cobramk3,zacos_istrat
	cspecial	0000,0500,-1500,2300,cobramk3,zacos_istrat	


	mapwait	2000
	
	pathcspecial	1000,000,-230,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,200,-200,4000,EISEI_0,itachi_b,2,4

	mapwait	2000
	
	pathcspecial	1000,000,-230,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,200,-200,4000,EISEI_0,itachi_b,2,4

	mapwait	2500


	cspecial	0000,100,-1500,2300,viper01,zacos_istrat
	cspecial	0000,-100,-1500,2300,viper01,zacos_istrat
	cspecial	0000,0300,-1500,2300,viper01,zacos_istrat	
	cspecial	0000,-0300,-1500,2300,viper01,zacos_istrat	
	cspecial	0000,0500,-1500,2300,viper01,zacos_istrat	
	cspecial	0000,-0500,-1500,2300,viper01,zacos_istrat	

;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-300,0000,5000,brokenbu2,HARD180YR_ISTRAT

	pathcspecial	0000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,0100,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-100,-200,-100,ninja_enemy,patret,8,10	


;	mapobj	1500,0400,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	1500,-0300,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,k_base_0,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,brokenbu2,HARD180YR_ISTRAT

	teamtext2	46,47,48


	mapobj	0000,0000,0000,4000,mantis,hardplasma180_Istrat	
	mapobj	0500,000,-300,3000,w_l,winglazerman_Istrat				;I'm chargin mah lazers!

;	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
	mapobj	1500,0200,0000,5000,k_base_2,HARD90YR2_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT


	mapwait	2000
	
	mapobj	0000,0000,-200,4000,gate_0,gate_ISTRAT
	pathobj	1000,3000,3000,3000,nullshape,e_gate,10,10
;-----------------------------	
	mapwait	3000	
	mapwait	3000
	mapwait	3000
	
	mapmsg	192
	mapwait	4000
	fadeoutbgm
	mapwait	2000

	
	mapmsg	177
	mapwait	4000
	
;	mapmsg	178
;	mapwait	2000
	
;	mapmsg	179
;	mapwait	2000
	
;	mapmsg	180
;	mapwait	2000

	pathobj	1200,0,-4000,3500,nullshape,dstarwolf,10,10
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss5_5a,repeat
	ENDC
	mapobj	1000,0000,-0200,3200,wolfenboss,starwolf_Istrat
	mapwaitboss
	markboss	boss75
	mapwait	500
	IFNE	MSU1
	mapmsufade
	ENDC
	mapwait	3000

	start_65816
	stz	superspeeddelay
	lda	#0
	sta	hudrot+1
;	bgm2	enteringdangerousterritory
;	bgm	fitunlquick
	end_65816
	mapwait	medpspeed*44
;	setbgm	$12

	mapwait	2000
	
	mapobj	0000,0000,-200,4000,gate_0,gate_ISTRAT
	pathobj	1000,3000,2000,3000,nullshape,e_gate,10,10

	mapwait	2000

	mapobj	0000,0000,-200,4000,gate_0,gate_ISTRAT
	pathobj	1000,3000,2000,3000,nullshape,e_gate,10,10

	mapwait	4000


	
	mapobj	0000,0000,0000,6000,last_b_0,gnd_Istrat
	setvarobj	mapvar1
	mapobj	0000,0000,0000,6000,last_b_2,lastb2_Istrat
	setalvar	roty,deg180
	mapobj	0000,0000,-48<<4,6000,last_b_3,lastb3_Istrat
	mapobj	0000,0000,(100<<4)-30,6000-64,door_l,lastb4_Istrat

	mapplayermode	intoLB1
	setbgm	18
	IFNE	MSU1
	mapmsuplay	fitunl,repeat
	ENDC
	start_65816

	lda	bgmspeed
	beq	.nochange3
	cmp	#1
	beq	.slow3
	cmp	#2
	beq	.fast3
.slow3
	startbgm	$f4
	bra	.nochange3
.fast3
	startbgm	$f5
.nochange3
	end_65816
.wait
	mapif	chkstratdone1,.cont
	mapwait	1
   	mapgoto	.wait
.cont


	setbg	1_6b
	initbg


final_tunne
	mapwait	2000
	setvar.w	currentbg,bg_2_6c-bglists
	setrestart	finalmap_restarr7
finalmap_con7
	start_65816
	stz	stopcounting
	end_65816
	mapplayeroutdist
	mapwait	1000
	start_65816
	lda	bgmspeed
	beq	.nochange5
	cmp	#1
	beq	.slow5
	cmp	#2
	beq	.fast5
.slow5
	startbgm	$f4
	bra	.nochange5
.fast5
	startbgm	$f5
.nochange5
	end_65816

	mapwait	3000
;----------------
	mapmsg	203
.finalt
	mapobj	0000,0120,-120,4000,tunnel_0,topright1_istrat
	mapobj	0000,-120,-120,4000,tunnel_0,topleft1_istrat
	mapobj	0000,0120,0,4000,tunnel_0,botright1_istrat
	mapobj	0600,-120,0,4000,tunnel_0,botleft1_istrat
	maploop .finalt,4

	mapwait	5000
	mapmsg	204


	mapobj		0000,000,-60,4000,item_5,item5_istrat
	setalvar	sbyte1,1
;----------------------------------------------------
;all_levelt
	mapwait	5000
	mapmsg	205
	mapobj		0000,-0060,-60,6000,item_7,item7_istrat
	setalvar	sbyte1,1


;----------------



	mapwait	5000
	mapmsg	206
	mapjsr	Ltunnelexit

;	mapwait	200
	mapwait	100
	setbg	6_6e
	initbg
	maptexitwait	-200
	mapplayermode	InSpaceNoVC
	start_65816
	lda.l	m_playertwoactivated
	beq	.nop2
	jsl	doascene
	a16
	lda	#400
	sta	viewdist
 	sta	outviewdist
 	sta	outdist
	a8
.nop2
	end_65816
	setbgm	19
	IFNE	MSU1
	mapmsuplay	boss7_5,repeat
	ENDC
;	setbgm	$13

	pathobj	1200,0,-1300,3500,nullshape,dmariobrothers,10,10
	mapobj	1000,-0200,-0200,3200,luigih,luigi_istrat
	mapwaitboss	nosound

	markboss	bossfinal5


	mapwait	5000
	mapif	chkeasteregg2,.finn
	setvar.n	levelfinished,6
.lp	mapwait	30000
	mapgoto	.lp	
	
.finn
	mapgoto	finalfinal
	


.wait1
	mapwait	1000
	mapgoto	.wait1

finalfinal
; start in tunnel
;	initlevel	1_7a
	mapplayermode	toCslow	
	mapjsr	Ltunnelexit
	mapplayercantdie
	mapwait	200
	setbg	6_7a
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

	setbg	6_7b
	initbg
	mapplayercantdie
	setbgm	7
	IFNE	MSU1
	mapmsuplay	fanfarefinalmap2,norepeat
	ENDC
	start_65816
	lda	whichroute
	cmp	#2
	bmi	.doneandross2
	end_65816
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
	andross2
	start_65816
.doneandross2
	jsl		clearmap_l
	end_65816	
	mapplayercantdie

; outside view of player's ship escaping.

	mapobj	0000,0000,0000,1000,last_b_0,gnd_Istrat
	setvarobj	mapvar1
	setalvar	roty,deg180
	mapobj	0000,0000,-48<<4,1000,last_b_3,lseqdoor2_Istrat

;-----------------------
	mapobj	0000,0000,0,1000,nullshape,pshipoutoflb1_Istrat
	mapobj	0000,-50,-1500,1100,nullshape,viewoutoflb1_Istrat
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
;	mapif	chkstratdone1,.endcont
	mapwait	3000
;  	mapgoto	.endwait

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

	setbg	9_7c
	initbg
	start_65816
	a8
	lda	colortrip
	beq	.nocolortrip2
	end_65816
	setvar.n	palfrom,0
	setvar.n	palto,0
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip2
	end_65816
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


finalmap_restarr7
;	mapwait	1000
	IFNE	MSU1
	mapmsuplay	fitunl,repeat
	ENDC
	start_65816
	bgm2	fitunl2
	stz	wolfdead
	end_65816
	mapwait	1000
	start_65816
	lda	bgmspeed
	beq	.nochange55
	cmp	#1
	beq	.slow55
	cmp	#2
	beq	.fast55
.slow55
	startbgm	$f4
	bra	.nochange55
.fast55
	startbgm	$f5
.nochange55
	end_65816
	mapgoto	finalmap_con7



