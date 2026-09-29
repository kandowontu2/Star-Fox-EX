level_comet
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	comet,mscramwipe_circle

	mapwait	10
	
	setrestart
	start_65816
	a8
	lda	colortrip
	beq	.nocolortrip
	end_65816
	setvar.n	palfrom,32
	setvar.n	palto,32
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip
	end_65816
	mapwait	100
;-----------------------------------------START FROM BELOW-----------------------------------------	
;
;	mapobj	- same/ for points
;	special 
;	tspecial
;	
;	pathobj  - strats/ not for points
;	pathspecial
;	pathcsspecial
;					(left -) <--------- center (0) --------> (right +)
;   xxxxxx  [Delay until next event start], [X pos - horizontal], [Y pos - height], [z pos - depth], [Model], [Strat]
;	
	mapobj	0000,-980,-10,6000,bship_0_1,HARD180YR_ISTRAT
	mapobj	2000,980,-10,6000,bship_0_1,HARD180YR_ISTRAT

	mapwait	2000	

	mapobj	200,0,-900,1500,viper01,zacos_istrat,10,10
	mapobj	0000,-300,-970,1800,flyingbug,zacos_istrat,10,10
	mapobj	0000,300,-970,1800,flyingbug,zacos_istrat,10,10
	
	

	mapwait	1500

	cspecial	2000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	2000,-200,-200,5000,drone5,shou0a_istrat	
	cspecial	2000,0300,0300,5000,drone5,shou0a_istrat
	cspecial	0000,-300,3000,5000,drone5,shou0a_istrat	

	mapwait	1500
	
	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0500,-400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,0200,-400,-100,guard_0,patret,8,10
	pathcspecial	1000,-200,-400,-100,guard_0,patret,8,10
	
	mapwait	2000

	teamtext2	52,53,54
	
	pathobj	1000,1000,-200,700,shark1,kamome,10,8
	pathobj	1000,-1000,-100,700,shark1,kamome,10,8
	pathobj	1000,1000,-200,700,shark1,kamome,10,8
		
	mapwait	1500

	pathcspecial	0500,000,-230,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-100,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,200,100,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0500,400,-330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-300,300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-500,250,4000,r_hou_0,itachi_b,6,6	
	pathcspecial	0500,200,-290,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,500,-270,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0500,100,330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,043,-200,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-020,-050,4000,r_hou_0,itachi_b,6,6	
	pathcspecial	0500,050,100,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-200,4000,r_hou_0,itachi_a,6,6
	pathcspecial	1000,200,350,4000,r_hou_0,itachi_b,6,6	

	mapwait	3000

	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT

	mapwait	1000
	pathobj	0000,0000,-100,1000,nullshape,check,10,10
	cspecial 0000,0000,-200,1500,warp,warp_Istrat

	pathobj	1000,1000,-200,700,shark1,kamome,10,8
	pathobj	1000,-1000,-100,900,shark1,kamome,10,8
	mapobj		0000,100,020,8000,nullshape,up1man_Istrat
	cspecial	0000,-500,1000,3500,bazooka,bazookaL_Istrat
	cspecial	1000,500,1000,3500,bazooka,bazookaR_Istrat

	cspecial	0000,0200,-1300,2000,drwing,zacos_istrat
	cspecial	0000,-200,-1500,2300,drwing,zacos_istrat

	mapobj	0000,-980,-10,6000,bship_0_1,HARD180YR_ISTRAT
	mapobj	2000,980,-10,6000,bship_0_1,HARD180YR_ISTRAT
	
	mapwait	2000
	mapwait	2000

;   xxxxxx  [Delay until next event start], [X pos - horizontal], [Y pos - height], [z pos - depth], [Model], [Strat]
	mapobj	0000,-200,100,800,cameleon,cameleon_istrat
	mapobj	2300,200,-100,800,cameleon,cameleon_istrat	
	mapobj	0000,000,100,900,cameleon,cameleon_istrat
	mapobj	0000,000,-100,900,cameleon,cameleon_istrat
	pathcspecial	0200,000,-230,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0200,-200,-100,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0200,200,100,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0200,400,-330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0200,-300,300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0200,-500,250,4000,r_hou_0,itachi_b,6,6	
	mapobj	100,400,0000,4000,meteo_0,meteo0_Istrat
	mapobj	100,-400,0100,8000,meteo_0,meteo0_Istrat
	mapobj	100,200,-200,7000,meteo_0,meteo0_Istrat
	mapobj	100,20,0300,9000,meteo_0,meteo0_Istrat
	mapobj	200,0,-900,1500,viper01,zacos_istrat,10,10
	mapobj	0000,-300,-970,1800,flyingbug,zacos_istrat,10,10
	mapobj	0000,300,-970,1800,flyingbug,zacos_istrat,10,10	
	mapobj	100,-200,200,6000,meteo_0,meteo0_Istrat
	mapobj	000,100,0-100,9000,meteo_0,meteo0_Istrat
	pathcspecial	1000,000,-230,4000,EISEI_0,itachi_a,6,6
	pathcspecial	1000,-200,-100,4000,EISEI_0,itachi_a,6,6
	pathcspecial	1000,200,-200,4000,EISEI_0,itachi_b,6,6
	pathcspecial	1000,400,-330,4000,EISEI_0,itachi_a,6,6
	mapobj	2300,200,00,3000,SPACEPLANE,zaco1l_istrat,10,10
	mapobj	2300,-200,00,3000,SPACEPLANE,zaco1l_istrat,10,10
	mapobj	2300,200,00,3000,SPACEPLANE,zaco1l_istrat,10,10
	mapobj	000,-200,00,3000,SPACEPLANE,zaco1l_istrat,10,10
	pathcspecial	1000,-300,-100,4000,EISEI_0,itachi_a,6,6
	pathcspecial	0000,000,-250,4000,EISEI_0,itachi_b,6,6	

	mapwait	2000
	mapwait	2000
;end part 1	
;gate
	mapobj	0000,0000,-100,4000,gate_0,gate_ISTRAT	
	pathobj	1000,3000,0000,1000,nullshape,e_gate,10,10
	mapwait	2000	
	mapwait	2000	
	

;-----------------part 2


	mapwait	500

	mapobj	0300,400,-170,3000,enemy_o_1,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,enemy_o_1,zaco1R_istrat,10,10		
	mapobj	0300,-0300,-150,3000,enemy_o_1,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,enemy_o_1,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,enemy_o_1,zaco1R_istrat,10,10	

	mapwait	2000


	mapobj	0000,-300,-500,10000,bcruiser_1,HARD180YR_ISTRAT
	mapobj	0000,200,200,10000,bcruiser_1,HARD180YR_ISTRAT
	
	mapwait	100
	mapobj 0000,100,050,8000,long_bridge,HARD180YR_ISTRAT
	mapobj 0000,100,00,8300,item_6,item6_Istrat
	setalvar	sbyte1,1
	
	pathobj	0000,1000,-200,700,shark1,kamome,10,8
	pathobj	0000,-1000,-200,700,shark1,kamome,10,8
	pathobj	0000,1000,-100,900,shark1,kamome,10,8
	pathobj	1000,-1000,100,900,shark1,kamome,10,8

	teamtext2	55,56,57
	
	cspecial	0000,0200,-1300,2000,drwing,zacos_istrat
	cspecial	0000,-200,-1500,2300,drwing,zacos_istrat
	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0500,-400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,0200,-400,-100,guard_0,patret,8,10
	pathcspecial	1000,-200,-400,-100,guard_0,patret,8,10
	pathobj	1000,1000,-200,700,shark1,kamome,10,8
	pathobj	1000,-1000,-100,700,shark1,kamome,10,8
	pathobj	1000,1000,-200,700,shark1,kamome,10,8
	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0500,-400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,0200,-400,-100,guard_0,patret,8,10
	pathcspecial	1000,-200,-400,-100,guard_0,patret,8,10
	pathcspecial	0500,000,-230,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-100,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,200,100,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0500,400,-330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-300,300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-500,250,4000,r_hou_0,itachi_b,6,6	
	pathcspecial	0500,200,-290,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,400,-330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-300,300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-500,250,4000,r_hou_0,itachi_b,6,6	
	pathcspecial	0500,500,-270,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0500,100,330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,043,-200,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-020,-050,4000,r_hou_0,itachi_b,6,6	
	pathcspecial	0500,050,100,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-300,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,500,-270,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0500,100,330,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,043,-200,4000,r_hou_0,itachi_a,6,6
	cspecial	0000,-500,1000,3500,bazooka,bazookaL_Istrat
	cspecial	0000,500,990,3500,bazooka,bazookaR_Istrat
	pathcspecial	0500,-020,-050,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0500,-200,-200,4000,r_hou_0,itachi_a,6,6
	pathcspecial	1000,200,350,4000,r_hou_0,itachi_b,6,6	
	pathcspecial	0500,000,-230,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,-200,-100,4000,r_hou_0,itachi_a,6,6
	pathcspecial	0500,200,100,4000,r_hou_0,itachi_b,6,6
	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0500,-400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,0200,-400,-100,guard_0,patret,8,10
	pathcspecial	1000,-200,-400,-100,guard_0,patret,8,10
	
	mapwait	1000
	mapobj	0000,-980,-10,6000,bship_0_1,HARD180YR_ISTRAT
	mapobj	2000,980,-10,6000,bship_0_1,HARD180YR_ISTRAT
	
	cspecial	0000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	0000,-200,-200,5000,drone5,shou0a_istrat	
	cspecial	0000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	2000,-200,-200,5000,drone5,shou0a_istrat
	

	mapwait	4000
	mapwait	2000
	
	mapmsg2	58
	fadeoutbgm

	mapwait	4000
	
	mapmsg2	59
	setbgm	6
	IFNE	MSU1
	mapmsuplay	bosscomet,repeat
	ENDC
	

	mapwait	4000
	
	mapmsg2	60

	mapwait	4000
	
	mapmsg2	61

	mapwait	4000

	
	pathobj	1200,0,-1300,3500,nullshape,dyoshi,10,10
	mapobj	1000,0000,-130,2700,yoshianm,yoshi_istrat
	mapwaitboss
	markboss	bossyoshi

	fadeoutbgm
	mapwait 1000
	mapjsr	cl_comet
	
	mapend
