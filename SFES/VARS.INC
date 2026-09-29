pal				equ	0
SUPERFX3		equ 0
	IFNE	SUPERFX3
FASTROM		equ	1		; GSU3 ONLY
	ELSEIF
FASTROM		equ	0
	ENDC
;HARDWARE		equ	0		; set by command line
;newmugshots	equ	1		; set by command line
RUMBLE			equ	0
MSU1			equ	0 		; to be set by command line once the programming for msu1 is finished
PSYCHOTIC		equ	0
wireframe		equ	0		; wireframe mode
fullwireframe	equ	0		; wireframe mode	(not yet working)
debuginfo		equ	1		; full strategy debugging
debuginfo2		equ	0		; stage selection/ speed up mode

; Max number of palette lines allowed in ALLCOLS.PAC. (stock = 256)
; Raise this number if you have more than about 36 palettes and the
; latest in the list won't load.
; setting this to 512 has been tested, and appears to work.
; For reference, a palette line is 32 bytes in size. 7 of those is 224 bytes.
;!! If this number is too large, bad things might happen, so be careful!!
; see also: gamepalettes xxalc in INC\KALCS.INC.
maxcolscru	equ	512

;------------------------------------------------------------------------------
randverts1		equ	0		; Randomize the vertices slightly
randvertandbit	equ	31		; Decimal representation of the binary AND value of the max number you want to add to each point
							; Recommended values: 1, 3, 7, 15, 31, 63 (representing 00000001,00000011,00000111,00001111,00011111,00111111)
randverts2		equ	0		; randomize the vertices a lot
							; DO NOT activate both at once
randomcolors	equ	0		; Random colors on each face
;------------------------------------------------------------------------------

mario_test1	equ	0
mario_stats3d	equ	0
easytext	equ	0
mario_sph_demo	equ	0

; angles
deg360	equ	256
deg180	equ	deg360/2
deg90	equ	deg360/4
deg45	equ	deg360/8
deg22	equ	deg360/16
deg11	equ	deg360/32
deg6	equ	deg360/60
deg5	equ	deg360/64
deg4	equ	deg360/80
deg3	equ	deg360/96
deg270	equ	deg180+deg90
deg0	equ	0
deg120	equ	deg360/3
deg60	equ	deg120/2
deg240	equ	deg120*2
deg300	equ	deg240+deg60

deg135	equ	deg90+deg45
deg225	equ	deg180+deg45
deg315	equ	deg180+deg90+deg45

deg72	equ	deg360/5
deg144	equ	(deg360*2)/5
deg216	equ	(deg360*3)/5
deg288	equ	(deg360*4)/5


p_n	equ	10000000b
p_v	equ	01000000b
p_a	equ	00100000b
p_x	equ	00010000b
p_d	equ	00001000b
p_int	equ	00000100b
p_z	equ	00000010b
p_c	equ	00000001b



;Key pad Codes		(ends in l = in contl0)
Key_al	equ	$80
Key_b	equ	$80
key_xl	equ	$40
key_y	equ	$40
key_start	equ	$10
key_select	equ	$20
key_leftl	equ	$20
key_rightl	equ	$10
key_jup	equ	$08
key_jdown	equ	$04
key_jleft	equ	$02
key_jright	equ	$01

pad_B	equ	1<<15
pad_Y	equ	1<<14
pad_SELECT	equ	1<<13
pad_START	equ	1<<12
pad_UP	equ	1<<11
pad_DOWN	equ	1<<10
pad_LEFT	equ	1<<9
pad_RIGHT	equ	1<<8
pad_A	equ	1<<7
pad_X	equ	1<<6
pad_TLEFT	equ	1<<5
pad_TRIGHT	equ	1<<4

padl_B	equ	pad_B>>8
padl_Y	equ	pad_Y>>8
padl_SELECT	equ	pad_SELECT>>8
padl_START	equ	pad_START>>8
padl_UP	equ	pad_UP>>8
padl_DOWN	equ	pad_DOWN>>8
padl_LEFT	equ	pad_LEFT>>8
padl_RIGHT	equ	pad_RIGHT>>8
padl_A	equ	pad_A
padl_X	equ	pad_X
padl_TLEFT	equ	pad_TLEFT
padl_TRIGHT	equ	pad_TRIGHT



;Game limit vars --------------------------------------
number_al	equ	80	;Max aliens
number_zb	equ	70	;unused

;Base addresses for RAM alocation -----------------
zmempt	=	0	;zero page
wmempt	=	$300	;work space
xmempt	=	$7e2000	;extended RAM
xxmempt	=	$7f0000	;extended RAM
zmmempt	=	$700000
mmempt	=	$700200
bitmap1	equ	$4000
;bitmap1	equ	$2c00
bitmapbase	equ	$700000

WM	equ	$ffff
BM	equ	$ff
K	equ	1024


gameNum_col		equ	28
gameNum_row		equ	24

vchr_base1		equ	0
vsc_base1		equ	22*k/2
vchr_base2		equ	24*k/2
vchr_physback	equ	40*k/2
vchr_logback	equ	46*k/2
vobj_base		equ	52*k/2
vsc_base2		equ	56*k/2


num_col	equ	28
num_row	equ	24
char_size	equ	32
col_size	equ	char_size*num_row
usedchar	equ	col_size*num_col
pal3d	equ	7

bg2offsets		equ	vsc_base1+32*num_col

;alien flags (al_flags) -------
afexp	equ	1	;Exploding
afInRngPl	equ	2	;In Range of player
afLeftPl	equ	4	;Left of player
afFrontPl	equ	8	;Infront of Player
afInviewPl	equ	16	;Inview of player
afhit	equ	32	;was hit/ shot/blasted/bumped
afonfire	equ	64	;on fire

;alien type flags (al_type) ---
atgnd	equ	1	;ground object
atmissile	equ	2	;Is misslie
atlaser	equ	4	;Is laser bolt
atzremove	equ	8	;remove when behind
atnuked	equ	16	;if hit by nuke explosion.



; planets.asm
num_routes	equ	9


; main
SPACE_MODE	equ	1
WATER_MODE	equ	2

;xhdma_max	equ	5*K

mapbase	=	$58000
mapbase2	=	$d8000


HF1	equ	1<<0
HF2	equ	1<<1
HF3	equ	1<<2
HF4	equ	1<<3
HF5	equ	1<<4
HF6	equ	1<<5
HF7	equ	1<<6
HF8	equ	1<<7

; continue.asm
;faces
friend_fox		equ	0
friend_rabbit 		equ	1
friend_falcon 		equ	2
friend_frog		equ	3
friend_pepper 		equ	4
friend_andross 		equ	5
friend_anyone		equ	6
friend_wolf 		equ	7
friend_pigma 		equ	8
friend_andrew		equ	9
friend_leon		equ	10
friend_wolfdown		equ	11
friend_pigmadown	equ	12
friend_andrewdown	equ	13
friend_leondown		equ	14
friend_luigi		equ	15
friend_mario		equ	16
friend_mrl		equ	17
friend_mrm		equ	18
friend_yoshi		equ	19
friend_blueyoshi	equ	20
friend_redyoshi		equ	21


;faces2

friend_blackyoshi	equ	0
friend_rob		equ	1
friend_craig		equ	2
friend_panther		equ	3
friend_link		equ	4
friend_kirby		equ	5
friend_walrus		equ	6
friend_samus		equ	7
friend_toad		equ	8
friend_rex		equ	9
friend_megaman		equ	10
friend_bowser		equ	11
friend_kando		equ	12

;faces

friend_fox3		equ	0+128
friend_rabbit3 		equ	1+128
friend_falcon3 		equ	2+128
friend_frog3		equ	3+128
friend_pepper3 		equ	4+128
friend_andross3		equ	5+128
friend_anyone3		equ	6+128
friend_wolf3 		equ	7+128
friend_pigma3 		equ	8+128
friend_andrew3		equ	9+128
friend_leon3		equ	10+128
friend_wolfdown3	equ	11+128
friend_pigmadown3	equ	12+128
friend_andrewdown3	equ	13+128
friend_leondown3	equ	14+128
friend_luigi3		equ	15+128
friend_mario3		equ	16+128
friend_mrl3		equ	17+128
friend_mrm3		equ	18+128
friend_yoshi3		equ	19+128
friend_blueyoshi3	equ	20+128
friend_redyoshi3	equ	21+128

;faces2

friend_blackyoshi3	equ	0+128
friend_rob3		equ	1+128
friend_craig3		equ	2+128
friend_panther3		equ	3+128
friend_link3		equ	4+128
friend_kirby3		equ	5+128
friend_walrus3		equ	6+128
friend_samus3		equ	7+128
friend_toad3		equ	8+128
friend_rex3		equ	9+128
friend_megaman3		equ	10+128
friend_bowser3		equ	11+128
friend_kando3		equ	12+128



; sprites.asm
spradd	equ	128	;((24*28)-512+2)

; trans
gamechar_size	equ	32
gamemdm		equ	1+32
gameStRow		equ	2
gameVW_Pos		equ	(8*gameStRow+8*gameNum_row)-1
gamemtrans		equ	((262-gameVW_Pos+8*gameStRow)*170)&(-30)
gameBMPSZ		equ	gameNum_col*gameNum_row*gamechar_size
		ifge	gamemtrans-gameBMPSZ
gamemaxtrans	equ	gameBMPSZ/2
		elseif
gamemaxtrans	equ	gamemtrans
		endc
gametranlen1	equ	10752
gametranlen2	equ	10752
paltranlen1	equ	(gamemaxtrans*3)/4
paltranlen2	equ	gamemaxtrans-paltranlen1

; irq vars
tm_planets	equ	8
tm_fox	equ	10
tm_fox2	equ	12
tm_fox3	equ	14
tm_planets2	equ	34

dec_base	equ	2800h




