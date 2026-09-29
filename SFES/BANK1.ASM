
	include	header.inc
	include	coltabs.ext
	include	mdata.ext
	include	marioi.inc
	include	shmacs.inc
;	include	strathdr.inc
	include	gridvars.inc
	include	fontdata.ext
;	include	stratequ.inc
	include	stratmac.inc
	include	stratlib.inc

	include	stratrou.ext
	include	game.ext
	include	sgdata.ext
	include	shapes.ext
	include	world.ext
	include	main.ext
	include	draw.ext
;	include	blink.ext
;	include	mario.ext
	include	mother.ext
	include	sound.ext
	include	trans.ext
	include	sprites.ext

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
	include	gstrats.ext
	include	gstrats2.ext
	include	gcstrats.ext
	include	expstrat.ext
	include	gbstrats.ext
	include	ga2strats.ext
	include	gb4strats.ext
	include	dstrats.ext
	include	windows.ext
	include	bgmacs.inc
	include	maps\maplist.ext
;	include	fontdata.ext
	include	bootnmi.ext
	include	debug.ext
	include	d3strats.ext
	include	continue.ext

	
	extern	arctantab

	include	incbins.ext

	incpublics	mario.ext


;------------------------------------------------------------------
	bank	1
rztab
mariobegin
yyy	mario	on
	incfile	mvars.mc
	incfile	mmacs.mc
	incfile	mshtab.mc	; must be at start of bank
	incfile	mmaths.mc
	incfile	mwrot.mc
	incfile	mwcrot.mc
	incfile	mobj.mc
	incfile	mclip.mc
	incfile	mdrawc.mc
	incfile	mdrawp.mc
	incfile	msprite.mc
	incfile	mgdots.mc
	incfile	mcircle.mc
	incfile	mdrawlis.mc
	incfile	mdecru.mc
	incfile	mtxtprt.mc
	incfile	mplanet.mc
	incfile	mdsprite.mc
;	incfile	mhofs.mc		;Kristers .mc files
	incfile	mpart.mc
	incfile	mbumwipe.mc
	incfile	mhud.mc
	IFNE	SUPERFX3
	malc	m_r7backup,2	; R7 backup for MERGE emulation on FX3
	ENDC
	mario	off


mariocodelen	=	*-mariobegin
	bankend	1


	include	tail.inc


