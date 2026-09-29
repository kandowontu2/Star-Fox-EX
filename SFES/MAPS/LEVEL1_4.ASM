level1_4
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	1_14,mscramwipe_circle

	mapjsr	map1_4

	mapobj	000,-0800,0000,8000,gro_6,hard180yr_istrat
	mapobj	000,1000,0000,10000,gro_6,hard180yr_istrat
	mapobj	000,-1200,0000,12000,gro_6,hard180yr_istrat
	mapjsr	cl_ground
	mapend







































