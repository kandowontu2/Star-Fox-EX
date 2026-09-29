level6_5
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	6_5,mscramwipe_circle

	mapwait	500
	
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
	mapwait	1500
	
	mapobj	2300,-0300,-150,3000,viper01,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,viper01,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,viper01,zaco1R_istrat,10,10		
	mapobj	0300,-0300,-150,3000,viper01,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,viper01,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,viper01,zaco1R_istrat,10,10	

	teamtext2	7,8,9

	mapwait	2000

	cspecial	2000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	2000,-200,-200,5000,drone5,shou0a_istrat	
	cspecial	2000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	2000,-200,-200,5000,drone5,shou0a_istrat	

	mapwait	500
	
	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,-400,-200,-100,guard_0,patret,8,10
	pathcspecial	2000,0300,-300,-100,guard_0,patret,8,10
	pathcspecial	0000,-300,-300,-100,guard_0,patret,8,10
	pathcspecial	2000,0200,-400,-100,guard_0,patret,8,10
	pathcspecial	0000,-200,-400,-100,guard_0,patret,8,10
	pathcspecial	2000,0100,-300,-100,guard_0,patret,8,10
	pathcspecial	0000,-100,-300,-100,guard_0,patret,8,10
	cspecial	1000,0000,-250,3000,w_l,winglazerman_istrat
	
	mapwait	2000
	
	pathobj	1000,200,-200,700,drwing,kamome,10,8
	pathobj	1000,-200,-100,700,drwing,kamome,10,8
	pathobj	1000,200,-200,700,drwing,kamome,10,8
	mapobj	0000,-200,space_viewCY+200,10000,scarrier01,ship1a_Istrat
	setalvar	speed,50
	setalvar	roty,134
	setalvar	rotz,250	

	mapwait	1500

	pathcspecial	1000,000,-230,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,-200,-100,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,200,-200,4000,tekikan,itachi_b,6,6
	pathcspecial	1000,400,-330,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,-300,-100,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,000,-250,4000,tekikan,itachi_b,6,6	

	mapwait	3000

	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT

	mapwait	2000
	mapobj	0000,-3400,space_viewCY+100,2000,scarrier01,cruiser1f_Istrat
	setalvar	sbyte1,25
	setalvar	speed,55
	setalvar	rotz,20
	
	mapif		assaultcheck,.nofriends2spa
	pathobj	0000,-750,-400,0000,friendship_4,chase6_1,10,10

	pathcspecial	2500,-720,-400,0000,sjpa,chase6_2,10,10
	mapwait	1500
.nofriends2spa

	pathobj	1000,-100,-200,700,drwing,kamome,10,8
	pathobj	1000,-200,-100,700,drwing,kamome,10,8

	cspecial	0000,0200,-1300,2000,spaceplane,zacos_istrat
	cspecial	0000,-100,-1500,2300,spaceplane,zacos_istrat
	cspecial	1000,0000,-200,2000,wire_man,wireman_Istrat
	
	mapwait	2000
	mapwait	2000

;end part 1	
;gate
	mapobj	0000,0000,-150,4000,gate_0,gate_ISTRAT	
	pathobj	1000,3000,0000,1000,nullshape,e_gate,10,10
	mapwait	2000	
	mapwait	2000	
	

;-----------------part 2
	mapobj	0000,-3400,space_viewCY+100,2000,scarrier01,cruiser1f_Istrat
	setalvar	sbyte1,25
	setalvar	speed,55
	setalvar	rotz,20

	mapwait	1500

	pathcspecial	1000,000,-230,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,-200,-100,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,200,-200,4000,tekikan,itachi_b,6,6
	pathcspecial	1000,400,-330,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,-300,-100,4000,tekikan,itachi_a,6,6
	pathcspecial	1000,000,-250,4000,tekikan,itachi_b,6,6	
	cspecial	1000,0000,-250,3000,w_l,winglazerman_istrat

	mapwait	1000
	
	mapobj	2300,-0300,-150,3000,viper01,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,viper01,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,viper01,zaco1R_istrat,10,10		
	mapobj	0300,-0300,-150,3000,viper01,zaco1L_istrat,10,10
	mapobj	0300,400,-170,3000,viper01,zaco1R_istrat,10,10
	mapobj	0300,100,-300,3000,viper01,zaco1R_istrat,10,10	

	mapwait	2000

	teamtext2	10,11,12

	pathobj	1000,200,-200,700,drwing,kamome,10,8
	pathobj	1000,-200,-100,700,drwing,kamome,10,8
	pathobj	1000,200,-200,700,drwing,kamome,10,8
	mapobj	0000,-200,space_viewCY+200,10000,scarrier01,ship1a_Istrat
	setalvar	speed,50
	setalvar	roty,134
	setalvar	rotz,250	
	
	mapobj	0000,-3400,space_viewCY+100,2000,scarrier01,cruiser1f_Istrat
	setalvar	sbyte1,25
	setalvar	speed,55
	setalvar	rotz,20

	mapwait	1000

	cspecial	2000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	2000,-200,-200,5000,drone5,shou0a_istrat	
	cspecial	2000,0200,0300,5000,drone5,shou0a_istrat
	cspecial	2000,-200,-200,5000,drone5,shou0a_istrat		
	
	
;---------------boss

	
	mapwait	3000
	mapwait	2000
	mapwait	2000

	mapwait	2000
	mapmsgx2	102
	mapwait	2000	
	mapmsgx2	103
	mapwait	1500
	fadeoutbgm
	mapwait	500
	mapmsgx2	104
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss6_5,repeat
	ENDC
	mapwait	1500

	pathobj	1200,0,-1300,3500,nullshape,dhoverboss,10,10
	mapobj	0000,0000,-700,600,hoverboss,hoverboss_istrat
	mapwaitboss
	markboss	boss65
	mapplayercantdie
	mapwait	3000
	mapwait	3000

	mapjsr	cl_ground
	
	mapend
