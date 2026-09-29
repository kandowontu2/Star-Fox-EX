level2_5
	mapif	chkeasteregg1,.finn
;	initlevel	hole,mstarwipe_circle
	initlevel	space_credits,mstarwipe_circle
	mapgoto	.nofinn
.finn
	initlevel	2_5,mstarwipe_circle
.nofinn
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	mapjsr	map2_5

	mapjsr	cl_dive

	mapend__not	level2_6



