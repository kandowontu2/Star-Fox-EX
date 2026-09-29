; disable player's movement and wobble:


	setfadedown	quick
	mapwaitfade

	meters_off	trans
	setbg	cred
	initbg

	start_65816
	a16
	stz	lastplayz
	stz	pviewposz
	ldx	playpt
	stz	al_worldz,x
	stz	bgmtest
	a8
	end_65816

	mapcode_jsl	initblack_l
	setvar		stayblack,10

	setvar.b	bg2vofsoverride,1
	setvar.w	bg2hofsreq,0
	setvar.w	bg2vofsreq,0

	setfadeup	quick
	mapwait	200
	start_65816
	a8
	lda	playerflymode
	and	#~pfm_wobble
	sta	playerflymode

	lda	pshipflags
	ora	#psf_noctrl!psf_nofire
	sta	pshipflags

	lda	bgmspeed
	beq	.nochange5
	cmp	#1
	beq	.slow5
	cmp	#2
	beq	.fast5
.slow5
	startbgm	$f4
	bra	.nochange5
.fast5
	startbgm	$f5
.nochange5

	end_65816

	mapjsr	actualcreds

	pathobj	000,972,-969,1000,font_t,theendt,6,4				;THE END test / End of game
	pathobj	000,-1120,1377,1000,font_h,theendh,6,4
	pathobj	000,-1019,-1530,1000,font_e,theende,6,4
	pathobj	000,1070,-1326,1000,font_e,theende2,6,4
	pathobj	000,1550+29,1323+54,1000,font_n,theendn,6,4
	pathobj	000,-1050+129,1428,1000,font_d,theendd,6,4
	mapwait	6000
	setvar.b	levelfinished,le_endofcreds
.lp	

	mapwait	1
	start_65816
	lda	#0
	sta.l	msg_count12
	sta.l	msg_count22
	sta.l	m_clrbitmaps
	sta.l	m_clrbitmaps+1
	settext	0,0
	showtext	press1text
	settext	0,1
;	showtext	press2text
;	settext	0,2
	showtext	australiatext
	a8
;	jmp_keydown	select,.donengp
	jmp_keydown	start,.donenongp
	jmp_keydown	y,.australia
	end_65816
	mapgoto	.lp
.australia
	stz	levelfinished
	a8i16
	lda	#1
	sta	scored
	a16
	lda	#0
	sta.l	playerscore
	sta.l	playerscoretemp
	a8
	lda	#australia>>16
	ldx	#australia&$7fff
	sta	mapbank
	stx	mapptr
	jml	gamestart
	end_65816
	mapjsr	level2_2

.donengp
	a8
	lda	#1
	sta	newgameplus
	stz	weaponnumberpone
	stz	weaponnumberptwo
	stz	weapptr
	stz	weapnextptr
;	jml	restart
	lda	#11
	sta	stopcounting
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
	jsl	randomizebg
	lda	#33
	sta	fadepaltofxpink
	sta	fadepaltoyamao
	jml	foxy_continue_l
	end_65816
.donenongp
	a8
	stz	weaponnumberpone
	stz	weaponnumberptwo
	stz	weapptr
	stz	weapnextptr
;	jml	restart
	lda	#11
	sta	stopcounting
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
	lda	#1
	sta.l	m_clrbitmaps
	sta.l	m_clrbitmaps+1
	jsl	randomizebg
	lda	#33
	sta	fadepaltofxpink
	sta	fadepaltoyamao
	jml	foxy_continue_l
	end_65816
	mapend

credwait	=	8000

; textpath (wait,x,y,z,text,path,colour[,size])

actualcreds
; Starfox presented by Nintendo
	mapjsr	cutcreds

	mapwait	9000-31*medpspeed
	maprts

cutcreds

	mapwait	2000
	pathobj		1200,0000,-1500,3500,nullshape,dstarfox,10,10
	textpath 	0000,1535,0000,1800,presented,dpresented,14,-48
	textpath 	0800,-1265,0000,1800,by,dpresented,14,-48
	pathobj		1200,0000,1500,3500,nullshape,dnintendo,10,10

	mapwait	credwait
	textpath	1000,2000,-750,3500,developed,dsideslip,14,75
	textpath	1000,2000,-450,3500,by,dsideslip,14,25
	textpath	1000,2000,0150,3500,argonaut,dsideslip,14,50
	textpath	1000,2000,0450,3500,dylancuthbert,dsideslip,14,50
	textpath	1000,2000,0750,3500,gilesgoddard,dsideslip,14,50
	
	mapwait	credwait
	textpath	1000,2000,-300,3500,sorry1,dsideslip,14,15
	textpath	1000,2000,0000,3500,sorry2,dsideslip,14,15
	textpath	1000,2000,0300,3500,sorry3,dsideslip,14,-5

	mapwait	credwait
	pathobj		1200,0000,-1500,4000,nullshape,dstarfoxex,10,10
	textpath 	0000,1535,0000,1800,presented,dpresented,14,-48
	textpath 	0800,-1265,0000,1800,by,dpresented,14,-48
	pathobj		1200,0000,1500,3500,nullshape,dteamsfex,10,10

	mapwait	credwait
	textpath	1000,2000,-1200,3500,programmed,dsideslip,14,75
	textpath	1000,2000,-900,3500,by,dsideslip,14,25
	textpath	0250,2000,-600,3500,kandowontu,dsideslip,14,10
	textpath	0250,2000,-420,3500,andsunlit,dsideslip,14,10
	textpath	0250,2000,-240,3500,with_code_from,dsideslip,14,10
	textpath	0250,2000,-60,3500,starxxon,dsideslip,14,10
	textpath	0250,2000,0120,3500,HayaoYokogawa,dsideslip,14,10
	textpath	0250,2000,0300,3500,coolk,dsideslip,14,10
	textpath	0250,2000,0480,3500,PHONYMIKE,dsideslip,14,10
	textpath	0250,2000,0660,3500,raphnetlabs,dsideslip,14,10
	textpath	0250,2000,0840,3500,catador,dsideslip,14,10

	mapwait	credwait
	textpath	1000,2000,-450,3500,superfxprogrammers,dsideslip,14
	textpath	1000,2000,-150,3500,chuckborrisnorris,dsideslip,14,32
	textpath	1000,2000,0150,3500,MRL314,dsideslip,14,32

	IFNE	MSU1
	mapwait	credwait
	textpath	1000,2000,-200,3500,msu1programmer,dsideslip,14
	textpath	1000,2000,200,3500,sunlit,dsideslip,14,32
	ENDC

	mapwait	credwait
	textpath	1000,2000,-1250,3500,graphicmods,dsideslip,14,75
	textpath	1000,2000,-850,3500,by,dsideslip,14,25
	textpath	0500,2000,-550,3500,segamegadrive,dsideslip,14,50
	textpath	0500,2000,-250,3500,HayaoYokogawa,dsideslip,14,50 ; y+300
	textpath	0500,2000,050,3500,sunlit,dsideslip,14,50
	textpath	0500,2000,0350,3500,Fenix,dsideslip,14,50
	textpath	0500,2000,0650,3500,randomstuff,dsideslip,14,50
	textpath	0500,2000,0950,3500,morshu,dsideslip,14,50
	textpath	0500,2000,1250,3500,onaji,dsideslip,14,50

	mapwait	credwait
	textpath	1000,2000,-1250,3500,models,dsideslip,14,75
	textpath	1000,2000,-850,3500,by,dsideslip,14,25
	textpath	0500,2000,-550,3500,euclidium,dsideslip,14,50
	textpath	0500,2000,-250,3500,randomstuff,dsideslip,14,50
	textpath	0500,2000,050,3500,coolk,dsideslip,14,50
	textpath	0500,2000,0350,3500,segamegadrive,dsideslip,14,50
	textpath	0500,2000,0650,3500,ben,dsideslip,14,50
	textpath	0500,2000,0950,3500,mightyandross,dsideslip,14,50
	textpath	0500,2000,1250,3500,sunandmoni,dsideslip,14,50
	
	mapwait	credwait
	textpath	1000,2000,-1150,3500,music,dsideslip,14,75
	textpath	1000,2000,-850,3500,by,dsideslip,14,25
	textpath	0500,2000,-550,3500,randomstuff,dsideslip,14,50
	textpath	0500,2000,-250,3500,livvy94,dsideslip,14,50
	textpath	0500,2000,0050,3500,phonymike,dsideslip,14,50
	textpath	0500,2000,0350,3500,plasmariel,dsideslip,14,50
	textpath	0500,2000,0650,3500,eg_9371,dsideslip,14,50
	textpath	0500,2000,0950,3500,studsx,dsideslip,14,50
	textpath	0500,2000,1250,3500,shub,dsideslip,14,50

; SUNLITNOTE !!MSU-1 Arrange credits are my predictions, right now it's just Random
	IFNE	MSU1
	mapwait	credwait
	textpath	1000,2000,-1350,4500,msu1arrangedost,dsideslip,14,75
	textpath	1000,2000,-850,3500,by,dsideslip,14,25
	textpath	0500,2000,-550,3500,randomstuff,dsideslip,14,50
	textpath	0500,2000,-250,3500,livvy94,dsideslip,14,50
	textpath	0500,2000,0050,3500,plasmariel,dsideslip,14,50
	textpath	0500,2000,0350,3500,shub,dsideslip,14,50
	textpath	0500,2000,0650,3500,churchofkondo,dsideslip,14,50
;	textpath	0500,2000,0350,3500,studsx,dsideslip,14,50 ; replace last line w/ these if studs has anything to do with this
;	textpath	0500,2000,0650,3500,shub,dsideslip,14,50
	ENDC

	mapwait	credwait
	textpath	1000,2000,-1200,3500,testing,dsideslip,14,75
	textpath	1000,2000,-900,3500,by,dsideslip,14,25
	textpath	0500,2000,-600,3500,sunlit,dsideslip,14,50
	textpath	0500,2000,-300,3500,chromius,dsideslip,14,50
	textpath	0500,2000,0000,3500,RandomStuff,dsideslip,14,50
	textpath	0500,2000,0300,3500,COOLK,dsideslip,14,50
	textpath	0500,2000,0600,3500,chrishighwind,dsideslip,14,50
	textpath	0500,2000,0900,3500,solgnar,dsideslip,14,50
	textpath	0500,2000,1200,3500,DOCTORWHOSTHAT,dsideslip,14,50
	
	mapwait	credwait
	textpath	1000,2000,-1200,3500,ideas,dsideslip,14,75
	textpath	1000,2000,-900,3500,by,dsideslip,14,25
	textpath	0500,2000,-300,3500,sunlit,dsideslip,14,50
	textpath	0500,2000,0000,3500,coolk,dsideslip,14,50
	textpath	0500,2000,0300,3500,randomstuff,dsideslip,14,50
	textpath	0500,2000,0600,3500,patch93,dsideslip,14,25	
	textpath	0500,2000,0900,3500,phonymike,dsideslip,14,50
	textpath	0500,2000,1200,3500,DOCTORWHOSTHAT,dsideslip,14,50

	mapwait	credwait
	textpath	1000,2000,-300,3500,team1,dsideslip,14,30
	textpath	1000,2000,0000,3500,team2,dsideslip,14,20
	textpath	1000,2000,0300,3500,team3,dsideslip,14,0
	
	mapwait	credwait
	textpath	1000,2000,-1200,3500,notforprofit,dsideslip,14,75
	textpath	1000,2000,-600,3500,modhasbeenand,dsideslip,14,25
	textpath	1000,2000,0000,3500,willalwaysbefree,dsideslip,14,25
	textpath	1000,2000,0600,3500,supportqgames,dsideslip,14,25
	textpath	1000,2000,0900,3500,supportchuhailabs,dsideslip,14,25
	textpath	1000,2000,1200,3500,supportnintendo,dsideslip,14,25
	maprts