level2_3
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	2_3a,mscramwipe_circle


	mapjsr	map2_3a

	setbg	2_3c
	initbg
	setrestart

	mapjsr	map2_3c


	setbg	2_3b
	mapwait	kichi2_len*2
	initbg
;	checkcockpit
	mapjsr	map2_3b

	mapwait	1000

	mapjsr	cl_bridge
	mapend
