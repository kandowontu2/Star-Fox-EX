australia
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	australia,mscramwipe_circle

	setrestart
	
	mapwait	200
	
	start_65816
	lda	#1
	sta	australiavar
	end_65816
	;MAPOBJ 200,0,0,0,sf2missile,HARD180YR_ISTRAT

	

.kangasrun


	pathobj 20,-1000,0,3500,KANGA,robot,1,100	;ROO 1
	setalvar	roty,-deg45-deg22
	pathobj 1000,-1100,0,3600,KANGA,robot,1,100	;ROO 2
	setalvar	roty,-deg45-deg22
	pathobj 1000,-900,0,3700,KANGA,robot,1,100	;ROO 3
	setalvar	roty,-deg45-deg22
	pathobj 700,100,0,3700,KANGA,robot,1,100	;ROO 4 (running away)
	pathobj 700,-50,0,3800,KANGA,robot,1,100	;ROO 5 (running away)
	mapobj 200,-500,0,4000,WINDMILLAUS,HARD180YR_ISTRAT
	mapwait 1500
	
	pathobj	0000,0000,-400,-150,friendship_4,chase7_1,10,10
	pathcspecial	1000,0000,-400,-150,magpie,chase7_2,10,10


.uluruplace
	mapobj 200,1000,0,4000,uluru,HARD_ISTRAT
	setalvar	roty,-45

.thehillhoist
;i misspelt hillshoist as just hillhoist so keep that in mind
	mapwait 3000
	
	MAPOBJ 0,500,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,deg90+deg22
	cspecial	0500,0200,0,3200,hillhoist,bomwing_Istrat,2,8
	special	0200,0400,-400,0000,magpie,zaco1r_istrat
	maploop .thehillhoist,2
.talking
	mapwait 1300
;	mapmsg    177 ;we should go to bunnings
	mapwait 2000
	special	0200,0400,-400,0000,magpie,zaco1r_istrat	; magpie for filla
;	mapmsg    180 ;to get sangas
	mapwait 2000
	pathobj 20,-1000,0,4000,KANGA,robot,1,100	; random kanga runnings for filla
	setalvar	roty,-deg45-deg22
;	mapmsg    178 ;its not a weekend though
	mapwait 2000
	MAPOBJ 0,500,0,4000,aushouse,HARD_ISTRAT	; random house for filla
	setalvar	roty,deg90+deg22
;	mapmsg    179 ;shit
	cspecial	0500,0200,0,3200,hillhoist,bomwing_Istrat,2,8
	
	MAPOBJ 0,500,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,deg90+deg22
	cspecial	0500,0200,0,3200,hillhoist,bomwing_Istrat,2,8
	special	0200,0400,-400,0000,magpie,zaco1r_istrat
	
	;needs some stuff here
	pathobj 20,-1000,0,3500,KANGA,robot,1,100	;ROO 1
	setalvar	roty,-deg45-deg22
	pathobj 1000,-1100,0,3600,KANGA,robot,1,100	;ROO 2
	setalvar	roty,-deg45-deg22
	pathobj 1000,-900,0,3700,KANGA,robot,1,100	;ROO 3
	mapobj 200,-500,0,4000,WINDMILLAUS,HARD180YR_ISTRAT
	cspecial	0500,-200,0,3200,hillhoist,bomwing_Istrat,2,8

	
	;GOING FROM RURAL TO URBAN
	
	mapwait 800
	MAPOBJ 0,-700,0,4000,aushouse,HARD_ISTRAT
	MAPOBJ 200,500,0,2000,schoolzone,HARD180YR_ISTRAT
	mapwait 800
;	mapmsg    181
.austown21
	MAPOBJ 100,700,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,deg90
	MAPOBJ 0,-700,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,-deg90
	mapwait 800
	maploop .austown21,5
	cspecial	0500,0200,0,3200,hillhoist,bomwing_Istrat,2,8
	special	0200,0400,-400,0000,magpie,zaco1r_istrat
.austown22
	MAPOBJ 100,700,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,deg90
	MAPOBJ 0,-700,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,-deg90
	mapwait 800
	maploop .austown22,5
	cspecial	0500,0200,0,3200,hillhoist,bomwing_Istrat,2,8
	special	0200,0400,-400,0000,magpie,zaco1r_istrat
.austown23
	MAPOBJ 100,700,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,deg90
	MAPOBJ 0,-700,0,4000,aushouse,HARD_ISTRAT
	setalvar	roty,-deg90
	mapwait 800
	maploop .austown23,5
	




.maccasend
;182
;	mapmsg    182
	mapwait	2000

	MAPOBJ 200,100,0,5000,MACCAS,HARD180YR_ISTRAT	;MACCAS BUILDING
	pathobj 0,-100,0,5000,HUMANA,robot,1,100	;SCOMO
	setalvar	roty,-deg45-deg22		;WHICH WAY SCOMO WILL RUN

	mapwait	4000
	
	pathobj 20,-1000,0,3500,winnebago,robot,1,100	;WINNE
	setalvar	roty,-deg45-deg22
	pathobj 20,-100,0,3500,winnebago,robot,1,100	;WINNE
	setalvar	roty,-deg45-deg22
	pathobj 20,-1400,0,3500,winnebago,robot,1,100	;WINNE
	setalvar	roty,-deg45-deg22

	mapmsg2	128
	
	mapwait	3000
	
	mapmsg2	129

	mapwait 5000
	mapwait 100
;	mapgoto	.kangasrun
	maploop .kangasrun,7
;chase8_1,10,10 to make stuff chase idk
;HARD180YR_ISTRAT just sits there
;zaco1r_istrat fly in and shoot
	textpath 0000,000,000,4000,euclidium,dintro1,4,100
;MAPOBJ 200,0,0,0,sf2missile,HARD180YR_ISTRAT
;MAPOBJ 200,0,0,0,sf2missile,HARD180YR_ISTRAT	
;	mapwait 5000
	mapgoto .kangasrun
;	mapjsr cl_ground
	mapend



;chase8_1,10,10 to make stuff chase idk
;HARD180YR_ISTRAT just sits there
;zaco1r_istrat fly in and shoot

	
.loo	mapwait	1000
	mapgoto	.loo


	mapend
