	include	header.inc

	incpublics	bank10.ext
	
	include	strathdr.inc
	include	gstrats.ext
	include	gstrats2.ext
	include	gastrats.ext
	include	pistrats.ext
	include	pstrats.ext	
	include	dstrats.ext	
	include	d2strats.ext
	include	planets.ext
	include	windows.ext
	include	coltabs.ext
	include	endseq.ext
	include	gistrats.ext
	include	gcstrats.ext
	include	gbstrats.ext
	include	gb2strats.ext
	include	gb3strats.ext
	include	gb4strats.ext
	include	pcstrats.ext
	include	expstrat.ext
	include	paths.ext
	include	bootnmi.ext

	bank	21
	incfile	ga2strats.asm
	incfile	mem.asm

	public	black_hole
	public	black_holelen
black_hole	incbinfile	snd\sgbgml.bin
black_holelen	equ	*-black_hole

	inccru	bgmenumacpcr,data\menumac.pcr
	inccru	bgfxdmenupcr,data\fxdmenu.pcr
	inccru	bgdesmenupcr,data\desmenu.pcr
	inccru	bgfortmenupcr,data\fortmenu.pcr
	inccru	bgseckmenupcr,data\seckmenu.pcr
	inccru	bg23menupcr,data\23menu.pcr
	inccru	bgcornmenupcr,data\cornmenu.pcr
	bankend	21


	bank	22
	incfile	kstrats.asm
	incfile istrats.asm
	incfile d3strats.asm
	IFNE	MSU1
	include	MSU1\MSUDRV.ASM ; MSU-1 music driver
	ENDC

	public	bgandpcr
	inccru	bgandpcr,data\and.pcr
	inccru	bgfinalspaceccr,data\finals.ccr
	inccru	bgfinalspacepcr,data\finals.pcr
	inccru	bgtbosmenuccr,data\tbosmenu.ccr
	inccru	bgtbosmenupcr,data\tbosmenu.pcr
	inccru	bgvhwymenuccr,data\vhwymenu.ccr
	inccru	bgvhwymenupcr,data\vhwymenu.pcr
	inccru	bgsunccr,data\sun.ccr
	inccru	bgsunpcr,data\sun.pcr
	inccru	bgsunmenupcr,data\sun_menu.pcr

fxfadegreen	inccolfile	data\gfx\FXGREEN.col,0,32
fxfadeblue	inccolfile	data\gfx\FXblue.col,0,32
fxfadedes	inccolfile	data\gfx\FXdes.col,0,32
fxfadepink	inccolfile	data\gfx\cornpink.col,0,32
fxfadecorn	inccolfile	data\gfx\corn.col,0,32
fxfadecity	inccolfile	data\gfx\city.col,0,32
fxfadecorn2	inccolfile	data\gfx\corn2.col,0,32


	bankend	22
	include	tail.inc

