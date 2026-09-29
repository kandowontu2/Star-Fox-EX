incmap	MACRO
	incfile	maps\\\1.asm
	ENDM

	mapdef	mapp	; player's map address

	INCMAP	level5_1
	INCMAP	level5_2
	INCMAP	level5_3
	INCMAP	level5_4
	INCMAP	level5_5
	
	INCMAP	level6_1
	INCMAP	level6_2
	INCMAP	level6_3
	INCMAP	level6_4
	INCMAP	level6_5
	
	INCMAP	level2_1
	INCMAP	level2_2
	INCMAP	level2_3
	INCMAP	level2_4

	INCMAP	levelfin

creditsmap	incmap	credits