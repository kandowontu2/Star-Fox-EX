level3_2
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	3_2,mstarwipe_circle
	mapjsr	map3_2
	mapjsr	cl_chase
	mapend



