; Macros for Sunlit's MSU-1 driver
;-------------------------------------------------------------
	; define an msu track in MSUTRKS.INC

msutrack	macro	[track,num,comment]
	IFEQ	MSUTRACKREPORT
msubgm{track}	equ	{num}
	ELSEIF
	fopen	+MSUTRKS.CSV
	printf	"\2,\1,\3,\4%n"
	fclose	MSUTRKS.CSV
	ENDC

	endm
;-------------------------------------------------------------
	; play an msu track
msuplay	macro	[track,audiostate]
	php
	pha	;save a&x
	phx

	a8i16
	lda	#audiostate_{audiostate}
	ldx	#msubgm{track}
	jsl	msuplay_l

	plx	;return a&x
	pla
	plp
	endm
;-------------------------------------------------------------
	; use this macro if the former breaks stuff
	; you have to know what A/X should and will be,
	; and if any macros using savemode/returnmode are run before using this
msuplay_alt	macro	[track,audiostate]
	savemode
	pha	;save a&x
	phx

	a8i16
	lda	#audiostate_{audiostate}
	ldx	#msubgm{track}
	jsl	msuplay_l

	plx	;return a&x
	pla
	returnmode
	endm
;-------------------------------------------------------------
	; HACK to make it possible to do msu stuff in strats
s_msuplay	macro	[track,audiostate]
	savemode
	a8
	PHB
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC
	msuplay	{track},{audiostate}
	returnmode
	plb
	ENDM
;-------------------------------------------------------------
	; play an msu track (for levelscripts)
mapmsuplay	macro	[track,audiostate]
	start_65816
	php
	pha	;save a&x
	phx

	a8i16
	lda	#audiostate_{audiostate}
	ldx	#msubgm{track}
	jsl	msuplay_l

	plx	;return a&x
	pla
	plp
	end_65816
	endm
;-------------------------------------------------------------
	;Shut the MSU-1 off
msustop	macro
	stz	msu_volume
	stz	msu_control
	endm
;-------------------------------------------------------------
	;Shut the MSU-1 off (for levelscripts)
mapmsustop	macro
	start_65816
	stz	msu_volume
	stz	msu_control
	end_65816
	endm
;-------------------------------------------------------------
	;Trigger fade out
msufade	macro
	php
	a8
	lda	#1
	sta	msufadeflag
	plp
	endm
;-------------------------------------------------------------
	;Trigger fade out
	;see msuplay_alt for notes on usage
msufade_alt	macro
	savemode
	a8
	lda	#1
	sta	msufadeflag
	returnmode
	endm
;-------------------------------------------------------------
	;Trigger fade out (for levelscripts)
	;timing done with mapwait instead of nmi to prevent the game becoming unstable at bosses
mapmsufade_alt	macro
.fade\@
	start_65816
	a8
	lda	curmsuvolume
	dec	a
	dec	a
	dec	a
	dec	a
	sta	curmsuvolume
	sta	msu_volume
	end_65816
	mapwait 1 ; may need to tweak this
	maploop	.fade\@,63 ; msu default volume/4
	mapmsustop
	endm

	; old unsafe version, DO NOT USE (may be fine at the end score screen though, TODO: test this)
	; 4/20/2025 - May not be unsafe anymore? Moved into ZP and seemingly no more crashes
	; 4/21/2025 - This is definitely safe to use now
mapmsufade	macro
	start_65816
	php
	a8
	lda	#1
	sta	msufadeflag
	plp
	end_65816
	endm
;-------------------------------------------------------------
	; ALSO UNSAFE, DO NOT USE!!
s_msufade	macro
	savemode
	a8
	PHB
	IFNE	FASTROM
	lda	#$80
	pha
	plb
	ELSEIF
	lda	#0
	pha
	plb
	ENDC
	msufade
	returnmode
	plb
	ENDM