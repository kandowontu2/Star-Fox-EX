level3_6
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	3_6,mstarwipe_circle
	mapjsr	map3_6

;----------------------------------------------------
;	start_65816
;
;	lda		pshipflags
;	and		#psf2_turn180
;	bne		.turn
;	switch		.nturn
;.turn
;	end_65816
;	mapplayermode	turn180
;
;.nturn
;
;
;----------------------------------------------------

	
;	mapwait	2000
	mapjsr	cl_dive
; 1.10.01 bugfix
	start_65816
	lda	randomlevels
	beq	.endit
	end_65816
	mapend

.endit
	end_65816
	mapend__not	level3_7



