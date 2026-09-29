level2_4
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	2_4,mstarwipe_circle

	mapjsr	map2_4

	mapjsr	cl_turn

	mapend

