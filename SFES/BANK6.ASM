	include	header.inc
	include	strathdr.inc
	include	gastrats.ext
	include	pstrats.ext
	include	bank10.ext
	include	bank11.ext
	include	strings.ext
	include	paths.ext
	include	pistrats.ext
	include	pcstrats.ext
	include planets.ext
	include	ramstuff.ext
	include	gb2strats.ext
	include	irq.ext
	include	shbanks.ext
	include	bgs.ext
	include	incbins.ext
	include	ga2strats.ext
	include	gb4strats.ext
	include	dstrats.ext
	include	shmacs.inc
	include	windows.ext
	include	bgmacs.inc
	include	maps\maplist.ext
	include	fontdata.ext
	include	marioi.inc
	include	bootnmi.ext
	include	coltabs.ext
	include	debug.ext
	include	d3strats.ext
	include	continue.ext
	incpublics	mhofs.ext

;------------------------------------------------------------------
	bank	10
;	incfile	blink.asm
	incfile	gcstrats.asm
	incfile	expstrat.asm
cacheon	=	1
     	incfile	mmacs.mc
	mario	on
	incfile	mhofs.mc		;Kristers .mc files
	mario	off

	incfile	gbstrats.asm
	public	fortuna
	public	fortunalen
fortuna	incbinfile	snd\sgbgmd.bin
fortunalen	equ	*-fortuna
	public	game_over
	public	game_overlen
game_over	incbinfile	snd\sgbgm11.bin
game_overlen	equ	*-game_over
	bankend	10

	bank	11
	incfile	gstrats.asm
	bankend	11

	bank	12
	incfile	gstrats2.asm

	bankend	12


	include	tail.inc



