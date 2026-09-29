;***************************************************************************
;*                                                                         *
;*                              StarGlider                                 *
;*                              ----------                                 *
;*                                                                         *
;*                           SuperNES version.                             *
;*                                                                         *
;*                           Argonaut Software.      		      *	   
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   File: DEBUG.ASM                                                       *
;*_________________________________________________________________________*
;*                                                                         *
;*  Descr: STRATEGY DEBUGGING ROUTINES.                                    *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 3/9/92                                                          *
;*_________________________________________________________________________*
;*                                                                         *
;* Author:		Dylan Cuthbert.      				      *	
;*                                                                         *
;***************************************************************************
	incpublics	debug.ext

altype_shapeptr	=	1
altype_alptr		=	2
altype_norm		=	3
altype_flag		=	4
altype_frame		=	5

signed		=	64

;------------------------------------------------------------------------
aldebug	MACRO	[alvar,type,x,y]
.1\@
	DB	.\@-.1\@
	DW	al_{alvar}
	DB	((SIZE_AL_{alvar}-1)<<7)!altype_{type}
	DW	{x}*col_size+{y}*32
	DB	"{alvar}",0
	DB	.\@-.1\@
.\@
	ENDM

	
aldebugend	MACRO
	DB	0
	ENDM
;-------------------------------------------------------------------------

debugalientable
	aldebug	shape,shapeptr,0,3			;
	aldebug	frame,frame,15,22																		;			|
	aldebug	speed,norm,0,6				; /
	aldebug	rotx,norm!SIGNED,0,7		;<----------------------------------------------|
	aldebug	roty,norm!SIGNED,0,8		; \									;			|
	aldebug	rotz,norm!SIGNED,0,9		;									;			|

																			;			|	
	aldebugend																;			|
																			;			|
; prints alien information about the specified alien									|
																			;			|
	structure	debugalientable												;			|
	struct		ald_size,1													;			|
	struct		ald_var,2													;			|
	struct		ald_type,1													;			|
	struct		ald_scraddr,2												;			|
	struct		ald_text,0													;			|
																			;			|
																			;			|
stratdebug_l																;			|
																			;			|
	php								;Push processor Status (?)			;---;			|
	phb								;Push data bank register (?)		;---;			|
	a8i16							;8 bit accumulator, 16 bit index	;---;			|
																		;---;---Somehow this makes the original
	lda	#$7e						;Load $7E bank						;---;	debug overlay objects work
	pha								;Push accumulator					;---;	(the table above)
	plb								;Pull data bank register			;---;
.nottright

.nottleft
	lda	debugflash
	cmp	#5
	beq	.nocopy
.nocopy
	lda	debugalien					;load debugalien to accumulator			
	lbeq	noprint3				;if its equal to 0, don't do anything in this code and jump down to .noprint3

	stz	debugcount					;zero out the debug counter
	stz	alientemp					;zero out alientemp
	stz	alientemp+1					;zero out alientemp high bytes
	
	lda	#1							;Load #1 into accumulator
	ldx	allst						;Load allst into X index (alien list)
	ldy	_next,x						;Load object from _next table at x position

	stx	alientemp					;Store x into alientemp

	ldx	#0							;Load 0 into x

.mainloop							;Loop start here
	inc	debugcount					;Increase loop counter
	lda	debugalien					;Load debugalien into accumulator
	cmp	#2							;Check if its value is 2
	beq	.okformore					;If so, continue with extended debug stuff and skip the counter check
	lda	debugcount					;Otherwise, load up the counter
	cmp	#3							;Check if its 2
	lbeq	.finished				;if so, we are done with the standard debug part of this code, go to .finished
.okformore							;Continuing...
	lda.l	ald_size,x				;Load the size value of the x pointer
	lbeq	.finished				;If there is no size value, there is no item, so we must be .finished
	pha								;Push a into stack
	phx								;push x into stack

	a16								;16bit accumulator
	lda.l	ald_scraddr,x			;Load the screen address of the x pointer
	sta	printpt						;Store this into printpt
	txa								;Transfer x to a
	clc								;Clear carry flag
	adc	#ald_text&WM				;Add #ald_text&WM
	sta	textpt						;store this into textpt
	a8								;8bit accumulator

	lda	freezestrats
	beq	.nohilite
	lda	menuselected
	cmp	#2
	bne	.nohilite
	lda	debugcount
	cmp	#1
	bne	.nohilite
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite	

	lda	#ald_text>>16
	sta	textpt+2

	jsl	printt_l

	stz	hilite
	stz	hilite+1

	a16
	lda	printpt
	clc
	adc	#col_size
	adc	#col_size
	adc	#col_size
	sta	printpt

	lda.l	ald_var,x
	clc
	adc	alientemp
	tay
	lda.w	0,y
	sta	x1
	a8



	lda.l	ald_type,x
	sta	aliendflags
	txy
	asl	a
	a16
	and	#127
	tax
	jmp	(.tab,x)
.tab	dw	.shapeptr&WM
	dw	.shapeptr&WM
	dw	.alptr&WM
	dw	.norm&WM
	dw	.flag&WM
	dw	.frame&WM

.shapeptr			
	a8						;this stuff forces it to draw the string "SHAPE" instead of pulling from the alvar
	lda	freezestrats
	beq	.nohilite2
	lda	menuselected
	cmp	#2
	bne	.nohilite2
	lda	debugcount
	cmp	#1
	bne	.nohilite2
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite2
	a16
	settext	0,3
	showtext	shapetext
	a8
	stz	hilite
	stz	hilite+1
	
	settext	8,3
						;done custom code
	a16
	lda	x1
	clc
	adc	#sh_name

	sta	textpt
	a8
	stz	textpt+2

	jsl	printt_l

	jmp	.back


.frame	longa
	lda	aliendflags
	bit	#128
	beq	.byte
	lda	x1
	jsl	printw_l
	jmp	.back


.norm	longa
	lda	aliendflags
	bit	#128
	beq	.byte
	lda	x1
	printw
	jmp	.back
.byte
	bit	#SIGNED
	beq	.unsigned
	lda	printpt
	clc
	adc	#col_size
	sta	printpt
	a8
	lda	x1
	printsd
	jmp	.back
.unsigned
	a8
	lda	x1
	printd
	jmp	.back

.alptr
.flag


.back
	a8
	
	stz	hilite
	stz	hilite+1
	plx
	pla
	a16
	and	#$ff
	sta	x1
	txa
	clc
	adc	x1
	tax
	a8
	jmp	.mainloop

.finished
	stz	alientemp
	stz	alientemp+1

.nosinglestep

.notfound

;-------------------NG+ Display-----------------------------------------------------------------------------

;	lda	newgameplus
;	lbeq	.nongpl

	settext	15,2
	showtxt	ngplustext
	
	settext	23,2
	onofftxt	newgameplus
.nongpl
;-------------------Double Shot Display-----------------------------------------------------------------------------
	lda	freezestrats
	beq	.nohilite3
	lda	menuselected
	cmp	#1
	bne	.nohilite3
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite3	
	settext	0,2
	showtxt	doubletext				;shows text

	stz	hilite
	stz	hilite+1
	
	settext	8,2
	onofftxt	singdoub			;shows on/off
	
.donedbl							;This is where the routine jumps when all done

;-------------------God Mode Display-----------------------------------------------------------------------------

	stz	textpt						;clear out the text in memory
	settext	0,5
	showtxt	godmodetext

	settext	8,5
	onofftxt	godmode
.donegod							;This is the end of the routine

;-------------------Weapon Name Display-----------------------------------------------------------------------------
	lda	freezestrats
	beq	.nohilite2
	lda	menuselected
	bne	.nohilite2
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite2	
	lda	cockpitmode					;check if cockpit mode
	beq	.nodefaultlaser				;if equal to 0, don't default the laser (special weapon lockout in cockpit mode)
	stz	weaponnumberpone			;set player 1 weapon to #0
	stz	weapptr						;set the pointer to next weapon text starting letter at 0
	stz	weapnextptr					;set the next weapon pointer number to 0 as well
.nodefaultlaser
	lda	weaponnumberpone			;load player weapon number
	bne	.noclear					;if not = 0, don't reset the numbers to 0 (default)
	stz	weapptr						;otherwise, set the pointer to 0
	stz	weapnextptr					;set next weapon pointer to 0 (this will update on the first cycle)
.noclear
	settext	0,1
	showtxt	weapontext

	stz	hilite
	stz	hilite+1
	
	settext	8,1

	lda	weapptr						;Load the current text pointer location
	tax								;Transfer into x index
	lda	weaponnumberpone			;Load the current weapon number
	cmp	#17							;Check if its #17 or higher
	bpl	.loop2						;if so, jump down to loop2
	
	
.loop1					;-----------;Weapons #0-16 use this code.
	inx								;Increment x
	lda.l	weaponslist,x			;Load the next letter of the weapons list from the x pointer

	beq	.testisdone					;if its a 0, we are done and we have displayed all letters
	inx								;otherwise, increment x again (Letters duplicate after the first character)
	lda.l	weaponslist,x			;Load the next letter of the weapons list from the x pointer
				
	beq	.testisdone					;if its a 0, we are done and we have displayed all letters
	sta	open_text					;Otherwise, store this letter into open_text

	lda	#open_text					;Load it back as a pointer
	sta	textpt						;store this into textpt
	jsl	printt_l					;print textpt to screen
.noprint
	bra	.loop1						;go back and find the next letter

	
.loop2					;-----------;weapons #17+ use this code to pull from the second weaponslist table
	inx								;Increment x
	lda.l	weaponslist2,x			;Load the next letter of the weapons list from the x pointer

	beq	.testisdone					;if its a 0, we are done and we have displayed all letters
	inx								;otherwise, increment x again (Letters duplicate after the first character)
	lda.l	weaponslist2,x			;Load the next letter of the weapons list from the x pointer

	beq	.testisdone					;if its a 0, we are done and we have displayed all letters
	sta	open_text					;Otherwise, store this letter into open_text

	lda	#open_text					;Load it back as a pointer
	sta	textpt						;store this into textpt
	jsl	printt_l					;print textpt to screen
.noprint2
	bra	.loop2						;go back and find the next letter
	
	
.testisdone		;-------------------;This is where both routines jump when done
	txa								;Transfer X to accumulator
	sta	weapnextptr					;store accumulator to weapnextptr so it knows where the next weapon name starts

;-------------------Health Display-----------------------------------------------------------------------------

	settext	0,4
	showtxt	healthtext

	settext	8,4
	printvar	ponehp

;------------------------Extended debug check------


	a8
	lda	debugalien					;load debugalien
	cmp	#2							;check if its set to 2
	lbne	noprint3				;if its not, jump down to .noprint3 (Don't run this code or worldy code)
	

;-------------------World X Display-----------------------------------------------------------------------------

	settext	18,4
	showtxt	worldxtext


	settext	18,5

	lda	ponex						;load ponex
	bmi	.negx						;if negative go to .negx

.posx
	a16								;16 bit accumulator
	lda	ponex						;load ponex
	jsl	printw_l					;print it as a hex string

	settext	18,5
	
	showtxt	plustext
	jmp	.starty

.negx
	a16								;16 bit accumulator
	lda	ponex						;load ponex into accumulator
	beq	.negxdone					;if its = 0, leave it at 0 and print
	nega							;make it negative
	beq	.negxdone					;if its = 0, leave it at 0 and print
	lda	#$FFFF						;load $FFFF into accumulator because we can't subtract from $10000
	clc								;clear carry flag
	sbc	ponex						;subtract value of poney to count the right way
	clc								;clear carry flag
	adc	#1							;add 1 because we wanted to subtract from $10000
.negxdone
	jsl	printw_l					;print hexadecimal

	settext	18,5
	
	showtxt	minustext

;--

;-------------------World Y Display-----------------------------------------------------------------------------
.starty
	settext	18,6
	showtxt	worldytext
;--
;--
	
	settext	18,7

	lda	poney						;load poney
	bmi	.negy						;if negative go to .negy

.posy
	a16
	lda	poney
	jsl	printw_l

	settext	18,7

	showtxt	plustext
	
	jmp	noprint3
.negy
	a16								;16 bit accumulator
	lda	poney						;load poney into accumulator
	beq	.negdone					;if its = 0, leave it at 0 and print
	nega							;make it negative
	beq	.negdone					;if its = 0, leave it at 0 and print
	lda	#$FFFF						;load $FFFF into accumulator because we can't subtract from $10000
	clc								;clear carry flag
	sbc	poney						;subtract value of poney to count the right way
	clc								;clear carry flag
	adc	#1							;add 1 because we wanted to subtract from $10000
.negdone
	jsl	printw_l					;print hexadecimal

	settext	18,7

	showtxt	minustext			;




;--------------------------------------bgm------------------------------
	settext	0,12
	lda	freezestrats
	beq	.nohilitefordebugger
	lda	menuselected
	cmp	#3
	bne	.nohilitefordebugger
	lda	#$ff
	sta	hilite
	sta	hilite+1	
.nohilitefordebugger
	showtext	bgmtext
	stz	hilite
	stz	hilite+1
	settext	5,12
	printvar	bgmtest

	settext	0,13

	a16
	lda	bgmtest
;	dec	a
	and	#$00FF
	asl	a
	tax
	lda.l	bgmlisttext,x
	sta	textpt
	a8
	lda	#bgmlisttext>>16
	sta	textpt+2
	a16
	jsl	printt_l
	a8
	
;--------------------------------------no borders------------------------------
	settext	15,14
	lda	freezestrats
	beq	.nohilitefordebug
	lda	menuselected
	cmp	#4
	bne	.nohilitefordebug
	lda	#$ff
	sta	hilite
	sta	hilite+1	
.nohilitefordebug
	showtext	noborderstext
	stz	hilite
	stz	hilite+1
	settext	24,14
	onofftxt	noborders
	
;--------------------------------------debug------------------------------
	settext	15,15
	lda	freezestrats
	beq	.nohilitefordebugxxx
	lda	menuselected
	cmp	#5
	bne	.nohilitefordebugxxx
	lda	#$ff
	sta	hilite
	sta	hilite+1	
.nohilitefordebugxxx
	showtext	debugtext
	stz	hilite
	stz	hilite+1
	settext	24,15
	printvar	debugbackup

;--------------------------------------crosshair------------------------------
	settext	15,16
	lda	freezestrats
	beq	.nohiliteforcrosshair
	lda	menuselected
	cmp	#6
	bne	.nohiliteforcrosshair
	lda	#$ff
	sta	hilite
	sta	hilite+1	
.nohiliteforcrosshair
	showtext	crosshairtext2
	stz	hilite
	stz	hilite+1
	settext	24,16
	offontxt	nocrosshairpls


;-------------------Freeze+Exp-----------------------------------------------------------------------------
	settext	15,17
	lda	freezestrats
	beq	.nohilite242112
	lda	menuselected
	cmp	#7
	bne	.nohilite242112
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite242112
	showtext	FreezeExp
	stz	hilite
	stz	hilite+1
	
	settext	24,17
	onofftxt	frozen
;-------------------Step By Step-----------------------------------------------------------------------------
	settext	15,18
	lda	freezestrats
	beq	.nohilite2421
	lda	menuselected
	cmp	#8
	bne	.nohilite2421
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite2421
	showtext	stepbysteptext
	stz	hilite
	stz	hilite+1

;-------------------Fire Rate-----------------------------------------------------------------------------

	settext	15,19
	lda	freezestrats
	beq	.nohilite242
	lda	menuselected
	cmp	#9
	bne	.nohilite242
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite242
	
	showtext	fireratetext
	
	stz	hilite
	stz	hilite+1
	
	settext	24,19
	printvar	firerate
	
;-------------------Mouse - Boost or Brake-----------------------------------------------------------------------------
	lda	mousemode
	lbeq	.nomouse
	settext	0,10
	lda	freezestrats
	beq	.nohilite242ikm
	lda	menuselected
	cmp	#10
	bne	.nohilite242ikm
	lda	#$ff
	sta	hilite
	sta	hilite+1
.nohilite242ikm
	
	showtext	mousebothtext
	
	stz	hilite
	stz	hilite+1
	
	settext	0,11
	lda	boostorbrake
	beq	.boost
	showtext	braketext
	bra	.nomouse
	
.boost
	showtext	boosttext

.nomouse
;--------------current special display----------------
	
	settext	15,20
	showtxt	curspetext
	settext	24,20
	printvar	specials_dead

;-------------------Total Special Display-----------------------------------------------------------------------------

	settext	15,21
	showtxt	totspetext
	settext	24,21

	printvar	specialobjtotal						;Print Special Object Total (set in gstrats.asm)
	
noprint3			;---------------;This is where we are all done with everything
	a8								;8 bit accumulator mode
	stz	alientemp					;store 0 to alientemp
	stz	alientemp+1					;store 0 to alientemp high bytes

	
	lda	freezestrats	;-----------;START ACTUAL PAUSE MENU CONTROLS--------------------------------
	lbeq	.nopausemenu
	
	lda	menuselected
	cmp	#8
	beq	.nogm
	TESTKEYDOWN	Y
	lbeq	.nogm

	jsr	checkgodmodecodee
;	stz	freezestrats
	jmp	.nopausemenu
.nogm

	TESTKEYDOWN	RIGHT	;-----RIGHT-----
	lbeq	.norightkey
	a16
	lda	trig0
	bit	#pad_right
	a8
	lbeq	.norightkey
	lda	menuselected
	beq	.0
	cmp	#1
	beq	.1
	cmp	#2
	beq	.2
	cmp	#3
	beq	.3
	cmp	#4
	lbeq	.4
	cmp	#5
	lbeq	.5
	cmp	#6
	lbeq	.6
	cmp	#7
	lbeq	.7
	cmp	#8
	lbeq	.8
	cmp	#9
	lbeq	.9
	cmp	#10
	lbeq	.10
	jmp	.norightkey
.0
	lda	secretgodmode
	bne	.secretgodwep
	lda	newgameplus
	lbne	.norightkey
.secretgodwep
;	stz	freezestrats
	jsl	nextweapon_l
	jmp	.norightkey
	
.1
	lda	secretgodmode
	bne	.secretgodwep2
	lda	newgameplus
	lbne	.norightkey
.secretgodwep2
;	stz	freezestrats
	turnonoff	singdoub
	jmp	.norightkey
	
.2
	lda	#2
	sta	freezestrats
	lda	superspeeddelay
	cmp	#ktest
	lbeq	.norightkey
	jsl	select_nextship_l
	jmp	.norightkey
.3
	inc	bgmtest
	lda	bgmtest
	cmp	#totaltracks-1				;number of bgm entries on the list (MAX BGM)
	lbmi	.norightkey
	lbeq	.norightkey
	lda	#0
	sta	bgmtest
	bra	.norightkey
.4
	turnonoff	noborders
	jmp	.noleftkey
.5
;	stz	freezestrats
	lda	debugbackup
	cmp	#2
	beq	.reset
	inc	debugbackup
	bra	.norightkey
.reset
	stz	debugbackup
	bra	.norightkey
.6
;	stz	freezestrats
	lda	nocrosshairpls
	cmp	#2
	beq	.norightkey
	turnonoff	nocrosshairpls
	bra	.norightkey

.7
	lda	newgameplus
	bne	.norightkey
;	stz	freezestrats
	turnonoff	frozen
	bra	.norightkey
.8
	stz	freezestrats
	bra	.norightkey
	
.9
	lda	secretgodmode
	bne	.secretgodwep3
	lda	newgameplus
	bne	.norightkey
.secretgodwep3
	inc	firerate
	lda	firerate
	cmp	#9
	bpl	.limitfirerate
	bra	.done4
.limitfirerate
	lda	#9
	sta	firerate
.done4
	bra	.norightkey
	
.10
;	stz	freezestrats
	turnonoff	boostorbrake
	bra	.norightkey	
	
.norightkey

	TESTKEYDOWN	RIGHT	;-----RIGHT for step by step-----
	beq	.norightkey2	;This one does not check if the button is still held, thus allowing you to hold it
	lda	menuselected
	cmp	#7
	bne	.norightkey2
	stz	freezestrats
	jmp	.nopausemenu	;skip checking for debug code for up and down, essentially allowing you to change vertical direction while holding left or right
	
.norightkey2

	TESTKEYDOWN	left	;-----LEFT----
	lbeq	.noleftkey
	a16
	lda	trig0
	bit	#pad_left
	a8
	lbeq	.noleftkey
	lda	menuselected
	beq	.0x
	cmp	#1
	beq	.1x
	cmp	#2
	beq	.2x
	cmp	#3
	beq	.3x
	cmp	#4
	lbeq	.4x
	cmp	#5
	lbeq	.5x
	cmp	#6
	lbeq	.6x
	cmp	#7
	lbeq	.7x
	cmp	#8
	lbeq	.8x
	cmp	#9
	lbeq	.9x
	cmp	#10
	lbeq	.10x
	jmp	.noleftkey
.0x
	lda	secretgodmode
	bne	.secretgodwepx
	lda	newgameplus
	lbne	.noleftkey
.secretgodwepx
;	stz	freezestrats
	jsl	prevweapon_l
	jmp	.noleftkey
.1x
	lda	secretgodmode
	bne	.secretgodwepx2
	lda	newgameplus
	lbne	.noleftkey
.secretgodwepx2
;	stz	freezestrats
	turnonoff	singdoub
	jmp	.noleftkey
.2x
	lda	#2
	sta	freezestrats
	lda	superspeeddelay
	cmp	#ktest
	lbeq	.noleftkey
	jsl	select_prevship_l
	jmp	.noleftkey
.3x
	dec	bgmtest
	lda	bgmtest
	bmi	.ahhh
	jmp	.noleftkey
.ahhh
	lda	#totaltracks-1				;number of bgm entries on the list (MAX BGM)
	sta	bgmtest
	bra	.noleftkey

.4x
	turnonoff	noborders
	bra	.noleftkey
	
.5x
;	stz	freezestrats
	lda	debugbackup
	beq	.resettoend
	dec	debugbackup
	bra	.noleftkey
.resettoend
	lda	#2
	sta	debugbackup
	bra	.noleftkey
.6x
;	stz	freezestrats
	lda	nocrosshairpls
	cmp	#2
	beq	.noleftkey
	turnonoff	nocrosshairpls
	bra	.noleftkey
	
.7x
	lda	newgameplus
	bne	.noleftkey
;	stz	freezestrats
	turnonoff	frozen
	bra	.noleftkey
.8x
	stz	freezestrats
	bra	.noleftkey

.9x
	lda	secretgodmode
	bne	.secretgodwepx3
	lda	newgameplus
	bne	.noleftkey
.secretgodwepx3
	dec	firerate
	lda	firerate
	cmp	#1
	bmi	.limitfireratex
	bra	.done4x
.limitfireratex
	lda	#1
	sta	firerate
.done4x
	bra	.noleftkey

.10x
;	stz	freezestrats
	turnonoff	boostorbrake
	bra	.noleftkey
	
.noleftkey

	TESTKEYDOWN	left	;-----LEFT for step by step----
	beq	.noleftkey2		;This one does not check if the button is still held, thus allowing you to hold it
	lda	menuselected
	cmp	#8				;step by step menu list number
	bne	.noleftkey2
	stz	freezestrats
	jmp	.nopausemenu	;skip checking for debug code for up and down, essentially allowing you to change vertical direction while holding left or right
.noleftkey2


.noa
	TESTKEYDOWN	DOWN	;-----DOWN----
	beq	.nodownkey
	a16
	lda	trig0
	bit	#pad_down
	a8
	beq	.nodownkey	
	inc	menuselected
	lda	menuselected
	pha
	lda	mousemode
	beq	.norm1
	pla
	cmp	#11				;last entry on list with mouse+1
	bra	.cont1
.norm1
	pla
	cmp	#10				;last entry on list+1
.cont1
	bpl	.resetlist
	jmp	.nopausemenu
.resetlist
	stz	menuselected
	jmp	.nopausemenu

.nodownkey

	TESTKEYDOWN	UP		;-----UP----
	beq	.noupkey
	a16
	lda	trig0
	bit	#pad_up
	a8
	beq	.noupkey	
	dec	menuselected
	lda	menuselected
	bmi	.resetlistup
	jmp	.nopausemenu
.resetlistup
	lda	mousemode
	beq	.norm2
	lda	#10			;last entry on list with mouse
	bra	.cont2
.norm2
	lda	#9			;last entry on list
.cont2
	sta	menuselected
	jmp	.nopausemenu

.noupkey	


.nopausemenu	
	plb								;Pull data bank register (what does this do?)
	plp								;Pull processor status (what does this do?)
	rtl								;Return (Long)



;---------------------------Pause Menu unused--------------------------------------	
pausedebug_l																;			|
																			;			|
	settext	15,20
	showtxt	curspetext
	settext	24,20
	printvar	specials_dead


	rtl

	
;-----------------------------------------------------------------
find_shape
	php
	ai16

	ldx	#0
.search
	lda.l	shiplistshape,x
	beq	.notfound
	cmp	x1
	beq	.found
	inx
	inx
	bra	.search


.found
	plp
	sec
	rts
.notfound
	plp
	clc
	rts

;-----------------------------------------------------------------
; this creates an exact copy of an alien
; x is alien to copy

dup_alien
	php
	a8i16

	phx
	ldx		allst
	l_add	allst,alfreelst,.badobj
	txy
	bra	.safe
.badobj	plx
	jmp	.exit
.safe	plx
	phx
	phy

	lda	#al_size-4
.mada	pha

	lda	4,x
	sta.w	4,y

	inx
	iny
	pla
	dec	a
	bne	.mada

	ply
	plx

	lda	#al_size
.mada2	pha

	lda.w	xalblks-alblks,x
	sta.w	xalblks-alblks,y

	inx
	iny
	pla
	dec	a
	bne	.mada2

.exit
	plp
	rtl


checkgodmodecodee
;-------God Mode Code
	a8i16							;8 bit accumulator, 16 bit index	;---;			|
																		;---;
	lda	godtemp
	and	#gm1
	cmp	#gm1
	beq	.gm2
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	RIGHT
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	LEFT
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	DOWN
	lbeq	.npst

	lda	godtemp
	ora	#gm1
	sta	godtemp
	jmp			.npst
.gm2 ;(R Press Up)
	lda	godtemp
	and	#gm2
	cmp	#gm2
	beq	.gm3
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	LEFT
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	RIGHT
	lbeq	.npst

	lda	godtemp
	ora	#gm2
	sta	godtemp
	jmp			.npst

.gm3 ;(R Press Down)
	lda	godtemp
	and	#gm3
	cmp	#gm3
	beq	.gm4
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	LEFT
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	DOWN
	lbeq	.npst

	lda	godtemp
	ora	#gm3
	sta	godtemp
	jmp			.npst
.gm4 ;(R Press Down)
	lda	godtemp
	and	#gm4
	cmp	#gm4
	beq	.gm5
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	LEFT
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	RIGHT
	lbeq	.npst

	lda	godtemp
	ora	#gm4
	sta	godtemp
	jmp			.npst
.gm5 ;(R Press Left)
	lda	godtemp
	and	#gm5
	cmp	#gm5
	beq	.gm6
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	DOWN
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	LEFT
	lbeq	.npst

	lda	godtemp
	ora	#gm5
	sta	godtemp
	jmp			.npst
.gm6 ;(R Press Right)
	lda	godtemp
	and	#gm6
	cmp	#gm6
	beq	.gm7
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	RIGHT
	lbne	.resetcombo
	testjoypad	DOWN
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	UP
	lbeq	.npst

	lda	godtemp
	ora	#gm6
	sta	godtemp
	jmp			.npst
.gm7 ;(R Press Left)
	lda	godtemp
	and	#gm7
	cmp	#gm7
	beq	.gm8
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	RIGHT
	lbne	.resetcombo
	testjoypad	DOWN
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	LEFT
	lbeq	.npst

	lda	godtemp
	ora	#gm7
	sta	godtemp
	jmp			.npst
.gm8 ;(R Press Right)
	lda	godtemp2
	and	#gm8
	cmp	#gm8
	beq	.gm9
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	RIGHT
	lbne	.resetcombo

	testjoypad	DOWN
	lbne	.resetcombo
	testjoypad	B
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	UP
	lbeq	.npst

	lda	godtemp2
	ora	#gm8
	sta	godtemp2
	jmp			.npst
.gm9 ;(R Press B)
	lda	godtemp2
	and	#gm9
	cmp	#gm9
	beq	.gm10
	testjoypad	A,cont0l
	lbne	.resetcombo
	testjoypad	RIGHT
	lbne	.resetcombo
	testjoypad	DOWN
	lbne	.resetcombo
	testjoypad	LEFT
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	B
	lbeq	.npst

	lda	godtemp2
	ora	#gm9
	sta	godtemp2
	jmp			.npst
.gm10 ;(R Press A)
	lda	godtemp2
	and	#gm10
	cmp	#gm10
	beq	.gm11
	testjoypad	LEFT
	lbne	.resetcombo
	testjoypad	RIGHT
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	DOWN
	lbne	.resetcombo

	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	A,cont0l
	lbeq	.npst

	lda	godtemp2
	ora	#gm10
	sta	godtemp2
	jmp			.npst
.gm11 ;(R Press Start)
	lda	godtemp2
	and	#gm11
	cmp	#gm11
	beq	.gm12
	testjoypad	RIGHT
	lbne	.resetcombo
	testjoypad	UP
	lbne	.resetcombo
	testjoypad	DOWN
	lbne	.resetcombo
	testjoypad	LEFT
	lbne	.resetcombo

	testjoypad	B
	lbne	.resetcombo
	testjoypad	X,cont0l
	lbne	.resetcombo

	testjoypad	SELECT
	lbeq	.npst

	lda	godtemp2
	ora	#gm11
	sta	godtemp2
	lda	#1
	sta	godmode
	sta	secretgodmode
	trigse	88h
.gm12	
	bra	.noimdone20
.resetcombo
	lda	#0
	sta	godtemp2 ;reset flags
	sta	godtemp ;reset flags
.noimdone20
.npst
	rts

do_bgm_generic_l2
	jml	[textpt]



