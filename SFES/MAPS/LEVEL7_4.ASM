level7_4
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	7_4,mscramwipe_circle
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
;part 1

	pathcspecial	1000,000,-230,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,200,-200,4400,EISEI_0,itachi_b,2,4
	pathcspecial	1000,400,-330,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-300,-100,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,000,-250,4400,EISEI_0,itachi_b,2,4	
	
	mapwait	1500

	teamtext2	37,38,39
	
	pathobj	1000,100,-200,700,bird0,kamome,10,8
	pathobj	0000,200,-100,700,bird0,kamome,10,8	
	mapobj	0000,-3400,space_viewCY+100,3000,scarrier01,cruiser1f_Istrat
	setalvar	sbyte1,25
	setalvar	speed,55
	setalvar	rotz,20
	mapwait	1500
	
	pathobj	1000,-100,-200,700,yellowbird,kamome,10,8
	pathobj	0000,-200,-100,700,yellowbird,kamome,10,8	
	
	mapwait	1500
	
	pathcspecial	0000,0200,-500,900,DRAGON_HEAD,e_dragon,10,10
	pathcspecial	0000,-200,-500,1200,DRAGON_HEAD,e_dragon,10,10
	
	mapwait	1500

	mapobj		0000,000,000,4000,item_5,item5_istrat
	
	cspecial	3000,0200,0300,5000,taigun,shou0a_istrat
	cspecial	3000,-200,-200,5000,taigun,shou0a_istrat	
	cspecial	1000,-0200,-250,3000,w_l,winglazerman_istrat
	
	mapwait	1500
	
	cspecial	3000,0400,0300,5000,taigun,shou0a_istrat
	cspecial	3000,-400,-200,5000,taigun,shou0a_istrat
	
	mapwait	1000
	
	pathcspecial	0000,0400,-200,-100,guard_0,patret,8,10
	pathcspecial	0000,-400,-200,-100,guard_0,patret,8,10

	mapwait	1500
	
;chase
	mapif		assaultcheck,.nofriends2
	pathobj	0000,0000,-400,-150,friendship_4,chase7_1,10,10

	pathcspecial	1600,0000,-400,-150,flyingbug,chase7_2,10,10
	mapwait	1500

.nofriends2
;done chase

	cspecial	0000,0200,-1300,2000,drwing,zacos_istrat
	cspecial	0000,-100,-1500,2300,drwing,zacos_istrat
	cspecial	0000,0500,-1500,2300,drwing,zacos_istrat
	mapobj	0000,-400,space_viewCY+200,10000,scarrier01,ship1a_Istrat
	setalvar	speed,50
	setalvar	roty,134
	setalvar	rotz,250	
	mapwait	1500
	

	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT

	mapwait	1800

	pathcspecial	0000,0200,-500,900,DRAGON_HEAD,e_dragon,10,10
	pathcspecial	0000,-200,-500,1200,DRAGON_HEAD,e_dragon,10,10
	
	mapwait	1500
	mapobj	0000,-3400,space_viewCY+100,3000,scarrier01,cruiser1f_Istrat
	setalvar	sbyte1,25
	setalvar	speed,55
	setalvar	rotz,20
	cspecial	0000,0200,-1300,2000,drwing,zacos_istrat
	cspecial	0000,-100,-1500,2300,drwing,zacos_istrat
	cspecial	0000,0500,-1500,2300,drwing,zacos_istrat	
	
	mapwait	1000
;gate
	mapwait	3500

	mapobj	0800,0150,-100,4000,gate_0,gate_ISTRAT
	pathobj	2400,3000,3000,1000,nullshape,e_gate,8,10

	mapwait	1300	
	
;second half	
	mapwait	1000
	
	pathobj	1000,-200,-100,700,flyingbug,kamome,10,8
	pathobj	1000,200,-200,700,flyingbug,kamome,10,8
	
	mapwait	1000
	
	pathobj	1000,-200,-200,700,yellowbird,kamome,10,8
	pathobj	0000,-200,-100,700,yellowbird,kamome,10,8		

	mapwait	1500

	pathobj	1000,300,-200,700,bird0,kamome,10,8
	pathobj	0000,-300,-100,700,bird0,kamome,10,8	
	mapobj	0000,300,space_viewCY+200,10000,scarrier01,ship1a_Istrat
	setalvar	speed,50
	setalvar	roty,134
	setalvar	rotz,250	

	mapwait	1500

	cspecial	1000,-0200,-250,3000,w_l,winglazerman_istrat

	mapwait	1500
	mapwait	1500


	cspecial	0000,0200,-1300,2000,drwing,zacos_istrat
	cspecial	0000,-100,-1500,2300,drwing,zacos_istrat
	cspecial	0000,0500,-1500,2300,drwing,zacos_istrat
	
	mapwait	1500

	teamtext2	40,41,42
	
	pathcspecial	1000,200,-200,4400,EISEI_0,itachi_b,2,4
	pathcspecial	1000,400,-330,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,000,-230,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4400,EISEI_0,itachi_a,2,4
	mapobj		0000,000,000,4000,item_5,item5_istrat
	pathcspecial	1000,-300,-100,4400,EISEI_0,itachi_a,2,4
	pathcspecial	1000,000,-250,4400,EISEI_0,itachi_b,2,4		
	pathcspecial	1000,200,-200,4400,EISEI_0,itachi_b,2,4
	pathcspecial	1000,400,-330,4400,EISEI_0,itachi_a,2,4

	mapwait	2000
	mapwait	2000
	mapwait	2000
	mapwait	2000
;boss
	fadeoutbgm
	pathobj	1200,0,-1300,3500,nullshape,dcloudchaser,10,10
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss7_4,repeat
	ENDC

	mapobj	0000,0000,-100,600,pointyanim,skyboss_istrat
	mapwaitboss
	markboss	boss74
	mapwait	2500
	
	mapjsr	cl_ground
	mapend