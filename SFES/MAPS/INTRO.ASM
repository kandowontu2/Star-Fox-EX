; disable player's movement and wobble:
	setfadedown	quick
	mapwaitfade
	setbg	cred
	initbg

	start_65816
	a16
	stz	lastplayz
	stz	pviewposz
	ldx	playpt
	stz	al_worldz,x
	stz	plrotx
	stz	plroty
	stz	plrotz
	a8
	end_65816

	mapcode_jsl	initblack_l
	setvar		stayblack,10

	mapobj	0000,0000,-650,500,kandologocube,kandologo_istrat

	setfadeup	quick

	mapwait	246	800

	start_65816
	a8
	lda	playerflymode
	and	#~pfm_wobble
	sta	playerflymode

	lda	pshipflags
	ora	#psf_noctrl!psf_nofire
	sta	pshipflags

	end_65816

	; Reset SRAM?
	start_65816
	a8
	savemode
	lda	$4218
	bit	#padl_TLEFT+padl_TRIGHT
	beq	.skipwipesram
	lda	$4219
	bit	#padl_DOWN+padl_B
	beq	.skipwipesram
	trigse	$A0h ; Yes!
	phb
	lda #$71
	pha
	plb
	ai16
	ldx #$1002
	lda #$0000
.loopme
	sta $effd,x
	dex
	dex
	bpl	.loopme
	ai8
	; write magic starting at $FFFC
	lda	#$53 ;S
	sta	$FFFC
	lda	#$46 ;F
	sta	$FFFD
	lda	#$45 ;E
	sta	$FFFE
	lda	#$58 ;X
	sta	$FFFF
	returnmode
	plb
	jsl	triggerdefaults
.skipwipesram
	end_65816

; Starfox presented by Nintendo
	textpath 0000,-3000,-200,4000,kandowontu,dintro1,14
	textpath 0000,0000,000,4000,presents,dintro1,14,-32
	textpath 0000,6000,400,4000,starfoxex,dintro1,14
;	textpath 0000,9000,600,4000,exploration,dintro1,14,-32
;	textpath 0000,12000,800,4000,showcase,dintro1,14,-32

	start_65816
	a16
	lda	machinetype
	cmp	#snes9x
	lbeq	.s9x
	cmp	#canoe
	lbeq	.canoe
	cmp	#bsnes
	lbeq	.bsnes
	cmp	#mister
	lbeq	.mister
	cmp	#zsnes
	lbeq	.zsnes
	cmp	#sd2snes
	beq	.sd2snes
	cmp	#bsnesplus
	beq	.bsnesplus
	cmp	#mesen
	beq	.mesen
	cmp	#ares
	beq	.ares
	cmp	#hardwaree
	beq	.hardware
	cmp	#analoguent
	beq	.analoguent
	bra	.startloop

.analoguent
	end_65816
	mapmsgx2	152
	start_65816
	jmp	.startloop
.hardware
	end_65816
	mapmsgx2	151
	start_65816
	jmp	.startloop
.ares
	end_65816
	mapmsgx2	150
	start_65816
	jmp	.startloop
.mesen
	end_65816
	mapmsgx2	149
	start_65816
	jmp	.startloop
.sd2snes
	end_65816
	mapmsgx2	147
	start_65816
	jmp	.startloop
.bsnesplus
	end_65816
	mapmsgx2	148
	start_65816
	jmp	.startloop
	
	
.s9x
	end_65816
	mapmsgx2	144
	start_65816
	jmp	.startloop

.canoe
	end_65816
	mapmsgx2	146
	start_65816

	jmp	.startloop

.bsnes
	end_65816
	mapmsgx2	142
	start_65816
	jmp	.startloop


.mister
	end_65816
	mapmsgx2	143
	start_65816
	jmp	.startloop

.zsnes
	end_65816
	mapmsgx2	145
	start_65816
	jmp	.startloop

.startloop
	end_65816
	mapwait	3000



	mapobj	1000,50,-400,-700,f_fish,playerdown2intro_Istrat
	mapobj	1000,50,-400,-700,beeanim,playerdown3intro_Istrat

	mapobj	medpspeed*5,50,-400,-700,ray_1,playerdown3intro_Istrat
	setvarobj	mapvar1
;	mapobj	0000,0,-400,-700,nullshape,playerfireintro_Istrat
	setalvarptr.w	sword1,mapvar1
	mapmsg2	68	

	mapwait	2000


	mapobj	1000,50,-400,-700,ray_0,playerdown2intro_Istrat
	mapobj	1000,50,-400,-700,ray_1,playerdown3intro_Istrat

	mapobj	medpspeed*5,50,-400,-700,f_fish,playerdown3intro_Istrat
	mapmsg2	69
	mapwait	2000

;	mapobj	0000,0000,0,1500,face_b,monolith_istrat
	mapobj	1000,-0200,-0200,3200,luigih,luigi_istrat


	mapwait	2000
	mapmsg2	70
	mapwait	6000
;	mapobj	600,-400,-800,2000,zaco_a,zacointro_Istrat
;	mapobj	600,400,-800,2000,zaco_a,zacointro_Istrat

	mapobj	400,-400,-800,2000,f_fish,zacointro_Istrat
	mapobj	400,400,-800,2000,beeanim,zacointro_Istrat
	mapobj	400,-400,-800,2000,snake_1,zacointro_Istrat
	mapobj	400,400,-800,2000,bom_wing,zacointro_Istrat
	mapobj	400,-400,-800,2000,ray_1,zacointro_Istrat
	mapobj	400,400,-800,2000,walker_0,zacointro_Istrat
	mapmsg2	71
	mapobj	400,-400,-800,2000,air_1,zacointro_Istrat
	mapobj	400,400,-800,2000,myship_4,zacointro_Istrat
	mapobj	400,-400,-800,2000,boss_2_2,zacointro_Istrat
	mapobj	400,400,-800,2000,iris,zacointro_Istrat
	mapobj	400,000,-800,2000,ray_0,zaco2intro_Istrat

;	setvar.b	exitintro,1

.lp	mapwait	5000
	mapgoto	.lp



