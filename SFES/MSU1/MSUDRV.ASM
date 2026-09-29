;***************************************************************************
;*                                                                         *
;*                             Star Fox CD                                 *
;*                             -----------                                 *
;*                     Emerald Softworks & Team SFCD                       *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   File: MSUDRV.ASM                                                      *
;*_________________________________________________________________________*
;*                                                                         *
;*   Descr: MSU-1 driver.                                                  *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 23/9/24                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   Author(s):                                                            *
;*        Sunlit                                                           *
;*                                                                         *
;***************************************************************************
	INCPUBLICS	msu1\msudrv.ext

; see MSUMACS.inc for usage
;-------------------------------------------------------------
; plays an MSU-1 track
; A - audiostate
; X - track to play
msuplay_l
	a8i16
	stz	msu_volume	;Shut chip off
	stz	msu_control
	stz	msufadeflag

	stx	msu_track	; Load track

.msuaudiobusyloop
	bit	msu_status ; Is the audio busy flag set?
	bvs	.msuaudiobusyloop ; Loop until it isn't

	pha	; Save audiostate to stack
	lda	#255 ; divisible by 3 ;248 ; divisible by 8 ;$FE	; Set volume
	sta	curmsuvolume
	sta	msu_volume
	pla	; Pull audiostate and start playing music
	sta	msu_control

	; ERROR CHECK (optional)
	lda msu_status
	bit #status_trackmissing
	beq .donemsuplayback ; error bit set?
.msufailed
	stz	msu_volume	; Mute MSU-1 to avoid loud buzzing on hardware
.donemsuplayback
	rtl
;-------------------------------------------------------------
