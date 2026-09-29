;----------------------------------------------------
;----------------------------------------------------
;----------------------------------------------------
;-------------STAR WOLF TEAM BATTLE------------------
;----------------------------------------------------
;----------------------------------------------------
;----------------------------------------------------


starwolf_istrat
	s_start_strat
	stz	wolfdead
	s_set_alptrs	x,starwolf_strat,wolfcol_istrat,wolfexplode_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	a8
	lda	whichroute
	cmp	#4
	beq	.easy1
	cmp	#5
	beq	.med1
	s_set_aldata	x,#60,#12				;hp + ap
	s_set_bossmaxHP	#60					;set the max hp
	bra	.done1
.easy1
	s_set_aldata	x,#50,#12				;hp + ap
	s_set_bossmaxHP	#50					;set the max hp
	bra	.done1
.med1
	s_set_aldata	x,#50,#12				;hp + ap
	s_set_bossmaxHP	#50					;set the max hp
.done1
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_sbyte1,#90		;timer for state 0
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide

	s_make_obj		#wolf_1boss,.1done
	s_copy_pos		y,x
	s_add_alvar		W,y,al_worldz,#75
	s_set_alptrs	y,starwolfteam1_strat,wolfcol1_istrat,wolfexplode1_istrat	;looping strat, collision strat, explosion strat
	a8
	lda	whichroute
	cmp	#4
	beq	.easy2
	cmp	#5
	beq	.med2
	s_set_aldata	y,#60,#12				;hp + ap
	s_add_bossmaxHP	#60					;set the max hp
	bra	.done2
.easy2
	s_set_aldata	y,#50,#12				;hp + ap
	s_add_bossmaxHP	#50					;set the max hp
	bra	.done2
.med2
	s_set_aldata	y,#50,#12				;hp + ap
	s_add_bossmaxHP	#50					;set the max hp
.done2
	s_add_alvar		B,y,al_roty,#deg180
	s_set_alvar		B,y,al_sbyte1,#90		;timer for state 0
	s_set_colltype	y,ENEMY1				;collision type
	s_set_colltype	y,ENEMY2				;collision type
	s_set_colltype	y,ENEMYWEAP				;collsiion type
	s_set_alsflag		y,nohitaffect
	s_set_alsflag	y,relexplode
	s_clr_alsflag	y,collide
.1done
	s_make_obj		#wolf_1boss,.2done
	s_copy_pos		y,x
	s_add_alvar		W,y,al_worldz,#150
	s_set_alptrs	y,starwolfteam2_strat,wolfcol2_istrat,wolfexplode2_istrat	;looping strat, collision strat, explosion strat
	a8
	lda	whichroute
	cmp	#4
	beq	.easy3
	cmp	#5
	beq	.med3
	s_set_aldata	y,#60,#12				;hp + ap
	s_add_bossmaxHP	#60					;set the max hp
	bra	.done3
.easy3
	s_set_aldata	y,#50,#12				;hp + ap
	s_add_bossmaxHP	#50					;set the max hp
	bra	.done3
.med3
	s_set_aldata	y,#50,#12				;hp + ap
	s_add_bossmaxHP	#50					;set the max hp
.done3
	s_add_alvar		B,y,al_roty,#deg180
	s_set_alvar		B,y,al_sbyte1,#90		;timer for state 0
	s_set_colltype	y,ENEMY1				;collision type
	s_set_colltype	y,ENEMY2				;collision type
	s_set_colltype	y,ENEMYWEAP				;collsiion type
	s_set_alsflag		y,nohitaffect
	s_set_alsflag	y,relexplode
	s_clr_alsflag	y,collide
.2done
	s_make_obj		#wolf_1boss,.3done
	s_copy_pos		y,x
	s_add_alvar		W,y,al_worldz,#225
	s_set_alptrs	y,starwolfteam3_strat,wolfcol3_istrat,wolfexplode3_istrat	;looping strat, collision strat, explosion strat
	a8
	lda	whichroute
	cmp	#4
	beq	.easy4
	cmp	#5
	beq	.med4
	s_set_aldata	y,#60,#12				;hp + ap
	s_add_bossmaxHP	#60					;set the max hp
	bra	.done4
.easy4
	s_set_aldata	y,#50,#12				;hp + ap
	s_add_bossmaxHP	#50					;set the max hp
	bra	.done4
.med4
	s_set_aldata	y,#50,#12				;hp + ap
	s_add_bossmaxHP	#50					;set the max hp
.done4
	s_add_alvar		B,y,al_roty,#deg180
	s_set_alvar		B,y,al_sbyte1,#90		;timer for state 0
	s_set_colltype	y,ENEMY1				;collision type
	s_set_colltype	y,ENEMY2				;collision type
	s_set_colltype	y,ENEMYWEAP				;collsiion type
	s_set_alsflag		y,nohitaffect
	s_set_alsflag	y,relexplode
	s_clr_alsflag	y,collide
.3done

	
.donemsgs


	
;------THE FUCKING WOLF HIMSELF AHHHHHHHHHHHH------------
;------THE FUCKING WOLF HIMSELF AHHHHHHHHHHHH------------
;------THE FUCKING WOLF HIMSELF AHHHHHHHHHHHH------------
;------THE FUCKING WOLF HIMSELF AHHHHHHHHHHHH------------
;------THE FUCKING WOLF HIMSELF AHHHHHHHHHHHH------------


starwolf_strat				;Wolf
	s_start_strat
	lda.l	al_hp,x
	lbeq	wolfexplode_istrat
	lbmi	wolfexplode_istrat
	
	s_set_objtobeplayer	y
;---------------------------------------		State 0 - move into starting position

;	jmp	.not6			;skip to test other guys
	
	
	s_jmp_ifnotstate		x,0,.not0
	s_sub_alvar				W,x,al_worldz,#30
	s_decbne_alvar			B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_set_alvar			B,x,al_sbyte1,#50
	s_make_obj		#nullshape,.not0
	s_set_strat		y,wolfmessageintro_istrat
	s_next_state			x						;timer done, next state


.not0

;---------------------------------------		State 1 - Go high up, fire lasers

	s_jmp_ifnotstate	x,1,.not1
	s_achase_alvar		W,x,al_worldx,#-30,5
	s_achase_alvar		W,x,al_worldy,#-400,5

	s_jmp_notdelay		3,.nofire1				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relslowelaser
.nofire1
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not1

;--------------------------------------

	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar		W,x,al_worldx,#-330,5
	s_achase_alvar		W,x,al_worldy,#-100,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3	
	s_jmp_notdelay		3,.nofire2			
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relslowelaser
.nofire2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not2


;--------------------------------------

	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldx,#120,5
	s_achase_alvar		W,x,al_worldy,#-200,5
	
	
	s_jmp_notdelay		3,.nofire3			
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not3
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not3


;--------------------------------------

	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldx,#400,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz
	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire4				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire4
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not4


;--------------------------------------

	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar		W,x,al_worldx,#-100,5
	s_achase_alvar		W,x,al_worldy,#-100,5
	
	
	s_jmp_notdelay		4,.nofire5		
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire5
	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not5


;--------------------------------------

	s_jmp_ifnotstate	x,6,.not6
	s_achase_alvar		W,x,al_worldx,#100,5
	s_achase_alvar		W,x,al_worldy,#-50,5

	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz
	
	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	
	s_jmp_notdelay		4,.nofire6		
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire6
	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#50
	a8
	lda	whichroute
	cmp	#6
	bne	.gobackto1
	s_next_state	x
	s_set_alvar			B,x,al_sbyte1,#90
	bra	.not6
	
.gobackto1
	s_set_state			x,#1

.not6

;------------------------------------------

	s_jmp_ifnotstate	x,7,.not7
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_jmp_notdelay		4,.noball
	s_make_obj			#fireballz,.noball
	s_set_colltype		y,ENEMY1
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP
	s_set_aldata	y,#12,#15
	s_copy_rots		y,x
	s_copy_pos		y,x
	s_set_alsflag	y,collide
	s_clr_alsflag	y,nohitaffect
	s_clr_alsflag	y,colldisable
	phx
	s_set_objtobeplayer	x
	s_copy_alvar2alvar	W,y,al_sword1,x,al_worldx
	s_copy_alvar2alvar	W,y,al_sword2,x,al_worldy
	plx
	s_set_alptrs	y,ballshot_istrat,hitflash_istrat,explode_istrat	
.noball

	s_decbne_alvar		B,x,al_sbyte1,.not7
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x


.not7


;-------------------------------------------

	s_jmp_ifnotstate	x,8,.not8
	s_achase_alvar		W,x,al_worldx,#-400,5
	s_achase_alvar		W,x,al_worldy,#-200,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire7		
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire7

	s_decbne_alvar		B,x,al_sbyte1,.not8
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#1



.not8



	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x
	s_end_strat



ballshot_istrat
	s_start_strat
	s_achase_alvar2alvar	W,x,al_worldx,x,al_sword1,2
	s_achase_alvar2alvar	W,x,al_worldy,x,al_sword2,2
	s_add_alvar				W,x,al_worldz,#20
	s_end_strat






;--------LEON-----------------	
;--------LEON-----------------	
;--------LEON-----------------	
;--------LEON-----------------	
;--------LEON-----------------	
;--------LEON-----------------	

starwolfteam1_strat			;leon
	s_start_strat
	lda.l	al_hp,x
	lbeq	wolfexplode1_istrat
	lbmi	wolfexplode1_istrat

	s_set_objtobeplayer	y
;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate		x,0,.not0
	s_sub_alvar				W,x,al_worldz,#30
	s_decbne_alvar			B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state			x						;timer done, next state


.not0

;---------------------------------------		State 1 - Go far left up, fire lasers

	s_jmp_ifnotstate	x,1,.not1
	s_achase_alvar		W,x,al_worldx,#-400,5
	s_achase_alvar		W,x,al_worldy,#-200,5

	s_jmp_notdelay		4,.nofire1				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire1
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x

.not1

;----------------------------------------

	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar		W,x,al_worldx,#50,5
	s_achase_alvar		W,x,al_worldy,#-350,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire2				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#40
	s_next_state		x

.not2

;----------------------------------------

	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldx,#-150,5
	s_achase_alvar		W,x,al_worldy,#-100,5

	s_jmp_notdelay		4,.nofire3
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relovalbeam
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not3
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x

.not3

;----------------------------------------

	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldx,#50,5
	s_achase_alvar		W,x,al_worldy,#-120,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire4
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,plasma
.nofire4
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar			B,x,al_sbyte1,#35
	s_next_state		x

.not4

;----------------------------------------

	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar		W,x,al_worldx,#-250,5
	s_achase_alvar		W,x,al_worldy,#-420,5

	s_jmp_notdelay		4,.nofire5
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,vortex1
.nofire5
	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#45
	s_next_state		x

.not5

;----------------------------------------

	s_jmp_ifnotstate	x,6,.not6
	s_achase_alvar		W,x,al_worldx,#250,5
	s_achase_alvar		W,x,al_worldy,#-300,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire6
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relslowelaser
.nofire6
	s_decbne_alvar		B,x,al_sbyte1,.not6
	s_set_alvar			B,x,al_sbyte1,#50
;	a8
;	lda	whichroute
;	cmp	#6
;	bne	.gobackto1
;	s_set_alvar			B,x,al_sbyte1,#30
;	s_next_state	x
;	bra	.not6
	
.gobackto1
	s_set_state			x,#1

.not6


;------------------------------------------

	s_jmp_ifnotstate	x,7,.not7
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_decbne_alvar		B,x,al_sbyte1,.not7
	s_set_alvar			B,x,al_sbyte1,#60



	s_next_state		x


.not7


;-------------------------------------------

	s_jmp_ifnotstate	x,8,.not8
	s_achase_alvar		W,x,al_worldx,#-150,5
	s_achase_alvar		W,x,al_worldy,#-300,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire7		
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire7

	s_decbne_alvar		B,x,al_sbyte1,.not8
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#1



.not8
;----------------------------------------

	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x
	s_end_strat













;------PIGMA-----------------
;------PIGMA-----------------
;------PIGMA-----------------
;------PIGMA-----------------
;------PIGMA-----------------

starwolfteam2_strat			;pigma
	s_start_strat
	lda.l	al_hp,x
	lbeq	wolfexplode2_istrat
	lbmi	wolfexplode2_istrat

	s_set_objtobeplayer	y
;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate		x,0,.not0
	s_sub_alvar				W,x,al_worldz,#30
	s_decbne_alvar			B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state			x						;timer done, next state


.not0

;---------------------------------------		State 1 - Go far left up, fire lasers

	s_jmp_ifnotstate	x,1,.not1
	s_achase_alvar		W,x,al_worldx,#200,5
	s_achase_alvar		W,x,al_worldy,#-300,5

	s_jmp_notdelay		3,.nofire1				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire1
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x

.not1

;----------------------------------------

	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar		W,x,al_worldx,#400,5
	s_achase_alvar		W,x,al_worldy,#-130,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire2				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relslowelaser
.nofire2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x

.not2

;----------------------------------------

	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldx,#-250,5
	s_achase_alvar		W,x,al_worldy,#-420,5

	s_jmp_notdelay		4,.nofire3
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not3
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x

.not3

;----------------------------------------

	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldx,#-450,5
	s_achase_alvar		W,x,al_worldy,#-250,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire4
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl	fire_orb
.nofire4
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not4

;----------------------------------------

	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar		W,x,al_worldx,#200,5
	s_achase_alvar		W,x,al_worldy,#-50,5

	s_jmp_notdelay		3,.nofire5
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relslowelaser
.nofire5
	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x

.not5

;----------------------------------------

	s_jmp_ifnotstate	x,6,.not6
	s_achase_alvar		W,x,al_worldx,#-200,5
	s_achase_alvar		W,x,al_worldy,#-150,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire6
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire6
	s_decbne_alvar		B,x,al_sbyte1,.not6
	s_set_alvar			B,x,al_sbyte1,#50
;	a8
;	lda	whichroute
;	cmp	#6
;	bne	.gobackto1
;	s_set_alvar			B,x,al_sbyte1,#30
;	s_next_state	x
;	bra	.not6	
	
.gobackto1
	s_set_state			x,#1

.not6

;------------------------------------------

	s_jmp_ifnotstate	x,7,.not7
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_decbne_alvar		B,x,al_sbyte1,.not7
	s_set_alvar			B,x,al_sbyte1,#60



	s_next_state		x


.not7


;-------------------------------------------

	s_jmp_ifnotstate	x,8,.not8
	s_achase_alvar		W,x,al_worldx,#100,5
	s_achase_alvar		W,x,al_worldy,#-300,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire7		
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire7

	s_decbne_alvar		B,x,al_sbyte1,.not8
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#1



.not8
;----------------------------------------

	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x
	s_end_strat






;----ANDREW-----------------------------
;----ANDREW-----------------------------
;----ANDREW THE LAST BASTARD CHILD------
;----ANDREW WHO SHOULD HAVE BEEN PUT UP FOR ADOPTION-----------------------------
;----ANDREWWWWWW WHY-----------------------------
;----WHY ANDREW WHY------------------------------------------------------
;-----;_;----------------------------------------------------------


starwolfteam3_strat			;andrew
	s_start_strat
	lda.l	al_hp,x
	lbeq	wolfexplode3_istrat
	lbmi	wolfexplode3_istrat

	s_set_objtobeplayer	y
;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate		x,0,.not0
	s_sub_alvar				W,x,al_worldz,#30
	s_decbne_alvar			B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_set_alvar			B,x,al_sbyte1,#45
	s_next_state			x						;timer done, next state


.not0

;---------------------------------------		State 1 - Go far left up, fire lasers

	s_jmp_ifnotstate	x,1,.not1
	s_achase_alvar		W,x,al_worldx,#450,5
	s_achase_alvar		W,x,al_worldy,#-50,5

	s_jmp_notdelay		4,.nofire1				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl			fire_hplasma
.nofire1
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x

.not1

;----------------------------------------

	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar		W,x,al_worldx,#230,5
	s_achase_alvar		W,x,al_worldy,#-500,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire2				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#40
	s_next_state		x

.not2

;----------------------------------------

	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldx,#350,5
	s_achase_alvar		W,x,al_worldy,#-120,5

	s_jmp_notdelay		4,.nofire3
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not3
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x

.not3

;----------------------------------------

	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldx,#-200,5
	s_achase_alvar		W,x,al_worldy,#-50,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire4
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl	fire_bosshmissile1
.nofire4
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar			B,x,al_sbyte1,#50
	s_next_state		x

.not4

;----------------------------------------

	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar		W,x,al_worldx,#-500,5
	s_achase_alvar		W,x,al_worldy,#-250,5

	s_jmp_notdelay		3,.nofire5
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relslowelaser
.nofire5
	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x

.not5

;----------------------------------------

	s_jmp_ifnotstate	x,6,.not6
	s_achase_alvar		W,x,al_worldx,#-400,5
	s_achase_alvar		W,x,al_worldy,#-500,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		4,.nofire6
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire6
	s_decbne_alvar		B,x,al_sbyte1,.not6
	s_set_alvar			B,x,al_sbyte1,#50
;	a8
;	lda	whichroute
;	cmp	#6
;	bne	.gobackto1
;	s_next_state	x
;	s_set_alvar			B,x,al_sbyte1,#30
;	bra	.not6	
	
.gobackto1
	s_set_state			x,#1

.not6

;------------------------------------------

	s_jmp_ifnotstate	x,7,.not7
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_decbne_alvar		B,x,al_sbyte1,.not7
	s_set_alvar			B,x,al_sbyte1,#60



	s_next_state		x


.not7


;-------------------------------------------

	s_jmp_ifnotstate	x,8,.not8
	s_achase_alvar		W,x,al_worldx,#350,5
	s_achase_alvar		W,x,al_worldy,#-200,5
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	a16
	lda		targetx
	clc
	adc	#700
	sta	targetx
	s_achase_alvar		W,x,al_worldz,targetx,3
	s_jmp_notdelay		3,.nofire7		
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire7

	s_decbne_alvar		B,x,al_sbyte1,.not8
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#1



.not8
;----------------------------------------

	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x
	s_end_strat



wolfexplode_istrat
	s_start_strat
	saymsg	184
.dones
	lda	wolfdead
	cmp	#3
	bpl	.qexp
	inc	wolfdead
	s_jmp	bigexplode_Istrat
	s_end_strat
.qexp
	stz	wolfdead
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat

	s_end_strat


wolfexplode1_istrat
	s_start_strat
	saymsg	186
.dones
	lda	wolfdead
	cmp	#3
	bpl	.qexp
	inc	wolfdead
	s_jmp	bigexplode_Istrat
	s_end_strat
.qexp
	stz	wolfdead
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat

	s_end_strat


wolfexplode2_istrat
	s_start_strat
	saymsg	185
dones
	lda	wolfdead
	cmp	#3
	bpl	qexp
	inc	wolfdead
	s_jmp	bigexplode_Istrat
	s_end_strat
qexp
	stz	wolfdead
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat

	s_end_strat


wolfexplode3_istrat
	s_start_strat
	saymsg	187
.dones
	lda	wolfdead
	cmp	#3
	bpl	.qexp
	inc	wolfdead
	s_jmp	bigexplode_Istrat
	s_end_strat
.qexp
	stz	wolfdead
	s_and_var	B,strat_valid,#~brflag		
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat

	s_end_strat



wolfcol_istrat
	s_start_strat
ughanotherparentlabel
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	wolfexplode_istrat
	lbeq	wolfexplode_istrat


	s_jmp_alvareq	B,x,al_sbyte2,#1,.nomessage
	lda.w	al_hp,x
	cmp	#17

	bpl	.nomessage
	saymsg	188
	s_set_alvar		B,x,al_sbyte2,#1
.nomessage
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat

wolfcol1_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	wolfexplode1_istrat
	lbeq	wolfexplode1_istrat
	s_jmp_alvareq	B,x,al_sbyte2,#1,.nomessage
	lda.w	al_hp,x
	cmp	#17
	bpl	.nomessage
	saymsg	190
	s_set_alvar		B,x,al_sbyte2,#1
.nomessage
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat

wolfcol2_istrat
	s_start_strat
parantlaaaa
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	wolfexplode2_istrat
	lbeq	wolfexplode2_istrat
	s_jmp_alvareq	B,x,al_sbyte2,#1,.nomessage
	lda.w	al_hp,x
	cmp	#17

	bpl	.nomessage
	saymsg	189
	s_set_alvar		B,x,al_sbyte2,#1
.nomessage
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat

wolfcol3_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	wolfexplode3_istrat
	lbeq	wolfexplode3_istrat
	s_jmp_alvareq	B,x,al_sbyte2,#1,.nomessage
	lda.w	al_hp,x
	cmp	#17

	bpl	.nomessage
	saymsg	191
	s_set_alvar		B,x,al_sbyte2,#1
.nomessage
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat






;--------------------------------------


wolfmessageintro_istrat
	s_start_strat
	s_setnoremove_behind	x
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_strat			x,wolfmessageintro_strat
	
wolfmessageintro_strat
	s_start_strat

	s_jmp_ifnotstate		x,0,.not0
	saymsg	179
	s_set_state			x,#1
.done1
.not0
	s_jmp_ifnotstate		x,1,.not1
	s_decbne_alvar		B,x,al_sbyte1,.not1
	saymsg	180
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#2
.not1
	s_jmp_ifnotstate		x,2,.not2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	saymsg	181
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#3
.not2
	s_jmp_ifnotstate		x,3,.not3
	s_decbne_alvar		B,x,al_sbyte1,.not3
	saymsg	178
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#4
.not3
	s_jmp_ifnotstate		x,4,.not4
	s_decbne_alvar		B,x,al_sbyte1,.not4
	saymsg	183
	s_set_alvar			B,x,al_sbyte1,#50
	s_set_state			x,#5
.not4
	s_jmp_ifnotstate	x,5,.not5
	s_remove_obj		x
.not5
	
	s_end_strat



;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------
;---------------------------------------------------------




luigi_istrat
	s_start_strat
	s_set_alptrs	x,luigi_strat,luigicol_istrat,luigiexplode_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	a8
	lda	whichroute
	cmp	#4
	beq	.easy
	cmp	#5
	beq	.medium
	s_set_aldata	x,#120,#25				;hp + ap
	s_set_bossmaxHP	#120					;set the max hp
	bra	.donehp
.easy
	s_set_aldata	x,#85,#15				;hp + ap
	s_set_bossmaxHP	#85					;set the max hp
	bra	.donehp
.medium
	s_set_aldata	x,#95,#20				;hp + ap
	s_set_bossmaxHP	#95					;set the max hp
	bra	.donehp
.donehp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_sbyte1,#90		;timer for state 0
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide
	s_make_obj		#marioh,.1done
	s_copy_pos		y,x
	s_setnoremove_behind	y
	s_add_alvar		W,y,al_worldx,#400
	s_set_alptrs	y,mario_strat,mariocol_istrat,marioexplode_istrat	;looping strat, collision strat, explosion strat
	a8
	lda	whichroute
	cmp	#4
	beq	.easy1
	cmp	#5
	beq	.medium1
	s_set_aldata	y,#120,#25				;hp + ap
	s_add_bossmaxHP	#120					;set the max hp
	bra	.donehp1
.easy1
	s_set_aldata	y,#85,#15				;hp + ap
	s_add_bossmaxHP	#85					;set the max hp
	bra	.donehp1
.medium1
	s_set_aldata	y,#95,#20				;hp + ap
	s_add_bossmaxHP	#95					;set the max hp
.donehp1
	s_set_alvar		B,y,al_roty,#deg180
	s_set_alvar		B,y,al_sbyte1,#90		;timer for state 0
	s_set_colltype	y,ENEMY1				;collision type
	s_set_colltype	y,ENEMY2				;collision type
	s_set_colltype	y,ENEMYWEAP				;collsiion type
	s_set_alsflag		y,nohitaffect
	s_set_alsflag	y,relexplode
	s_clr_alsflag	y,collide
.1done

;----------------LUIGI--------------
;----------------LUIGI--------------
;----------------LUIGI--------------
;----------------LUIGI--------------
;----------------LUIGI--------------

luigi_strat
	s_start_strat
	lda.l	al_hp,x
	lbeq	luigiexplode_istrat
	lbmi	luigiexplode_istrat

	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz
	a16
	lda	targetx
	clc
	adc	#700
	sta	targetx
	a8
;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate	x,0,.not0
	s_jmp_zdistless		x,y,#1000,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar		B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x						;timer done, next state
.not0

;------------------------------------------

	s_jmp_ifnotstate	x,1,.not1
	s_face_player		x,2,0
	s_achase_alvar		W,x,al_worldy,#-400,4
	s_achase_alvar		W,x,al_worldx,#300,4
	s_achase_alvar		W,x,al_worldz,targetx,4
	s_jmp_notdelay		3,.nofire2				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire2

	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x
	
	
.not1

;------------------------------------------
LAAAABEL
	s_jmp_ifnotstate	x,2,.not2
	s_face_player		x,2,0
	s_achase_alvar		W,x,al_worldy,#-100,4
	s_achase_alvar		W,x,al_worldx,#-400,4
	s_achase_alvar		W,x,al_worldz,targetx,4
	s_jmp_notdelay		4,.nofire3
	jsr		fire_bonfiree
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#90
	s_next_state		x
	
	
.not2

;------------------------------------------
labl
	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldy,#-500,3
	s_achase_alvar		W,x,al_worldx,#100,3
	s_achase_alvar		W,x,al_worldz,targetx,4
	s_add_alvar			B,x,al_roty,#10
	s_add_alvar			B,x,al_rotz,#10
	s_jmp_notdelay		4,.nofire4				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire4
	s_decbne_alvar		B,x,al_sbyte1,.not3
;	s_set_alvar			B,x,al_sbyte1,#70
	s_set_objtobeplayer	y
;	s_copy_alvar2var	W,y,targetx,al_worldx
;	s_copy_alvar2var	W,y,targety,al_worldy
	s_copy_alvar2var	W,y,targetx2,al_worldx
	s_copy_alvar2var	W,y,targety2,al_worldy
	s_next_state		x
	
	
.not3
;------------------------------------------
PARROT
	s_jmp_ifnotstate	x,4,.not4
	
	s_achase_alvar		W,x,al_worldy,targety2,2
	s_achase_alvar		W,x,al_worldx,targetx2,2
;fire stuff	
	s_jmp_alvareq		B,x,al_sbyte4,#1,.goback
	s_achase_alvar			B,x,al_rotx,#0,4
	s_achase_alvar			B,x,al_roty,#deg180,4
	s_achase_alvar			B,x,al_rotz,#0,4
	s_sub_alvar				W,x,al_worldz,#30
	a16
	lda.w				al_worldz,x
	sec
	sbc.w				al_worldz,y		;subtract players z
	bmi	.change
;	s_jmp_zdistless		x,y,#110,.change
	a8
	bra	.donemovement
.goback


	s_add_alvar			W,x,al_worldz,#30
	s_jmp_zdistmore		x,y,#1000,.change2
	bra	.donemovement
	
.change
	a8
	s_set_alvar		B,x,al_sbyte4,#1
	s_add_alvar			W,x,al_worldz,#30
	bra	.donemovement

.change2
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x
.donemovement	
	
.not4

;-------------------------------------
PAREN
	s_jmp_ifnotstate	x,5,.not5
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_face_player		x,2,0
	s_achase_alvar		W,x,al_worldy,#-500,3
	s_achase_alvar		W,x,al_worldz,targetx,4
	s_achase_alvar		W,x,al_worldx,#-500,3	
	s_jmp_notdelay		4,.nofire6
	jsr		fire_bonfiree
.nofire6

	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#70
	s_set_state		x,#1
.not5

;------------------

	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x	
	s_end_strat














;---------MARIO--------------
;---------MARIO--------------
;---------MARIO--------------
;---------MARIO--------------
;---------MARIO--------------


mario_strat
	s_start_strat
	lda.l	al_hp,x
	lbeq	marioexplode_istrat
	lbmi	marioexplode_istrat

	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targety,al_worldz
	a16
	lda	targety
	clc
	adc	#700
	sta	targety
	a8	
;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate		x,0,.not0
	s_jmp_zdistless		x,y,#1000,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar			B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state			x						;timer done, next state
.not0	

;------------------------------------------

	s_jmp_ifnotstate	x,1,.not1
	s_face_player		x,2,0
	s_achase_alvar		W,x,al_worldy,#-400,4
	s_achase_alvar		W,x,al_worldx,#-300,4
	s_achase_alvar		W,x,al_worldz,targety,4

	s_jmp_notdelay		3,.nofire2				
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire2

	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x
	
	
.not1

;------------------------------------------
PARANTLABAL
	s_jmp_ifnotstate	x,2,.not2
	s_face_player		x,2,0
	s_achase_alvar		W,x,al_worldy,#-100,4
	s_achase_alvar		W,x,al_worldx,#400,4
	s_achase_alvar		W,x,al_worldz,targety,4
	s_jmp_notdelay		4,.nofire3
	jsr		fire_bonfiree
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#90
	s_next_state		x
	
	
.not2


;------------------------------------------
parentlabelbccompilersucks
	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldy,#-500,3
	s_achase_alvar		W,x,al_worldx,#-100,3
	s_achase_alvar		W,x,al_worldz,targety,4
	s_sub_alvar			B,x,al_roty,#10
	s_sub_alvar			B,x,al_rotz,#10
	s_jmp_notdelay		4,.nofire4				
	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire4
	s_decbne_alvar		B,x,al_sbyte1,.not3
;	s_set_alvar			B,x,al_sbyte1,#70
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldx
	s_copy_alvar2var	W,y,targety2,al_worldy
	s_next_state		x
	
	
.not3


;--------------------------
;------------------------------------------

	s_jmp_ifnotstate	x,4,.not4
	
	s_achase_alvar		W,x,al_worldy,targety2,2
	s_achase_alvar		W,x,al_worldx,targetx2,2
;fire stuff	
	s_jmp_alvareq		B,x,al_sbyte4,#1,.goback
	s_achase_alvar			B,x,al_rotx,#0,4
	s_achase_alvar			B,x,al_roty,#deg180,4
	s_achase_alvar			B,x,al_rotz,#0,4
	s_sub_alvar				W,x,al_worldz,#30
	a16
	lda.w				al_worldz,x
	sec
	sbc.w				al_worldz,y		;subtract players z
	bmi	.change
	a8
	bra	.donemovement
.goback
	s_add_alvar			W,x,al_worldz,#30
	s_jmp_zdistmore		x,y,#1000,.change2
	bra	.donemovement
	
.change
	a8
	s_set_alvar		B,x,al_sbyte4,#1
	s_add_alvar			W,x,al_worldz,#30
	bra	.donemovement

.change2
	s_set_alvar			B,x,al_sbyte1,#70
	s_next_state		x
.donemovement	
	
.not4

;-------------------------------------

	s_jmp_ifnotstate	x,5,.not5
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_face_player		x,2,0
	s_achase_alvar		W,x,al_worldy,#-500,3
	s_achase_alvar		W,x,al_worldx,#500,3	
	s_achase_alvar		W,x,al_worldz,targety,4
	s_jmp_notdelay		4,.nofire6
	jsr		fire_bonfiree
.nofire6
	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_set_alvar			B,x,al_sbyte1,#70
	s_set_state		x,#1
.not5

;---------------------------------------------

	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x	
	s_end_strat
	
;-------------------------------
;-------------------------------
;-------------------------------
;-------------------------------

luigicol_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	s_set_objtobealvar	y,x,al_collobjptr	;set collision object to Y
	cpy	playpt			;compare it to the player's object
	beq	.player			;if its the player, don't take any damage
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	luigiexplode_istrat
	lbeq	luigiexplode_istrat
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat
	
mariocol_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	s_set_objtobealvar	y,x,al_collobjptr	;set collision object to Y
	cpy	playpt			;compare it to the player's object
	beq	.player			;if its the player, don't take any damage
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	marioexplode_istrat
	lbeq	marioexplode_istrat
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat
	
	
luigiexplode_istrat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide

;	a8
	lda	wolfdead
	bne	.qexp
	inc	wolfdead
	s_jmp	bigexplode_Istrat
	s_end_strat
.qexp	LOCAL
	lda	twoplayer
	beq	.no2
	lda	#0
	sta	hudrot+1
	jsl	doascene
	stz	twoplayer	
	
.no2
	stz	wolfdead
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
;	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat
	
marioexplode_istrat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide

;	a8
	lda	wolfdead
	bne	.qexp
	inc	wolfdead
	s_jmp	bigexplode_Istrat
	s_end_strat
.qexp
	lda	twoplayer
	beq	.no2
	lda	#0
	sta	hudrot+1
	jsl	doascene
	stz	twoplayer	
	
.no2
	stz	wolfdead
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
;	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat
	



fire_bonfiree_l
	jsr	fire_bonfiree
	rtl

fire_bonfiree
	s_make_obj	#fireball,.ng
	s_copy_pos	y,x
;	s_set_alvar	W,y,al_worldy,#0
	s_set_strat	y,bonfiree_istrat
	s_set_alvar	B,y,al_sbyte1,#0
	s_set_colltype	y,ENEMY1
	s_set_colltype	y,ENEMY2
	s_set_colltype	y,ENEMYWEAP	
	trigse		$99
	phx
	tyx
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,0
	plx
.ng
	rts
	
bonfiree_istrat
	s_start_strat
	s_set_alptrs	x,.strat,hitflash_istrat,explode_istrat
	s_set_alsflag	x,nohitaffect
	s_set_aldata	x,#hardHP,#hardAP
	s_set_coltab	x,#bonfire_c
	s_set_colltype	x,ENEMYWEAP
	s_sprite_obj	x,#0
	s_set_alvar	B,x,al_speed,#120
	s_gen_3dvecs	x,al_roty,al_rotx,al_speed
.strat	s_start_strat
	s_make_obj	#fireball,.ng
	s_copy_pos	y,x
	s_set_strat	y,.dummdumm_strat
	s_set_alsflag	y,colldisable
.ng
	s_add_vecs2pos	x
	s_cmp_alvar	B,x,al_sbyte1,#10
	beq		.rem6
	s_inc_alvar	B,x,al_sbyte1
	s_add_playerz	x
	s_end_strat
.rem6	s_remove_obj	x
	s_end_strat

.dummdumm_strat
	s_start_strat
	s_set_colltype	x,ENEMY1
	s_set_colltype	x,ENEMY2
	s_set_colltype	x,ENEMYWEAP
	s_set_coltab	x,#bonfire_c
	s_sprite_obj	x,#1
	s_cmp_alvar	B,x,al_sbyte1,#10
	beq		.rem7
	s_inc_alvar	B,x,al_sbyte1
	s_add_playerz	x
	s_end_strat
.rem7	s_remove_obj	x
	s_end_strat


fire_bonfireee
	s_make_obj	#firecomet,.ng
	s_copy_pos	y,x
;	s_set_alvar	W,y,al_worldy,#0
	s_set_strat	y,bonfireee_istrat
	s_set_alvar	B,y,al_sbyte1,#0
	s_set_colltype	y,ENEMY1
	s_set_colltype	y,ENEMY2
	s_set_colltype	y,ENEMYWEAP	
	trigse		$99
	phx
	tyx
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,0
	plx
.ng
	rts
	
bonfireee_istrat
	s_start_strat
	s_set_alptrs	x,.strat,hitflash_istrat,explode_istrat
	s_set_alsflag	x,nohitaffect
	s_set_aldata	x,#hardHP,#hardAP
;	s_set_coltab	x,#firepit_c
	s_set_colltype	x,ENEMYWEAP
	s_sprite_obj	x,#0
	s_set_alvar	B,x,al_speed,#120
	s_gen_3dvecs	x,al_roty,al_rotx,al_speed
.strat	s_start_strat
	s_make_obj	#firecomet,.ng
	s_copy_pos	y,x
	s_set_strat	y,.dummdumm_strat
	s_set_alsflag	y,colldisable
.ng
	s_add_vecs2pos	x
	s_cmp_alvar	B,x,al_sbyte1,#10
	beq		.rem
	s_inc_alvar	B,x,al_sbyte1
	s_add_playerz	x
	s_end_strat
.rem	s_remove_obj	x
	s_end_strat

.dummdumm_strat
	s_start_strat
	s_set_colltype	x,ENEMY1
	s_set_colltype	x,ENEMY2
	s_set_colltype	x,ENEMYWEAP
;	s_set_coltab	x,#firepit_c
	s_sprite_obj	x,#0
	s_cmp_alvar	B,x,al_sbyte1,#10
	beq		.rem2
	s_inc_alvar	B,x,al_sbyte1
	s_add_playerz	x
	s_end_strat
.rem2	s_remove_obj	x
	s_end_strat




;--------------------------------------------------
;--------------------------------------------------
;----------------BLACK ROSE------------------------
;--------------------------------------------------
;--------------------------------------------------

blackrose_istrat
	s_start_strat
	s_set_alptrs	x,blackrose_strat,blackrosecol_strat,blackroseexp_strat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#105,#20				;hp + ap
	s_set_bossmaxHP	#105					;set the max hp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_set_alsflag	x,colldisable
	s_clr_alsflag	x,collide
	s_set_alvar		B,x,al_sbyte1,#90		;timer for state 0



blackrose_strat
	s_start_strat
	lda.l	al_hp,x
	lbeq	blackroseexp_strat	
	lbmi	blackroseexp_strat

	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldz
	a16
	lda	targetx2
	clc
	adc	#700
	sta	targetx2
	a8
	
	s_jmp_alvarNE		B,x,al_sbyte4,#0,.nospincycle
	IFNE	psychotic
	s_jmp_notdelay		6,.nospincycle
	ELSEIF
	s_jmp_notdelay		7,.nospincycle
	ENDC
	s_set_alvar			B,x,al_sbyte4,#1
	s_set_alvar			B,x,al_sbyte5,#40
.nospincycle
	jsr				spincycle				;check for spin flag, do z rotations
;---------------------------------------		State 0 - move into starting position
	s_jmp_ifnotstate	x,0,.not0
	s_jmp_zdistless		x,y,#600,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar		B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_clr_alsflag	x,colldisable

	s_set_alvar			B,x,al_sbyte1,#60
	a16
	lda	#350
	sta	targetx3
	lda	#-400
	sta	targety3
	a8
	s_next_state		x						;timer done, next state
	s_make_obj		#nullshape,.not0
	s_set_strat		y,panthermsg_istrat
.not0

;--------------------------

	
	s_jmp_ifnotstate	x,1,.not1
	s_achase_alvar	W,x,al_worldz,targetx2,4
	s_achase_alvar	W,x,al_worldx,targetx3,4
	s_achase_alvar	W,x,al_worldy,#-400,4
	a16
	lda	targetx3
	sec
	sbc	#20
	sta	targetx3
	a8
	s_jmp_notdelay		3,.nofire4				
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,hplasma
.nofire4

	s_decbne_alvar		B,x,al_sbyte1,.not1		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x						;timer done, next state
.not1

;--------------------------

	
	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar	W,x,al_worldx,#0,4
	s_achase_alvar	W,x,al_worldy,#-450,4
	s_jmp_notdelay		4,.nofire3
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire3
	s_decbne_alvar		B,x,al_sbyte1,.not2		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x						;timer done, next state
.not2

;--------------------------

	
	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar	W,x,al_worldz,targetx2,4
	s_achase_alvar	W,x,al_worldx,#350,4
	s_achase_alvar	W,x,al_worldy,#-350,4
	s_jmp_notdelay		3,.nofire2
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire2
	s_decbne_alvar		B,x,al_sbyte1,.not3		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x						;timer done, next state
.not3

;--------------------------

	
	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar	W,x,al_worldx,#-200,4
	s_achase_alvar	W,x,al_worldy,#-250,4
	s_decbne_alvar		B,x,al_sbyte1,.not4		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#70
	a16
	lda	#-350
	sta	targetx3
	lda	#-400
	sta	targety3
	a8
	s_next_state		x						;timer done, next state
.not4


;--------------------------

	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar	W,x,al_worldz,targetx2,4
	s_achase_alvar	W,x,al_worldx,targetx3,4
	s_achase_alvar	W,x,al_worldy,targety3,4
	a16
	lda	targety3
	clc
	adc	#7
	sta	targety3
	a8
	s_jmp_notdelay		3,.nofire1			
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,relovalbeam
.nofire1
	s_decbne_alvar		B,x,al_sbyte1,.not5		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x						;timer done, next state
.not5

;-------------------------------------------

	s_jmp_ifnotstate	x,6,.not6
	s_achase_alvar	W,x,al_worldx,#400,4
	s_achase_alvar	W,x,al_worldy,#-150,4
	s_jmp_notdelay		4,.nofire5		
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,bosshmissile1
.nofire5
	s_decbne_alvar		B,x,al_sbyte1,.not6		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#60
	a16
	lda	#400
	sta	targetx3
	lda	#-400
	sta	targety3
	a8
	s_set_state			x,#1						;timer done, next state
.not6








	s_add_playerz		x
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_end_strat




;--------------------------------------------------
spincycle
	s_jmp_alvareq		B,x,al_sbyte4,#0,.return2
	s_set_alsflag	x,nohitaffect
	s_add_alvar			B,x,al_rotz,#14
	s_decbne_alvar		B,x,al_sbyte5,.return
	s_set_alvar			B,x,al_sbyte4,#0
	bra	.return
.return2
	s_achase_alvar		B,x,al_rotz,#0,3
	s_clr_alsflag	x,nohitaffect
.return
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldz
	s_add_var		W,targetx2,#800
	s_achase_alvar	W,x,al_worldz,targetx2,4
	rts
	
	
blackrosecol_strat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.reflect
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	blackroseexp_strat
	lbeq	blackroseexp_strat
	s_set_alsflag		x,hitflash	;flash
	s_jmpto_strat	x
	s_end_strat
.reflect
	s_jmp			rebelasercolall_Istrat		;rebound laser back at player if static
	s_jmpto_strat	x
	s_end_strat


blackroseexp_strat
	s_start_strat
	saymsgx2	85
blackroseexp2_strat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	s_set_find	0
.looper3
	s_find_obj	y,x,0,.nohandl3
	s_jmpNOT_colltype		y,enemyweap,.nohandl3
	s_kill_obj	y
	bra	.looper3
.nohandl3
	s_set_find	0
.looper4
	s_find_obj	y,x,0,.nohandl4
	s_jmpNOT_colltype		y,laser,.nohandl4
	s_kill_obj	y
	bra	.looper4
.nohandl4

	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
;	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
	jml	qbossexplode_istrat
	
	
panthermsg_istrat
	s_start_strat
	s_setnoremove_behind	x
	s_jmp_ifnotstate		x,0,.not0
	saymsgx2		83
	s_set_alvar		B,x,al_sbyte1,#60
	s_set_state		x,#1
.not0	
	s_jmp_ifnotstate		x,1,.not1
	s_decbne_alvar		B,x,al_sbyte1,.not1
	saymsg2			84
	s_remove_obj	x
.not1
	s_end_strat
	

;--------------------------------------------------
;--------------------------------------------------
;----------------CORN CARRIER----------------------
;--------------------------------------------------
;--------------------------------------------------

corncruiser_istrat
	s_start_strat
	s_set_alptrs	x,corncruiser_strat,corncol_istrat,bexplode_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#60,#20				;hp + ap
	s_set_bossmaxHP	#60					;set the max hp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide
	s_set_alsflag	x,colldisable
	s_make_childobjrotpos	#corncruiselaser,#corncruiser,#40,#0,#0,#0,#0,#0,lasercore_istrat,ENEMY1			;make left wing
	s_make_childobjrotpos	#corncruiselaser,#corncruiser,#-40,#0,#0,#0,#0,#0,lasercore_istrat,ENEMY1	
	s_set_alvar		B,x,al_sbyte1,#90		;timer for state 0
	s_init_anim		x,#0


corncruiser_strat
	s_start_strat
	lda.l	al_hp,x
	lbeq	bexplode_istrat
	lbmi	bexplode_istrat
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx3,al_worldz
	a16
	lda	targetx3
	clc
	adc	#800
	sta	targetx3
	a8
;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate	x,0,.not0
	s_jmp_zdistless		x,y,#1000,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar		B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#60
;	s_next_state		x						;timer done, next state
	s_set_alvar			B,x,al_sbyte1,#13
	s_set_state			x,#6
.not0

;---------------------------------------		State 0 - move into starting position
	
	s_jmp_ifnotstate	x,1,.not1
	s_set_alvar			B,x,al_sbyte2,#1		;tell lasers to fire
	s_achase_alvar		W,x,al_worldx,#-600,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_face_player		x,2,0
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_next_state		x
	s_set_alvar			B,x,al_sbyte1,#60
.not1

;---------------------------------------

	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar		W,x,al_worldx,#600,5
	s_achase_alvar		W,x,al_worldy,#-400,5

	s_achase_alvar		W,x,al_worldz,targetx3,3
	s_face_player		x,2,0
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_next_state		x
	s_set_alvar			B,x,al_sbyte1,#60
.not2

;-------------------------------------
	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-300,5

	s_achase_alvar		W,x,al_worldz,targetx3,3
	s_face_player		x,2,0

	s_decbne_alvar		B,x,al_sbyte1,.not3
	s_next_state		x
	s_set_alvar			B,x,al_sbyte1,#60
.not3
;---------------------------------

	s_jmp_ifnotstate	x,4,.not4
	s_set_alvar			B,x,al_sbyte2,#0		;stop firing lasers
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-250,5

	s_achase_alvar		W,x,al_worldz,targetx3,3
	jsr	openlatch								;open latch
	s_face_player		x,2,0
	s_jmp_notdelay		5,.nfire
	jsr	firerockets
.nfire

	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_find	0
.lop
	s_find_obj			y,x,#corncruiselaser,.noelaser	
	bra	.ok
.noelaser
	bra	.not4
.ok

	s_next_state		x
	s_set_alvar			B,x,al_sbyte1,#30
.not4
;-----------------------------------
	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-100,5
	s_achase_alvar		W,x,al_worldz,targetx3,3
	jsr	closelatch								;close latch
	s_jmp_notdelay		5,.nfire2
	jsr	firerockets
.nfire2

	s_decbne_alvar		B,x,al_sbyte1,.not5
	s_next_state		x
	s_set_alvar			B,x,al_sbyte1,#13
.not5
;-----------------------------------

	s_jmp_ifnotstate	x,6,.not6
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-50,3
	s_sub_alvar			W,x,al_worldz,#25
	s_achase_alvar		B,x,al_rotx,#-5,3
	s_decbne_alvar		B,x,al_sbyte1,.not6
	s_next_state		x
	s_set_alvar			B,x,al_sbyte1,#60
.not6
;-----------------------------------

	s_jmp_ifnotstate	x,7,.not7
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-1000,6
	s_sub_alvar			W,x,al_worldz,#25
	s_jmp_alvarlessEQ	B,x,al_rotx,#-64,.noadd
	s_sub_alvar			B,x,al_rotx,#2
.noadd	
	s_decbne_alvar		B,x,al_sbyte1,.not7
	s_set_state		x,#8
	s_set_alvar			B,x,al_sbyte1,#30
.not7
;-----------------------------------
	s_jmp_ifnotstate	x,8,.not8
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-1500,6
	s_add_alvar			W,x,al_worldz,#64
	s_set_alvar			W,x,al_rotx,#0
	s_set_alvar			W,x,al_roty,#deg180
	s_decbne_alvar		B,x,al_sbyte1,.not8
	s_set_state		x,#9
	s_set_alvar			B,x,al_sbyte1,#60
.not8
;-----------------------------------

	s_jmp_ifnotstate	x,9,.not9
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-400,5
	s_decbne_alvar		B,x,al_sbyte1,.not9
	s_set_state		x,#1
	s_set_alvar			B,x,al_sbyte1,#60
.not9
;-----------------------------------

	s_add_playerz		x
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_rotpos_allchildren	x								;rotate all body parts with body
	s_end_strat




;--------------------

corncol_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lbmi	bexplode_istrat
	lbeq	bexplode_istrat
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat
	
	
bexplode_istrat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	s_set_find	0
.looper
	s_find_obj	y,x,#cornfriend,.nohandl
	s_kill_obj	y
	bra	.looper
.nohandl
	s_set_find	0
.looper2
	s_find_obj	y,x,#corncruiselaser,.nohandl2
	s_kill_obj	y
	bra	.looper2
.nohandl2

	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
;	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
;	s_set_find	0
;.looper3
;	s_find_obj	y,x,0,.nohandl3
;	s_jmpNOT_colltype		y,enemyweap,.nohandl3
;	s_kill_obj	y
;	bra	.looper3
;.nohandl3
;	s_set_find	0
;.looper4
;	s_find_obj	y,x,0,.nohandl4
;	s_jmpNOT_colltype		y,laser,.nohandl4
;	s_kill_obj	y
;	bra	.looper4
;.nohandl4
	jml	qbossexplode_istrat

;---	OPEN LATCH
	
openlatch
	s_cmp_anim		x,#7
	s_beq	.noanim
	s_add_anim		x,#1,#8
	rts
.noanim
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_clr_alsflag	x,colldisable
	s_jmp_notdelay	6,.nospawn
	jsr	spawnships2
.nospawn
	rts
	
;---	CLOSE LATCH
	
closelatch
	s_cmp_anim		x,#0
	s_beq	.noanim
	s_add_anim		x,#-1,#8
	rts
.noanim
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag		x,collide
	s_set_alsflag	x,colldisable
	rts
	
;----------laser turret strat
	
lasercore_istrat
	s_start_strat
	s_set_aldata		x,#40,#12
	s_set_alptrs	x,lasercore2_istrat,lasercol_istrat,lasercoreexplode_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag		x,collide
	s_set_alsflag	x,colldisable
;continue on
lasercore2_istrat
	s_start_strat
	s_set_objtobemother	y,x
	s_jmp_ifstate	y,0,.noopencol
	s_jmp_ifstate	y,6,.noopencol
	s_jmp_ifstate	y,7,.noopencol
	s_jmp_ifstate	y,8,.noopencol
	s_jmp_ifstate	y,9,.noopencol
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag		x,collide
	s_clr_alsflag	x,colldisable
.noopencol	

	lda.w		al_sbyte2,y
	cmp	#1
	bne	.nofire3
	s_set_objtobeplayer	y
	s_jmp_notdelay		5,.nofire3			
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire3
	s_setnoremove_behind	x	;don't remove behind camera
	s_add_playerz	x			;add player's z position to objects
	s_end_strat	
	
	
lasercoreexplode_istrat
	s_start_strat
	s_make_obj	#corncruiselaser,.bad
	s_copy_pos	y,x
	s_copy_rots	y,x
	s_set_strat	y,laserdrop_strat
	s_set_alsflag	y,nohitaffect
	s_clr_alsflag	y,collide
	s_remove_obj	x
.bad
	s_end_strat
	
laserdrop_strat
	s_start_strat
	s_jmp_ifnotstate	x,0,.not0								;state 0 or skip to .not0
	s_jmp_alvarmore		W,x,al_worldy,#0,.newstate				;when it hits ground, jump to .newstate
	s_add_alvar			W,x,al_worldy,#18						;otherwise, move down by 18 units
	s_sub_alvar			W,x,al_worldz,#25
	s_add_playerz		x										;keep movement going with player/enemy
	s_end_strat													;done
.newstate
	s_next_state		x										;jump to next state (1)
.not0
	s_jmp_ifnotstate	x,1,.not1							;if not state 1, jump to .not1
	s_jmp_alvarless		W,x,al_worldy,#-70,.nextstate2		;if it bounced 60 units back up, jump to .nextstate2
	s_add_alvar			B,x,al_rotx,#5
	s_add_alvar			B,x,al_roty,#5
	s_add_alvar			B,x,al_rotz,#15
	s_sub_alvar			W,x,al_worldy,#10					;otherwise, move up by 10 units
	s_sub_alvar			W,x,al_worldz,#25
	s_add_playerz		x									;keep movement going
	s_end_strat												;done
.nextstate2
	s_next_state		x									;jump to next state (2)
.not1
	s_jmp_ifnotstate 	x,2,.not2							;if not 2, jump to .not2
	s_jmp_alvarmore		W,x,al_worldy,#0,.exp				;when it hits ground again, explode
	s_add_alvar			B,x,al_rotx,#5
	s_sub_alvar			B,x,al_roty,#5
	s_add_alvar			B,x,al_rotz,#15
	s_add_alvar			W,x,al_worldy,#5					;otherwise, add 10 units going downwards
	s_sub_alvar			W,x,al_worldz,#25
	s_add_playerz		x									;z movement
.not2
	s_end_strat
.exp
	s_jmp	bigexplode_istrat								;explode
.noexp
	s_end_strat
	
lasercol_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lda.w	al_hp,x		;load the hp
	lbmi	laserdrop_strat
	lbeq	laserdrop_strat
	s_set_alsflag		x,hitflash	;flash
.player
	s_jmpto_strat	x
	s_end_strat
	
spawnships2
	s_make_obj		#cornfriend,.badobj
	s_copy_pos		y,x
	s_add_alvar		W,y,al_worldx,#50
	s_add_alvar		W,y,al_worldy,#150
	s_add_alvar		W,y,al_worldz,#600
	s_set_alvar		W,y,al_roty,#deg180
	s_add_playerz	y
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	

	s_set_strat		y,bossship3_istrat		;full custom code

.badobj	

	s_make_obj		#cornfriend,.badobj2
	s_copy_pos		y,x
	s_sub_alvar		W,y,al_worldx,#50
	s_add_alvar		W,y,al_worldy,#150
	s_add_alvar		W,y,al_worldz,#600
	s_set_alvar		W,y,al_roty,#deg180
	s_add_playerz	y
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	

	s_set_strat		y,bossship4_istrat

.badobj2	s_rts



firerockets
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#-deg135,#deg90
	s_fire_weapon		x,BOSSHMISSILE1
	s_set_alvar.w		W,y,al_ptr,playpt
	s_set_colltype	y,ENEMY1				;collision type
	s_set_colltype	y,ENEMY2				;collision type
	s_set_colltype	y,ENEMYWEAP				;collsiion type
	s_set_speed		y,#20

	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#-deg135,#-deg90
	s_fire_weapon		x,BOSSHMISSILE1
	s_set_alvar.w		W,y,al_ptr,playpt
	s_set_colltype	y,ENEMY1				;collision type
	s_set_colltype	y,ENEMY2				;collision type
	s_set_colltype	y,ENEMYWEAP				;collsiion type
	s_set_speed		y,#20
	rts


bossship3_istrat
	s_start_strat
	s_set_alptrs	x,bossship3_strat,hitflash_Istrat,bsexplode_Istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_aldata	x,#12,#10				;hp + ap
	s_set_alvar		B,x,al_sbyte1,#50
					;continue the strat

	
	
bossship3_strat
	s_start_strat

	s_jmp_ifnotstate	x,0,.not0
	s_add_alvar		W,x,al_worldy,#1
	s_add_alvar		W,x,al_worldx,#5
	s_decbne_alvar	B,x,al_sbyte1,.not0		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#1
	s_set_alvar		B,x,al_sbyte1,#40		;set next state timer to 30
	
.not0
	s_jmp_ifnotstate	x,1,.not1
	s_add_alvar		W,x,al_worldx,#5
	s_sub_alvar		W,x,al_worldy,#2
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_tame		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire
	s_decbne_alvar	B,x,al_sbyte1,.not1		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#2
	s_set_alvar		B,x,al_sbyte1,#40

.not1
	s_jmp_ifnotstate	x,2,.not2
	s_sub_alvar		W,x,al_worldx,#2
	s_sub_alvar		W,x,al_worldy,#5
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire2
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_tame		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire2

	s_decbne_alvar	B,x,al_sbyte1,.not2		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#3
	s_set_alvar		B,x,al_sbyte1,#40

.not2
	s_jmp_ifnotstate	x,3,.not3
	s_add_alvar		W,x,al_worldx,#5
	s_add_alvar		W,x,al_worldy,#5
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire3
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_tame		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire3
	s_decbne_alvar	B,x,al_sbyte1,.not3		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#4
	s_set_alvar		B,x,al_sbyte1,#40

.not3
	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldx,#100,3
	s_achase_alvar		W,x,al_worldy,#-200,3
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire4
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_tame		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire4
	
	s_decbne_alvar	B,x,al_sbyte1,.not4		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
;	s_kill_obj		x
	s_set_alvar		B,x,al_sbyte1,#40
	s_set_state		x,0
	

.not4
	s_add_playerz	x
	s_end_strat





bossship4_istrat
	s_start_strat
	s_set_alptrs	x,bossship4_strat,hitflash_Istrat,bsexplode2_Istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_aldata	x,#12,#10				;hp + ap	
	s_set_alvar		B,x,al_sbyte1,#30
					;continue the strat

bossship4_strat
	s_start_strat
	
	s_jmp_ifnotstate	x,0,.not0
	s_add_alvar		W,x,al_worldy,#1
	s_sub_alvar		W,x,al_worldx,#5
	s_decbne_alvar	B,x,al_sbyte1,.not0		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#1
	s_set_alvar		B,x,al_sbyte1,#40		;set next state timer to 30
	
.not0
	s_jmp_ifnotstate	x,1,.not1
	s_sub_alvar		W,x,al_worldx,#5
	s_sub_alvar		W,x,al_worldy,#2
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_orb3		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire
	s_decbne_alvar	B,x,al_sbyte1,.not1		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#2
	s_set_alvar		B,x,al_sbyte1,#50

.not1
	s_jmp_ifnotstate	x,2,.not2
	s_add_alvar		W,x,al_worldx,#2
	s_sub_alvar		W,x,al_worldy,#5
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire2
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_orb3		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire2

	s_decbne_alvar	B,x,al_sbyte1,.not2		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#3
	s_set_alvar		B,x,al_sbyte1,#40

.not2
	s_jmp_ifnotstate	x,3,.not3
	s_sub_alvar		W,x,al_worldx,#5
	s_add_alvar		W,x,al_worldy,#5
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire3
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_orb3		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire3
	s_decbne_alvar	B,x,al_sbyte1,.not3		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#4
	s_set_alvar		B,x,al_sbyte1,#40

.not3
	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldx,#-100,3
	s_achase_alvar		W,x,al_worldy,#-200,3
;	s_face_player		x,2,0
	s_jmp_notdelay	5,.nofire4
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#60	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_orb3		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire4
	
	s_decbne_alvar	B,x,al_sbyte1,.not4		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
;	s_kill_obj		x
	s_set_alvar		B,x,al_sbyte1,#40
	s_set_state		x,0

.not4
	s_add_playerz	x
	
	s_end_strat

;*****************************************************************************

bsexplode2_istrat
	jml	bigexplode_istrat




;----------------------------------------------------------------
;----------------------------------------------------------------
;----------------------------------------------------------------
;----------------------------------------------------------------
;----------------------YOSHI-------------------------------------
;----------------------------------------------------------------
;----------------------------------------------------------------
;----------------------------------------------------------------

;sbyte1 - timer
;sbyte2 - horizontal direction
;sbyte3 - vertical direction
;sbyte4 - z direction
;sbyte5	- invincibility delay
;sbyte6 - yoshi mode

yoshi_istrat
	s_start_strat
	s_set_alptrs	x,yoshi_strat,yoshicol_istrat,blackroseexp2_strat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#120,#25				;hp + ap
	s_set_bossmaxHP	#120
	s_set_alvar		B,x,al_roty,#0			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide
	s_set_alvar		B,x,al_sbyte1,#70		;timer for state 0


yoshi_strat
	s_start_strat

	s_jmp_alvarmore	B,x,al_sbyte6,#2,.noblackagain
	lda.w	al_hp,x		;load the hp
	cmp	#50+1
	lbmi	yoshichangetoblack
.noblackagain
	lda.l	al_hp,x
	lbmi	blackroseexp2_strat
	lbeq	blackroseexp2_strat


	s_jmp_alvareq	B,x,al_sbyte5,#0,.okhit
	s_jmp_notdelay	1,.noflash
	s_set_alsflag		x,hitflash	;flash
.noflash
	s_decbne_alvar	B,x,al_sbyte5,.okhit
	s_set_alvar		B,x,al_sbyte5,#0
.okhit

	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldz		;set player z position to targetx2
	s_copy_alvar2var	W,y,targetx3,al_worldx		;etc
	s_copy_alvar2var	W,y,targety3,al_worldy		;etc


;----state 0 - the intro run-----	
	s_jmp_ifnotstate		x,0,.n0
	a16
	lda	targetx2
	clc
	adc	#300										;chase 700 units in front of player
	sta	targetx2
	a8
	s_achase_alvar	W,x,al_worldz,targetx2,3
	s_decbne_alvar	B,x,al_sbyte1,.donestate0
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag	x,collide
	s_set_alvar		B,x,al_sbyte1,#70
	s_next_state	x
.n0

;everything besides state 0 will do this code:

	
;---------------------------------				;normal routine for first phase
	s_jmp_ifnotstate		x,1,.n1
	a16
	lda	targetx2
	clc
	adc	#300										;chase 700 units in front of player
	sta	targetx2
	a8	
	jsr		yoshilateral
	jsr		yoshivertical
	jsr		yoshizfloat
	jsr		yoshiattak
	jsr		yoshicolorchange

.n1	
;---------------------------------
	s_jmp_ifnotstate		x,2,.n2			;intermission - change to black
	s_achase_alvar		W,x,al_worldx,#0,5
	s_achase_alvar		W,x,al_worldy,#-200,5 
	
	s_set_alvar			B,x,al_sbyte5,#60
	lda.l	al_hp,x
	cmp	#60
	bpl	.noheal
	lda.l	al_hp,x
	clc
	adc	#1
	sta.l	al_hp,x
.noheal
	s_decbne_alvar		B,x,al_sbyte1,.n2
	s_set_alvar			B,x,al_sbyte1,#40
	s_set_alvar			B,x,al_sbyte6,#3
	saymsgx			252
	s_set_state		x,#3
.n2
;---------------------------------
	s_jmp_ifnotstate		x,3,.n3			;intermission cooldown
	s_decbne_alvar		B,x,al_sbyte1,.n3
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state	x
.n3
;---------------------------------

	s_jmp_ifnotstate		x,4,.n4			;phase 2 - black yoshi movement 1
	a16
	lda	targetx2
	clc
	adc	#300										;chase 700 units in front of player
	sta	targetx2
	a8	
	s_achase_alvar		W,x,al_worldx,#-420,4
	s_achase_alvar		W,x,al_worldy,#-300,4
	jsr		yoshizfloat	
	jsr		yoshiattak
	s_decbne_alvar		B,x,al_sbyte1,.n4
	s_set_alvar			B,x,al_sbyte6,#4
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.n4	

	s_jmp_ifnotstate		x,5,.n5			;phase 2 - black yoshi movement 2
	a16
	lda	targetx2
	clc
	adc	#300										;chase 700 units in front of player
	sta	targetx2
	a8	
	s_achase_alvar		W,x,al_worldx,#0,4
	s_achase_alvar		W,x,al_worldy,#-300,4
	jsr		yoshizfloat	
	jsr		yoshiattak
	s_decbne_alvar		B,x,al_sbyte1,.n5
	s_set_alvar			B,x,al_sbyte6,#3
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.n5
	
	s_jmp_ifnotstate		x,6,.n6			;phase 2 - black yoshi movement 3
	a16
	lda	targetx2
	clc
	adc	#300										;chase 700 units in front of player
	sta	targetx2
	a8	
	s_achase_alvar		W,x,al_worldx,#420,4
	s_achase_alvar		W,x,al_worldy,#-300,4
	jsr		yoshizfloat	
	jsr		yoshiattak
	s_decbne_alvar		B,x,al_sbyte1,.n6
	s_set_alvar			B,x,al_sbyte6,#5
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.n6

	s_jmp_ifnotstate		x,7,.n7			;phase 2 - black yoshi movement 3
	a16
	lda	targetx2
	clc
	adc	#300										;chase 700 units in front of player
	sta	targetx2
	a8	
	s_achase_alvar		W,x,al_worldx,#0,4
	s_achase_alvar		W,x,al_worldy,#-50,4
	jsr		yoshizfloat	
	jsr		yoshiattak
	s_decbne_alvar		B,x,al_sbyte1,.n7
	s_set_alvar			B,x,al_sbyte6,#5
	s_set_alvar			B,x,al_sbyte1,#60
	s_set_alvar			B,x,al_sbyte6,#3
	s_set_state		x,#4
.n7
	
.donestate0
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_add_var		W,targetx,#600
	s_achase_alvar	W,x,al_worldz,targetx,4
	s_add_playerz	x
	s_add_bossHP	x,al_hp
	s_end_strat
	
	
;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------
	
yoshilateral
    s_jmp_alvareq    B,x,al_sbyte2,#0,.goright
.goleft
    s_sub_alvar        W,x,al_worldx,#12
	s_sub_var			W,targetx3,#400
    s_jmp_alvarless    W,x,al_worldx,targetx3,.settoright
    rts
.goright
    s_add_alvar        W,x,al_worldx,#12
	s_add_var			W,targetx3,#400
	s_jmp_alvarmore    W,x,al_worldx,targetx3,.settoleft
    rts
.settoright
    s_set_alvar        B,x,al_sbyte2,#0
    rts
.settoleft
    s_set_alvar        B,x,al_sbyte2,#1
    rts
;--------------------------------------------------------------------------------------------------------
yoshivertical
    s_jmp_alvareq    B,x,al_sbyte3,#0,.goup
.godown
    s_sub_alvar        W,x,al_worldy,#8
	s_sub_var			W,targety3,#400
    s_jmp_alvarless    W,x,al_worldy,targety3,.settoup
    rts
.goup
    s_add_alvar        W,x,al_worldy,#8
	s_add_var			W,targety3,#400
	s_jmp_alvarmore    W,x,al_worldy,targety3,.settodown
    rts
.settoup
    s_set_alvar        B,x,al_sbyte3,#0
    rts
.settodown
    s_set_alvar        B,x,al_sbyte3,#1
    rts
;--------------------------------------------------------------------------------------------------------
yoshizfloat
    s_jmp_alvareq    B,x,al_sbyte4,#0,.goforward
.gobackward
    s_sub_alvar        W,x,al_worldz,#8
    a16
    lda    targetx2
    clc
    adc    #400
    sta    targetx2
    a8
    s_jmp_alvarless    W,x,al_worldz,targetx2,.settoforward
    rts
.goforward
    s_add_alvar        W,x,al_worldz,#8
    a16
    lda    targetx2
    clc
    adc    #1100
    sta    targetx2
    a8
    s_jmp_alvarmore    W,x,al_worldz,targetx2,.settobackward
    rts
.settoforward
    s_set_alvar        B,x,al_sbyte4,#0
    rts
.settobackward
    s_set_alvar        B,x,al_sbyte4,#1
    rts


;-------------------------------------------------------	
yoshiattak
	s_jmp_alvareq	B,x,al_sbyte6,#3,.0
	s_jmp_alvarne	B,x,al_sbyte6,#0,.no0			;green yoshi
.0
	s_jmp_notdelay		1,.noe
	lda	eggcount
	bne	.doegg
.noe
	s_jmp_notdelay		5,.nofire6		
	a8
	lda	#6
	sta	eggcount
.doegg
	s_set_objtobeplayer	y
;	s_face_player		x,2,0
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_eggie
	a8
	dec	eggcount
.nofire6	
.no0


;--------
	s_jmp_alvareq	B,x,al_sbyte6,#4,.1
	s_jmp_Alvarne	B,x,al_sbyte6,#1,.no1		;red yoshi
.1
	s_jmp_notdelay		4,.no1
	jsr	fire_bonfireee
.no1
	
;--------	
	s_jmp_Alvarne	B,x,al_sbyte6,#2,.no2		;blue yoshi
	s_jmp_notdelay	4,.noheal					;heal yoshi stuff
	lda.l	al_hp,x
	cmp	#120
	bpl	.noheal
	lda.l	al_hp,x
	clc
	adc	#1
	sta.l	al_hp,x

.noheal
	s_jmp_varNE		B,yoshivar1,#0,.nospincycle
	s_jmp_notdelay		6,.nospincycle
	s_set_var			B,yoshivar1,#1
	s_set_var			B,yoshivar2,#40
.no2
.nospincycle
	jsr				spincycleyoshi		;always run to center yoshi after the spin
	s_jmp_Alvarne	B,x,al_sbyte6,#5,.end		;blue yoshi

	s_jmp_notdelay		2,.end
	jsr	fire_bonfireee




.end
	rts
	
;-------------------------------------------------------
	;0 - green
	;1 - red
	;2 - blue
yoshicolorchange
	s_jmp_notdelay		7,.nochange
	s_jmp_alvareq		B,x,al_sbyte6,#0,.changeto1
	s_jmp_alvareq		B,x,al_sbyte6,#1,.changeto2
	s_jmp_alvarmoreEQ	B,x,al_sbyte6,#3,.nochange
.changeto0
	s_set_alvar			B,x,al_sbyte6,#0
	s_set_alvar			W,x,al_shape,#yoshianm
	saymsg	248
	rts
.changeto1
	s_inc_alvar			B,x,al_sbyte6
	s_set_alvar			W,x,al_shape,#yoshired
	saymsg	249
	rts
.changeto2
	s_inc_alvar			B,x,al_sbyte6
	s_set_alvar			W,x,al_shape,#yoshiblue
	s_set_var			B,yoshivar1,#1
	s_set_var			B,yoshivar2,#40
	saymsg	250
	rts
.nochange
	rts
	
;----------------------------------------------------------------------
yoshichangetoblack
	s_set_alvar		B,x,al_sbyte6,#3
	s_set_alvar		W,x,al_shape,#yoshiblack
	s_set_alvar		B,x,al_sbyte5,#60
	s_set_alvar		B,x,al_sbyte1,#60
	s_set_state		x,#2

	saymsgx		251
	s_jmpto_strat	x
	s_end_strat	

;----------------------------------------------------------------------
	
yoshicol_istrat
	s_start_strat
	s_jmp_alsflag	x,nohitaffect,.player
	s_jmp_alvareq	B,x,al_sbyte5,#0,.hit			;if no timer, take the hit like a man
	jmp	.player										;otherwise gtfo no damage
.hit
	s_set_objtobealvar	y,x,al_collobjptr	;set collision object to Y
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 1 hp
	sta.w	al_hp,x		;store it
	lda.w	al_hp,x		;load the hp
	lbmi	blackroseexp2_strat
	lbeq	blackroseexp2_strat
	s_set_alsflag		x,hitflash	;flash
	s_set_alvar			B,x,al_sbyte5,#5
.player
	s_jmpto_strat	x
	s_end_strat	
	
	
spincycleyoshi
	s_jmp_vareq		B,yoshivar1,#0,.return2
	s_set_alsflag	x,nohitaffect
	s_add_alvar			B,x,al_rotz,#14
	s_decbne_var		B,yoshivar2,.return
	s_set_var			B,yoshivar1,#0
	bra	.return
.return2
	s_achase_alvar		B,x,al_rotz,#0,3
	s_clr_alsflag	x,nohitaffect
.return
	rts


foxy_ptr	equ	clac
foxy_shape	equ	clam


;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------;---------------------------------------------
	
;---------------------------------------THREE PLAYER MODE-------------------------------------------------
;---------------------------------------THREE PLAYER MODE-------------------------------------------------
;---------------------------------------THREE PLAYER MODE-------------------------------------------------
;---------------------------------------THREE PLAYER MODE-------------------------------------------------






thirdplayer_Istrat
	s_start_strat
	s_set_alptrs	x,thirdplayer_strat,playerthreecol_Istrat,playerthreedead_Istrat
	s_set_aldata	x,#100,#friendAP
	s_set_colltype	x,friend
;	s_set_colltype	x,laser

	s_setnoremove_behind	x
	s_set_alsflag	x,shadow
	s_set_alsflag		x,playerobj
	s_set_objtobeplayer	y
	s_copy_pos		x,y
	s_add_alvar		W,x,al_worldy,#100
	s_sub_alvar		W,x,al_worldx,#100
	s_end_strat
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
thirdplayer_strat
	s_start_strat
	a8
	lda	numplayers
	cmp	#1
	bne	.nofuckery
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldx
	s_copy_alvar2var	W,y,targety,al_worldy
	s_add_var		W,targety,#100
	s_sub_var		W,targetx,#100
	s_achase_alvar	W,x,al_worldy,targety,3
	s_achase_alvar	W,x,al_worldx,targetx,3
.nofuckery

	s_gen_3dvecs		x,al_roty,al_rotx,al_speed
	s_add_vecs2pos		x
	s_add_playerZ		x
	s_jmp_higher		x,#maxpmoveY,.ok
	s_set_alvar		W,x,al_worldy,#maxpmoveY
.ok
	lda	twoplayer
	lbeq	nomorep3
	stz	pthreedead
	s_set_objtobeplayer		y
;	s_or_var	B,crosshairflag,#crosshairoff
	s_copy_alvar2alvar	B,x,al_speed,y,al_speed
	s_copy_alvar2alvar.w	W,x,al_worldz,y,al_worldz
	s_add_alvar	W,x,al_worldz,#120
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	lda	al_HP,x
	bpl	.ok2
	lda	#0
.ok2	sta.l	m_damagethree


	
;~~~~~~~~~~~~~~~Follow P1 in cutscene~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	lda	inascene
	beq	.notincutscene
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,3
	s_achase_alvar2alvar	W,x,al_worldy,y,al_worldy,3
;	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,3
;	s_achase_alvar2alvar	B,x,al_roty,y,al_roty,3
	jmp	threeplayerkill


;~~~~~~~~~~~~~~~P1 follow P2 if dead~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.notincutscene
	lda	ponedead
	beq	.nitem	;not=0
	lda	lives
	bne	.nitem	;not=0
	lda	inascene		;skip if in cutscene
	bne	.nitem			;not=0 skip this
	s_copy_alvar2alvar.w	W,y,al_worldx,x,al_worldx	;copy player 1 position to player 2 if fully dead
	s_copy_alvar2alvar.w	W,y,al_worldy,x,al_worldy	;
	s_copy_alvar2alvar.w	B,y,al_rotx,x,al_rotx	;copy player 1 position to player 2 if fully dead
	s_copy_alvar2alvar.w	B,y,al_roty,x,al_roty	;
	s_copy_alvar2alvar.w	B,y,al_rotz,x,al_rotz	;copy player 1 position to player 2 if fully dead
	
.nitem

	a8
	lda	nocrosshairpls
	cmp	#2
	lbne	.nosh
	s_make_obj	#nullshape,.nosh
	lda	currxhair3
	asl	a
	sta.w			al_sbyte3,y
	phx
	tyx
	s_set_alvar2alvartab	B,W,W,x,al_shape,x,al_sbyte3,xhairreallist
	plx
	s_sprite_obj	y,#0
	s_copy_pos	y,x
;	s_add_alvar	W,y,al_worldz,#80
	s_copy_rots	y,x
	s_copy_vecs	y,x
	phx
	tyx
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,2
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,2
	plx
	s_add_vecs2pos	y
	s_set_strat	y,test3_istrat
.nosh

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	lda	lives
	clc
	adc	livestwo
	clc
	adc	livesfour
	clc
	adc	livesfive
	lbeq	.doneexpand
	s_jmp_alvarmore		W,x,al_worldx,#290,.expand2
	s_jmp_alvarmore.w		W,y,al_worldx,#290,.expand2
	s_jmp_alvarless		W,x,al_worldx,#-290,.expand2
	s_jmp_alvarless.w		W,y,al_worldx,#-290,.expand2

	s_jmp_alvarmore		W,x,al_worldx,#150,.expand
	s_jmp_alvarmore.w		W,y,al_worldx,#150,.expand
	s_jmp_alvarless		W,x,al_worldx,#-150,.expand
	s_jmp_alvarless.w		W,y,al_worldx,#-150,.expand

	s_jmp_alvarmore		W,x,al_worldy,#-60,.expand
	s_jmp_alvarmore.w		W,y,al_worldy,#-60,.expand
	s_jmp_alvarless		W,x,al_worldy,#-250,.expand
	s_jmp_alvarless.w		W,y,al_worldy,#-250,.expand	
	s_Achase_var    W,viewdist,#250,3
	s_Achase_var    W,outviewdist,#250,3
	s_Achase_var    W,outdist,#250,3
	jmp	.doneexpand

	
.expand
	s_Achase_var    W,viewdist,#600,3
	s_Achase_var    W,outviewdist,#600,3
	s_Achase_var    W,outdist,#600,3
	jmp	.doneexpand

.expand2
	s_Achase_var    W,viewdist,#1100,3
	s_Achase_var    W,outviewdist,#1100,3
	s_Achase_var    W,outdist,#1100,3
.doneexpand





;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


	s_jmpNOT_varAND		B,pthreeshipflags2,#ptwosf2_wireship,.notwire
	s_jmp_varlesseq		B,pthreenumhits,#3-1,.iswire
	
	s_beqdec_var		B,wirethreeendflash,.backtonorm
	s_jmp_varAND		B,wirethreeendflash,#3,.wire
;	stz			shieldup
	lda	shpmode
	beq	.normp2shp
	s_set_alvar		W,x,al_shape,#player2shparwing
	jmp			.nochange
.normp2shp
	s_set_alvar		W,x,al_shape,#playertwo1
	jmp			.nochange 
;-----------------

;-----------------
	
.wire
;	lda		#1
;	sta		shieldup

	s_set_alvar		W,x,al_shape,#wireplayertwo
	jmp			.notwire    
	
	
.backtonorm
;	stz			shieldup
	lda	shpmode
	beq	.normp2shp2
	s_set_alvar		W,x,al_shape,#player2shparwing
	bra			.nochange
.normp2shp2
	s_set_alvar		W,x,al_shape,#playertwo1
.nochange
	s_and_var		B,pthreeshipflags2,#~ptwosf2_wireship
.iswire    
	s_set_var		B,wirethreeendflash,#50
.notwire    


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_jmpNOT_varAND		B,pthreeshipflags2,#ptwosf2_wireship,.nwire
	phx
	a16
	lda	al_colframe,x
	and	#3
	tax
	a8
	plx
	bra	.flash
.nwire
	s_jmpNOT_alsflag	x,hitflash,.nflash
.flash	
	s_add_colanim	x,#1,#4
	s_bra		.notwire2
.nflash	
	s_init_colanim	x,#4
.notwire2	


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
labelmebaby
	s_jmp_varNOTZERO	B,playerthree_rollZvel,.nroll

	s_beqdec_var		B,playerthree_rolldelay,.lragain
	s_jmp_anyLR3keyup	.nroll
	s_jmp_anyLR3keydown	.nroll,last
	s_set_var		B,playerthree_rollZvel,#-32	
	s_set_var		B,playerthree_rollZoff,#0

	s_jmp_keyup		left3,.isright
	s_set_var		B,playerthree_rollZvel,#32	
	s_set_var		B,playerthree_rollZoff,#0
.isright
.lragain
	s_jmp_anyLR3keyup	.nroll
	s_set_var		B,playerthree_rolldelay,#3
.nroll
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	s_and_var		B,keyflags3,#~kf_lrkeydown
	s_jmp_keyup		left3,.nlk
	s_or_var		B,keyflags3,#kf_lrkeydown
;	s_jmp_lastkeydown	left3,.nrk2
;	s_or_var		B,keyflags3,#kf_lkeydown
	s_brl			.nrk2
.nlk
	s_jmp_keyup		right3,.nrk2
	s_and_var		B,keyflags3,#~kf_lkeydown
.nrk2

labelit
	s_jmp_keyup		right3,.nrk
	s_or_var		B,keyflags3,#kf_lrkeydown
;	s_jmp_lastkeydown	right3,.nlk2
	s_and_var		B,keyflags3,#~kf_lkeydown
	s_brl			.nlk2	 
.nrk
	s_jmp_keyup		left3,.nlk2
	s_or_var		B,keyflags3,#kf_lkeydown
.nlk2
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_jmpNOT_varAND		B,keyflags3,#kf_lrkeydown,.nhtr
	s_jmpNOT_varAND		B,keyflags3,#kf_lkeydown,.nhtl
;	s_jmp_keyup		right2,.noright						;Right Trig
	s_add_alvar		B,x,al_rotz,#deg45/3
	s_cmp_alvar		B,x,al_rotz,#deg90
	s_bmi			.nhptc
	s_set_alvar		B,x,al_rotz,#deg90
	s_jmp			.nhptc
.nhtl
	s_jmp_keyup		right3,.nhtr
.drt	s_sub_alvar		B,x,al_rotz,#deg45/3
	s_cmp_alvar		B,x,al_rotz,#-deg90
	s_bpl			.nhptc
	s_set_alvar		B,x,al_rotz,#-deg90
	s_jmp			.nhptc
.nhtr


	s_achase_alvar		B,x,al_rotz,#0,3
.nhptc
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_varNOTZERO	B,playerthree_rollZvel,.zroll
	s_achase_var		B,playerthree_rollZoff,#0,3
	s_brl			.zrcont
.zroll
	s_add_vars		B,playerthree_rollZoff,playerthree_rollZvel
.noxtrabr
	s_jmp_varpl		B,playerthree_rollZvel,.zrispl
	s_add_var		B,playerthree_rollZvel,#2
	s_bra			.zrcont
.zrispl       	
	s_sub_var		B,playerthree_rollZvel,#2
.zrcont
	s_add_alvar		B,x,al_rotz,playerthree_rollZoff
	

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jright3,.eplrc						;
														;
	s_sub_alvar		W,x,al_worldx,#7					;	right
	s_Achase_alvar	B,x,al_roty,#-deg22,2				;


.eplrc													;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jleft3,.eprrc						;
														;
	s_add_alvar		W,x,al_worldx,#7					;
	s_Achase_alvar	B,x,al_roty,#deg22,2				;	left
															
.eprrc		

	s_jmp_keydown	jleft3,.nfno
	s_jmp_keydown	jright3,.nfno						;	center chase
	s_achase_alvar		B,x,al_roty,#0,3
.nfno										
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jup3,.noup								;up
	s_add_alvar		W,x,al_worldy,#7					;
	s_Achase_alvar	B,x,al_rotx,#deg22,3
.noup
	s_jmp_keyup		jdown3,.nodown							;down
	s_sub_alvar		W,x,al_worldy,#7						;
	s_Achase_alvar	B,x,al_rotx,#-deg22,3

.nodown

	s_jmp_keydown	jdown3,.nfup
	s_jmp_keydown	jup3,.nfup
	s_achase_alvar		B,x,al_rotx,#0,3
.nfup
;----------

;-------------
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarless		W,x,al_worldy,maxpmoveY,.nfpbottom	;
	s_set_alvar		W,x,al_worldy,maxpmoveY					;

	s_test_var		B,pmovelimitAND,#pml_Bbottom			;
	s_bne			.nfpbottom								;
	s_or_var		B,arrows,#sprar_down					;
	s_sub_alvar		W,x,al_worldy,#5
	bra	.top
.nfpbottom													;limit up and down movement
													;
;	s_jmp_alvarlessEQ		W,x,al_worldy,maxpmoveY-10,.change
;	bra	.top
;.change
;	s_achase_alvar		B,x,al_rotx,#0,1															;
	
.top
	s_jmp_alvarmore		W,x,al_worldy,minpmoveY,.nfptop		;
	s_set_alvar		W,x,al_worldy,minpmoveY					;
	s_or_var		B,arrows,#sprar_up						;
;	s_add_alvar		W,x,al_worldy,#5
.nfptop														;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarmore	W,x,al_worldX,minpmoveX,.nminX
	s_set_alvar	W,x,al_worldX,minpmoveX
	s_or_var		B,arrows,#sprar_left
	s_add_alvar		W,x,al_worldx,#5
.nminX
	s_jmp_alvarless	W,x,al_worldX,maxpmoveX,.nmaxX
	s_set_alvar	W,x,al_worldX,maxpmoveX
	s_or_var		B,arrows,#sprar_right
	s_sub_alvar		W,x,al_worldx,#5
.nmaxX
			 

	s_jmpNOT_varAND		B,playerflymode,#pfm_wobble,.nwob
	s_set_var2vartab	B,B,B,playerthree_Zrotfloat,playerthree_Zrotfloatptr,twopZrotfloattab
.vcont
	s_add_alvar		B,x,al_rotz,playerthree_Zrotfloat
	s_add_var		B,playerthree_Zrotfloatptr,#1
	s_jmp_varNE		B,playerthree_Zrotfloatptr,#twopZrotfloattab_len,.pfzptrok
	s_set_var		B,playerthree_Zrotfloatptr,#0
.pfzptrok
.nwob

	s_limit_alvar		B,x,al_speed,minPspeed,maxPspeed
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.goaheadandfire
	s_decbne_var		B,firedelaythree,.noshoot
;	s_set_var		B,firedelaytwo,#5	

	lda	weaponnumberpthree
	cmp	#99
	beq .slow
	cmp	#9
	beq	.gofast
	cmp	#2
	bpl	.slower
	bra	.gofast
.slow
	s_set_var		B,firedelaythree,#7
	bra			.faster
.gofast
	s_set_var		B,firedelaythree,#5
	bra			.faster
.slower
	s_set_var		B,firedelaythree,#5
.faster	
	a8
	lda	scopemode
	beq	.noscopeshoot
	lda	scope_held+1
	and	#$80
	bne	.skipy
.noscopeshoot
	s_jmp_keyup		y3,.shootdone
.skipy
;	s_jmp_lastkeydown	y2,.shootdone	;shoot once
	lda	weaponnumberpthree
	sta	weaponnumber
	jsl	dofireplease_l
	bra	.noshoot
.shootdone
	s_set_var		B,firedelaythree,#1
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.noshoot

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	lda	specialdelaythree
	cmp	#0
	bpl	.mustdec
	bra	.okdoit
.mustdec
	dec	specialdelaythree
	jmp	.npfa

.okdoit
	s_set_var		B,specialdelaythree,#0

	a8
	lda	scopemode
	beq	.noscopeshoot2
	lda	scope_held+1
	and	#$10
	bne	.timetoscopenuke
.noscopeshoot2
	s_jmp_keyup		a3,.npfa
	s_jmp_lastkeydown	a3,.npfa
.timetoscopenuke
	lda	godmode
	bne	.godmodeb
	s_set_var		B,specialdelaythree,#10
	bra	.startcountdown
.godmodeb
	s_set_var	B,specialdelaythree,#1	
	bra	.skipcount
.startcountdown
	s_beqdec_var		W,speccntthree,.npfa	
.skipcount
	trigse			$31
	s_weapon_pos		#0,#0,#80>>weapon_scale
	s_weapon_rot		#0,#0
;	s_fire_weapon		x,NUKE2,.npfa
	jsl	fire_nuke3
;	s_set_alvar		B,y,al_sbyte4,#2
	lda	godmode
	bne	.npfa
	s_dec_var		W,specwepcntthreetemp
	
.npfa

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_beqdec_alvar		B,x,al_sbyte4,.nhfl
	s_set_var2rnd		viewshakeX,#15
	s_sub_var		B,viewshakeX,#7
	s_set_var2rnd		viewshakeY,#15
	s_sub_var		B,viewshakeY,#7
	s_set_var2rnd		viewshakeZ,#15
	s_sub_var		B,viewshakeZ,#7
	s_jmp_notdelay		1,done111
	s_set_alsflag		x,hitflash
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,colldisable
	s_brl			done111


.nhfl
	s_clr_alsflag	x,nohitaffect
	s_clr_alsflag	x,colldisable
	s_set_collstrat		x,playerthreecol_Istrat
	stz			viewshakeX
	stz			viewshakeY
	stz			viewshakeZ


	lda	godmode
	beq	.collision
	s_set_alsflag	x,nohitaffect				;god mode damage disable
	s_set_alsflag	x,colldisable
.collision
	s_jmp_keyup	left3,threeplayerkill
	s_jmp_keyup	a3,threeplayerkill
	s_jmp_keyup	start3,threeplayerkill
	s_jmp_lastkeydown	start3,threeplayerkill
;	s_set_alvar	B,x,al_hp,#0

threeplayerkill
	settext	0,3
	a8
	lda.l	al_hp,x
	sta	p3hp
;------------------
	s_end_strat
done111

;----------------------------------------------------------------
;	s_obj2obj_3dangle	x,y,al_roty,al_rotx,3	
	s_end_strat

.end

	s_remove_offscn	x
	s_set_alsflag	x,nohitaffect
	s_set_alsflag	x,colldisable

	s_set_path		x,flyawayplease

.endrem	
	lda	#0
	sta.l	m_damagethree	
	stz	speccntthree
	s_set_strat		x,0
	s_end_strat
;----------------------------------------------------------------------------------------

playerthreedead_Istrat
	s_start_strat
	s_set_alvar	B,x,al_hp,#0
	lda	pthreerevivedelay
	beq	.norm
	cmp	#1
	beq	.revive
	bpl	.dec
	
.revive
	stz	pthreerevivedelay
	s_set_alvar	B,x,al_hp,#100
	lda	newgameplus
	bne	.less
	s_set_var	B,speccntthree,#5
	bra	.donbom
.less
	s_set_var	B,speccntthree,#2
.donbom
	s_clr_alsflag	x,invisible
	s_clr_alsflag	x,colldisable
	s_set_alptrs	x,thirdplayer_strat,playerthreecol_Istrat,playerthreedead_Istrat
	s_end_strat
	
.dec
	dec	pthreerevivedelay
	jmp	.end
	
.norm
	dec	livesthree
	lda	lives
	clc
	adc	livestwo
	clc
	adc	livesfour
	clc
	adc	livesfive
	clc
	beq	.oneisdead
	bra	.disappear
.oneisdead
	lda	livesthree
	lbeq		bothdead
.disappear
	trigse			se_playerdown
;	stz	twoplayer
;	lda	#1
;	sta	dohofs
;	stz	noxrot
	lda	#0
	sta.l	m_damagethree
;	s_set_var    W,viewdist,#120
;	s_set_var    W,outviewdist,#120
;	s_set_var    W,outdist,#120

;	stz	speccntthree
;	s_set_strat	x,explode_Istrat
	lda	#1
	sta	pthreedead
	lda	livesthree
	beq	nomorep3
	lda	#60
	sta	pthreerevivedelay
	s_set_alsflag	x,invisible
	s_set_alsflag	x,colldisable

.end
	s_end_strat
	
nomorep3
	lda	multitapmode
	bne	.noneofthat
	lda	#0
	sta	twoplayer
	lda	#1
	sta	dohofs
	sta	dovofs
	stz	noxrot
;	s_playerfly_mode	planet
	lda	shpmode
	beq	.normaldist
	s_set_var    W,viewdist,#160
	s_set_var    W,outviewdist,#160
	s_set_var    W,outdist,#160
	bra	.donedist
.normaldist
	s_set_var    W,viewdist,#120
	s_set_var    W,outviewdist,#120
	s_set_var    W,outdist,#120
.donedist
	stz	viewtype
.noneofthat
	lda	#0
	sta.l	m_damagethree
	stz	speccntthree
	s_remove_obj	x
	s_end_strat



bothdead
	lda	lives
	clc
	adc	livestwo
	clc
	adc	livesfour
	clc
	adc	livesfive
	beq	.nolives1	;if=0
	bra	.normalroutine	;go always
.nolives1
	lda	livesthree
	beq	.gameover	;if=0
	bra	.normalroutine

.gameover
	lda	#le_gameover
	sta	levelfinished
.normalroutine
	s_set_objtobeplayer	y
	stz	twoplayer
	lda	#1
	sta	dohofs
	stz	noxrot
	lda	#0
	sta.l	m_damagethree
	lda	shpmode
	beq	.normdist2
	s_set_var    W,viewdist,#160
	s_set_var    W,outviewdist,#160
	s_set_var    W,outdist,#160
	bra	.donedist2
.normdist2
	s_set_var    W,viewdist,#120
	s_set_var    W,outviewdist,#120
	s_set_var    W,outdist,#120
.donedist2
	dec	livesthree
	s_set_expstrat	y,playerdead_Istrat
	s_set_expstrat	x,playerdead_Istrat
	s_end_strat

	
playerthreecol_Istrat
	s_start_strat
	s_clr_alsflag		x,collide
;	s_jmp_alsflag		x,nohitaffect,.nocol

	s_jmp_varAND	B,pthreeshipflags2,#ptwosf2_wireship,.halfcol	;if	ptwo wireship bit set, no damage
	s_docoll		x,#framesperAP
	s_set_alsflag		x,hitflash
	s_bra	.doneplayerthreeshieldhitcheck

.halfcol
	s_inc_var		B,pthreenumhits 

.doneplayerthreeshieldhitcheck

.Icont	local

	s_set_objtobealvar.w	y,x,al_collobjptr
	s_jmp_varAND	B,pthreeshipflags2,#ptwosf2_wireship,.dsn
	s_jmp_objptrBAD		y,.b8snd
	s_jmp_alvarLESS.w	B,y,al_AP,#8,.b8snd
.snd
	TRIGSE			$04
	bra			.dsn
.b8snd
	TRIGSE			$19
.dsn

.nocol	local
	s_set_alvar	B,x,al_sbyte4,#9
	s_set_collstrat	x,playerthreecoltwo_Istrat
	s_set_endcollstrat	x,playerthreecoltwo_Istrat
	s_end_strat

playerthreecoltwo_Istrat
	s_start_strat
	s_beqdec_alvar		B,x,al_sbyte4,.nhfl,#0
;	s_set_var2rnd		viewshakeX,#15
;	s_sub_var		B,viewshakeX,#7
;	s_set_var2rnd		viewshakeY,#15
;	s_sub_var		B,viewshakeY,#7
;	s_set_var2rnd		viewshakeZ,#15
;	s_sub_var		B,viewshakeZ,#7
;	s_jmp_notdelay		1,.done
	s_set_alsflag		x,hitflash
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,colldisable
	s_bra			.done

.nhfl
	s_clr_alsflag		x,nohitaffect
	s_clr_alsflag	x,colldisable
;	stz			viewshakeX
;	stz			viewshakeY
;	stz			viewshakeZ
	s_set_collstrat		x,playerthreecol_Istrat
	s_end_strat
.done
	s_end_strat












;------------------FOURTH PLAYER

fourthplayer_Istrat
	s_start_strat
	s_set_alptrs	x,fourthplayer_strat,playerfourcol_Istrat,playerfourdead_Istrat
	s_set_aldata	x,#100,#friendAP
	s_set_colltype	x,friend
;	s_set_colltype	x,laser

	s_setnoremove_behind	x
	s_set_alsflag	x,shadow
	s_set_alsflag		x,playerobj
	s_set_objtobeplayer	y
	s_copy_pos		x,y
	s_add_alvar		W,x,al_worldy,#150
	s_sub_alvar		W,x,al_worldx,#50
	s_end_strat
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fourthplayer_strat
	s_start_strat
	a8
	lda	numplayers
	cmp	#1
	bne	.nofuckery
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldx
	s_copy_alvar2var	W,y,targety,al_worldy
	s_add_var		W,targety,#150
	s_sub_var		W,targetx,#50
	s_achase_alvar	W,x,al_worldy,targety,3
	s_achase_alvar	W,x,al_worldx,targetx,3
.nofuckery

	s_gen_3dvecs		x,al_roty,al_rotx,al_speed
	s_add_vecs2pos		x
	s_add_playerZ		x
	s_jmp_higher		x,#maxpmoveY,.ok
	s_set_alvar		W,x,al_worldy,#maxpmoveY
.ok
	lda	twoplayer
	lbeq	nomorep4
	stz	pfourdead
	s_set_objtobeplayer		y
;	s_or_var	B,crosshairflag,#crosshairoff
	s_copy_alvar2alvar	B,x,al_speed,y,al_speed
	s_copy_alvar2alvar.w	W,x,al_worldz,y,al_worldz
	s_add_alvar	W,x,al_worldz,#120
	lda	#1
	sta	playertwoactivated
	sta.l	m_playertwoactivated
	lda	al_HP,x
	bpl	.ok2
	lda	#0
.ok2	sta.l	m_damagefour


	
;~~~~~~~~~~~~~~~Follow P1 in cutscene~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	lda	inascene
	beq	.notincutscene
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,3
	s_achase_alvar2alvar	W,x,al_worldy,y,al_worldy,3
;	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,3
;	s_achase_alvar2alvar	B,x,al_roty,y,al_roty,3
	jmp	fourplayerkill


;~~~~~~~~~~~~~~~P1 follow P2 if dead~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.notincutscene
	lda	ponedead
	beq	.nitem	;not=0
	lda	lives
	bne	.nitem	;not=0
	lda	inascene		;skip if in cutscene
	bne	.nitem			;not=0 skip this
	s_copy_alvar2alvar.w	W,y,al_worldx,x,al_worldx	;copy player 1 position to player 2 if fully dead
	s_copy_alvar2alvar.w	W,y,al_worldy,x,al_worldy	;
	s_copy_alvar2alvar.w	B,y,al_rotx,x,al_rotx	;copy player 1 position to player 2 if fully dead
	s_copy_alvar2alvar.w	B,y,al_roty,x,al_roty	;
	s_copy_alvar2alvar.w	B,y,al_rotz,x,al_rotz	;copy player 1 position to player 2 if fully dead
	
.nitem

	a8
	lda	nocrosshairpls
	cmp	#2
	lbne	.nosh
	s_make_obj	#nullshape,.nosh
	lda	currxhair4
	asl	a
	sta.w			al_sbyte3,y
	phx
	tyx
	s_set_alvar2alvartab	B,W,W,x,al_shape,x,al_sbyte3,xhairreallist
	plx
	s_sprite_obj	y,#0
	s_copy_pos	y,x
;	s_add_alvar	W,y,al_worldz,#80
	s_copy_rots	y,x
	s_copy_vecs	y,x
	phx
	tyx
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,2
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,2
	plx
	s_add_vecs2pos	y
	s_set_strat	y,test4_istrat
.nosh
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	lda	lives
	lbeq	.doneexpand
	s_jmp_alvarmore		W,x,al_worldx,#290,.expand2
	s_jmp_alvarmore.w		W,y,al_worldx,#290,.expand2
	s_jmp_alvarless		W,x,al_worldx,#-290,.expand2
	s_jmp_alvarless.w		W,y,al_worldx,#-290,.expand2

	s_jmp_alvarmore		W,x,al_worldx,#150,.expand
	s_jmp_alvarmore.w		W,y,al_worldx,#150,.expand
	s_jmp_alvarless		W,x,al_worldx,#-150,.expand
	s_jmp_alvarless.w		W,y,al_worldx,#-150,.expand

	s_jmp_alvarmore		W,x,al_worldy,#-60,.expand
	s_jmp_alvarmore.w		W,y,al_worldy,#-60,.expand
	s_jmp_alvarless		W,x,al_worldy,#-250,.expand
	s_jmp_alvarless.w		W,y,al_worldy,#-250,.expand	
	s_Achase_var    W,viewdist,#250,3
	s_Achase_var    W,outviewdist,#250,3
	s_Achase_var    W,outdist,#250,3
	jmp	.doneexpand

	
.expand
	s_Achase_var    W,viewdist,#600,3
	s_Achase_var    W,outviewdist,#600,3
	s_Achase_var    W,outdist,#600,3
	jmp	.doneexpand

.expand2
	s_Achase_var    W,viewdist,#1100,3
	s_Achase_var    W,outviewdist,#1100,3
	s_Achase_var    W,outdist,#1100,3
.doneexpand





;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


	s_jmpNOT_varAND		B,pfourshipflags2,#ptwosf2_wireship,.notwire
	s_jmp_varlesseq		B,pfournumhits,#3-1,.iswire
	
	s_beqdec_var		B,wirefourendflash,.backtonorm
	s_jmp_varAND		B,wirefourendflash,#3,.wire
;	stz			shieldup
	lda	shpmode
	beq	.normp2shp
	s_set_alvar		W,x,al_shape,#player2shparwing
	jmp			.nochange
.normp2shp
	s_set_alvar		W,x,al_shape,#playertwo1
	jmp			.nochange 
;-----------------

;-----------------
	
.wire
;	lda		#1
;	sta		shieldup

	s_set_alvar		W,x,al_shape,#wireplayertwo
	jmp			.notwire    
	
	
.backtonorm
;	stz			shieldup
	lda	shpmode
	beq	.normp2shp2
	s_set_alvar		W,x,al_shape,#player2shparwing
	bra			.nochange
.normp2shp2
	s_set_alvar		W,x,al_shape,#playertwo1
.nochange
	s_and_var		B,pfourshipflags2,#~ptwosf2_wireship
.iswire    
	s_set_var		B,wirefourendflash,#50
.notwire    


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_jmpNOT_varAND		B,pfourshipflags2,#ptwosf2_wireship,.nwire
	phx
	a16
	lda	al_colframe,x
	and	#3
	tax
	a8
	plx
	bra	.flash
.nwire
	s_jmpNOT_alsflag	x,hitflash,.nflash
.flash	
	s_add_colanim	x,#1,#4
	s_bra		.notwire2
.nflash	
	s_init_colanim	x,#4
.notwire2	


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_varNOTZERO	B,playerfour_rollZvel,.nroll

	s_beqdec_var		B,playerfour_rolldelay,.lragain
	s_jmp_anyLR4keyup	.nroll
	s_jmp_anyLR4keydown	.nroll,last
	s_set_var		B,playerfour_rollZvel,#-32	
	s_set_var		B,playerfour_rollZoff,#0
	s_jmp_keyup		left4,.isright
	s_set_var		B,playerfour_rollZvel,#32	
	s_set_var		B,playerfour_rollZoff,#0
.isright
.lragain
	s_jmp_anyLR4keyup	.nroll
	s_set_var		B,playerfour_rolldelay,#3
.nroll
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	s_and_var		B,keyflags4,#~kf_lrkeydown
	s_jmp_keyup		left4,.nlk
	s_or_var		B,keyflags4,#kf_lrkeydown
;	s_jmp_lastkeydown	left3,.nrk2
;	s_or_var		B,keyflags3,#kf_lkeydown
	s_brl			.nrk2
.nlk
	s_jmp_keyup		right4,.nrk2
	s_and_var		B,keyflags4,#~kf_lkeydown
.nrk2

labelit1
	s_jmp_keyup		right4,.nrk
	s_or_var		B,keyflags4,#kf_lrkeydown
;	s_jmp_lastkeydown	right3,.nlk2
	s_and_var		B,keyflags4,#~kf_lkeydown
	s_brl			.nlk2	 
.nrk
	s_jmp_keyup		left4,.nlk2
	s_or_var		B,keyflags4,#kf_lkeydown
.nlk2
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_jmpNOT_varAND		B,keyflags4,#kf_lrkeydown,.nhtr
	s_jmpNOT_varAND		B,keyflags4,#kf_lkeydown,.nhtl
;	s_jmp_keyup		right2,.noright						;Right Trig
	s_add_alvar		B,x,al_rotz,#deg45/3
	s_cmp_alvar		B,x,al_rotz,#deg90
	s_bmi			.nhptc
	s_set_alvar		B,x,al_rotz,#deg90
	s_jmp			.nhptc
.nhtl
	s_jmp_keyup		right4,.nhtr
.drt	s_sub_alvar		B,x,al_rotz,#deg45/3
	s_cmp_alvar		B,x,al_rotz,#-deg90
	s_bpl			.nhptc
	s_set_alvar		B,x,al_rotz,#-deg90
	s_jmp			.nhptc
.nhtr


	s_achase_alvar		B,x,al_rotz,#0,3
.nhptc
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_varNOTZERO	B,playerfour_rollZvel,.zroll
	s_achase_var		B,playerfour_rollZoff,#0,3
	s_brl			.zrcont
.zroll
	s_add_vars		B,playerfour_rollZoff,playerfour_rollZvel
.noxtrabr
	s_jmp_varpl		B,playerfour_rollZvel,.zrispl
	s_add_var		B,playerfour_rollZvel,#2
	s_bra			.zrcont
.zrispl       	
	s_sub_var		B,playerfour_rollZvel,#2
.zrcont
	s_add_alvar		B,x,al_rotz,playerfour_rollZoff
	

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jright4,.eplrc						;
														;
	s_sub_alvar		W,x,al_worldx,#7					;	right
	s_Achase_alvar	B,x,al_roty,#-deg22,2				;


.eplrc													;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jleft4,.eprrc						;
														;
	s_add_alvar		W,x,al_worldx,#7				;
	s_Achase_alvar	B,x,al_roty,#deg22,2				;	left
															
.eprrc		

	s_jmp_keydown	jleft4,.nfno
	s_jmp_keydown	jright4,.nfno						;	center chase
	s_achase_alvar		B,x,al_roty,#0,3
.nfno										
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jup4,.noup								;up
	s_add_alvar		W,x,al_worldy,#7						;
	s_Achase_alvar	B,x,al_rotx,#deg22,3
.noup
	s_jmp_keyup		jdown4,.nodown							;down
	s_sub_alvar		W,x,al_worldy,#7						;
	s_Achase_alvar	B,x,al_rotx,#-deg22,3

.nodown

	s_jmp_keydown	jdown4,.nfup
	s_jmp_keydown	jup4,.nfup
	s_achase_alvar		B,x,al_rotx,#0,3
.nfup
;----------

;-------------
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarless		W,x,al_worldy,maxpmoveY,.nfpbottom	;
	s_set_alvar		W,x,al_worldy,maxpmoveY					;

	s_test_var		B,pmovelimitAND,#pml_Bbottom			;
	s_bne			.nfpbottom								;
	s_or_var		B,arrows,#sprar_down					;
	s_sub_alvar		W,x,al_worldy,#5
	bra	.top
.nfpbottom													;limit up and down movement
													;
;	s_jmp_alvarlessEQ		W,x,al_worldy,maxpmoveY-10,.change
;	bra	.top
;.change
;	s_achase_alvar		B,x,al_rotx,#0,1															;
	
.top
	s_jmp_alvarmore		W,x,al_worldy,minpmoveY,.nfptop		;
	s_set_alvar		W,x,al_worldy,minpmoveY					;
	s_or_var		B,arrows,#sprar_up						;
;	s_add_alvar		W,x,al_worldy,#5
.nfptop														;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarmore	W,x,al_worldX,minpmoveX,.nminX
	s_set_alvar	W,x,al_worldX,minpmoveX
	s_or_var		B,arrows,#sprar_left
	s_add_alvar		W,x,al_worldx,#5
.nminX
	s_jmp_alvarless	W,x,al_worldX,maxpmoveX,.nmaxX
	s_set_alvar	W,x,al_worldX,maxpmoveX
	s_or_var		B,arrows,#sprar_right
	s_sub_alvar		W,x,al_worldx,#5
.nmaxX
			 

	s_jmpNOT_varAND		B,playerflymode,#pfm_wobble,.nwob
	s_set_var2vartab	B,B,B,playerfour_Zrotfloat,playerfour_Zrotfloatptr,twopZrotfloattab
.vcont
	s_add_alvar		B,x,al_rotz,playerfour_Zrotfloat
	s_add_var		B,playerfour_Zrotfloatptr,#1
	s_jmp_varNE		B,playerfour_Zrotfloatptr,#twopZrotfloattab_len,.pfzptrok
	s_set_var		B,playerfour_Zrotfloatptr,#0
.pfzptrok
.nwob

	s_limit_alvar		B,x,al_speed,minPspeed,maxPspeed
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.goaheadandfire
	s_decbne_var		B,firedelayfour,.noshoot
;	s_set_var		B,firedelaytwo,#5	

	lda	weaponnumberpfour
	cmp	#99
	beq .slow
	cmp	#9
	beq	.gofast
	cmp	#2
	bpl	.slower
	bra	.gofast
.slow
	s_set_var		B,firedelayfour,#7
	bra			.faster
.gofast
	s_set_var		B,firedelayfour,#5
	bra			.faster
.slower
	s_set_var		B,firedelayfour,#5
.faster	
	a8
	lda	scopemode
	beq	.noscopeshoot
	lda	scope_held+1
	and	#$80
	bne	.skipy
.noscopeshoot
	s_jmp_keyup		y4,.shootdone
.skipy
;	s_jmp_lastkeydown	y2,.shootdone	;shoot once
	lda	weaponnumberpfour
	sta	weaponnumber
	jsl	dofireplease_l
	bra	.noshoot
.shootdone
	s_set_var		B,firedelayfour,#1
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.noshoot

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	lda	specialdelayfour
	cmp	#0
	bpl	.mustdec
	bra	.okdoit
.mustdec
	dec	specialdelayfour
	jmp	.npfa

.okdoit
	s_set_var		B,specialdelayfour,#0

	a8
	lda	scopemode
	beq	.noscopeshoot2
	lda	scope_held+1
	and	#$10
	bne	.timetoscopenuke
.noscopeshoot2
	s_jmp_keyup		a4,.npfa
	s_jmp_lastkeydown	a4,.npfa
.timetoscopenuke
	lda	godmode
	bne	.godmodeb
	s_set_var		B,specialdelayfour,#10
	bra	.startcountdown
.godmodeb
	s_set_var	B,specialdelayfour,#1	
	bra	.skipcount
.startcountdown
	s_beqdec_var		W,speccntfour,.npfa	
.skipcount
	trigse			$31
	s_weapon_pos		#0,#0,#80>>weapon_scale
	s_weapon_rot		#0,#0
;	s_fire_weapon		x,NUKE2,.npfa
	jsl	fire_nuke4
;	s_set_alvar		B,y,al_sbyte4,#2
	lda	godmode
	bne	.npfa
	s_dec_var		W,specwepcntfourtemp
	
.npfa

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_beqdec_alvar		B,x,al_sbyte4,.nhfl
	s_set_var2rnd		viewshakeX,#15
	s_sub_var		B,viewshakeX,#7
	s_set_var2rnd		viewshakeY,#15
	s_sub_var		B,viewshakeY,#7
	s_set_var2rnd		viewshakeZ,#15
	s_sub_var		B,viewshakeZ,#7
	s_jmp_notdelay		1,done1112
	s_set_alsflag		x,hitflash
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,colldisable
	s_brl			done1112


.nhfl
	s_clr_alsflag	x,nohitaffect
	s_clr_alsflag	x,colldisable
	s_set_collstrat		x,playerfourcol_Istrat
	stz			viewshakeX
	stz			viewshakeY
	stz			viewshakeZ


	lda	godmode
	beq	.collision
	s_set_alsflag	x,nohitaffect				;god mode damage disable
	s_set_alsflag	x,colldisable
.collision
	s_jmp_keyup	left4,fourplayerkill
	s_jmp_keyup	a4,fourplayerkill
	s_jmp_keyup	start4,fourplayerkill
	s_jmp_lastkeydown	start4,fourplayerkill
;	s_set_alvar	B,x,al_hp,#0

fourplayerkill
	settext	0,4
	a8
	lda.l	al_hp,x
	sta	p4hp
;------------------
	s_end_strat
done1112

;----------------------------------------------------------------
;	s_obj2obj_3dangle	x,y,al_roty,al_rotx,3	
	s_end_strat

.end

	s_remove_offscn	x
	s_set_alsflag	x,nohitaffect
	s_set_alsflag	x,colldisable

	s_set_path		x,flyawayplease

.endrem	
	lda	#0
	sta.l	m_damagefour	
	stz	speccntfour
	s_set_strat		x,0
	s_end_strat
;----------------------------------------------------------------------------------------

playerfourdead_Istrat
	s_start_strat
	s_set_alvar	B,x,al_hp,#0
	lda	pfourrevivedelay
	beq	.norm
	cmp	#1
	beq	.revive
	bpl	.dec
	
.revive
	stz	pfourrevivedelay
	s_set_alvar	B,x,al_hp,#100
	lda	newgameplus
	bne	.less
	s_set_var	B,speccntfour,#5
	bra	.donbom
.less
	s_set_var	B,speccntfour,#2
.donbom
	s_clr_alsflag	x,invisible
	s_clr_alsflag	x,colldisable
	s_set_alptrs	x,fourthplayer_strat,playerfourcol_Istrat,playerfourdead_Istrat
	s_end_strat
	
.dec
	dec	pfourrevivedelay
	jmp	.end
	
.norm
	dec	livesfour
	lda	lives
	clc
	adc	livestwo
	clc
	adc	livesthree
	clc
	adc	livesfive
	beq	.oneisdead
	bra	.disappear
.oneisdead
	lda	livesfour
	lbeq		bothdead
.disappear
	trigse			se_playerdown
;	stz	twoplayer
;	lda	#1
;	sta	dohofs
;	stz	noxrot
	lda	#0
	sta.l	m_damagefour
;	s_set_var    W,viewdist,#120
;	s_set_var    W,outviewdist,#120
;	s_set_var    W,outdist,#120

;	stz	speccntfour
;	s_set_strat	x,explode_Istrat
	lda	#1
	sta	pfourdead
	lda	livesfour
	beq	nomorep4
	lda	#60
	sta	pfourrevivedelay
	s_set_alsflag	x,invisible
	s_set_alsflag	x,colldisable

.end
	s_end_strat
	
nomorep4
	lda	multitapmode
	bne	.noneofthat
	lda	#0
	sta	twoplayer
	lda	#1
	sta	dohofs
	sta	dovofs
	stz	noxrot
;	s_playerfly_mode	planet
	lda	shpmode
	beq	.normaldist
	s_set_var    W,viewdist,#160
	s_set_var    W,outviewdist,#160
	s_set_var    W,outdist,#160
	bra	.donedist
.normaldist
	s_set_var    W,viewdist,#120
	s_set_var    W,outviewdist,#120
	s_set_var    W,outdist,#120
.donedist
	stz	viewtype
.noneofthat
	lda	#0
	sta.l	m_damagefour
	stz	speccntfour
	s_remove_obj	x
	s_end_strat


	
playerfourcol_Istrat
	s_start_strat
	s_clr_alsflag		x,collide
;	s_jmp_alsflag		x,nohitaffect,.nocol

	s_jmp_varAND	B,pfourshipflags2,#ptwosf2_wireship,.halfcol	;if	ptwo wireship bit set, no damage
	s_docoll		x,#framesperAP
	s_set_alsflag		x,hitflash
	s_bra	.doneplayerfourshieldhitcheck

.halfcol
	s_inc_var		B,pfournumhits 

.doneplayerfourshieldhitcheck

.Icont	local

	s_set_objtobealvar.w	y,x,al_collobjptr
	s_jmp_varAND	B,pfourshipflags2,#ptwosf2_wireship,.dsn
	s_jmp_objptrBAD		y,.b8snd
	s_jmp_alvarLESS.w	B,y,al_AP,#8,.b8snd
.snd
	TRIGSE			$04
	bra			.dsn
.b8snd
	TRIGSE			$19
.dsn

.nocol	local
	s_set_alvar	B,x,al_sbyte4,#9
	s_set_collstrat	x,playerfourcoltwo_Istrat
	s_set_endcollstrat	x,playerfourcoltwo_Istrat
	s_end_strat

playerfourcoltwo_Istrat
	s_start_strat
	s_beqdec_alvar		B,x,al_sbyte4,.nhfl,#0
;	s_set_var2rnd		viewshakeX,#15
;	s_sub_var		B,viewshakeX,#7
;	s_set_var2rnd		viewshakeY,#15
;	s_sub_var		B,viewshakeY,#7
;	s_set_var2rnd		viewshakeZ,#15
;	s_sub_var		B,viewshakeZ,#7
;	s_jmp_notdelay		1,.done
	s_set_alsflag		x,hitflash
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,colldisable
	s_bra			.done

.nhfl
	s_clr_alsflag		x,nohitaffect
	s_clr_alsflag	x,colldisable
;	stz			viewshakeX
;	stz			viewshakeY
;	stz			viewshakeZ
	s_set_collstrat		x,playerfourcol_Istrat
	s_end_strat
.done
	s_end_strat




;--------------------------------------------------
;--------------------------------------------------
;----------------random's midlevel boss----------------------
;--------------------------------------------------
;--------------------------------------------------

mbo_istrat
	s_start_strat
	s_set_alptrs	x,mbo_strat,mbocol_istrat,mboexp_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#80,#20				;hp + ap
	s_set_bossmaxHP	#80					;set the max hp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide
	s_set_alsflag	x,colldisable
	s_set_alvar		B,x,al_sbyte1,#80		;timer for state 0
	s_init_anim		x,#0


mbo_strat
	s_start_strat

;---------------------------------------		State 0 - move into starting position
	s_set_objtobeplayer	y
	s_jmp_ifnotstate	x,0,.not0
	s_jmp_zdistless		x,y,#1000,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar		B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#60
	s_set_alvar		B,x,al_sbyte2,#0
	s_next_state		x						;timer done, next state

.not0


	s_jmp_ifnotstate	x,1,.not1


	s_jmp_notdelay	6,.nofire	
	jsr firerockets
.nofire



.not1

	s_set_find	0
.lop
	s_find_obj			y,x,#l_mbo_1a,.nohelpers	
	bra	.ok
.nohelpers
	s_set_alsflag	x,collide
	s_clr_alsflag	x,colldisable	
.ok




	s_add_playerz	x
	s_add_bossHP	x,al_hp

	s_end_strat
	
	
;--------------------------------------------------
;--------------------------------------------------
;----------------random's finale left side turret----------------------
;--------------------------------------------------
;--------------------------------------------------

mbo_LT_istrat
	s_start_strat
	s_set_alptrs	x,mbo_LT_strat,hitflash_istrat,bigexplode_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#60,#20				;hp + ap
	s_set_alvar		B,x,al_roty,#0			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_set_alsflag	x,relexplode
	s_clr_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	s_set_alsflag	x,colldisable
	s_set_alvar		B,x,al_sbyte1,#65		;timer for state 0
	s_init_anim		x,#0
	s_set_alsflag	x,invisible

mbo_LT_strat
	s_start_strat

;---------------------------------------		State 0 - move into starting position
	s_set_objtobeplayer	y

	s_jmp_ifnotstate	x,0,.not0
	s_jmp_zdistless		x,y,#1100,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar		B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#30
	s_clr_alsflag	x,invisible
	s_next_state		x						;timer done, next state
.not0

	s_jmp_ifnotstate	x,1,.not1				;state 1
	s_sub_alvar		W,x,al_worldx,#10
	s_sub_alvar			W,x,al_worldz,#10
	s_jmp_NOTalsflag	x,invisible,.turninvis
	s_clr_alsflag	x,invisible
	bra	.don
.turninvis
	s_set_alsflag	x,invisible
.don
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x	
.not1

	s_jmp_ifnotstate	x,2,.not2				;state 2

	s_add_alvar		B,x,al_roty,#(deg180/30)

	s_jmp_NOTalsflag	x,invisible,.turninvis2
	s_clr_alsflag	x,invisible
	bra	.don2
.turninvis2
	s_set_alsflag	x,invisible
.don2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_clr_alsflag		x,invisible
	s_set_alvar			B,x,al_sbyte1,#15
	s_clr_alsflag	x,colldisable
	s_set_alsflag	x,collide
	jsr	spawnarock2
	s_next_state		x	

.not2

	s_jmp_ifnotstate	x,3,.not3				;state 3
	
;	s_achase_alvar	B,x,al_roty,#deg180,3
	s_sub_alvar	B,x,al_rotz,#(256/20)
;	s_add_alvar	W,x,al_worldx,#(100/15)
	s_decbne_alvar	B,x,al_sbyte1,.not3
	s_set_alvar	B,x,al_sbyte1,#50
	s_set_objtobeplayer	y
	s_next_state		x
.not3

	s_jmp_ifnotstate	x,4,.not4
	s_add_alvar	B,x,al_rotz,#(256/20)
;	s_sub_alvar	W,x,al_worldx,#(100/50)	
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar	B,x,al_sbyte1,#15
	jsr	spawnarock2
	s_set_objtobeplayer	y
	s_set_state	x,#3
.not4





	s_add_playerz	x

	s_end_strat
	
	
	
;--------------------------------------------------
;--------------------------------------------------
;----------------random's finale right side turret----------------------
;--------------------------------------------------
;--------------------------------------------------

mbo_RT_istrat
	s_start_strat
	s_set_alptrs	x,mbo_RT_strat,hitflash_istrat,bigexplode_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#60,#20				;hp + ap
	s_set_alvar		B,x,al_roty,#0			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide
	s_set_alsflag	x,colldisable
	s_set_alvar		B,x,al_sbyte1,#65		;timer for state 0
	s_init_anim		x,#0
	s_set_alsflag	x,invisible

mbo_RT_strat
	s_start_strat

;---------------------------------------		State 0 - move into starting position
	s_set_objtobeplayer	y

	s_jmp_ifnotstate	x,0,.not0
	s_jmp_zdistless		x,y,#1100,.noinc
	s_sub_alvar			W,x,al_worldz,#30
.noinc
	s_decbne_alvar		B,x,al_sbyte1,.not0		;when timer is running, skip this part
	s_set_alvar			B,x,al_sbyte1,#30
	s_set_alsflag	x,invisible
	s_next_state		x						;timer done, next state
.not0





	s_jmp_ifnotstate	x,1,.not1
	s_add_alvar		W,x,al_worldx,#10
	s_sub_alvar			W,x,al_worldz,#10
	s_jmp_NOTalsflag	x,invisible,.turninvis
	s_clr_alsflag	x,invisible
	bra	.don
.turninvis
	s_set_alsflag	x,invisible
.don
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#30
	s_next_state		x	
.not1

	s_jmp_ifnotstate	x,2,.not2

	s_sub_alvar		B,x,al_roty,#(deg180/30)

	s_jmp_NOTalsflag	x,invisible,.turninvis2
	s_clr_alsflag	x,invisible
	bra	.don2
.turninvis2
	s_set_alsflag	x,invisible
.don2
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_clr_alsflag		x,invisible
	s_set_alvar			B,x,al_sbyte1,#15
	s_clr_alsflag	x,colldisable
	s_set_alsflag	x,collide
	jsr	spawnarock2
	s_next_state		x	

.not2

	s_jmp_ifnotstate	x,3,.not3				;state 3
	
	s_add_alvar	B,x,al_rotz,#(256/20)
;	s_sub_alvar	W,x,al_worldx,#(100/15)
	s_decbne_alvar	B,x,al_sbyte1,.not3
	s_set_alvar	B,x,al_sbyte1,#50
	s_set_objtobeplayer	y
	s_next_state		x
.not3

	s_jmp_ifnotstate	x,4,.not4
	s_sub_alvar	B,x,al_rotz,#(256/20)
;	s_add_alvar	W,x,al_worldx,#(100/50)	
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar	B,x,al_sbyte1,#15
	jsr	spawnarock2
	s_set_objtobeplayer	y
	s_set_state	x,#3		
.not4


	s_add_playerz	x

	s_end_strat
	
	

;spawn a rock, obviously

spawnarock
	s_make_obj	#asteroid1,.donespawn
	s_sprite_obj	y,#0
	s_copy_pos	y,x
	s_copy_rots	y,x
	s_sub_alvar	W,y,al_worldz,#100
	s_set_aldata	y,#60,#18				;hp + ap
	s_set_colltype	y,ENEMY1
	s_set_colltype	y,ENEMY2
	s_set_colltype	y,ENEMYWEAP
	s_set_alsflag	y,invisible
	s_set_alvar	B,y,al_sbyte1,#15
	s_add_playerz	y
	s_set_strat	y,rockit_strat
.donespawn
	rts
	
spawnarock2
	s_make_obj	#asteroid1,.donespawn
	s_set_aldata	y,#60,#18				;hp + ap
	s_sprite_obj	y,#0
	s_copy_pos	y,x
	s_copy_rots	y,x
	s_sub_alvar	W,y,al_worldz,#100
	s_set_colltype	y,ENEMY1
	s_set_colltype	y,ENEMY2
	s_set_colltype	y,ENEMYWEAP
	s_set_alvar	B,y,al_sbyte1,#15
	s_add_playerz	y
	s_set_strat	y,rockit2_strat
.donespawn
	rts
	
	
	
rockit_strat
	s_start_strat

	s_jmp_ifnotstate	x,0,.not0
	s_jmp_NOTalsflag	x,invisible,.turninvis2
	s_clr_alsflag	x,invisible
	bra	.don2
.turninvis2
	s_set_alsflag	x,invisible
.don2	
	s_decbne_alvar	B,x,al_sbyte1,.not0
	
	s_clr_alsflag	x,invisible
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldx
	s_copy_alvar2var	W,y,targety,al_worldy
	s_next_state	x
	
.not0

	s_jmp_ifnotstate	x,1,.not1
	s_sub_alvar	W,x,al_worldz,#30
	s_achase_alvar	W,x,al_worldx,targetx2,3
	s_achase_alvar	W,x,al_worldy,targety2,3
.not1
	
	s_add_playerz	x
	s_end_strat
	
	
	
	
rockit2_strat
	s_start_strat

	s_jmp_ifnotstate	x,0,.not0
	s_jmp_NOTalsflag	x,invisible,.turninvis2
	s_clr_alsflag	x,invisible
	bra	.don2
.turninvis2
	s_set_alsflag	x,invisible
.don2	
	s_decbne_alvar	B,x,al_sbyte1,.not0
	
	s_clr_alsflag	x,invisible
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldx
	s_copy_alvar2var	W,y,targety2,al_worldy
	s_next_state	x
	
.not0

	s_jmp_ifnotstate	x,1,.not1
	s_sub_alvar	W,x,al_worldz,#30
	s_achase_alvar	W,x,al_worldx,targetx2,3
	s_achase_alvar	W,x,al_worldy,targety2,3
.not1
	
	s_add_playerz	x
	s_end_strat
	
	
mbocol_istrat
	s_start_strat
;	s_set_alvar			B,x,al_sbyte4,#5		;delay between getting hit
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 2 hp
	sta.w	al_hp,x		;store it
	lbmi	mboexp_istrat
	lbeq	mboexp_istrat
	s_set_alsflag		x,hitflash	;flash head
;	s_set_alsflag		x,colldisable
.player
	s_jmpto_strat	x
	s_end_strat
	
	
mboexp_istrat
	jml qbossexplode_istrat