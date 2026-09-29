	include	header.inc
	include	shmacs.inc


	include	stratmac.inc
	include	stratlib.inc

	include	stratrou.ext
	include	game.ext
	include	world.ext
	include	main.ext
	include	draw.ext
;	include	blink.ext
	include	mario.ext
	include	mother.ext
	include	sound.ext
	include	trans.ext
	include	sprites.ext
	include	windows.ext

	include	gstrats.ext
	include	gstrats2.ext
	include	dstrats.ext
	include	kstrats.ext
	include	d2strats.ext
	include	gastrats.ext
	include	ga2strats.ext
	include	gbstrats.ext
	include	gb2strats.ext
	include	gb3strats.ext
	include	gistrats.ext
	include	gcstrats.ext
	include	pstrats.ext
	include	pistrats.ext
	include	pcstrats.ext
	include	expstrat.ext

	include	coltabs.ext
	include	bootnmi.ext
	include	colboxes.ext
	include	paths.ext
	include	mem.ext
	include	endseq.ext

;------------------------------------
; Write MSU-1 Tracklist
MSUTRACKREPORT = 1
	IFNE	MSU1
	include	MSU1\MSUTRKS.INC
	ENDC
;------------------------------------

;------------------------------------
; Write BANKS.CSV header
	fopen	+BANKS.CSV
	printf	"Bank number,Bytes free%n"
	fclose	BANKS.CSV
;------------------------------------

	bank	0		;Bank 0

	db	0,0,0,0,0,0



Do_HDR	=	1
	incfile	ushapes.asm
	incfile	shapes.asm
	incfile	shapes2.asm
	incfile	shapes3.asm
	incfile	pshapes.asm
	incfile	shapes4.asm
	incfile	shapes5.asm
	incfile	kshapes.asm
	incfile	shapes8.asm
	incfile	shapes9.asm
	incfile	shapes10.asm
	incfile	shapes11.asm
	incfile	shapes12.asm
	incfile	shapes13.asm
	incfile	shapes14.asm
Do_HDR	=	0



start	jmp.l	startboot


cop_ve
abort_ve
nmi_ve
irq_ve
cop_vn
reset_vn
break_vn
abort_vn
	rti

	incfile	sgtabs.asm
	incfile	sgdata.asm
	incfile	data\arctan.asm	
	inccru	obj2ccr,data\obj-3.ccr ; CONT.ASM
	public obj2ccr
	bankend	0

	org	$00ffb0,$7fb0

	db	"01"			; Maker Code
	db	"SFEX"			; Game Code
	db	0,0,0,0,0,0,0		; Fixed Value
	db	6			; Expansion RAM Size (5 = 32kbyte, 6 = 64kbyte)
	db	0			; Special Version
	IFNE	RUMBLE
	db	$'R'				; Cartridge Type (Sub-number)
							; (52) Rumble controller support
	db	$0					; (0) None
	ENDC

	org	$00ffc0,$7fc0

;		"---------------------"  line name up with these quotes
	db	"STAR FOX EX          "

	; hardware info
	IFNE	FASTROM 
	; I would set the FastROM map flag but a lot of people still use older versions of SNES9x,
	; so I'll leave this be for compatibility - SL
	db	$30			; Map Mode (20 = SlowROM, 30 = FastROM) LoROM
	ELSEIF
	db	$20			; Map Mode (20 = SlowROM, 30 = FastROM) LoROM
	ENDC

	IFNE	SUPERFX3
	db	$17			; Cartridge Type
	ELSEIF
	db	$15			; Cartridge Type
	ENDC
					; (13) MARIO Chip 1 / Super FX 1 (StarFox 1)
					; (14) Super FX 2 (DOOM)
					; (15) Battery + Super FX 2 (Yoshi's Island, StarFox 2)
					; (17) Super FX 3 (The Ultimate DOOM)
					; (18) Super FX 3 + Battery (presumably?)
					; (1A) Battery + Super FX 1 (Stunt Race FX)
	db	$0b			; ROM Size (0A = 8mbit, 0B = 16mbit)
	db	$06			; RAM Size (if 0, use exp RAM size above)
	db	$01		; Destination Code (from below)
	db	$33			; Fixed Value
	db	$00			; Mask ROM Version
	dw	$ffff			; Compliment Check
	dw	$0000			; Check Sum
;		^ set to $30 for canoe/nso?
;		^ needs to be $20 for snes9x 1.60
;------------------------------------

;Hardware Vectors	-------------------------
	;Native (65816 Mode)
	org	$00ffe0,$7fe0
	dw	$00,$00				; 4 bytes unused
	dw	cop_vn&WM			; COP
	dw	break_vn&WM			; BRK
	dw	abort_vn&WM			; ABORT
	dw	$0108				; NMI
	dw	$0000				; unused (would be RESET, but the SNES always boots in Emulation mode)
	dw	$010c				; IRQ

	;Emulation (6502 Mode)
	org	$00fff0,$7ff0
	dw	$00,$00				; unused
	dw	cop_ve&WM			; COP
	dw	$00					; unused (would be BRK, but BRK and IRQ share the same vector in Emulation mode)
	dw	abort_ve&WM			; ABORT
	dw	nmi_ve&WM			; NMI
	dw	start&WM			; RESET
	dw	irq_ve&WM			; IRQ/BRK




;------------------------------------

	include	tail.inc


