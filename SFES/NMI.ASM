

;Copy NMI handler to RAM at $0101
copy_to_0101_l
	php
	a8i16

	ai16
	ldx	#nmihan&WM ; src data addr
	ldy	#$0101 ; dest data addr
	lda	#nmihanend-nmihan-1 ; len of data to copy
	IFNE	FASTROM
	sasm_mvn	$90,$80
	ELSEIF
	sasm_mvn	$10,$00
	ENDC

;	ldx	#nmihanend-nmihan-1
;.codeloop2	lda.l	nmihan,x
;	sta.l	$0101,x
;	dex
;	bpl	.codeloop2

	ldx	#xlen-1
.codeloop4	
	IFNE	fastrom
	lda.l	$828000,x
	elseif
	lda.l	$28000,x
	endc

	sta.l	xroutines,x
	dex
	bpl	.codeloop4

	plp
	rtl

;---------------------------------------------------------------------------
nonmihan	equ	1	;Remove unused NMI handler (saves memory+cycles in IRQ)

nmihan
	blink	2
	blink	2
	IFNE	NONMIHAN
	rti		; $0108 NMI
	nop
	nop
	ELSEIF
	brl	.nmi	;$0108	NMI
	ENDC
	nop		;$010b
.irq	ai16		;$010c	irq
	pha
	lda.l	m_sfr
	bpl	.irqq
.qexit	pla
	rti

.irqq
	phb
	disable
	phx
	phy
	ai8
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC

	IFNE	MSU1
	lda msufadeflag	; check fade flag
	beq .nofade	; if zero, don't fade
	lda curmsuvolume	; load current volume
	beq .nofade	; if zero, don't fade
	sec
	sbc	#$03 ;$08
	sta curmsuvolume	; store new volume
	sta msu_volume	; set msu-1 volume
.nofade
	ENDC

	nastyon
	jsl	irqcode_l
	a8
	inc	framec
	lda	timeupr
	IFEQ	NONMIHAN
	bra	.exit ; branch to .exit sublabel
	ENDC	;NONMIHAN
	longa

.brk
.nmi
	IFEQ	NONMIHAN
	ai16
	pha
	phb
	phx
	phy
	a8
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC

	nastyoff
	jsl	fnmi_l
	nastyon
	a8
	lda	rdnmir
	ENDC	;NONMIHAN

.exit	ai16
	ply
	plx
	plb
	pla	
	rti

nmihanend
