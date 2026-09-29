	include	header.inc
	include	marioi.inc
	include	stratmac.inc
	include	stratlib.inc
	include	bgmacs.inc
;	include	blink.ext
	include	check5.ext
	include	mapstructs.inc
	include	mapmacs.inc
	include	shmacs.inc
	include	strings.ext
	include	mario.ext
	include	incbins.ext
	include	mdata.ext

;	incpublics	mhofs.ext

	include	sgdata.ext
	include	dstrats.ext
	include	d3strats.ext
	include	pstrats.ext
	include	pistrats.ext
	include	pcstrats.ext
	include	gb2strats.ext
	include	gstrats.ext
	include	gstrats2.ext
	include	bank10.ext
	include	bank11.ext
	include	gbstrats.ext
	include	gcstrats.ext
	include	gistrats.ext
	include	kstrats.ext
	include	ga2strats.ext
	include	gb3strats.ext
	include	gb4strats.ext
;	include	d2strats.ext
	include	shapes.ext
;	include	stratrou.ext
	include	sgtabs.ext
	include	gastrats.ext
	include	maps\maplist.ext
;	include	fontdata.ext
	include	paths.ext
	include	expstrat.ext
	include	shbanks.ext
	include	mem.ext
	include	istrats.inc
	include	mhofs.ext
	include	menu.ext
scr_offset	equ	(vchr_logback-vchr_physback)/16

	extern	bgandpcr
	extern	bgandccr
	extern	bgmarpcr
	extern	bgmarccr
	extern	dogccr
	extern	black_hole	
	extern	black_holelen	
	extern	fortuna	
	extern	fortunalen	
	extern	game_over	
	extern	game_overlen

;-------------------------------------------------------
	bank	2

	IFNE	FASTROM
	ifne	*-$828000
	error	<X Routines bank must be start of bank 2>
	endc
	ELSEIF
	ifne	*-$28000
	error	<X Routines bank must be start of bank 2>
	endc
	ENDC


	org	xroutines,$8000*2
ramstart	incfile	ramstuff.asm
xoffset	equ	*-ramstart

	ifle	xlen-xoffset
	printf	"XLEN Extended Code free space: ",(xlen-xoffset)," bytes.%n"
	error	<Extended code more than xlen>
	FAIL
	endc

	printf	"XLEN Extended Code free space: ",(xlen-xoffset)," bytes.%n"

	IFNE	FASTROM
	org	$828000+xoffset,$8000*2+xoffset
	ELSEIF
	org	$28000+xoffset,$8000*2+xoffset
	ENDC
	
	minfo
	incfile	main.asm
	minfo	main

	bankend	2
	
	bank	13
	incfile	game.asm
	minfo	game
	incfile	endseq.asm
	minfo	endseq
	incfile	pal.asm
	incfile	sprites.asm
	minfo	sprites
	incfile	windows.asm
	minfo	windows
	incfile	sound.asm
	minfo	sound
	bankend	13

;------------------------------------------------------------------
	bank	3
planetdmapos1	dw	228
planetdmapos2	dw	100
	minfo

	incfile	planets.asm
	minfo	planets
	incfile	planets2.asm
	incfile	planets3.asm
	minfo	planets

	incfile	world.asm
	minfo	world
	incfile	blink.asm
	bankend	3

	bank	14


	incfile	continue.asm
	minfo	<continue>

	bankend	14
	
	bank	15
	minfo
	incfile	cont.asm
	minfo	cont

	incfile	bootnmi.asm
	minfo	bootnmi
	incfile	draw.asm
	minfo	draw
	incfile	fontdata.asm
	incfile	stratrou.asm
	minfo	<stratrou>
	bankend	15

	bank	16
	incfile	nmi.asm
	minfo	nmi

	incfile	bgs.asm
	minfo	bgs
	bankend	16

	bank	34
	incfile	debug.asm
	minfo	<debug>
	incfile	trans.asm
	minfo	trans
	incfile	coltabs.asm
	minfo	coltabs
	incfile	obj.asm
	minfo	obj
	incfile	d2strats.asm
	bankend	34
;------------------------------------------------------------------

	include	tail.inc




