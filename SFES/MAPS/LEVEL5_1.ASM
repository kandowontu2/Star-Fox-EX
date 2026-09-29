level5_1
	mapif	scrambleskip,.noskip
	mapgoto	.skipped
.noskip
	meters_off
	initlevel	5_1i,nofadenostage,mstarwipe_circle
	mapwait	100
	setvar.b	scramble,50

	mapjsr	map5_1a

	setfadedown
	waitfadefin

.skipped
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.nop2
	lda	#40
	sta	playertwoready
.nop2
	end_65816
	mapcode_jsl	initblack_l
	mapwait	1

	meters_on	trans

	setvar	keeppstrat,1
	setbg	5_1
	initbg
	wipein	mscramwipe_circle
	mapwait	medpspeed*2
	setfadeup	quick

	start_65816
	a8
	lda	colortrip
	beq	.nocolortrip
	end_65816
	setvar.n	palfrom,0
	setvar.n	palto,0
	setvar.n	pallen,32
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip
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


	mapplayermode   ExitBase
;	mapobj		0000,0008,0000,0000,mybase_1,nocoll_Istrat	
;	mapobj		0000,0000,0000,0000,mybase_0,nocoll_Istrat	
	mapobj		0000,-27<<mybase_scale,-39<<mybase_scale,-200,slippy1,friendexitbase_Istrat
	setalvar	sbyte1,17
	mapobj		0000,-27<<mybase_scale,-39<<mybase_scale,-200,falco1,friendexitbase_Istrat
	setalvar	sbyte1,17+(1000/pexitbasespeed)
	SETVAR.N	fadepaltofxgreen,34
;	pathobj	0000,3000,3000,3000,nullshape,matemsg,10,10

	mapobj	0000,-600,0000,2000,BU_1,HARD180YR_ISTRAT
	mapobj	0000,0600,0000,2000,BU_1,HARD180YR_ISTRAT

	mapobj	0000,-700,0000,3500,BU_1,HARD180YR_ISTRAT
	mapobj	0000,0700,0000,3500,BU_1,HARD180YR_ISTRAT
	mapobj	0000,-900,0000,5000,bu_1,hard180yr_ISTRAT
	mapobj	2000,0900,0000,5000,bu_1,hard180yr_ISTRAT

	mapobj	0000,-1100,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	0000,01100,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	0000,-1200,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	2000,01200,0000,4800,bu_1,hard180yr_ISTRAT

	roottree	1500,-200,0000,3000,deg11,10
	mapobj	0200,0100,0000,1500,stalk,tree1_istrat
;	mapobj	0200,-100,0000,2200,stalk,tree2_istrat

	mapobj	0000,-1200,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	0000,01200,0000,4800,bu_1,hard180yr_ISTRAT

	mapwait	500

	setrestart
	
	mapwait	1000
	
	mapobj	0000,0280,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0280,0,4000,lock_man,HARDplasma180_ISTRAT

	teamtext	213,214,215
	mapwait	1500
	
	mapobj	0000,-1100,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	0000,01100,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	0000,-1200,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	2000,01200,0000,4800,bu_1,hard180yr_ISTRAT

	mapobj	0000,-1200,0000,4800,bu_1,hard180yr_ISTRAT
	mapobj	0000,01200,0000,4800,bu_1,hard180yr_ISTRAT	
	mapobj	0900,100,0000,4000,flower_1,hard180yr_Istrat
	mapobj	0950,0050,0000,4000,stalk,tree1_istrat

	mapobj	0000,0400,0000,4000,mantis,hardplasma180_Istrat		
	mapobj	0000,-400,0000,4000,mantis,hardplasma180_Istrat	

	mapobj	1000,-100,0000,4000,flower_1,hard180yr_Istrat
;	mapobj	1100,-200,0000,4000,flower_1,hard180yr_Istrat
	cspecial	1000,0000,-300,3000,w_l,winglazerman_istrat	
	mapobj	1150,0000,0000,4000,stalk,tree1_istrat
	mapobj	1200,200,0000,4000,flower_1,hard180yr_Istrat
;	mapobj	1300,100,0000,4000,flower_1,hard180yr_Istrat
;	mapobj	1350,-100,0000,4000,stalk,tree1_istrat
	mapobj	1400,-100,0000,4000,flower_1,hard180yr_Istrat


;	start_65816
;	gamepal	norm
;	end_65816
	mapif		assaultcheck,.block
	pathobj	0000,-750,-480,0000,friendship_4,chase6_1,10,10

	pathobj	0800,-720,-480,0000,guard_0,chase6_2,10,10
	mapwait	2500
	mapwait	2500
;------------------------------------------
.block

	mapwait	2500
	pathspecial	0000,0000,0000,3000,s_tank_0,e_tank,4,2	
	cspecial	0200,0600,0000,1000,walker_0,walking_istrat
	mapobj	0500,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
;	mapobj	0500,0100,0000,1500,stalk,tree1_istrat
	mapobj	0500,-100,0000,2200,stalk,tree2_istrat
	mapwait	500
	
	mapobj	0000,0000,0000,4000,mantis,hardplasma180_Istrat	
	
	mapwait	1500

	mapobj	0000,-500,0000,4000,crab,hardplasma180_Istrat	
	mapobj	0000,500,0000,4000,crab,hardplasma180_Istrat
	mapobj	0000,0000,0000,4000,minispider,hardplasma180_Istrat		
	
	mapwait	1500


	
	mapobj	0500,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
	mapobj	0000,0900,0000,4000,TOWER_2,TOWER0_ISTRAT
	mapobj	1500,-900,0000,4000,TOWER_2,TOWER0_ISTRAT
	cspecial	1500,0000,-50,3200,bom_wing,bomwing_Istrat,2,8
	mapobj	0500,0100,0000,1500,stalk,tree1_istrat
;	mapobj	0500,-100,0000,2200,stalk,tree2_istrat

	mapwait		2000

	mapobj	0200,-600,0000,3400,RO_4,rockhard_ISTRAT    ; L      R  ;
;	mapobj	0200,0600,0000,3400,RO_5,rockhard_istrat    ;           ;

;	mapobj	0400,-500,0000,3400,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0400,0500,0000,3400,RO_5,rockhard_istrat    ;           ;
	mapobj	0300,-400,0000,2800,RO_4,rockhard_ISTRAT    ; L      R  ;
;	mapobj	0200,0400,0000,2800,RO_5,rockhard_istrat    ;           ;
	pathcspecial	0200,100,-120,2000,guard_0,e_bee,10,10
	pathcspecial	0200,-100,-120,2000,guard_0,e_bee,10,10	
;	mapobj	0200,-400,0000,3800,RO_4,rockhard_ISTRAT    ;  L    R   ;
;	mapobj	0200,0550,0000,3800,RO_1,rockhard_ISTRAT    ;           ;
	cspecial	0000,0200,-1300,2000,longface,zacos_istrat
	cspecial	0000,-100,-1500,2300,longface,zacos_istrat
	cspecial	0000,0500,-1500,2300,longface,zacos_istrat
	mapobj	0200,-400,0000,4800,RO_0,rockhard_ISTRAT    ;  L    R   ;
	mapobj	0200,0400,0000,4800,RO_5,rockhard_ISTRAT    ;           ;
	mapobj	0200,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
;	mapobj	0200,0100,0000,1500,stalk,tree1_istrat
	mapobj	0200,-100,0000,2200,stalk,tree2_istrat
;	mapobj	0200,-900,0000,5800,RO_2,rockhard_ISTRAT    ;L     R    ;	
;	mapobj	0200,-600,0000,2400,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0200,0600,0000,2400,RO_5,rockhard_istrat    ;           ;

;	SETVAR.N	FADEPAL,12
;	setvar	palfrom,0
;	setvar	palto,0
;	setvar	pallen,11
;	SETVAR.N	INFOG,0
;	mapwait	1100
;	MAPCODE_JSL	BG_5_1d_1

;	SETVAR.N	fadepaltofxblue,33
;	start_65816
;	gamepal	blue
;	end_65816	
	mapwait	3000
	
	mapobj	0200,-500,0000,2400,RO_4,rockhard_ISTRAT    ; L      R  ;
;	mapobj	0200,0500,0000,2400,RO_5,rockhard_istrat    ;           ;
	mapobj	0200,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
	mapobj	0200,0100,0000,1500,stalk,tree1_istrat
;	mapobj	0200,-100,0000,2200,stalk,tree2_istrat
;	mapobj	0200,-400,0000,2800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0200,0400,0000,2800,RO_5,rockhard_istrat    ;           ;
;	mapobj	0200,-400,0000,3800,RO_4,rockhard_ISTRAT    ;  L    R   ;
	mapobj	0200,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
;	mapobj	0200,0100,0000,1500,stalk,tree1_istrat
	mapobj	0200,-100,0000,2200,stalk,tree2_istrat
;	mapobj	0200,0550,0000,3800,RO_1,rockhard_ISTRAT    ;           ;
	mapobj	0200,-400,0000,4800,RO_0,rockhard_ISTRAT    ;  L    R   ;
;	mapobj	0200,0400,0000,4800,RO_5,rockhard_ISTRAT    ;           ;
;	mapobj	0200,-900,0000,5800,RO_2,rockhard_ISTRAT    ;L     R    ;
;	mapobj	0200,0300,0000,2800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
	mapobj	0200,0100,0000,1500,stalk,tree1_istrat
	mapobj	0200,-100,0000,2200,stalk,tree2_istrat

;gate
	mapobj	0000,0000,-150,4000,gate_0,gate_ISTRAT	
	pathobj	1000,3000,0000,1000,nullshape,e_gate,10,10
	mapwait	500
;----
	mapwait	2000	
	special	0300,0600,-300,-300,taigun,zaco1R_istrat
	cspecial	0300,0600,300,-250,taigun,zaco1L_istrat
;	cspecial	0900,0600,-200,-500,taigun,zaco1R_istrat
	maphardrot	0000,0300,-075,4000,clisla_m,0,-8,0
	pathobj	3000,0500,-075,4000,clisla_s,l_clisla,10,10
	pathobj	1500,0200,-170,4500,walk_4_0,e_kani_0,10,10
	pathcspecial	0200,-100,-120,2000,guard_0,e_bee,10,10	
;	mapif	playertwocheck,.norob2
;	pathobj	0000,1600,0000,4000,nullshape,robotwithlog,6,4
;	setalvar	roty,deg45+deg22
;.norob2

;	SETVAR.N	fadepaltofxdes,33
	
	mapwait	500

	mapobj	0000,-1000,0000,4500,BU_1,HARD180YR_ISTRAT
	mapobj	0000,1000,0000,4500,BU_6,HARD180YR_ISTRAT
	mapobj	0000,-800,0000,5000,BU_2,HARD180YR_ISTRAT

	mapwait	1500

	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT
	
	mapwait	1500

	mapobj	0000,500,0000,5000,BU_5,HARD_ISTRAT
	setalvar	roty,64


	mapif		assaultcheck,.nofriends2
	mapwait	2000
	pathobj	0000,-0750,-480,0000,friendship_4,chase6_1,10,10

	pathcspecial	1600,-0720,-480,0,taigun,chase6_2,10,10
	mapwait	2000
	mapwait	2000
.nofriends2


	mapwait	2000
	
	mapobj	2000,-350,0000,5000,BU_4,HARD180YR_ISTRAT
	mapobj	0000,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	mapobj	0000,400,0000,4000,BU_4,HARD_ISTRAT
	setalvar	roty,64

	mapwait	2000

	cspecial	0000,0200,-1300,2000,taigun,zacos_istrat
	cspecial	0000,-100,-1500,2300,taigun,zacos_istrat
	mapwait	2400

;	SETVAR.N	fadepaltofxpink,33
;	start_65816
;	gamepal	red
;	end_65816
;;	setvar	palfrom,0
	;setvar	palto,0
	;setvar	pallen,11
	;SETVAR.N	INFOG,0
	mapwait	1100
;	MAPCODE_JSL	BG_5_1c_1

	mapobj	1200,0000,0000,4000,BU_7,HARD180YR_ISTRAT
	mapobj	0000,-1000,0000,4000,BU_6,HARD180YR_ISTRAT
	mapobj	0600,1000,0000,4000,BU_6,HARD180YR_ISTRAT
	special	0300,0600,-200,-300,EISEI_0,zaco1R_istrat
	cspecial	0300,0600,-200,-250,EISEI_0,zaco1R_istrat

	mapwait	2000

	mapobj	0000,-450,0000,4000,BU_6,HARD180YR_ISTRAT
	mapobj	0700,0450,0000,4000,BU_6,HARD180YR_ISTRAT
	mapwait	500
;	cspecial	0300,0600,-200,-250,taigun,zaco1R_istrat
	cspecial	1000,0000,-100,3000,w_l,winglazerman_istrat	
	mapobj	1000,-1200,0000,4000,bu_5,hard180yr_ISTRAT
	mapobj	0000,0900,0000,5000,TOWER_2,TOWER0_ISTRAT
	mapobj	1000,-900,0000,5000,TOWER_2,TOWER0_ISTRAT
	cspecial	1000,-100,-50,3200,bom_wing,bomwing_Istrat,2,8
	mapobj	0000,0700,0000,5000,TOWER_2,TOWER0_ISTRAT
	mapobj	1000,-700,0000,5000,TOWER_2,TOWER0_ISTRAT
	pathcspecial	1000,0200,0000,3200,walker_2,korori,6,4
;	cspecial	1800,0200,-30,4300,bom_wing,bomwing_ISTRAT
	mapobj	1000,1200,0000,4000,bu_4,hard180yr_ISTRAT

	teamtext	216,217,218
	
	
;	mapobj	0200,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
;	mapobj	0200,0100,0000,1500,stalk,tree1_istrat
	mapobj	0200,-100,0000,2200,stalk,tree2_istrat
	
	mapwait	3000	
	
	special	0300,0600,-200,-300,TEKIKAN,zaco1R_istrat
	cspecial	0300,0600,-200,-650,TEKIKAN,zaco1R_istrat
	cspecial	0900,0600,-200,-1000,TEKIKAN,zaco1R_istrat
;	mapobj	0200,0100,0000,1800,stalk,tree2_istrat

;	pathobj	0000,-250,-150,0,my_bird,my_bird,10,10

	mapobj	0000,0000,0000,4000,mantis,hardplasma180_Istrat	

.boss
labelitforthewin
	mapwait	4000
	mapwait	3000
	start_65816
	a8
	lda	#0
	sta	dotsflag
	stz	dotsflag+1
	end_65816

	mapCLplayermode	ClearDemo2
	
.boss5
	mapwait	3000
	mapwait	3000
	setfadedown
	mapwait	1900
;	mapwaitfade
;	MAPCODE_JSL	bg_5_1e_1

	setbg	5_1e
	initbg


	setfadeup	quick
	start_65816
	a8
	lda	colortrip
	beq	.nocolortrip2
	end_65816
	setvar.n	palfrom,64
	setvar.n	palto,64
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
.nocolortrip2
	a8
	lda	#1
	sta	stage51			;set phantron to use link head/strat changes
	end_65816
	mapwait	1000

;	start_65816
;	end_65816
;	mapwait	1000

	mapplayermode	inspace	
	
	mapwait	2000
	mapmsgx2	86
	mapwait	1500	
	fadeoutbgm
	mapwait	1000
	mapmsgx2	87
	mapwait	1500

	pathobj	1200,0,-1300,3500,nullshape,dlinktron,10,10
	mapwait	500
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss5_1,repeat
	ENDC
	mapobj	0000,0000,1000,3500,linkhead,bossb_Istrat
	mapwaitboss
	mapplayercantdie
	markboss	boss51
;	mapplayermode	onplanet
;	mapjsr	map4_1
	start_65816
	stz	stage51			;turn link phantron off
	jsl	clearmap_l
	end_65816
	mapwait	2000
	mapjsr	cl_warp
	mapend
