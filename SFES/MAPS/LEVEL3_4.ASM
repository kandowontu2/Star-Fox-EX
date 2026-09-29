level3_4
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	3_4b,mstarwipe_circle

	mapjsr	map3_4b

	setbg	1_3d

	INCMAP	washmap
	markboss	boss34

	mapjsr	cl_ship3_4

	mapend	1



