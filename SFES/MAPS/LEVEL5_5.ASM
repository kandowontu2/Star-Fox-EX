level5_5
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	5_5,mscramwipe_circle

	start_65816
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
	
	mapwait	1200
;---------------
;	mapobj	0000,-400,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	1500,0400,0000,5000,brokenbu,HARD180YR_ISTRAT

	mapobj	0000,-400,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	1500,400,0000,5000,brokenbu,HARD180YR_ISTRAT

	teamtext	237,238,239

	mapobj	0000,0000,0000,4000,arch_0,hard_ISTRAT
	skillfly_init
	skillfly_set 0000,-60,4000,100
	mapobj	0000,-400,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	1500,0400,0000,5000,brokenbu,HARD180YR_ISTRAT


	mapobj	0000,-200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-400,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0000,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,100,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,300,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-100,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0100,-1000,2400,smolfireballz,fallingmeteor_istrat


	mapobj	0000,0000,0000,4000,arch_0,hard_ISTRAT
	skillfly_set 0200,-60,4000,100
;	mapobj	0000,-400,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	1500,0400,0000,5000,brokenbu,HARD180YR_ISTRAT

	skillfly_set 0000,-60,4000,100
	mapobj	0500,0000,0000,4000,arch_0,hard_ISTRAT

	mapobj	0000,-300,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	1500,0300,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	2000,0000,0000,4500,big_gate,hard_ISTRAT
	skillfly_bonus 0000,0000,-50,2500,item_7,item7_istrat
	setalvar	sbyte1,1
;	mapobj	0000,-400,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	3000,0400,0000,5000,brokenbu,HARD180YR_ISTRAT

	cspecial	0000,100,-1500,2300,viper01,zacos_istrat
	cspecial	0000,-100,-1500,2300,viper01,zacos_istrat
	cspecial	0000,0300,-1500,2300,viper01,zacos_istrat	
	cspecial	0000,-0300,-1500,2300,viper01,zacos_istrat	
	cspecial	0000,0500,-1500,2300,viper01,zacos_istrat	
	cspecial	0000,-0500,-1500,2300,viper01,zacos_istrat	


;	mapobj	1500,0100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-200,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-400,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	1500,0100,0000,5000,brokenbu,HARD180YR_ISTRAT

	pathcspecial	0000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,0100,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-100,-200,-100,ninja_enemy,patret,8,10	


	cspecial	1500,0000,-50,3200,bom_wing,bomwing_Istrat,2,8
	
;	mapobj	0000,-100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,200,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,400,0000,5000,brokenbu,HARD180YR_ISTRAT


	mapobj	0000,-100,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0200,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0000,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,300,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,000,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-100,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0100,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0000,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,300,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	1500,0100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,-300,0000,5000,brokenbu,HARD180YR_ISTRAT

	mapwait	2000
	

	special		0000,-300,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,0300,-1300,2300,cobramk3,zacos_istrat
	special		0000,-600,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,0600,-1300,2300,cobramk3,zacos_istrat	
	cspecial	0000,0000,-1300,2300,cobramk3,zacos_istrat	
	
	mapobj	1500,0400,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,-100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	1500,-0300,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	1500,0100,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,brokenbu,HARD180YR_ISTRAT

	mapobj	0500,300,-200,1000,spaceplane,zaco1R_istrat,10,10
	mapobj	0500,500,-100,1000,spaceplane,zaco1L_istrat,10,10

	mapwait	2000
	
	cspecial	1000,0000,-250,3000,w_l,winglazerman_istrat
	
;	mapobj	1500,0100,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,300,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-0100,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,-300,0000,5000,brokenbu,HARD180YR_ISTRAT

	teamtext	240,241,242

	mapobj	0500,300,-200,1000,spaceplane,zaco1R_istrat,10,10
	mapobj	0500,500,-100,1000,spaceplane,zaco1L_istrat,10,10
	
;	mapobj	1500,0200,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,400,0000,5000,brokenbu,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu,HARD180YR_ISTRAT
	mapobj	0000,-300,0000,5000,brokenbu,HARD180YR_ISTRAT


	mapwait	2000
	
	mapobj	0000,0000,-200,4000,gate_0,gate_ISTRAT
	pathobj	1000,3000,3000,3000,nullshape,e_gate,10,10
;------------------------

	mapwait	1000
	
;flying_pillars
	mapobj	0000,0300,0000,3000,rpillar3,flypillars_ISTRAT
	mapobj	0400,-300,0000,3000,rpillar3,flypillars_ISTRAT
    mapobj	0000,0200,0000,3000,rpillar3,flypillars_ISTRAT
    mapobj	0400,-200,0000,3000,rpillar3,flypillars_ISTRAT
	
	mapmother	6000,0000,0,4000,mother1,mother1_istrat,map_flypillars
	maprem		mother1
	mapwait	2000

	mapwait	1500

	cspecial	1500,0000,-50,3200,bom_wing,bomwing_Istrat,2,8
	
	cspecial	0000,0200,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,-100,-1500,2300,cobramk3,zacos_istrat
	cspecial	0000,0500,-1500,2300,cobramk3,zacos_istrat	

	mapwait	1500

	cspecial	000,0300,-0250,6000,cobramk3,shou0a_istrat
	special		000,-0300,-0250,6000,cobramk3,shou0a_istrat	


	mapobj	0000,-300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0100,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,000,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,100,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0200,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,100,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-0300,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-100,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0000,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0200,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,300,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,0000,-1000,2400,smolfireballz,fallingmeteor_istrat

	mapobj	0500,-200,-1000,2000,smolfireballz,fallingmeteor_istrat

	mapobj	0500,00,-1000,2400,smolfireballz,fallingmeteor_istrat


	
	mapobj	1500,0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,300,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-0100,0000,5000,brokenbu2,HARD180YR_ISTRAT
	mapobj	0000,-300,0000,5000,brokenbu2,HARD180YR_ISTRAT

	mapobj	0500,300,-200,1000,spaceplane,zaco1R_istrat,10,10
	mapobj	0500,500,-100,1000,spaceplane,zaco1L_istrat,10,10


	cspecial	1500,0000,-50,3200,bom_wing,bomwing_Istrat,2,8	
;	mapobj	1500,0200,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,400,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-100,0000,5000,brokenbu2,HARD180YR_ISTRAT
;	mapobj	0000,-300,0000,5000,brokenbu2,HARD180YR_ISTRAT
	mapwait	1500
	
	special		0000,-300,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,0300,-1300,2300,cobramk3,zacos_istrat
	special		0000,-600,-1300,2300,cobramk3,zacos_istrat
	cspecial	0000,0600,-1300,2300,cobramk3,zacos_istrat	
	cspecial	0000,0000,-1300,2300,cobramk3,zacos_istrat	
	
	


;----------------
	mapwait	2000
	
	mapobj	0000,0000,-200,4000,gate_0,gate_ISTRAT
	pathobj	1000,3000,3000,3000,nullshape,e_gate,10,10


	mapwait	3000
	mapwait	3000
	mapwait	3000

	mapmsg	192
	mapwait	4000
	fadeoutbgm
	mapwait	2000

	
	mapmsg	177
	mapwait	4000
	
	pathobj	1200,0,-4000,3500,nullshape,dstarwolf,10,10
	setbgm	6
	IFNE	MSU1
	mapmsuplay	boss5_5a,repeat
	ENDC
	mapobj	1000,0000,-0200,3200,wolfboss,starwolf_Istrat
	mapwaitboss
	markboss	boss55
	mapwait	500
	IFNE	MSU1
	mapmsufade
	ENDC
	mapwait	3000

	start_65816
	stz	superspeeddelay
	lda	#0
	sta	hudrot+1
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


final_tunnee
	mapwait	2000
	setvar.w	currentbg,bg_2_6c-bglists
	setrestart	finalmap_restarr
finalmap_conn
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

	mapwait	6000
;----------------
	mapmsg	197
.finalt
	mapobj	0000,0120,-120,4000,tunnel_0,topright1_istrat
	mapobj	0000,-120,-120,4000,tunnel_0,topleft1_istrat
	mapobj	0000,0120,0,4000,tunnel_0,botright1_istrat
	mapobj	0600,-120,0,4000,tunnel_0,botleft1_istrat
	maploop .finalt,4

	mapobj	0000,-090,-060,4000,WALL_2,HARD180yr_ISTRAT
	mapobj	0500,0090,-060,4000,WALL_2,HARD180yr_ISTRAT
;	mapobj		0000,0000,-60,4000,gate_0,gate3_istrat
;	setalvar	sbyte1,1

	mapwait	2500
	mapobj		0000,0000,-60,4000,gate_0,gate3_istrat	; put this here to balance this area out a bit more - moni

	mapwait	6000
;	mapdpilarL	0,-20,4000
;	mapdpilarR	800,-20,4000

;	mapdpilarL	0,-100,4000
;	mapdpilarR	800,-100,4000


	mapobj		0000,000,-60,4000,item_5,item5_istrat
	setalvar	sbyte1,1
;	mapdpilarL	0,-100,4000
;	mapdpilarR	800,-100,4000
	mapmsg	198
;	mapdpilarL	0,-20,4000
;	mapdpilarR	800,-20,4000
;----------------------------------------------------
;level3
;all_levelt
	mapobj		0000,-0060,-60,6000,item_7,item7_istrat
	setalvar	sbyte1,1


;----------------



	mapwait	6000
	mapmsg	199
	mapjsr	Ltunnelexit

;	mapwait	200
	mapwait	100
	setbg	6_6c
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
	mapmsuplay	boss5_5b,repeat
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
	mapgoto	finalfinall
	


.wait1
	mapwait	1000
	mapgoto	.wait1

finalmap_restarr
;	mapwait	1000
	IFNE	MSU1
	mapmsuplay	fitunl,repeat
	ENDC
	start_65816
	bgm2	fitunl
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
	mapgoto	finalmap_conn

finalfinall
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

spaceendtest
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
