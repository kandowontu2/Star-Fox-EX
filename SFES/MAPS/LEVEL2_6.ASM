
level2_6
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	2_6a,0

	start_65816
	stz	helpshots
	end_65816

	mapjsr	map2_6a

	mapwait	4000
	mapjsr	cl_colon
	
	mapwait	2000
	mapgoto	final_tunnel



