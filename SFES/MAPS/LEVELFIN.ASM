levelfin
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	1_2,mstarwipe_circle		;Load level data from 1_2 in bgs.asm

.ep	mapwait	1000
;	mapgoto	.ep

	mapwait	4000

	
	mapobj	0,0000,-130,2700,l_mbo_1,mbo_istrat
	mapobj	0,0000,-130,2700,l_mbo_1a,mbo_RT_istrat
	mapobj	0,0000,-130,2700,l_mbo_1a,mbo_LT_istrat
	mapwaitboss
;	markboss	bossyoshi

	mapwait	2000
	
	mapjsr	cl_warp
	mapend