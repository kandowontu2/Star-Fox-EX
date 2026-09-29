level5_2
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	5_2,mscramwipe_circle

	start_65816
	lda	colortrip
	beq	.nocolortrip
	end_65816
	setvar.n	palfrom,80
	setvar.n	palto,80
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip
	end_65816

	mapwait	1000

	setrestart
	
	mapwait	3000
	
	special		0000,-200,-1300,2300,zaco_6,zacos_istrat
	cspecial	0000,0200,-1300,2300,zaco_6,zacos_istrat
	special		0000,-100,-1300,2300,zaco_b,zacos_istrat
	cspecial	0000,0100,-1300,2300,zaco_b,zacos_istrat
	cspecial	0000,0000,-1300,2300,HAPPYFACESHIP,zacos_istrat

	mapwait	2500

	teamtext	219,220,221

	pathspecial	0400,-700,0000,4000,s_tank_0,e_tank,10,10
	pathspecial	4000,0700,0000,4000,s_tank_0,e_tank,10,10

	cspecial	2000,00,200,4000,s_tank_0,aircar4_Istrat

	mapwait	2300
	
	pathcspecial	2000,0200,-500,900,zaco_1,e_shawer,10,10
	pathcspecial	0200,-200,-500,1200,zaco_1,e_shawer,10,10
	
	mapwait	1700
	
	cspecial	0200,00,0,3000,bom_wing,bomwing_istrat
	
	mapwait	2500
	
	special		0000,-200,-1300,2300,djpa,zacos_istrat
	cspecial	0000,0200,-1300,2300,djpa,zacos_istrat
	special		0000,-400,-1300,2300,djpa,zacos_istrat
	cspecial	0000,0400,-1300,2300,djpa,zacos_istrat	
	cspecial	0000,0000,-1300,2300,HAPPYFACESHIP,zacos_istrat	

	mapwait	2500
	
	mapobj	2300,-0300,-150,3000,ninja_enemy,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,ninja_enemy,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,ninja_enemy,zaco1R_istrat,10,10

	mapif		assaultcheck,.nofriends2spa
	pathobj	0000,-750,-400,0000,friendship_4,chase6_1,10,10

	pathcspecial	2500,-720,-400,0000,sjpa,chase6_2,10,10
.nofriends2spa

	mapwait	3000

	cspecial	0000,00,200,4000,s_tank_0,aircar4_Istrat


	mapobj	0500,500,-300,3000,w_l,winglazerman_Istrat

;across_robot
	mapif	playertwocheck,.norob
	pathobj	0000,-350,0000,5000,robot_0,robot,6,4
;across_robot
	pathobj	0000,0350,0000,5000,robot_0,robot,6,4
.norob	

	mapwait	1800
	pathcspecial	1200,0200,-500,900,zaco_1,e_shawer,10,10
	pathcspecial	0200,-200,-500,1200,zaco_1,e_shawer,10,10

	mapwait	1500


	
	pathcspecial	2000,0400,-500,900,zaco_1,e_shawer,10,10
	pathcspecial	0200,-400,-500,1200,zaco_1,e_shawer,10,10
	
	mapwait	3500
	
	special		0000,-200,-1300,2300,zaco_a,zacos_istrat
	cspecial	0000,0200,-1300,2300,zaco_a,zacos_istrat
	cspecial	0000,0000,-1300,2300,happyfaceship,zacos_istrat
	special		0000,-400,-1300,2300,zaco_a,zacos_istrat
	cspecial	0000,0400,-1300,2300,zaco_a,zacos_istrat
	
	mapwait	2700

	
;	mapobj	2300,-0300,-150,3000,ninja_enemy,zaco1L_istrat,10,10
;	mapobj	0300,400,-170,3000,ninja_enemy,zaco1R_istrat,10,10
;	mapobj	0300,100,-300,3000,ninja_enemy,zaco1R_istrat,10,10	
	
;gate -----------------------------------------------
;	mapwait	3500

;	mapobj	0800,0150,-100,4000,gate_0,gate_ISTRAT
;	pathobj	2400,3000,3000,1000,nullshape,e_gate,10,10

;	mapwait	300
	
;part 2	------------------------------------------------------
	
;	mapwait	2800	
	mapwait	2800	
	mapwait	2800	
	mapwait	2800	
	mapobj	0000,0000,0000,6700,g_mount,hard180yr_ISTRAT

;	mapobj	1000,0000,0000,1000,nullshape,kandobase_istrat
;	mapwait	5000
;	incmap	WASHENT3
;	setbg	5_2a
	mapobj	0000,0000,0000,6000,nullshape,gnd_Istrat
	setvarobj	mapvar1
	mapobj	0000,0000,0750,6000,last_b_2,lastb2_Istrat
	setalvar	roty,deg180
	mapobj	0000,0000,0,6000,last_b_3,lastb3_Istrat

	mapobj	1000,00,2340,6000-64,door_l,lastb4_Istrat


	mapplayermode	intoLB1
.wait
	mapif	chkstratdone1,.cont
	mapwait	1
   	mapgoto	.wait
.cont
	mapwait	200
	setbg	5_2z
	initbg

	mapwait	1000
	mapobj		0000,0000,0000,3000,warker_3,warker3_Istrat
	mapobj		0000,0060,0000,3300,warker_3,warker3_Istrat
	special		0000,-60,0000,3600,s_wark_0,warker3_Istrat
	mapwait		2500
	mapwait		2500
	mapobj		0000,0000,0000,3000,warker_3,warker3_Istrat
	mapobj		0000,0060,0000,3300,warker_3,warker3_Istrat
	special		0000,-60,0000,3600,s_wark_0,warker3_Istrat
	mapwait		2500
	mapwait		2500
	mapwait		2500
	mapwait		2500
	mapwait		2500
	mapobj	2000,0000,0300,3000,nullshape,kandobase_istrat
	incmap	washent3
;tunnel segment
;	mapwait	100
;	mapplayermode	inMtunnel
;	mapwait	100
	mapobj		0000,0000,0000,3000,warker_3,warker3_Istrat
	mapobj		0000,0060,0000,3300,warker_3,warker3_Istrat
	special		0000,-60,0000,3600,s_wark_0,warker3_Istrat
	mapwait		2500
	mapwait		2500

	mapobj		0000,0000,0000,3000,warker_3,warker3_Istrat
	mapobj		0000,0060,0000,3300,warker_3,warker3_Istrat
	special		0000,-60,0000,3600,s_wark_0,warker3_Istrat
	mapwait		2500
	mapwait		2500

	mapobj		2000,000,000,3000,boss_d_a,gekmidboss_istrat
	mapwait	1000
.loop
	mapwait	5
	start_65816
	a8
	lda	tempvar10
	beq	.loopstart
	lda	#0
	sta	tempvar10
	sta	tempvar10+1
	end_65816
	mapgoto	.endseg

.loopstart
	end_65816
	mapgoto	.loop
;end seg
.endseg
	mapwait	5000
	mapobj	1000,0000,0000,1000,nullshape,kandobase_istrat
	mapwait	5000
	incmap	WASHENT4
	mapwait	1600
	setbg	5_2b
	initbg
	setrestart level52restart





;end tunnel segment
	mapwait	3000

;gate -----------------------------------------------
	mapobj	0800,0000,-100,4000,gate_0,gate_ISTRAT
	pathobj	2400,3000,3000,1000,nullshape,e_gate,10,10

level52cont
	mapwait	1000
	setrestart level52restart
	
;	mapif	playertwocheck,.norob
	pathobj	0000,-450,0000,5000,robot_0,robot,6,4
;across_robot
	pathobj	0000,0000,-200,5000,robosf2,robot,6,4

	pathobj	0000,0450,0000,5000,robot_0,robot,6,4
;.norob	

	mapwait	3000

	pathobj	0000,-350,-200,5000,robosf2,robot,6,4
;across_robot
	pathobj	0000,0000,0000,5000,robot_0,robot,6,4

	pathobj	0000,350,-200,5000,robosf2,robot,6,4

	mapwait	3000

;	pathobj	0000,-500,0000,5000,robot_0,robot,6,4
;across_robot
	pathobj	0000,-150,-200,5000,robosf2,robot,6,4

	pathobj	0000,0150,-200,5000,robosf2,robot,6,4

	mapif		assaultcheck,.nofriends1uio
	pathobj	0000,-750,-400,0000,friendship_4,chase6_1,10,10

	pathcspecial	2500,-720,-400,0000,HAPPYFACESHIP,chase6_2,10,10
.nofriends1uio

	mapwait	3000
	
	cspecial	1000,-400,0000,4000,hou_5,houdai5f_istrat
	cspecial	3500,-400,0000,4000,hou_5,houdai5f_istrat


	mapwait	2000

	cspecial	0200,200,0,3000,bom_wing,bomwing_istrat	
	
	mapwait	1500
	pathcspecial	1200,0200,-500,900,zaco_1,e_shawer,10,10
	pathcspecial	0200,-200,-500,1200,zaco_1,e_shawer,10,10
	mapobj	0500,500,-300,3000,w_l,winglazerman_Istrat	
	mapwait	2000

	
	pathcspecial	1000,-50,0000,2050,walker_0,e_walk_1,10,10	

	mapwait	2500

	teamtext	222,223,224

	mapobj	0500,500,-300,3000,w_l,winglazerman_Istrat

	cspecial	1000,0600,0000,000,walker_0,walking_istrat	
	
	mapwait	2500
	
	mapobj	2300,-0300,-150,3000,fcta,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,fcta,zaco1R_istrat,10,10
	mapobj	0300,100,-200,3000,fcta,zaco1R_istrat,10,10	

	mapwait	2500
	
	mapobj	2300,300,-150,3000,ninja_enemy,zaco1L_istrat,10,10
	mapobj	0300,000,-170,3000,ninja_enemy,zaco1R_istrat,10,10
	mapobj	0300,-300,-200,3000,ninja_enemy,zaco1R_istrat,10,10	
	

;.norob	
	mapwait	4000

	mapmsgx2	80
	mapwait	3000
	
	mapwait	200
	
	fadeoutbgm

	mapmsgx2	81
	
	mapwait	3500
	setbgm	5	
	IFNE	MSU1
	mapmsuplay	boss5_2,repeat
	ENDC
	mapmsgx2	82

	mapwait	2000

	pathobj	1200,0,-4000,3500,nullshape,dblackrose,10,10

	mapobj	1000,0000,-300,3000,blackrose,blackrose_Istrat
	mapwaitboss
	markboss	boss52
;	start_65816
;	jsl	clearmap_l
;	end_65816

	mapwait	3000
	
	mapjsr	cl_ground

	mapend									;end map
	
	
level52restart
	start_65816
	bgm2	gekkou
	end_65816
	initlevel	5_2b,mscramwipe_circle


	start_65816
	lda	colortrip
	beq	.nocolortrip
	end_65816
	setvar.n	palfrom,80
	setvar.n	palto,80
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip

	end_65816
	
	mapgoto	level52cont