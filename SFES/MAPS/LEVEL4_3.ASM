level4_3
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.nop2
	lda	#40
	sta	playertwoready
.nop2
	end_65816

	mapif	chkeasteregg2,.nochange
	setfadedown	quick
	mapwaitfade
	setbg	3_6
	initbg
	setfadeup	quick
	setrestart
	mapgoto	.changed
.nochange
	initlevel	3_6,mscramwipe_circle
.changed
	mapjsr	map4_3


;	mapwait	medpspeed*30
	mapwait	1000
	start_65816
	stz	twoplayer
	lda	#0
	sta.l	m_damagetwo
	lda	#5
	sta	specialobjtotal
	lda	#5
	sta	specials_dead
	stz	speccnttwo
	end_65816

	mapjsr	cl_ground
	mapend



