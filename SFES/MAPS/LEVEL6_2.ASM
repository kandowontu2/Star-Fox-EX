level6_2
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	6_2,mscramwipe_circle
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
	mapwait	1000

	start_65816
	lda	playerflymode	
	ora	#pfm_water
	sta	playerflymode
	end_65816

	mapwait	300

	setrestart

	mapwait	200


	

	pathcspecial	1000,1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	3000,0000,0000,2000,nullshape,torpedo_Istrat	
	pathcspecial	1000,-1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	3000,0-300,0000,2000,nullshape,torpedo_Istrat	
	pathcspecial	2000,1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	3000,0300,0000,2000,nullshape,torpedo_Istrat

	mapwait	700
	
	nessie	0700,200,0000,5000,-deg45,40

	mapwait	300

	teamtext2	65,66,67
	
	mapmother	1000,0000,0000,5000,mother1,mother2_istrat,mother_snakes
	mapobj	1000,0150,0000,8000,snake_1,seadragon2_Istrat	
	nessie	3000,-200,0000,5000,deg22,10
	maprem	mother1
	cspecial	1000,0000,0000,3500,bazooka,bazookaL_Istrat
	pathcspecial	1500,0400,-100,-100,bzaco_8,patret,10,10
	mapobj	2000,0150,0000,7000,snake_1,seadragon2_Istrat	

	mapobj		0000,000,000,4000,item_5,item5_istrat

	mapwait	200
	
	mapobj	500,-200,0000,3300,sea_0_0,bossSeamon_Istrat
	mapobj	500,000,0000,3000,sea_0_0,bossSeamon_Istrat
	pathcspecial	2000,1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	500,0400,0000,3500,sea_0_0,bossSeamon_Istrat
	pathcspecial	0800,0300,-150,2000,beeanim,e_bee,10,10
	pathcspecial	0400,-400,-170,2000,beeanim,e_bee,10,10
	mapobj	500,-600,0000,1200,nullshape,torpedo_Istrat
	mapobj	500,-400,0000,1000,nullshape,torpedo_Istrat
	pathcspecial	1000,-1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	500,0400,0000,1000,nullshape,torpedo_Istrat

	mapwait	300

	mapif		assaultcheck,nofriends2abc
	pathobj	0000,0000,-400,-150,friendship_4,chase7_1,10,10

	pathcspecial	1000,0000,-400,-150,boss_d_4,chase7_2,10,10
nofriends2abc	
	nessie	3000,-200,0000,5000,deg22,10
	mapwait	1000
	pathobj	0000,-250,-350,0,my_bird,my_bird,10,10
	cspecial	1000,0000,-200,3000,w_l,winglazerman_istrat
	pathcspecial	0000,0200,500,900,zaco_1,e_shawer,10,10
	pathcspecial	0200,-200,500,1200,zaco_1,e_shawer,10,10
	pathcspecial	0000,0000,0200,-100,bzaco_8,patret,10,10
	pathcspecial	0000,0400,-400,-100,bzaco_8,patret,10,10
	pathcspecial	0400,-400,-400,-100,bzaco_8,patret,10,10
	mapobj	2500,0000,-140,4000,nullshape,up1man_Istrat
	mapobj	2000,0000,0000,7000,snake_1,seadragon2_Istrat		
	nessie	2000,-200,0000,5000,deg45,60

	mapwait	500

	pathcspecial	2000,1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	2000,0300,0000,2000,nullshape,torpedo_Istrat
	mapobj	2500,-200,0000,3300,sea_0_0,bossSeamon_Istrat
	mapobj	2500,000,0000,3000,sea_0_0,bossSeamon_Istrat
	mapmother	4000,0000,0000,3000,mother1,mother2_istrat,mother_snakes
	mapobj	3000,0350,0000,4000,snake_1,seadragon2_Istrat	
	mapobj	2500,-400,0000,4000,snake_1,seadragon2_Istrat	
	nessie	3000,-200,0000,5000,deg22,10
	maprem	mother1
	nessie	3000,200,0000,5000,-deg22,10

	mapwait	500
	
	
;gate
	mapobj	0000,0000,-150,4000,gate_0,gate_ISTRAT	
	pathobj	1000,3000,0000,1000,nullshape,e_gate,10,10
	mapwait	500
;--	
	
	
	nessie	0700,200,0000,5000,-deg45,40

	cspecial	1000,0000,1000,3500,bazooka,bazookaL_Istrat
	cspecial	0000,0200,-1300,2000,zaco_6,zacos_istrat
	cspecial	0000,-100,-1500,2300,zaco_6,zacos_istrat
	cspecial	0000,0500,-1500,2300,zaco_6,zacos_istrat	
	mapwait	300
	
	nessie	1000,-450,0000,5000,deg45,40
	nessie	0700,450,0000,5000,-deg45,40

	mapif		assaultcheck,.nofriends2xvc
	pathobj	0000,0000,-400,-150,friendship_4,chase7_1,10,10

	pathcspecial	1000,0000,-400,-150,beeanim,chase7_2,10,10
.nofriends2xvc

	mapwait	300
	
	mapobj	0000,-150,0,4000,mine_0,mine0_istrat
	mapobj	0000,150,0,4000,mine_0,mine0_istrat
	mapobj	0000,-100,100,4000,mine_0,mine0_istrat
	mapobj	0000,-100,-100,4000,mine_0,mine0_istrat
	mapobj	0000,100,100,4000,mine_0,mine0_istrat
	mapobj	0000,100,-100,4000,mine_0,mine0_istrat
	mapobj	0000,00,150,4000,mine_0,mine0_istrat
	mapobj	4000,00,-150,4000,mine_0,mine0_istrat
	skillfly_bonus 0000,000,0000,1500,item_5,item5_istrat
	setalvar	sbyte1,1
	skillfly_set 0000,0000,1500
	mapwait	1500
	skillfly_bonus 0000,000,0000,1500,item_5,item5_istrat
	setalvar	sbyte1,1
	mapwait	1000
	mapwait	300
	mapobj	500,0200,0000,3300,sea_0_0,bossSeamon_Istrat
	mapobj	500,0400,0000,3500,sea_0_0,bossSeamon_Istrat
	
	teamtext2	49,50,51
	
	pathcspecial	2000,1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	500,0400,0000,3500,sea_0_0,bossSeamon_Istrat
	pathcspecial	0400,-400,-170,2000,beeanim,e_bee,10,10
;	cspecial	6000,0000,1500,2000,wire_man,wireman_Istrat
	cspecial	1000,0000,-200,3000,w_l,winglazerman_istrat
	cspecial	4000,-150,1000,3500,bazooka,bazookaL_Istrat
	cspecial	4000,0150,1000,3500,bazooka,bazookaR_Istrat
	mapobj	500,0600,0000,1200,nullshape,torpedo_Istrat
	mapobj	500,-400,0000,1000,nullshape,torpedo_Istrat
	pathcspecial	1000,-1000,-100,0000,boss_d_4,kamome,10,10
	mapobj	500,0400,0000,1000,nullshape,torpedo_Istrat
bossparentlabel
	mapwait	3000
	mapwait	3000
	start_65816
	lda	#1
	sta	stage51
	end_65816
	fadeoutbgm
	pathobj	1200,0,-4000,3500,nullshape,dluigihydra,10,10
	setbgm	bgm_boss1
	IFNE	MSU1
	mapmsuplay	boss6_2,repeat
	ENDC
	mapobj	0000,0000,-80,2000,luigihsbw,flingboss_istrat
;	mapobj	0000,0000,-80,2000,luigiht,flingboss_istrat
	mapwaitboss
	markboss	boss62
	start_65816
	stz	stage51
	end_65816
	mapwait	3000
	mapjsr	cl_ground


	mapend
