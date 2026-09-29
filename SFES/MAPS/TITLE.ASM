TITLE


; disable player's movement and wobble:
	setfadedown	quick
	mapwaitfade
	setbg	titlei
	initbg
timeovercont
	start_65816
	lda	#shipcount								;;;;;TOTAL SHIP COUNT
	sta	totalshipcountvar
	a16
	stz	lastplayz
	stz	pviewposz
	ldx	playpt
	stz	al_worldz,x
	stz	soundtest
;	lda	#$AE
;	sta soundtest
	a8
	end_65816

	mapcode_jsl	initblack_l
	setvar		stayblack,10

	mapwait	800

;	mapobj	0,0,0,0,whale1,tit_istrat

;	mapobj	0,0,30,100,myship_4,tit2_istrat
;	mapwait	100
;	mapobj	0,140,-30,300,peppy1,tit4_istrat	
;	mapwait	100
;	mapobj	0,-140,-30,300,falco1,tit3_istrat	
;	mapwait	100
;	mapobj	0,-140,70,300,slippy1,tit_istrat	
;	mapwait	100
	
	setfadeup	quick

	start_65816
	a8
	lda	playerflymode
	and	#~pfm_wobble
	sta	playerflymode

	lda	pshipflags
	ora	#psf_noctrl!psf_nofire
	sta	pshipflags

;	end_65816


;-----------------------------------------
;	start_65816
	;intro stuff
	end_65816
	mapobj	0000,-130,-31,000,t_ex_1,estrat_istrat
	mapobj	0000,41,130,00,t_ex_2,xstrat_istrat
;	IFNE	MSU1
;	mapmsgx2	154
;	ENDC
;	IFNE	SUPERFX3
;	mapmsgx2	153
;	ENDC
	start_65816

	
	
	
.startloop
	jsl	makebg2black_l
	end_65816
	mapwait	50
	start_65816
	a8
	lda	tempvar8
	cmp	#3
	beq	.donestart
	jmp_keyup	start,.notstarting
	lda	#1
	sta	tempval7
	bra	.donestart
.notstarting


	jmp	.startloop
.donestart
;--------------------------
;----stuff to do when done with the EX placement
	end_65816
	setfadedown	quick
	mapwaitfade
	setbg	title
	initbg
	maprem	t_ex_1
	maprem	t_ex_2
	setfadeup	quick
	start_65816
	lda	#1
	sta	titlfade
	lda	#33
	sta	fadepaltitle
	end_65816
	mapwait	200
	mapobj	0,0,50,300,nullshape,tit2_istrat
	mapobj	0,130,50,300,nullshape,tit4_istrat	
	mapobj	0,-130,50,300,nullshape,tit3_istrat	

	mapwait	2000

;main loop---------------------------------------------------------
.ll	start_65816
	jsl	random_l
	sta	temprand1
	jsl	random_l
	sta	temprand2
	jsl	random_l
	sta	temprand3
	jsl	random_l
	sta	temprand4			;randomizer stuff
	lda	mosaicon			;load value
	beq	.startstart			;if 0, don't display anything
	settext	0,0				;set to upper right corner
	printvar	mosaicon	;display value
.startstart
;-------------------Version Display-----------------------------------------------------------------------------
;	settext	0,0
;	printvar	gamebeaten

;	settext	15,22					;Set location of text
;	showtxt	versiontext				;Show the word "VERS"


;---------------------Version--------------------------------

	settext	20,22					;set location of text
	showtxt	version					;Show the actual version

.versionstringdone


;------------------------------------------------
	a8

	jmp_keyup	left,.nomodel			;model test mode jump (L+SELECT)
	jmp_keyup	select,.nomodel
	lda	#10
	sta	stopcounting
	trigse		171
	lda	#1
	sta	credits
	sta	menuselected
	a8
	lda	#3
	sta	pagenumber
	lda	#-1
	sta	fadedir
	jsl	setblack_l
	jsl	transfer_l

	a8
	stz	bg2vofsoverride
	end_65816
	setfadedown
	mapwaitfade
	start_65816
foxy_ptr	equ	clac
foxy_shape	equ	clam
	lda	#2								;otherwise, load position #2 and the a_wing shape
	sta	foxy_ptr
	a16
	lda	#a_wing
	sta	foxy_shape
	a8
	jsl	randomizebg
	lda	#33
	sta	fadepaltofxpink
	sta	fadepaltoyamao
	jml	foxy_continue_l	
.nomodel


	jmp_keyup	select,.clrsel
	bra	.noclrsel
.clrsel
	stz	ldown
.noclrsel
	lda	ldown
	lbne	.nomosaic
	jmp_keyup	right,.nomosaic				;MOSAIC MODE (R + SELECT)
	jmp_keyup	select,.nomosaic
	lda	#1
	sta	ldown
	lda	mosaicon
	beq	.init
	cmp	#%11111111
	beq	.reset
	inc	mosaicon
	lda	mosaicon
	sta	mosaic
	bra	.doneinit
.reset
	stz	mosaic
	stz	mosaicon
	bra	.doneinit
.init
	lda	#%00010001
	sta	mosaic
	sta	mosaicon
.doneinit
.nomosaic


	jmp_keyup	start,.nostartgame				;START GAME STUFF
	a8
	IFNE	MSU1
	msufade
	ENDC
	lda	tempval7
	bne	.nothanks
	lda	#11
	sta	stopcounting
	lda	#15
	sta	menuselected
	trigse		171
	lda	#1
	sta	credits
	a8
	lda	#-1
	sta	fadedir
	jsl	setblack_l
	jsl	transfer_l

	a8
	stz	bg2vofsoverride
	stz	subbgmmode
	stz	subbgm
	end_65816
	setfadedown
	mapwaitfade
	start_65816
	stz	titlfade
	stz	fadepaltitle
	jsl	randomizebg
	IFEQ	HARDWARE
	lda	#33
	sta	fadepaltofxpink
	sta	fadepaltoyamao
	ENDC

	jml	foxy_continue_l

.nothanks
.nostartgame					
	jmp_keydown	start,.noresetit
	stz	tempval7
.noresetit				;END START GAME STUFF
	jmp_keyup	right,.nohi			;SUPER HIGH POLY MODE (R+A+B)
	jmp_keyup	a,.nohi
	jmp_keyup	b,.nohi
	jmp_lastkeydown	b,.nohi
	lda	#1
	sta	shpmode
	trigse	14


.nohi							;quick jump to controls

	
	
;---------------NEW 3 MODELS-------------

	jmp_keyup	y,.doneqs
	jmp_keyup	x,.doneqs
	jmp_lastkeydown	x,.doneqs

	jmp_keydown	select,.noclr

	jsl	clearmap_l
.noclr
	end_65816
	
	mapobj	0,0,50,300,nullshape,tit2_istrat
	mapobj	0,130,50,300,nullshape,tit4_istrat	
	mapobj	0,-130,50,300,nullshape,tit3_istrat	
	start_65816
.doneqs
;	end_65816
;---------------FOX TEAM-------------

	jmp_keyup	y,.doneqs2
	jmp_keyup	a,.doneqs2
	jmp_lastkeydown	a,.doneqs2
	jsl	clearmap_l
	end_65816
	
	mapobj	0,-310,112,900,slippymod,hard180yrpz_istrat
	mapobj	0,-60,70,700,foxguy,hard180yrpz_istrat
	mapobj	0,55,55,270,hare,hard180yrpz_istrat
	mapobj	0,210,40,450,falcomod,hard180yrpz_istrat
	start_65816
.doneqs2
;---------------COOLER ANDROSS-------------

	jmp_keyup	y,.doneqs3
	jmp_keyup	b,.doneqs3
	jmp_lastkeydown	b,.doneqs3
	jsl	clearmap_l
	end_65816
	
	mapobj	0,0,60,330,androsshd,hard180yrpz_istrat
	start_65816
.doneqs3
	end_65816

;disabled-------------------------


	mapwait	50
	mapgoto	.ll
;.end333
;	a8
;	end_65816
;	mapwait	50
;	mapgoto	.ll
;------------------------------------------------------------


contmap	setfadedown	quick
	mapwaitfade
	setbg	cont
	initbg

	start_65816
	a16
	stz	lastplayz
	stz	pviewposz
	ldx	playpt
	stz	al_worldz,x
	a8
	lda	playerflymode
	and	#~pfm_wobble
	sta	playerflymode

;	lda	pshipflags
;	ora	#psf_noctrl!psf_nofire
;	sta	pshipflags
	end_65816

	mapwait	medpspeed*4

	mapcode_jsl	initblack_l
	setvar.n	stayblack,3
	setfadeup	quick
.ll	mapwait	4000
	mapgoto	.ll

waitmap
;;	setfadedown	quick
;;	mapwaitfade
;;	setbg	gameover
;;	initbg
;;	setfadeup	quick
;;	mapcode_jsl	initblack_l
;;	setvar	stayblack,5
;;
;;	pathobj	0,-285,200,3400,gamesh,game,255,0
;;	pathobj	0,0285,200,3400,oversh,over,255,0
;;
;;	pathobj	0,-285,200,3400,gamesh,gameover,255,0
;;	pathobj	0,0285,200,3400,oversh,gameover,255,0

.ll	mapwait	4000
	mapgoto	.ll





