level3_3
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	3_3a,mscramwipe_circle

	mapjsr	map3_3a

;	mapwait	medpspeed*30
	mapobj	0000,800,0000,8000,flower_1,hard180yr_Istrat
	mapobj	0000,-1000,0000,10000,flower_1,hard180yr_Istrat
	mapobj	0000,1000,0000,12000,flower_1,hard180yr_Istrat
	mapobj	0000,1200,0000,12000,flower_1,hard180yr_Istrat
	mapjsr	cl_ground
	mapend



