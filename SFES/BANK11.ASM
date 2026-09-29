	include	header.inc

	incpublics	bank11.ext

	include	strathdr.inc
	include	gstrats.ext
	include	gcstrats.ext
	include	gistrats.ext
	include	gastrats.ext
	include	expstrat.ext
	include	windows.ext
	include	ga2strats.ext
	include	dstrats.ext
	include	paths.ext
	include	bootnmi.ext
	include	gstrats2.ext
	include	gb4strat.ext
	include	continue.ext
	include	debug.ext
	include	planets.ext
	include	ramstuff.ext
	include	coltabs.ext

	include	MSU1\msudrv.ext

	bank	23
	incfile	pstrats.asm
	incfile	pistrats.asm

	public	bgmarpcr
	inccru	bgmarpcr,data\mar.pcr
	public	bgmarccr
	inccru	bgmarccr,data\mar.ccr

	bankend	23

	bank	24
	incfile	pcstrats.asm
	incfile	gb2strats.asm
	incfile	strings.asm
	inccru	bgholeaccr,data\hole-a.ccr
	inccru	bgbccr,data\b.ccr
	inccru	bgbpcr,data\b.pcr

	inccru	bgblankpcr,data\blanktm.pcr
	inccru	sprites,data\obj-1.ccr
	inccru	bgcontccr,data\cont-2.ccr
	inccru	bgcontpcr,data\cont-2.pcr

	bankend	24

	include	tail.inc


