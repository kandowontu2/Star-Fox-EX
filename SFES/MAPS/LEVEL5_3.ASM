level5_3
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	5_3,mscramwipe_circle

	start_65816
	lda	colortrip
	beq	.nocolortrip
	end_65816
	setvar.n	palfrom,96
	setvar.n	palto,96
	setvar.n	pallen,64
	setvar.n	fadepalrandom,33
	start_65816
	
.nocolortrip
	end_65816

	setrestart

	setvar.n	fadepalrb2,33
	mapwait	1200
	
;part 1
;meteo&launcher
	pathcspecial	2000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	2000,0600,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-600,-200,-100,ninja_enemy,patret,8,10	
	pathcspecial	2000,000,-230,4000,EISEI_0,itachi_a,2,4
	pathcspecial	2000,-200,000,4000,EISEI_0,itachi_a,2,4
	pathcspecial	2000,200,-200,4000,EISEI_0,itachi_b,2,4
	mapwait	500
	
	teamtext	225,226,227
	
	mapwait	2000

.amoebas1	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   

	mapwait	600
	maploop	.amoebas1,05
	
	special		000,-180,-250,6000,taigun,shou0a2_istrat
	cspecial	000,-0300,0000,6000,taigun,shou0a2_istrat
	special		000,0120,-0250,6000,taigun,shou0a2_istrat
	cspecial	000,400,0000,6000,taigun,shou0a2_istrat	

	mapwait	2000

	mapobj		0000,000,000,4000,item_5,item5_istrat

	mapwait	2000

	mapobj	0000,-2500,space_viewCY-100,4000,sf2blimp,cruiser1F_Istrat
	setalvar	speed,55
	setalvar	rotz,150
	
.amoebas2	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   

	mapwait	600
	maploop	.amoebas2,05

	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   	
;gate
	mapwait	1500

	pathcspecial	0000,0200,1000,900,DRAGON_HEAD,e_dragon,10,10
	pathcspecial	0000,-200,1000,1200,DRAGON_HEAD,e_dragon,10,10
	mapif		assaultcheck,.nofriends1
	pathobj	0000,0000,0400,0000,friendship_4,chase3_1,200,10

	pathobj	02000,0000,400,0000,taigun,chase3_2,10,10
.nofriends1	
	mapwait	1000
	



	pathcspecial	1000,000,-230,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-200,-100,4000,EISEI_0,itachi_a,2,4

	pathcspecial	0000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,0100,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-100,-200,-100,ninja_enemy,patret,8,10	
	
	pathcspecial	1000,200,-200,4000,EISEI_0,itachi_b,2,4
	pathcspecial	1000,400,-330,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,-300,-100,4000,EISEI_0,itachi_a,2,4
	pathcspecial	1000,000,-250,4000,EISEI_0,itachi_b,2,4	

	mapwait	2000

	pathcspecial	0000,0200,1000,900,DRAGON_HEAD,e_dragon,10,10
	pathcspecial	0000,-200,1000,1200,DRAGON_HEAD,e_dragon,10,10
	
.amoebas3	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   

	mapwait	500
	maploop	.amoebas3,05	
	
	mapwait	2000
	
	cspecial	1000,0,0,3500,bazooka,bazookaL_Istrat
;	cspecial	1000,0,-500,3500,bazooka,bazookaR_Istrat
	cspecial	1000,0000,-250,3000,w_l,winglazerman_istrat
.amoebas4	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   

;	mapwait	500
;	maploop	.amoebas4,05

	mapwait	2000
	
	mapobj	0000,space_minX-2000,space_viewCY-3000,3000,sf2blimp,cruiser1_Istrat
	setalvar	speed,100
	setalvar	rotx,025 
	setalvar	rotz,230

	cspecial	1000,0000,space_viewcy-200,2000,ninja_enemy,szaco5_Istrat	; fly out of ship2
	cspecial	2000,400,space_viewcy+200,2000,ninja_enemy,szaco5_Istrat	; fly out of ship2
	cspecial	3000,-400,space_viewcy+200,2000,ninja_enemy,szaco5_Istrat	; fly out of ship2

	mapwait	2000	

	mapobj	0000,-2500,space_viewCY-100,4000,sf2blimp,cruiser1F_Istrat
	setalvar	speed,55
	setalvar	rotz,150
	mapwait	2000	
	cspecial	2000,0200,0300,5000,taigun,shou0a2_istrat
	cspecial	2000,-200,-200,5000,taigun,shou0a2_istrat	
	cspecial	3000,0200,0300,5000,taigun,shou0a2_istrat
	cspecial	3000,-200,-200,5000,taigun,shou0a2_istrat	
	mapwait	3000

	mapobj	0200,200,-200,2000,spacepilon,spacepilon_istrat
	pathcspecial	0000,0100,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-100,-200,-100,ninja_enemy,patret,8,10	
	
	mapwait	1500
	
	mapobj	0200,-200,-200,2000,spacepilon,spacepilon_istrat
	
	mapwait	1500
	
	pathobj	300,-500,Space_viewCY,2800,ika,e_ika,10,10
	pathobj	300,000,Space_viewCY,3200,ika,ika_2,10,10
	
	mapwait	2000
	
	mapobj	0800,0150,-100,4000,gate_0,gate_ISTRAT
	pathobj	2400,3000,3000,1000,nullshape,e_gate,10,10

	mapwait	300	
;part 2----------------------------------------------------------------

;	pathcspecial	0000,0300,1000,900,DRAGON_HEAD,e_dragon,10,10
;	pathcspecial	0000,-300,1000,1200,DRAGON_HEAD,e_dragon,10,10

	mapwait	500
	
.amoebas5	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   

	mapobj		0000,000,000,4000,item_5,item5_istrat

;	mapwait	500
;	maploop	.amoebas5,5

	mapif		assaultcheck,.nofriends2
	pathobj	0000,0000,0400,0000,friendship_4,chase3_1,200,10

	pathobj	02000,0000,400,0000,DRAGON_HEAD,chase3_2,10,10
.nofriends2

	pathcspecial	0000,0100,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-100,-200,-100,ninja_enemy,patret,8,10	
	pathcspecial	0000,0200,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-200,-200,-100,ninja_enemy,patret,8,10	
	cspecial	1000,0200,0300,5000,taigun,shou0a_istrat
	cspecial	500,-200,-200,5000,taigun,shou0a_istrat
	
	mapobj	0000,space_minX-2000,space_viewCY-3000,3000,sf2blimp,cruiser1_Istrat
	setalvar	speed,100
	setalvar	rotx,025 
	setalvar	rotz,230
	mapwait	1500	

	cspecial	1000,0000,-250,3000,w_l,winglazerman_istrat

	mapwait	1500	


	
	pathcspecial	2000,000,-230,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,-200,000,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,200,-200,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,-200,000,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,000,-230,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,-200,000,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,200,-200,4000,EISEI_0,itachi_b,2,4
	pathcspecial	2000,-200,000,4000,EISEI_0,itachi_b,2,4

	mapwait	2000
	
	mapobj	0000,0,-200,6000,sf2blimp,crane0_Istrat
	setalvar	speed,100
	setalvar	rotx,025 
	setalvar	rotz,230
	mapwait	2500	
	
.amoebas6	mapmother	200,0000,0000,4000,mother1,mother2_istrat,map_metroids
	maprem	mother1   

	mapwait	500
	maploop	.amoebas6,6	

	mapwait	2000

	teamtext	228,229,230
	
	pathcspecial	0000,0200,-300,900,DRAGON_HEAD,e_dragon,10,10
	pathcspecial	0000,-200,-300,1200,DRAGON_HEAD,e_dragon,10,10
	pathcspecial	0000,0400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-400,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,0100,-200,-100,ninja_enemy,patret,8,10
	pathcspecial	0000,-100,-200,-100,ninja_enemy,patret,8,10	


	mapwait	2500
	
	mapobj	1000,-0400,-150,3000,taigun,zaco1L_istrat,10,10
	mapobj	0300,-0200,-150,3000,taigun,zaco1L_istrat,10,10
	mapobj	0300,000,-200,3000,taigun,zaco1R_istrat,10,10
	mapobj	0300,200,-200,3000,taigun,zaco1R_istrat,10,10	

	mapwait	1500

	mapobj	0000,0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,-0380,0,4000,lock_man,HARDplasma180_ISTRAT
	mapobj	0000,0,0,4000,lock_man,HARDplasma180_ISTRAT

	mapwait	1500
	
	mapobj	2300,600,-150,3000,EISEI_0,zaco1L_istrat,10,10
	mapobj	2300,300,-150,3000,EISEI_0,zaco1L_istrat,10,10
	mapobj	0300,000,-170,3000,EISEI_0,zaco1R_istrat,10,10
	mapobj	0300,-300,-200,3000,EISEI_0,zaco1R_istrat,10,10	

;boss


;end
	mapwait	2000
	mapwait	2000
	mapwait	2000

	mapplayermode	inspace	
	mapwait	2000
	mapmsgx2	94
	mapwait	2000	
	mapmsgx2	95
	mapwait	1500
	fadeoutbgm
	mapwait	500
	mapmsgx2	96
	mapwait	2000
	setbgm	5
	mapmsgx2	97
	mapwait	1500
	
	pathobj	1200,0,-1300,3500,nullshape,dballboss,10,10
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss5_3,repeat
	ENDC
	mapobj	1000,0000,-0200,5200,ninja_0,ballboss_Istrat
	mapwaitboss
	markboss	boss53
	mapwait	3000
	mapwait	3000
	mapjsr	cl_turn
	mapend
