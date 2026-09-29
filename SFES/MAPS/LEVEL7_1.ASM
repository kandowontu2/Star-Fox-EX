level7_1
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
	setbg	7_1
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

	mapwait	3000
;part 1	
	mapobj	1200,0100,0000,4000,BU_7,HARD180YR_ISTRAT
	mapobj	0000,-1000,0000,4000,BU_0,HARD180YR_ISTRAT
	mapobj	0600,1000,0000,4000,BU_0,HARD180YR_ISTRAT
	mapobj	0000,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	mapobj	0600,0450,0000,4000,BU_6,HARD180YR_ISTRAT
	mapobj	0600,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	mapobj	0000,0450,0000,4000,BU_6,HARD180YR_ISTRAT
	mapobj	1400,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	
	pathcspecial	0200,100,-120,2000,yellowbird,e_bee,10,10
	pathcspecial	0200,-100,-120,2000,yellowbird,e_bee,10,10	

	mapwait	500

	setrestart
	
	mapwait	1000
	mapwait	1000
	
	teamtext2	19,20,21
	
	pathspecial	0000,0000,0000,3000,s_tank_0,e_tank,4,2	
	cspecial	0200,0600,0000,1000,walker_0,walking_istrat
	mapobj	0500,0300,0000,1800,stalk,tree2_istrat
	roottree	1500,-200,0000,3000,deg11,10
;	mapobj	0500,0100,0000,1500,stalk,tree1_istrat
	mapobj	0500,-100,0000,2200,stalk,tree2_istrat
	mapwait	2500
	mapobj	0600,-400,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0000,0400,0000,3800,RO_3,rockhard_istrat    ;           ;
;;	mapobj	0600,-400,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;;	mapobj	0000,0400,0000,3800,RO_4,rockhard_istrat    ;           ;
;	mapobj	0600,-400,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;	mapobj	0000,0400,0000,3800,RO_3,rockhard_istrat    ;           ;
;;	mapobj	0600,-0350,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;;	mapobj	0000,0350,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0600,-0350,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0000,0350,0000,3800,RO_3,rockhard_ISTRAT    ; L      R  ;
;;	mapobj	0600,-0350,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;;	mapobj	0000,0350,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;	mapobj	0600,-0350,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;	mapobj	0000,0350,0000,3800,RO_3,rockhard_ISTRAT    ; L      R  ;
;;	mapobj	0600,-0300,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
;;	mapobj	0000,0300,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0600,-0300,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0000,0300,0000,3800,RO_3,rockhard_ISTRAT    ; L      R  ;
	mapwait	3000

	special		0000,-300,-1300,2300,longface,zacos_istrat
	cspecial	0000,0300,-1300,2300,longface,zacos_istrat
	special		0000,-600,-1300,2300,longface,zacos_istrat
	cspecial	0000,0600,-1300,2300,longface,zacos_istrat	
	cspecial	0000,0000,-1300,2300,longface,zacos_istrat	

	mapobj	0500,0100,0000,1800,stalk,tree2_istrat
	roottree	1500,200,0000,3000,-deg11,10
;	mapobj	0500,-0200,0000,1500,stalk,tree1_istrat
	mapobj	0500,-400,0000,2200,stalk,tree2_istrat

	mapwait	2000

	cspecial	1000,0000,-300,3000,w_l,winglazerman_istrat

	pathspecial	1400,0000,0000,3000,s_tank_0,e_tank,4,2
	pathspecial	1800,-200,0000,3000,s_tank_0,e_tank,4,2
	pathspecial	2400,200,0000,3000,s_tank_0,e_tank,4,2

	mapwait	2000
	
	pathobj	1000,-100,-200,700,yellowbird,kamome,10,8
	pathobj	1000,-200,-100,700,yellowbird,kamome,10,8	
	mapobj	0000,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	mapobj	0600,0450,0000,4000,BU_6,HARD180YR_ISTRAT
	mapobj	0600,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	mapobj	0000,0450,0000,4000,BU_6,HARD180YR_ISTRAT
	mapobj	1400,-400,0000,4000,BU_4,HARD180YR_ISTRAT
	
	mapwait	2000
	
	pathobj	1000,100,-200,700,bird0,kamome,10,8
	pathobj	1000,200,-100,700,bird0,kamome,10,8	
	mapobj	0000,-540,0,5000,pilar3,hardrandom_istrat
;	mapobj	0000,-360,0,5000,pilar3,hardrandom_istrat	
	mapobj	0000,-540,0,5000,pilar3,hardrandom_istrat	
;	mapobj	0000,360,0,5000,pilar3,hardrandom_istrat
	mapobj	0000,-360,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,130,0,5000,pilar3,hardrandom_istrat
;	mapobj	0800,-200,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,330,0,5000,pilar3,hardrandom_istrat
	cspecial	000,0300,-0250,6000,TEKIKAN,shou0a_istrat

	cspecial	0000,00,0,3000,bom_wing,bomwing_istrat

	special		000,-0300,-0250,6000,TEKIKAN,shou0a_istrat
	mapobj	0800,-50,0,5000,pilar3,hardrandom_istrat
	mapobj	0500,0000,0000,1800,stalk,tree2_istrat
	roottree	1500,100,0000,3000,-deg22,10
;	mapobj	0500,0300,0000,1500,stalk,tree1_istrat
	mapobj	0500,-200,0000,2200,stalk,tree2_istrat
	mapobj	0800,500,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,-300,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,130,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,-200,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,330,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,-50,0,5000,pilar3,hardrandom_istrat
	roottree	1500,100,0000,3000,deg22,10
	mapobj	0800,500,0,5000,pilar3,hardrandom_istrat
	mapobj	0800,-300,0,5000,pilar3,hardrandom_istrat

	mapwait	1000

	mapif		assaultcheck,.block
	pathobj	0000,-750,-480,0000,friendship_4,chase6_1,10,10

	pathobj	0800,-720,-480,0000,guard_0,chase6_2,10,10
	mapwait	2500
;------------------------------------------
.block
	
	pathcspecial	0200,100,-120,2000,yellowbird,e_bee,10,10
	pathcspecial	0200,-100,-120,2000,yellowbird,e_bee,10,10	
	cspecial	0000,0200,-1300,2000,guard_0,zacos_istrat
	cspecial	0000,-100,-1500,2300,guard_0,zacos_istrat
	cspecial	0000,0500,-1500,2300,guard_0,zacos_istrat	

	mapwait	2000
	
	mapobj	0000,-200,0000,4000,minispider,hardplasma180_Istrat		
	mapobj	0600,-400,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0000,0400,0000,3800,RO_4,rockhard_istrat    ;           ;
	mapobj	0600,-400,0000,3800,RO_4,rockhard_ISTRAT    ; L      R  ;
	mapobj	0000,0400,0000,3800,RO_4,rockhard_istrat    ;           ;
	cspecial	000,0300,-0250,6000,TEKIKAN,shou0a_istrat
	special		000,-0300,-0250,6000,TEKIKAN,shou0a_istrat
	
	mapwait	2000
	
	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT
	pathobj	1000,100,-200,700,bird0,kamome,10,8
	pathobj	1000,200,-100,700,bird0,kamome,10,8	
	
	mapwait	1500
	
	cspecial	0000,0200,-1300,2000,guard_0,zacos_istrat
	cspecial	0000,-100,-1500,2300,guard_0,zacos_istrat
	cspecial	0000,0500,-1500,2300,guard_0,zacos_istrat	

	mapwait	1500	

	special		0000,-300,-1300,2300,longface,zacos_istrat
	cspecial	0000,0300,-1300,2300,longface,zacos_istrat
	special		0000,-600,-1300,2300,longface,zacos_istrat
	cspecial	0000,0600,-1300,2300,longface,zacos_istrat	
	cspecial	0000,0000,-1300,2300,longface,zacos_istrat	
	mapobj	0000,300,0000,4000,minispider,hardplasma180_Istrat	
	
	mapwait	2500
;end part 1	
;gate
	mapobj	0000,0000,-150,4000,gate_0,gate_ISTRAT	
	pathobj	1000,3000,0000,1000,nullshape,e_gate,10,10
	mapwait	2000	

;part 2
	mapwait	1500
	
	mapobj	0000,-500,0000,4000,crab,hardplasma180_Istrat	
	mapobj	0000,500,0000,4000,crab,hardplasma180_Istrat	

	SETVAR.N	FADEPALTOYAMAO,33
	start_65816
	gamepal	red
	end_65816
;	setvar	palfrom,0
;	setvar	palto,0
;	setvar	pallen,11
;	SETVAR.N	INFOG,0
;	mapwait	800
;	MAPCODE_JSL	BG_7_1a_1

	mapwait	1500
	
	cspecial	0000,0200,-1300,2000,cobramk3,zacos_istrat
	cspecial	0000,-100,-1500,2300,cobramk3,zacos_istrat
	cspecial	0000,0500,-1500,2300,cobramk3,zacos_istrat	

	mapwait	1500
	
	cspecial	000,0300,-0250,6000,cobramk3,shou0a_istrat
	special		000,-0300,-0250,6000,cobramk3,shou0a_istrat	
	cspecial	1000,0000,-300,3000,w_l,winglazerman_istrat	
	
	mapwait	2000
	
	pathspecial	1500,0000,0000,3000,s_tank_0,e_tank,4,2
	pathcspecial	2000,0300,0000,3000,tank_1,e_tank,4,2

	mapwait	2000
	
	
	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT
	
	mapwait	2000

	cspecial	0200,00,0,3000,bom_wing,bomwing_istrat	
	pathcspecial	0000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10

	teamtext2	22,23,24

	mapwait	1500
	
	pathcspecial	1000,000,-230,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,200,-200,4000,EISEI_0,itachi_b,2,4

	mapwait	1500
	
	mapobj	0000,0,0000,4000,crab,hardplasma180_Istrat		
	
	mapwait	2500
	
;end part 2
;space transition point
	mapwait	3000
	mapwait	3000
	start_65816
	a8
	lda	#0
	sta	dotsflag
	stz	dotsflag+1
	end_65816

	mapCLplayermode	ClearDemo2
	
.boss
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
	
	mapplayermode	inspace	
	mapwait	2000
	mapmsgx2	90
	mapwait	2000	
	mapmsgx2	91
	mapwait	1500
	fadeoutbgm
	mapwait	500
	mapmsgx2	92
	mapwait	2000
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss5_1,repeat
	ENDC
	mapmsgx2	93
	mapwait	1500
	pathobj	1200,0,-1300,3500,nullshape,dlinktron,10,10
	mapwait	500
	mapobj	0000,0000,1000,3500,linkhead,bossb_Istrat
	mapwaitboss
	mapplayercantdie
	markboss	boss71
;	mapplayermode	onplanet
;	mapjsr	map4_1
	start_65816
	stz	stage51			;turn link phantron off
	jsl	clearmap_l
	end_65816
	mapwait	2000

	mapjsr	cl_warp
	mapend
