level6_4
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	6_4,mscramwipe_circle

	setrestart
	start_65816
	a8
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
	mapobj	0000,0500,-100,000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,000,pinetree,hardrandom_Istrat
	mapobj	0000,0500,-100,1000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,1000,pinetree,hardrandom_Istrat
	mapobj	0000,0500,-100,2000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,2000,pinetree,hardrandom_Istrat
	mapobj	0000,0500,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0000,0500,-100,4000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,4000,pinetree,hardrandom_Istrat
	mapobj	0000,0500,-100,5000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,5000,pinetree,hardrandom_Istrat
	mapobj	0000,0500,-100,6000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,6000,pinetree,hardrandom_Istrat
	
	mapobj	0000,0400,-100,4500,tree,hardrandom_Istrat
	mapobj	0200,-100,-100,4500,tree,hardrandom_Istrat
	mapobj	0600,0200,-100,6000,tree,hardrandom_Istrat
	mapobj	0000,-300,-100,6500,tree,hardrandom_Istrat
	mapobj	0000,-100,-100,7500,tree,hardrandom_Istrat

	mapwait	700

	pathobj	1000,0000,0000,6500,nullshape,e_flower,10,8
	pathobj	1000,-300,0000,6500,nullshape,e_flower,10,8
	pathobj	1000,0100,0000,6500,nullshape,e_flower,10,8

	mapobj	0000,0300,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0300,-100,-100,3000,tree,hardrandom_Istrat
	
	mapobj	0800,0300,-150,2000,djpa,zaco1L_istrat,10,10
	mapobj	0400,-400,-170,2000,djpa,zaco1R_istrat,10,10
	mapobj	0400,-100,-300,2000,djpa,zaco1R_istrat,10,10
	
	mapwait	500

	roottree	0500,-200,0000,7000,deg22,10
	
	
	pathspecial		0000,800,-300,1000,DFX,patrol,10,10
	pathcspecial	0000,500,-200,1500,DFX,patrol,10,10
	pathcspecial	0500,300,-100,1000,DFX,patrol,10,10

	mapobj	0000,0500,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0400,0500,-100,4000,pinetree,hardrandom_Istrat
	mapobj	0400,0500,-100,6000,pinetree,hardrandom_Istrat
	mapobj	0000,-500,-100,6000,pinetree,hardrandom_Istrat	

	roottree	2500,200,0000,3000,-deg22,10
	
	pathspecial		0000,-100,-300,1000,DFX,patrol,10,10
	pathcspecial	0500,-500,-100,1000,DFX,patrol,10,10

	teamtext2	1,2,3

	roottree	2500,200,0000,3000,deg11,10
	roottree	0000,-200,0000,3000,-deg11,10
	mapwait	1000

	mapobj	0000,0500,-100,4500,tree,hardrandom_Istrat
	mapobj	0200,0100,-100,4500,tree,hardrandom_Istrat
	mapobj	0000,-100,-100,5500,tree,hardrandom_Istrat
	
	mapobj	0800,0300,-250,2000,djpa,zaco1L_istrat,10,10
	mapobj	0400,-400,-170,2000,djpa,zaco1R_istrat,10,10
	mapobj	0800,0300,-150,2000,djpa,zaco1L_istrat,10,10
	
	cspecial	1000,-400,0000,4000,hou_5,houdai5f_istrat
	cspecial	1000,-400,0000,4000,hou_5,houdai5f_istrat

	cspecial	0200,0200,000,3000,bom_wing,bomwing_istrat

	pathspecial	0000,-0200,0000,3100,bom_wing,ponpon,10,10

	mapobj	0000,-500,-100,5500,tree,hardrandom_Istrat

	cspecial	0400,0000,0000,4000,hou_5,houdai5f_istrat
	cspecial	0000,-700,0000,4000,hou_5,houdai5f_istrat
	cspecial	0000,700,0000,4000,hou_5,houdai5f_istrat
	
	mapobj	0000,-100,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0100,0100,-100,3000,pinetree,hardrandom_Istrat
	skillfly_init
	skillfly_set 0000,-150,3000,150
	mapobj	0000,-100,-100,3000,pinetree,hardrandom_Istrat
	mapobj	1000,0100,-100,3000,pinetree,hardrandom_Istrat
	roottree	0000,400,0000,3000,deg11,10
	roottree	0000,-400,0000,3000,-deg11,10
	mapobj	0000,-300,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0100,-100,-100,3000,pinetree,hardrandom_Istrat
	skillfly_set -200,-150,3000,150
	mapobj	0000,-300,-100,3000,pinetree,hardrandom_Istrat
	mapobj	1500,-100,-100,3000,pinetree,hardrandom_Istrat

	mapobj	0000,0000,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0000,-200,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0100,0200,-100,3000,pinetree,hardrandom_Istrat
	skillfly_set 0100,-150,3000,150
	mapobj	0000,0000,-100,3000,pinetree,hardrandom_Istrat
	mapobj	0000,-200,-100,3000,pinetree,hardrandom_Istrat
	mapobj	1000,0200,-100,3000,pinetree,hardrandom_Istrat
	roottree	0300,400,0000,3000,deg11,10
	roottree	0000,-300,0000,3000,-deg11,10
	mapobj	0000,0350,-300,3000,Bwarker_3,spacebarwalker_Istrat

	mapobj	0000,0300,-150,2000,djpa,zaco1L_istrat,10,10
	mapobj	0200,-400,-170,2000,djpa,zaco1R_istrat,10,10
	mapobj	0200,-100,-300,2000,djpa,zaco1R_istrat,10,10

	mapobj	0000,0350,-100,3000,pinetree,hardrandom_Istrat
	mapobj	1000,0050,-100,3000,pinetree,hardrandom_Istrat
	skillfly_bonus 0000,200,-100,1500,item_7,item7_istrat

	mapwait	1000
	mapobj	0000,0100,-100,4500,tree,hardrandom_Istrat
	mapobj	0000,-500,-100,6500,tree,hardrandom_Istrat

	mapif		assaultcheck,.nofriends3xa
	pathobj	0000,-750,-400,0000,friendship_4,chase6_1,10,10

	pathcspecial	4000,-720,-400,0000,bird0,chase6_2,10,10
.nofriends3xa
	
	roottree	0500,400,0000,3000,deg11,10
	roottree	0000,-300,0000,3000,-deg11,10
	pathobj	1000,-100,-200,700,bird0,kamome,10,8
	pathobj	1000,-200,-100,700,bird0,kamome,10,8

	mapobj	0000,0200,-100,3000,tree,hardrandom_Istrat
	mapobj	0000,-100,-100,3500,tree,hardrandom_Istrat
	mapobj	0000,000,-100,6500,tree,hardrandom_Istrat

	mapobj	0300,-0300,-150,2000,djpa,zaco1L_istrat,10,10
	mapobj	0300,400,-170,2000,djpa,zaco1R_istrat,10,10
	mapobj	0300,100,-300,2000,djpa,zaco1R_istrat,10,10
	roottree	0500,100,0000,3000,deg11,10

	mapobj	0000,0100,-100,4500,tree,hardrandom_Istrat
	mapobj	0000,-400,-100,6500,tree,hardrandom_Istrat
;gate
	mapwait	2500

	mapobj	0800,0150,-100,4000,gate_0,gate_ISTRAT
	pathobj	2400,3000,3000,1000,nullshape,e_gate,10,10

	mapwait	300
	
	mapobj	0000,-0250,-100,4500,tree,hardrandom_Istrat
	mapobj	0000,100,-100,5500,tree,hardrandom_Istrat
	mapobj	0000,-0400,-100,4500,tree,hardrandom_Istrat

	mapwait	1000	

;part 2



	mapobj	200,-400,0000,4000,hou_5,houdai5f_istrat
	mapobj	200,400,0000,4000,hou_5,houdai5f_istrat
	mapobj	200,200,0000,4000,hou_5,houdai5f_istrat
	mapobj	200,0,0000,4000,hou_5,houdai5f_istrat

	mapobj	0000,100,-100,5500,tree,hardrandom_Istrat
	mapobj	0200,-0400,-100,4500,tree,hardrandom_Istrat
	mapobj	0000,500,-100,5500,tree,hardrandom_Istrat
	
	mapwait	1000

	pathspecial	1000,200,-200,700,bird0,kamome,10,8
	pathobj	0000,-500,0000,4400,s_tank_0,e_tank,10,10
	pathspecial	0200,500,0000,4400,tank_1,e_tank,10,10
	cspecial	1000,0000,-250,3000,w_l,winglazerman_istrat
	
	
	mapobj	0400,0300,-100,5000,pinetree,hardrandom_Istrat

	pathobj	0200,-300,0000,7400,s_tank_0,e_tank,10,10
	pathobj	1800,0000,000,3000,nullshape,tomhaha,10,10

	mapwait	1500

	pathobj	0500,0100,0000,6500,nullshape,e_flower,10,8	
	pathspecial	0000,0200,0000,3100,bom_wing,ponpon,10,10

	mapobj	0000,-500,-100,5000,pinetree,hardrandom_Istrat
	mapobj	0000,0400,-100,7000,pinetree,hardrandom_Istrat
	mapobj	0000,-300,-100,7000,pinetree,hardrandom_Istrat	
	
	mapobj	0200,0250,-100,9000,tree,hardrandom_Istrat
	mapobj	0000,-100,-100,9500,tree,hardrandom_Istrat
	mapobj	0200,0100,-100,10500,tree,hardrandom_Istrat

	mapwait	1500
	
	mapobj	0500,300,-200,1500,spaceplane,zaco1R_istrat,10,10
	mapobj	0500,500,-100,1000,spaceplane,zaco1L_istrat,10,10

	mapwait	1700

	pathobj	200,0000,000,4000,nullshape,tomhaha,10,10
	mapobj	200,-400,0000,4000,hou_5,houdai5f_istrat
	mapobj	200,400,0000,4000,hou_5,houdai5f_istrat
	mapobj	200,200,0000,4000,hou_5,houdai5f_istrat
	mapobj	200,0,0000,4000,hou_5,houdai5f_istrat

	mapwait	2000
	
	cspecial	0000,0200,-1300,2000,spaceplane,zacos_istrat
	cspecial	0000,-100,-1500,2300,spaceplane,zacos_istrat
	cspecial	1000,0000,-400,2000,wire_man,wireman_Istrat

;	MAPCODE_JSL	BG_6_42_1
	SETVAR.N	fadepaltocorn2,33
	
	mapwait	2000


	teamtext2	4,5,6


	roottree	0500,-200,0000,7000,deg22,10
	
	mapobj	0000,250,-100,5000,pinetree,hardrandom_Istrat
	mapobj	0000,720,-100,5000,pinetree,hardrandom_Istrat

	mapwait	1000
;	IFEQ	HARDWARE
	MAPCODE_JSL	BG_6_42_1	;oscillate bg hof
;	ENDC

	mapobj	0000,-0100,-100,10500,tree,hardrandom_Istrat
	mapobj	0000,-500,-100,11000,tree,hardrandom_Istrat	
	
	roottree	0500,200,0000,7000,-deg22,10
	
	cspecial	2500,0200,-1200,2000,spaceplane,zacos_istrat
	cspecial	0000,-100,-900,2300,spaceplane,zacos_istrat
	cspecial	0000,0500,-900,2300,spaceplane,zacos_istrat	

	mapwait	1500
	
	
	mapwait	3000
	fadeoutbgm
	mapwait	3000
	setbgm	5
	IFNE	MSU1
	mapmsuplay	boss6_4,repeat
	ENDC
	mapwait	3000
	pathobj	1200,0,-4000,3500,nullshape,dpierrot,10,10
	mapwait	4000
	mapobj	1000,0000,-100,2500,pierrot,newboss2_istrat
	mapwaitboss
	markboss	boss64

;end part 2
	mapwait	5000
	start_65816
	jsl	clearmap_l
	end_65816
	
	mapjsr	cl_ground
	mapend
	
.loo	mapwait	1000
	mapgoto	.loo


	mapend
