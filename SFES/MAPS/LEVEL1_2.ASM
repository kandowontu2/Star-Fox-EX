
level1_2									;LEVEL HEADER
	start_65816
	lda.l	m_playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816
	initlevel	1_2,mstarwipe_circle		;Load level data from 1_2 in bgs.asm

	mapjsr	map1_2							;jump to MAP1_2.ASM


	mapjsr	cl_warp							;jump to cl_warp.asm (Warp Out Clear Fanfare)
	mapend	4								;End the map



