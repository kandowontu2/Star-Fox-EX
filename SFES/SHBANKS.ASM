	include	header.inc
	include	stratequ.inc

	include	shmacs.inc

	include	colboxes.ext
	include	coltabs.ext

	INCPUBLICS shbanks.ext

do_hdr	=	0


;------------------------------------------------------------------
	bank	25
	incshapes	shapes.asm	
	incshapes	kshapes.asm

bgmintro	incbinfile	snd\sgbgmm.bin

bgmintrolen	equ	*-bgmintro
	inccru	bgcpccr,data\cp.ccr

	bankend	25

;------------------------------------------------------------------
	bank	26
	incshapes	shapes2.asm
	inccru	bgmpcr,data\m.pcr
boss_fortuna	incbinfile	snd\sgbgm2.bin
boss_fortunalen	equ	*-boss_fortuna
	bankend	26

;------------------------------------------------------------------
	bank	27
	INCshapes	shapes3.asm

ops	incbinfile	snd\sgbgmn.bin
opslen	equ	*-ops
	inccru	bgmccr,data\m.ccr
	inccru	bgdemoccr,data\demo.ccr
	inccru	bgdemopcr,data\demo.pcr
	bankend	27

;------------------------------------------------------------------
	bank	28
	incshapes	shapes4.asm

sector_y	incbinfile	snd\sgbgmj.bin
sector_ylen	equ	*-sector_y
	bankend	28

;------------------------------------------------------------------
	bank	29
	incshapes	shapes5.asm
	incshapes	ushapes.asm
	incshapes	pshapes.asm

	public	dogccr
	inccru	dogccr,data\dog.ccr

boss_asteroid	incbinfile	snd\sgbgm7.bin
boss_asteroidlen	equ	*-boss_asteroid
boss_macbeth	incbinfile	snd\sgbgm3.bin
boss_macbethlen	equ	*-boss_macbeth

	bankend	29


	bank	30
    incshapes    shapes8.asm

    fileslog    shapes8.asm
	bankend	30
    
	bank	31
	incshapes	shapes9.asm
	
	fileslog	shapes9.asm
	bankend	31    
	bank	32
	incshapes	shapes10.asm
	
	fileslog	shapes10.asm
	bankend	32

	bank	33
	incshapes	shapes11.asm
	fileslog	shapes11.asm
	bankend	33
	
	bank	48
	incshapes	shapes12.asm
	fileslog	shapes12.asm
	bankend	48
	
	bank	49
	incshapes	shapes13.asm
	fileslog	shapes13.asm
oopspal	incbin	data\oops.pal
oopschr	incbin	data\oops.chr
oopspic	incbin	data\oops.pic

	bankend	49
	
	bank	50
	incshapes	shapes14.asm
	bankend	50

	
	include	tail.inc

