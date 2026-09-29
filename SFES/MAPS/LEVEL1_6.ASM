level1_6
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	1_6a,0

	start_65816
	stz	helpshots
	end_65816
	
	mapjsr	map1_6a
;	incmap	planet

level1_end
	incmap	finalmap




