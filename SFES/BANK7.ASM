	include	header.inc
	include	strathdr.inc
	include	gstrats.ext
	include	coltabs.ext
	include	ga2strats.ext
	include	gastrats.ext
	include	gb2strats.ext
	include	strings.ext
	include	gcstrats.ext
	include	pistrats.ext
	include	gstrats2.ext
	include	pstrats.ext
	include	dstrats.ext
	include	paths.ext
	include	shmacs.inc
	include	expstrat.ext
	include	bootnmi.ext
	include	d3strats.ext
	include	d2strats.ext
	include	continue.ext

	include	MSU1\msudrv.ext

	bank	17
	incfile	gistrats.asm
	incfile	gb3strats.asm
	incfile	ga3strats.asm
	bankend	17

	bank	18
	incfile	gb4strats.asm
	bankend	18
	
	bank	46
	incfile	gb5strats.asm
	bankend	46
	
	include	tail.inc

