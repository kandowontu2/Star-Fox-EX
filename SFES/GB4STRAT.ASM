	shorta
	longi

	INCPUBLICS	gb4strat.ext
	strats_start




kandologo_istrat
	s_start_strat						;start strat loop
	s_add_playerz	x					;add z distance traveled by player to this object
	s_set_alvar	B,x,al_sbyte1,#50		;set timer to go to next state
	s_set_strat	x,kandologo_strat		;change strat to start using kandologo_strat instead of istrat
	s_end_strat							;end strat loop
;-----
;-----
kandologo_strat
	s_start_strat							;start strat loop

	s_jmp_ifnotstate	x,0,.not0			;if state is not 0, jump to .not0
	s_sub_alvar		B,x,al_roty,#5			;add 5 units to rotation on y axis
	s_sub_alvar		B,x,al_rotz,#5			;add 5 units to rotation on z axis
	s_add_alvar		W,x,al_worldy,#10		;move up 10 units (worldy)
	s_decbne_alvar	B,x,al_sbyte1,.not0		;decrease al_sbyte1 and jump to .not0 every loop until it hits 0
	s_set_state	x,#2						;at that point, set the state to 2
	s_set_alvar		B,x,al_sbyte1,#20		;set the timer to 20
.not0



	s_jmp_ifnotstate	x,2,.not2			;if state is not 0, jump to .not0
	s_achase_alvar	B,x,al_rotx,#0,3
	s_achase_alvar	B,x,al_roty,#0,3
	s_achase_alvar	B,x,al_rotz,#0,3
	
	s_decbne_alvar	B,x,al_sbyte1,.not2		;decrease al_sbyte1 and jump to .not0 every loop until it hits 0
	s_set_state	x,#3						;at that point, set the state to 3
	s_set_alvar		B,x,al_sbyte1,#20		;set the timer to 20
	
.not2
	s_jmp_ifnotstate	x,3,.not3			;if state is not 1, jump to .not1
	s_achase_alvar	B,x,al_rotx,#deg45,3	;gradually move to 45 degrees along the x axis
	s_decbne_alvar	B,x,al_sbyte1,.not3		;decrease al_sbyte1 and jump to .not1 every loop until it hits 0
	s_set_state	x,#4						;at that point, set the state to 4
	s_set_alvar	B,x,al_sbyte1,#20			;and set the timer to 20

.not3
;--------------
	s_jmp_ifnotstate	x,4,.not4			;if state is not 2, jump to .not2
	s_achase_alvar	B,x,al_rotx,#-deg45,3	;gradually move to -45 degrees along the x axis
	s_decbne_alvar	B,x,al_sbyte1,.not4		;decrease al_sbyte1 and jump to .not2 every loop until it hits 0
	s_set_alvar	B,x,al_sbyte1,#20			;at that point, set the timer to 20
	s_set_state	x,#5						;and set the state to 5
.not4
;--------------
	s_jmp_ifnotstate	x,5,.not5			;if state is not 3, jump to .not3
	s_achase_alvar	B,x,al_rotx,#0,3		;gradually recenter along the x axis
	s_decbne_alvar	B,x,al_sbyte1,.not5		;decrease al_sbyte1 and jump to .not3 every loop until it hits 0
	s_set_alvar	B,x,al_sbyte1,#60			;at that point, set the timer to 60
	s_set_state	x,#6						;set the state to 6
.not5
;--------------
	s_jmp_ifnotstate	x,6,.not6			;if state is not 4, jump to .not4
	s_add_alvar		B,x,al_roty,#5			;add 5 units to rotation on y axis
	s_add_alvar		B,x,al_rotz,#5			;add 5 units to rotation on z axis
	s_sub_alvar		W,x,al_worldy,#10		;move up 10 units (worldy)
	s_decbne_alvar	B,x,al_sbyte1,.not6		;decrease al_sbyte1 and jump to .not4 until it hits 0
	s_remove_obj	x						;at that point, remove this object
.not6
	s_add_playerz	x						;add z distance traveled by player to this object
	s_end_strat



;------------BOXXIE---------------------------
;------------BOXXIE---------------------------
;------------BOXXIE DRIVE BY---------------------------
;------------BOXXIE---------------------------
;------------BOXXIE---------------------------
;------------BOXXIE---------------------------

boxxiedriveby_istrat
	s_start_strat
	s_set_alsflag	x,nohitaffect
	s_set_strat	x,boxxiedriveby_strat
	
boxxiedriveby_strat			;drive-by shooting/nuking
	s_start_strat
	s_add_playerz	x
	s_add_alvar	W,x,al_worldx,#70
	s_add_alvar	B,x,al_rotx,#5
	s_add_alvar	B,x,al_roty,#10
	s_jmp_alvarMORE	W,x,al_worldx,#3000,.done
	s_end_strat
.done
	s_remove_obj	x
	s_end_strat


;------------BOXXIE---------------------------
;------------BOXXIE---------------------------
;------------BOXXIE DRIVE BY 2---------------------------
;------------BOXXIE---------------------------
;------------BOXXIE---------------------------
;------------BOXXIE---------------------------

boxxiedriveby2_istrat
	s_start_strat
	s_set_alsflag	x,nohitaffect
	s_set_strat	x,boxxiedriveby2_strat
	
boxxiedriveby2_strat			;drive-by shooting/nuking
	s_start_strat
	s_add_playerz	x
	s_sub_alvar	W,x,al_worldx,#70
	s_sub_alvar	B,x,al_rotx,#17
	s_sub_alvar	B,x,al_roty,#3
	s_jmp_alvarLESS	W,x,al_worldx,#-3000,.done
	s_end_strat
.done
	s_remove_obj	x
	s_end_strat

;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
bossBrobdemo_Istrat
	s_start_strat
	s_set_alvar	B,x,al_roty,#deg180
	s_init_anim	x,#0
	s_set_strat	x,bossBrobdemo_strat
	s_set_alvar	W,x,al_shape,#boss_b_0
	s_set_alvar	B,x,al_sbyte1,#35
	s_set_alsflag	x,shadow
	s_set_alvar	W,x,al_worldy,#-80<<bossB_scale	

bossBrobdemo_strat
	s_start_strat

;	s_add_alvar	B,x,al_roty,#8

;---------------------------------------------------
	s_jmp_ifnotstate	x,0,.nswait
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
.nswait

;---------------------------------------------------
	s_jmp_ifnotstate	x,1,.nschg
	s_set_alvar		B,x,al_sbyte1,#20
	s_jmp_notdelay	1,.nschg
	s_cmp_anim	x,#12
	s_beq		nextstate
	s_add_anim	x,#1,#13
	s_jsr		bossBrobMent2_srou
.nschg

;---------------------------------------------------
	s_jmp_ifnotstate	x,2,.nswait3
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
.nswait3

;---------------------------------------------------
	s_jmp_ifnotstate	x,3,.njumpup
	s_set_alvar		B,x,al_sbyte1,#20
	s_jsr		bossBrobMent2_srou
	s_cmp_anim	x,#19
	s_beq		nextstate
	s_add_anim	x,#1,#20
.njumpup

;---------------------------------------------------
	s_jmp_ifnotstate	x,4,.nwait
	s_jsr		bossBrobMent2_srou
	s_sub_alvar		W,x,al_rotx,#deg360/20
	s_beqdec_alvar		B,x,al_sbyte1,nextstate
.nwait

;---------------------------------------------------
	s_jmp_ifnotstate	x,5,.nland
	s_jsr		bossBrobMent2_srou
	s_set_alvar		B,x,al_sbyte1,#50
	s_set_alvar		B,x,al_rotx,#0
	s_cmp_anim	x,#12
	s_beq		nextstate
	s_add_anim	x,#-1,#20
.nland

;---------------------------------------------------
	s_jmp_ifnotstate	x,6,.nwait2
	s_decbne_alvar		B,x,al_sbyte1,.nwait2
	s_set_alvar		B,x,al_sbyte1,#1
	s_jmp_notdelay		1,.nwait2
	s_weapon_pos		#0,#0,#0
	s_weapon_rndrot		3,3
	s_fire_weapon		x,relfastelaser
.nwait2

	
	s_end_strat


bossBrob_Istrat
	s_start_strat
	s_set_aldata	x,#bossBrobHP,#bossBAP
	s_set_bossmaxHP	#bossBrobHP
	s_set_alptrs	x,bossBrob_strat,hitflashbossD_Istrat,bossBrobchg_Istrat

	s_set_colltype	x,enemy2
	s_set_colltype	x,enemyweap

	s_set_speed	x,#40

	s_nodepthcue	x

	s_set_alsflag	x,sflag1	; image 1
	s_clr_alsflag	x,sflag2	; image 2
	s_set_alsflag		x,nohitaffect

	s_set_alvar	B,x,al_roty,#deg180-deg45
	s_set_alvar	B,x,al_rotx,#deg11
	s_set_alvar	B,x,al_sbyte1,#deg180-deg45				
  	
	s_set_alsflag	x,shadow

	s_setnoremove_behind	x

bossBrob_strat
	s_start_strat

	s_jmp_notdelay		5,.nturn

	s_jmp_alvarEQ		B,x,al_sbyte1,#deg180+deg45,.left
	s_set_alvar		B,x,al_sbyte1,#deg180+deg45
	s_bra			.nturn
.left	s_set_alvar		B,x,al_sbyte1,#deg180-deg45
	
.nturn

	s_achase_alvar2alvar	B,x,al_roty,x,al_sbyte1,2


	s_set_objtobeplayer	y
	s_jmp_Zdistmore		x,y,#3000,bossB_cont3

	s_jmp_alvarINLIMIT	W,x,al_worldx,200,bossBrob2_init


	s_brl			bossB_cont3

;--------------------------------------------------------------------------

bossBrob2_init
	s_set_strat		x,bossBrob2_strat
bossBrob2_strat
	s_start_strat
	s_speedto		x,#0,1,bossBrobsplit_init

	s_achase_alvar		B,x,al_roty,#deg180,3
	s_achase_alvar		B,x,al_rotx,#0,3
	
	s_brl			bossB_cont3


;--------------------------------------------------------------------------
bossBrobsplit_init
	s_set_strat		x,bossBrobsplit_strat
	s_clr_alsflag		x,sflag3
bossBrobsplit_strat
	s_start_strat
	
	s_jsr			bossBrobcent_srou

	s_jsr			bossBrange_srou
	s_jmp_varless		W,rangexz,#50,bossBrobsplit2_init


	s_brl			bossB_cont2






;--------------------------------------------------------------------------
bossBrobsplit2_init
	trigse		$2d

.rndagain	s_set_var2rnd		svar_byte1,#3
	s_jmp_varEQ		B,svar_byte1,#3,.rndagain

	txy
	s_jmp_varEQ		B,svar_byte1,#0,.n0
	s_jsr			bossBrobMent_srou
.n0
	s_set_alvar		W,y,al_sword1,#0
	s_set_alvar		W,y,al_sword2,#-400


	txy
	s_jmp_varEQ		B,svar_byte1,#1,.n2
	s_jsr			bossBrobMent_srou
.n2
	s_set_alvar		W,y,al_sword1,#-450
	s_set_alvar		W,y,al_sword2,#-100
	

	txy
	s_jmp_varEQ		B,svar_byte1,#2,.n3
	s_jsr			bossBrobMent_srou
.n3
	s_set_alvar		W,y,al_sword1,#450
	s_set_alvar		W,y,al_sword2,#-100


	s_set_strat		x,bossBentsplit2_Istrat

	s_brl			bossB_cont2



;--------------------------------------------------------------------------
bossBentsplit2_Istrat
	s_start_strat
	s_set_strat		x,bossBentsplit2_strat
	s_clr_alsflag		x,nohitaffect
	s_brl			bossBentsplit_Icont

bossBentsplit2_strat
	s_start_strat

	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2
	
	s_jmp_notdelay		3,.nfire,al1pt
	s_weapon_pos		#0,#0,#0	
	s_weapon_rots2obj	y
	s_fire_weapon		x,RELSLOWELASERHOME
.nfire

	s_add_bossHP		x,al_hp

	s_jmp_alvarNE		B,x,al_sbyte1,#1,bossBentsplit_cont
	
	s_brl			bossBrobsplit2_init



;--------------------------------------------------------------------------
bossBentsplitcol_Istrat
	s_start_strat
	trigse		$27
	s_clr_alsflag	x,collide
	s_jmpto_strat	

;--------------------------------------------------------------------------
bossBentsplit_Istrat
	s_start_strat	
	s_set_aldata	x,#hardHP,#0
	s_set_strat		x,bossBentsplit_strat
	s_set_collstrat	x,bossBentsplitcol_Istrat
	s_set_alvar		B,x,al_depthoffset,#1
	s_set_lifecnt		x,#8
bossBentsplit_Icont
	s_set_alvar		B,x,al_sbyte1,#1
	s_brl			bossBentsplit_cont

bossBentsplit_strat
	s_start_strat


	s_jmp_notdelay		4,.nfire,al1pt
	s_weapon_pos		#0,#0,#0	
	s_weapon_rot		#0,#0
	s_fire_weapon		x,RELSLOWELASER
.nfire

	s_set_objtobealvar	y,x,al_ptr
	s_jmp_alsflag		y,sflag3,.die

	s_jmp_alvarMORE		B,x,al_sbyte1,#20,bossBentsplit_cont

.die
	s_jmp_notdelay		3,.ndepth
	s_add_alvar		B,x,al_depthoffset,#1
.ndepth

	s_dec_lifecnt	x

bossBentsplit_cont


	s_decbne_alvar		B,x,al_sbyte1,.nres
	s_set_alvar		B,x,al_sbyte1,#100
.nres


	s_jmp_alvarLESS		B,x,al_sbyte1,#20,.cent

	s_achase_alvar2alvar	W,x,al_worldx,x,al_sword1,3
	s_achase_alvar2alvar	W,x,al_worldy,x,al_sword2,3
	s_set_objtobeplayer	y
	s_jmp_Zdistless		x,y,#1500,.nzdec
	s_sub_alvar		W,x,al_worldz,#60
.nzdec
	s_brl			.end
.cent
	s_jsr			bossBrobcent_srou

.end	s_add_playerZ		x
	s_end_strat


;--------------------------------------------------------------------------
bossBrobMent_srou
	s_make_obj		#0,.badobj1
	s_copy_alvar2alvar	W,y,al_shape,x,al_shape
	s_copy_pos		y,x
	s_copy_rots		y,x
	s_set_strat		y,bossBentsplit_Istrat	
	s_set_alvartobeobj	y,al_ptr,x
	s_rts
.badobj1
	s_set_objtobevar	y,dummyobj
	s_rts


bossBrobMent2_srou
	s_jsr			bossBrobMent_srou
	s_set_strat		y,bossBent_Istrat

	lda			al_animframe,x
	sta			svar_byte1
	s_init_anim		y,svar_byte1

	s_set_altype		y,gnd

	s_rts



;--------------------------------------------------------------------------
bossBrobcent_srou
	s_set_var		W,svar_word1,#0
	s_set_var		W,svar_word2,#-350

	s_achase_alvar		W,x,al_worldx,svar_word1,3
	s_achase_alvar		W,x,al_worldy,svar_word2,3

	s_set_objtobeplayer	y
	s_jmp_Zdistmore		x,y,#3000,.nzinc
	s_add_alvar		W,x,al_worldz,#60
.nzinc

	s_rts



;--------------------------------------------------------------------------
bossBrobchg_Istrat
	s_start_strat
	s_set_aldata	x,#2,#16
	s_set_alptrs	x,bossBrobchg_strat,bossBrobcol_Istrat,0
	s_set_alvar	B,x,al_sbyte1,#40
	s_set_alsflag	x,sflag3		; remove images.
	s_set_alsflag	x,nohitaffect
;	lda	bgmspeed
;	beq	.noskip
;	bra	.skip
;.noskip
;	startbgm		$f1
;.skip
;	trigse		$81
bossBrobchg_strat	
	s_start_strat

	s_achase_alvar	B,x,al_roty,#deg180,3
	s_jsr		bossBrobcent_srou
	s_beqdec_alvar	B,x,al_sbyte1,bossBrobchg2_init

	s_add_playerZ	x
	s_brl		bossBrobvecs_cont4

bossBaddpz_cont
	s_add_playerZ	x
bossBaddbhp_cont
	s_add_bossHP	x,al_hp
	s_end_strat

;--------------------------------------------------------------------------
bossBrobchg2_init
	s_set_speed	x,#0
	s_set_strat	x,bossBrobchg2_strat
	s_set_alvar	B,x,al_rotx,#0
	s_set_alvar	B,x,al_roty,#deg180-deg11
	trigse		$84
bossBrobchg2_strat
	s_start_strat
	s_speedto	x,#60,1

	s_set_objtobeplayer	y
	s_jmp_Zdistless		x,y,#1000,bossBrobchg3_init

bossBrobvecs_cont
	s_add_playerZ	x
bossBrobvecs_cont2
	s_gen_3dvecs	x,al_roty,al_rotx,al_speed
bossBrobvecs_cont3
	s_add_vecs2pos	x
bossBrobvecs_cont4
	s_add_bossHP	x,al_hp
	s_damagesmoke	x,#60,2,#0,#0,#0,0
	s_end_strat

;--------------------------------------------------------------------------
bossBrobchg3_init
	s_set_strat	x,bossBrobchg3_strat
bossBrobchg3_strat
	s_start_strat

	s_add_alvar		B,x,al_rotz,#4

	s_jmp_alvarEQ		B,x,al_roty,#deg45,.nadd
	s_add_alvar		B,x,al_roty,#4
.nadd

	s_set_objtobeplayer	y
	s_jmp_Zdistmore		x,y,#1400,bossBrobchg4_init	

	s_brl			bossBrobvecs_cont






;--------------------------------------------------------------------------
bossbrobchg4_init		; change to legs.
	s_set_strat	x,bossBrobchg4_strat	
	s_set_alvar	W,x,al_shape,#boss_b_0
	s_init_anim	x,#0
	s_set_alvar	B,x,al_sbyte1,#30
	lda	bgmspeed
	beq	.noskip
	bra	.skip
.noskip
	startbgm		6
	IFNE	MSU1
	s_msuplay	boss1_5a,repeat
	ENDC
.skip

bossBrobchg4_strat	
	s_start_strat


	s_achase_alvar		B,x,al_rotx,#0,3
	s_achase_alvar		B,x,al_rotz,#0,3

	s_achase_alvar		W,x,al_worldx,#0,4

	s_speedto		x,#0,2,.ycent
	s_brl			.nadd

.ycent	s_achase_alvar		B,x,al_roty,#deg180,2,.anim
	s_brl		bossBrobvecs_cont
.anim
	s_beqdec_alvar	B,x,al_sbyte1,bossBrobstart_init

	s_add_alvar		B,x,al_hp,#2	; up to 60
	s_set_bossmaxHP		x,al_hp		

	s_jmp_notdelay	1,.nadd
	s_add_anim	x,#1,#13,.nadd
	s_jsr		bossBrobMent2_srou
	s_brl		bossBrobvecs_cont2
.nadd	
	
	s_brl		bossBrobvecs_cont


;--------------------------------------------------------------------------
bossBrobstart_init
	s_set_strat	x,bossBrobstart_strat
	s_zero_vecs	x
	s_clr_alsflag	x,sflag5
	s_clr_alsflag	x,nohitaffect


bossBrobstart_strat
	s_start_strat
	s_falldown_Yvec	x,2,#2,#-80<<bossB_scale,bossBrobnextstate
	s_brl		bossBrobvecs_cont3

bossBrobstart2_init
	s_set_strat	x,bossbrobfire1_strat
	s_set_alvar	B,x,al_sbyte2,#-deg45
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sword1,#0
	s_jmpto_strat	x



;--------------------------------------------------------------------------
bossBrobjump1_init	; bend down.
	s_set_strat	x,bossBrobjump1_strat	
	s_init_anim	x,#12
bossBrobjump1_strat	
	s_start_strat

	s_add_anim	x,#1,#20,bossBrobjump2_init

bossBrob_cont
	s_jsr		bossBrobOuch_srou
	s_brl		bossBaddpz_cont

;--------------------------------------------------------------------------
bossBrobjump2_init		; jump up.
	s_set_strat	x,bossBrobjump2_strat	
	s_set_speed	x,#100
	s_gen_vecs	x,al_roty,al_speed
	s_set_alvar	W,x,al_vy,#-100
	trigse		$4d
bossBrobjump2_strat	
	s_start_strat
	
	s_add_vecs2pos	x


	s_jmp_lower	x,#-80<<bossB_scale,bossbrobland_init
	s_add_alvar	W,x,al_vy,#20

	s_add_alvar	B,x,al_roty,#7

	s_brl		bossBrob_cont



;--------------------------------------------------------------------------
bossBrobland_init		; land and wait.
	s_set_strat	x,bossBrobland_strat	
	s_set_alvar	B,x,al_sbyte1,#10
	s_inc_alvar	B,x,al_sword1
	s_zero_vecs	x
	trigse		$4c
bossBrobland_strat	
	s_start_strat
	

	s_beqdec_alvar	B,x,al_sbyte1,bossbrobfire1_init

	s_cmp_anim	x,#12
	s_beq		.nadd
	s_add_anim	x,#-1,#20
	s_bra		.doneadd
.nadd
	s_jmp_alvarEQ	B,x,al_sword1,#2,bossBrobnextstate
.doneadd

	s_brl		bossBrob_cont


bossbrobfire1_init
	s_set_strat	x,bossbrobfire1_strat
	s_copy_alvar2alvar	B,x,al_sbyte2,x,al_roty
	s_set_alvar		B,x,al_sbyte1,#60
bossbrobfire1_strat
	s_start_strat

	s_beqdec_alvar		B,x,al_sbyte1,bossBrobfire2_init 
	
	s_jmp_notdelay		3,.nfire
	s_weapon_pos		#0,#0,#0	
	s_weapon_rndrot		3,15
	s_fire_weapon		x,RELSLOWELASER
.nfire	
	s_set_objtobeplayer	y

	s_obj2obj_angle	x,y,al_roty,3,.fire2

	s_brl			.endfire
.fire2
	s_jmp_notdelay		4,.nfire2
	s_weapon_pos		#0,#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,RELSLOWELASERHOME
.nfire2	



.endfire

	s_brl		bossBrob_cont

bossBrobfire2_init 
	s_set_strat		x,bossBrobfire2_strat
bossBrobfire2_strat
	s_start_strat

	s_achase_alvar2alvar	B,x,al_roty,x,al_sbyte2,2,bossBrobjump1_init 

	s_brl		bossBrob_cont
	



;--------------------------------------------------------------------------
bossbrobfireP1_init
	s_set_collstrat	x,bossBrobcol_Istrat
	s_set_strat	x,bossbrobfireP1_strat		 
	s_set_alvar	B,x,al_sbyte1,#60
bossbrobfireP1_strat
	s_start_strat


	s_set_var	W,svar_word1,#1400
	s_jsr		bossBrobfrontplayer_srou

	s_beqdec_alvar		B,x,al_sbyte1,bossBrobstart2_init




	s_jmp_notdelay		4,.nfire
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#0,#0
	s_fire_weapon		x,HPLASMA
	s_set_alvar		W,y,al_ptr,playpt
.nfire

	s_jsr		bossBrobOuch_srou
		
	s_brl		bossBaddpz_cont


;--------------------------------------------------------------------------
bossBrobfrontplayer_srou
	s_achase_alvar	W,x,al_worldx,#0,3
	s_achase_alvar	W,x,al_worldy,#-80<<bossB_scale,3

bossBrobfrontplayerZ_srou
	s_set_objtobeplayer	y
	s_obj2obj_angle		x,y,al_roty,3

	a16
	lda		player_posz
	clc
	adc		svar_word1
	sta		svar_word1
	a8
	s_achase_alvar	W,x,al_worldz,svar_word1,3

	rts

;--------------------------------------------------------------------------
bossBrobPouncepos_init
	s_set_strat	x,bossBrobPouncepos_strat
	s_set_alvar	B,x,al_sbyte1,#30
	s_init_anim	x,#12
bossBrobPouncepos_strat
	s_start_strat

	s_decbne_alvar	B,x,al_sbyte1,.np
	s_set_alvar	B,x,al_sbyte1,#1  	

	s_add_anim	x,#1,#20,bossBrobPounce2_init
	s_jmp_notdelay	1,.nment
	s_jsr		bossBrobMent2_srou
.nment

.np

	s_set_var	W,svar_word1,#3000
	s_jsr		bossBrobfrontplayer_srou

	s_brl		bossBaddpz_cont

;--------------------------------------------------------------------------
bossBrobPounce2_init
	s_set_strat	x,bossBrobPounce2_strat
	s_set_vecs	x,#0,#-75,#0
	s_set_alvar	B,x,al_rotx,#8
	trigse		$4d
bossBrobPounce2_strat
              	s_start_strat
	
	s_set_objtobeplayer	y
	s_jmp_objinfront	x,y,.nreap
	s_jmp_Zdistmore		x,y,#500,bossBrobreappear_init
.nreap

	s_add_vecs2pos	x

	s_jmp_alvarZERO	B,x,al_rotx,.nxrot
	s_add_alvar	B,x,al_rotx,#8
.nxrot

	
	s_jmp_lower	x,#-80<<bossB_scale,.lower
	s_add_alvar	W,x,al_vy,#4


	s_jmp_notdelay	1,.nment
	s_jsr		bossBrobMent2_srou
.nment

	s_brl		bossBaddbhp_cont
.lower
	s_zero_vecs	x

	s_cmp_anim		x,#19
	s_bne		.nsnd
	trigse		$4c
.nsnd
	s_cmp_anim	x,#12
	s_beq		.nadd
	s_add_anim	x,#-1,#20
.nadd
	s_brl		bossBaddbhp_cont

;--------------------------------------------------------------------------
bossBrobreappear_init
	s_set_strat	x,bossBrobreappear_strat
	s_set_vecs	x,#0,#-75,#45
	s_set_alvar	B,x,al_rotx,#8
	s_init_anim	x,#19
bossBrobreappear_strat
              	s_start_strat
	
	s_set_objtobeplayer	y

	s_add_vecs2pos	x

	s_jmp_alvarZERO	B,x,al_rotx,.nxrot
	s_add_alvar	B,x,al_rotx,#8
.nxrot
	
	s_jmp_lower	x,#-80<<bossB_scale,.lower
	s_add_alvar	W,x,al_vy,#3


	s_jmp_notdelay	1,.nment
	s_jsr		bossBrobMent2_srou
.nment
	s_brl		bossBaddpz_cont
.lower
	s_zero_vecs	x

	s_cmp_anim		x,#19
	s_bne		.nsnd
	trigse		$4c
.nsnd
	s_cmp_anim	x,#12
	s_beq		.nadd
	s_add_anim	x,#-1,#20
	s_brl		bossBaddpz_cont
.nadd
	s_brl			bossBrobnextstate



;--------------------------------------------------------------------------
;bossBrobreappear_init
;	s_set_strat	x,bossBrobreappear_strat
;	s_set_alvar.l	W,x,al_depthoffset,#maxdepthdist
;	s_set_alvar	W,x,al_worldx,#0
;	s_set_alvar	W,x,al_worldy,#-80<<bossB_scale
;	s_set_alvar	W,x,al_worldz,#1400
;	s_add_alvar	W,x,al_worldz,player_posz
;	s_init_anim	x,#12
;bossBrobreappear_strat
;	s_start_strat
;
;	s_sub_alvar		W,x,al_depthoffset,#224
;	s_jmp_alvarMORE		W,x,al_depthoffset,#$600,.end
;	s_jmp_alsflag		x,sflag6,.sepjump
;	s_brl			bossBrobstart2_init
;.sepjump 	s_brl		        bossBrobsep4_init
;.end
;	s_brl		bossBaddpz_cont
;

;--------------------------------------------------------------------------
bossBrobsep_init
	s_set_alvar	B,x,al_sbyte1,#2
	s_set_alvar	B,x,al_sbyte2,#2	; num hits before pounce
	s_clr_alsflag	x,sflag1
	s_set_alptrs	x,bossBrobsep_strat,bossBrobsepcol_Istrat,bossBrobsepexp_Istrat
	trigse		$2d
	s_set_alsflag	x,nohitaffect
bossBrobsep_strat
	s_start_strat
	
	s_jmp_notdelay	1,.nanim
	s_cmp_anim	x,#12
	s_beq		.nanim
	s_add_anim	x,#1,#20
.nanim

	s_cmp_alvar	B,x,al_roty,#deg180
	s_beq		.nadd	
	s_add_alvar	B,x,al_roty,#4
.nadd

	s_set_objtobeplayer	y
	s_jmp_Zdistmore		x,y,#2000,.nment
	s_beqdec_alvar		B,x,al_sbyte1,.finstrat
	s_jsr			bossBrobMent2_srou
	s_set_alsflag		y,colldisable
	s_set_strat		y,bossBrobrndpos_Istrat
.nment	s_brl			bossBrobvecs_cont

.finstrat
	s_set_strat		x,bossBrobrndpos2_Istrat
	s_brl			bossBrobvecs_cont



;--------------------------------------------------------------------------
bossBrobrndpos_Istrat
	s_set_strat	x,bossBrobrndpos_strat
	s_brl		bossBrobrndpos_Icont

bossBrobrndpos2_Istrat
	s_set_strat	x,bossBrobrndpos2_strat

bossBrobrndpos_Icont
	s_set_alvar	B,x,al_sbyte1,#1
	s_clr_alsflag	x,nohitaffect
	s_clr_alsflag	x,sflag1
	s_jmpto_strat

bossBrobrndpos2_strat
	s_start_strat

	s_jsr		bossBrobOuch_srou
	s_add_bossHP	x,al_hp
	s_brl		bossBrobrndpos_cont	


bossBrobrndpos_strat
	s_start_strat

	s_achase_alvar		B,x,al_rotx,#0,2
	s_achase_alvar		B,x,al_rotz,#0,2

	s_set_objtobealvar	y,x,al_ptr
	s_jmp_alsflag		y,sflag1,bossBent_Istrat

bossBrobrndpos_cont
	s_decbne_alvar	B,x,al_sbyte1,.nnewrnd
	trigse		$2d
	s_set_alvar	B,x,al_sbyte1,#30
	s_set_var2rnd	svar_byte1,#7
	s_scale_var	B,svar_byte1,2
	s_set_alvar2vartab.w	B,W,W,x,al_sword1,svar_byte1,bossBrobrndpos_tab
	s_set_alvar2vartab.w	B,W,W,x,al_sword2,svar_byte1,bossBrobrndpos_tab+2
	s_add_alvar		W,x,al_sword1,player_posx
.nnewrnd

	s_achase_alvar2alvar		W,x,al_worldx,x,al_sword1,2
	s_copy_alvar2var		W,x,svar_word1,al_sword2
	s_add_var			W,svar_word1,player_posz
	s_achase_alvar			W,x,al_worldz,svar_word1,2

	s_achase_alvar			W,x,al_worldy,#-80<<bossB_Scale,3

	s_jmp_notdelay	4,.nfire,al1pt
	s_weapon_pos	#0,#0,#0
	s_weapon_rot	#0,#0
	s_fire_weapon	x,RELSLOWELASERHOME
.nfire
	
	s_set_objtobeplayer	y
	s_obj2obj_angle		x,y,al_roty,1

	s_add_playerZ	x
	s_end_strat

bossBrobrndpos_tab
	dw		-100,700+500
	dw		100,700+500
	dw		-200,1500+700
	dw		200,1500+700
	dw		-300,2000+700
	dw		300,2000+700
	dw		-400,3000+700
	dw		400,3000+700


;------------------------------------------------------------------------------

bossBrobkick_init
	s_set_strat	x,bossBrobkick_strat
	s_set_alvar	W,x,al_shape,#boss_b_6
	s_init_anim	x,#0
	s_set_alvar	B,x,al_sbyte1,#20
bossBrobkick_strat
	s_start_strat
	s_cmp_anim	x,#19
	s_beq		.nanim2
	s_add_anim	x,#1,#20
.nanim

	s_cmp_anim	x,#15
	s_bne		.nkick
	s_make_obj	#boss_b_7,.nkick
	s_copy_pos	y,x
	s_copy_rots	y,x
	s_add_alvar	W,y,al_worldx,#71<<bossB_scale
	s_sub_alvar	W,y,al_worldz,#90<<bossB_scale
	s_set_strat	y,bossBrobfoot_Istrat	
	trigse		$2d
.nkick

	s_achase_alvar		B,x,al_rotz,#0,2

.nanim2

	s_beqdec_alvar		B,x,al_sbyte1,bossBrobnextstate

	s_jsr			bossBrobOuch_srou
	s_brl		bossBaddpz_cont




;**********************************************************************************
bossBrobfarjump1_init
	s_set_strat	x,bossBrobfarjump1_strat
	s_set_alvar	W,x,al_shape,#boss_b_0
	s_init_anim	x,#12
	s_set_alsflag	x,nohitaffect
bossBrobfarjump1_strat
	s_start_strat

	s_add_anim	x,#1,#20,bossBrobfarjump2_init

	s_achase_alvar	B,x,al_roty,#0,2

	s_jsr		bossBrobOuch_srou
	s_brl		bossBaddpz_cont

;--------------------------------------------------------------------------
bossBrobfarjump2_init		; jump up.
	s_set_strat	x,bossBrobfarjump2_strat	
	s_set_speed	x,#100
	s_gen_vecs	x,al_roty,al_speed
	s_set_alvar	W,x,al_vy,#-100
bossBrobfarjump2_strat	
	s_start_strat
	
	s_add_vecs2pos	x

	s_jmp_lower	x,#-80<<bossB_scale,bossbrobfarland_init
	s_add_alvar	W,x,al_vy,#8

	s_achase_alvar	B,x,al_roty,#deg180,3
	s_achase_alvar	W,x,al_worldx,player_posx,2


	s_brl		bossBrob_cont



;--------------------------------------------------------------------------
bossBrobfarland_init		; land and wait.
	s_set_strat	x,bossBrobfarland_strat	
	s_zero_vecs	x
	s_set_alsflag	x,nohitaffect
bossBrobfarland_strat	
	s_start_strat
	
	s_cmp_anim	x,#12
	s_beq		.nadd
	s_add_anim	x,#-1,#20
.nadd

	s_set_objtobeplayer	y
	s_jmp_Zdistless		x,y,#2000,bossBrobfarland_end

	s_jsr		bossBrobOuch_srou
	s_brl		bossBaddbhp_cont

bossBrobfarland_end
	s_clr_alsflag	x,nohitaffect
	s_brl		bossBrobnextstate



;**********************************************************************************

;--------------------------------------------------------------------------
bossBrobfoot_Istrat
	s_set_alptrs	x,bossBrobfoot_strat,0,0
	s_set_aldata	x,#hardHP,#8
	s_set_speed	x,#120
	s_nodepthcue	x
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,0
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed

bossBrobfoot_strat
	s_start_strat
	      
	s_jmp_notdelay		1,.nent
	jsr			bossBrobMent2_srou
	s_set_strat		y,bossBentlong_Istrat
.nent

	s_add_playerZ	x
	s_add_vecs2pos	x
	s_end_strat



;--------------------------------------------------------------------------
bossBrobsepcol_Istrat
	s_start_strat

	s_jmp_alsflag		x,sflag5,.end
	s_jmp_alsflag		x,nohitaffect,.end

	s_decbne_alvar	B,x,al_sbyte2,.npounce

	s_set_alsflag	x,sflag1
	jmp		bossBrobnextstate

.npounce
	s_jmp_alvarAND		B,x,al_hitflags,#HF1,bossBrobTopOuch
	s_jmp_alvarAND		B,x,al_hitflags,#HF2,bossBrobLeftOuch
	s_jmp_alvarAND		B,x,al_hitflags,#HF3,bossBrobRightOuch
.end
	trigse		$27
	s_set_alvar		B,x,al_hitflags,#0
	s_jmpto_strat	
	
;--------------------------------------------------------------------------
bossBrobsepexp_Istrat
	s_set_strat	x,bossBrobsepexp_strat
	s_set_alvar	B,x,al_sbyte1,#40
	s_set_collstrat	x,bossBrobcol_Istrat
	s_set_alsflag	x,sflag1
	s_set_alvar	B,x,al_hp,#2
	s_set_alsflag	x,colldisable
	trigse		$81
	startbgm		$f0

bossBrobsepexp_strat
	s_start_strat

	s_jsl		makeLexpobj_srou
	s_set_alsflag	y,nopolyexp
	s_jsl		addrnd2posy_srou

	s_jmp_lower	x,#-80<<bossB_scale,.landed
	s_add_alvar	W,x,al_vy,#8
	s_add_vecs2pos	x		
.landed


	s_set_objtobeplayer	y
	s_jmp_Zdistmore	x,y,#1300,.nstop
	s_add_playerZ	x
.nstop	


;	s_set_var	W,svar_word1,#1300
;	s_jsr		bossBrobfrontplayer_srou

	s_beqdec_alvar	B,x,al_sbyte1,bossBrobexp_init
	s_achase_alvar	B,x,al_rotx,#0,2
	s_achase_alvar	B,x,al_roty,#deg180,2

	s_end_strat



;--------------------------------------------------------------------------
bossBrobexp_init
	s_make_obj	#boss_b_l,.badobj1
	s_copy_pos	y,x		   
	s_set_alvar	B,y,al_roty,#deg180
	s_add_alvar	W,y,al_worldx,#38<<bossB_scale
	s_add_alvar	W,y,al_worldy,#45<<bossB_scale
	s_set_lifecnt	y,#5
	s_set_strat	y,bossBpwaitexp_Istrat
	s_set_expstrat	y,bossBpexp_Istrat
	s_set_alvar	B,y,al_hp,#hardhp
.badobj1
	s_make_obj	#boss_b_r,.badobj2
	s_copy_pos	y,x		   
	s_set_alvar	B,y,al_roty,#deg180
	s_add_alvar	W,y,al_worldx,#-38<<bossB_scale
	s_add_alvar	W,y,al_worldy,#45<<bossB_scale
	s_set_lifecnt	y,#15
	s_set_strat	y,bossBpwaitexp_Istrat
	s_set_expstrat	y,bossBpexp_Istrat
	s_set_alvar	B,y,al_hp,#hardhp
.badobj2

	s_set_alvar	W,x,al_shape,#boss_b_H
	s_set_lifecnt	x,#25
	s_set_strat	x,bossBpwaitexp_Istrat
	s_set_expstrat	x,bossBpexp2_Istrat
	s_jmpto_strat	



;--------------------------------------------------------------------------
bossBpwaitexp_Istrat
	s_start_strat
	s_set_strat	x,bossBpwaitexp_strat
	s_set_aldata	x,#hardHP,#10
bossBpwaitexp_strat
	s_start_strat
	s_jmp_notdelay	1,.nexp,al1pt
	s_jsl		makeLexpobj_srou
	s_set_alsflag	y,nopolyexp
	s_jsl		addrnd2posy_srou
.nexp

	s_dec_lifecnt	x,1
	s_add_playerZ	x
	s_end_strat
;--------------------------------------------------------------------------
bossBpexp2_Istrat
	s_start_strat
	s_or_var		B,gameflags,#gf_bossdead
	s_jsl			makebosscircexp_srou
	s_jsl			makeFOLexpobj_srou
	s_set_expstrat	x,bossBpexp_strat
	s_brl		bossBpexp_strat
;--------------------------------------------------------------------------
bossBpexp_Istrat
	s_start_strat
	s_set_expstrat	x,bossBpexp_strat
	s_jsl		makeLexpobj_srou
bossBpexp_strat
	s_start_strat
	s_setremove_behind	x
	s_add_alvar	B,x,al_rotz,#8
	s_add_alvar	B,x,al_rotx,#4
	s_end_strat

;--------------------------------------------------------------------------
bossBrobcol_Istrat
	s_start_strat
	s_clr_alsflag		x,collide

	s_jmp_alsflag		x,sflag5,.nohitend


	s_jmp_alsflag		x,nohitaffect,.nohitend

	s_set_objtobealvar	y,x,al_collobjptr
	phx	
	tyx
	s_jsl		    	makeMEDexpobj_srou
	plx

	s_jmp_alvarAND		B,x,al_hitflags,#HF1,bossBrobTopOuch
	s_jmp_alvarAND		B,x,al_hitflags,#HF2,bossBrobLeftOuch
	s_jmp_alvarAND		B,x,al_hitflags,#HF3,bossBrobRightOuch

.nohitend	
	trigse		$27
	s_set_alvar		B,x,al_hitflags,#0
	s_jmpto_strat		


;--------------------------------------------------------------------------
bossBOuch_tab
	db	6,16	; left out
	db	5,12
	db	4,8
	db	3,4
	db	-4,-10	; left in
	db	-4,-10
	db	-4,-8
	db	-3,-6
	db	-2,-4
	db	-1,-2
	db	0,0
	db	0,0
	db	0,0
	db	0,0
	db	0,0
	db	0,0

	db	6,-16	; right out
	db	5,-12
	db	4,-8
	db	3,-4
	db	-4,10	; right in
	db	-4,10
	db	-4,8
	db	-3,6
	db	-2,4
	db	-1,2
	db	0,0
	db	0,0
	db	0,0
	db	0,0
	db	0,0
	db	0,0

	db	-10,0	; top out
	db	-10,0
	db	-10,0
	db	-8,0
	db	-6,0
	db	-2,0
	db	2,0	; top in
	db	6,0
	db	8,0
	db	10,0
	db	10,0
	db	10,0
	db	0,0
	db	0,0
	db	0,0
	db	0,0





;--------------------------------------------------------------------------
bossBrobleftOuch
	trigse		$27
	s_set_alvar		B,x,al_sbyte4,#0*32
	s_brl			bossBrobOuch

bossBrobrightOuch
	trigse		$27
	s_set_alvar		B,x,al_sbyte4,#1*32
	s_brl			bossBrobOuch

bossBrobTopOuch
	trigse	$80
	s_set_alvar		B,x,al_sbyte4,#2*32
	s_docoll		x,#framesperAP
	s_set_alsflag		x,hitflash

bossBrobOuch
	s_set_alvar		B,x,al_hitflags,#0
	s_set_alvar		B,x,al_sbyte3,#16
	s_set_alsflag		x,sflag5
	s_jmpto_strat


bossBrobOuch_srou

	s_set_var2alvartab	B,B,B,svar_byte1,x,al_sbyte4,bossBOuch_tab
	s_set_var2alvartab	B,B,B,svar_byte2,x,al_sbyte4,bossBOuch_tab+1


	s_add_alvar		B,x,al_sbyte4,#2
	s_beqdec_alvar		B,x,al_sbyte3,bossBrobOuchend	


	s_add_alvar		B,x,al_rotx,svar_byte1
	s_add_alvar		B,x,al_roty,svar_byte2


	s_jmp_notdelay		4,.nfire
	s_weapon_pos		#0,#0,#0
	s_weapon_rndrot		7,7
	s_fire_weapon		x,BOSSHMISSILE1
	s_set_alvar.w		W,y,al_ptr,playpt
	s_set_alvar.w		B,y,al_sbyte3,#0
.nfire


	s_rts

bossBrobOuchend
	s_achase_alvar		B,x,al_rotx,#0,3
	s_clr_alsflag		x,sflag5
	s_rts
	



;--------------------------------------------------------------------------
bossBrobundead_Istrat
	s_start_strat
	s_set_strat	x,bossBrobundead_strat
	s_set_alvar	B,x,al_hp,#32
	s_set_vecs 	x,#0,#-40,#40
	s_set_alsflag	x,nohitaffect
bossBrobundead_strat
	s_start_strat

	s_achase_alvar	B,x,al_roty,#deg180,3
	s_achase_alvar	B,x,al_rotx,#-deg90,3

	s_falldown_Yvec	x,2,#2,#0

	s_add_vecs2pos	x
	s_add_playerZ	x
	s_end_strat




;--------------------------------------------------------------------------
bossBrobdie_init
	s_start_strat
	s_set_alvar	B,x,al_sbyte1,#5
	s_set_strat	x,bossBrobdie_strat
	s_setremove_behind	x
bossBrobdie_strat
	s_start_strat

	s_jsl			makeMEDexpobj_srou
	s_jsl			addrnd2posy_srou

	s_beqdec_alvar	B,x,al_sbyte1,Qbossexplode_Istrat
	s_end_strat


;*****************************************************************************
bossBrobnextstate
	s_next_state		x,#8
	s_jmp_IFstate 		x,1,bossbrobfireP1_init		; 
	s_jmp_IFstate 		x,2,bossBrobPouncepos_init	; 
	s_jmp_IFstate 		x,3,bossBrobfarjump1_init	; 
	s_jmp_IFstate 		x,4,bossBrobsep_init		; 
	s_jmp_IFstate 		x,5,bossbrobfireP1_init		; 
	s_jmp_IFstate 		x,6,bossBrobfarjump1_init	; 
	s_jmp_IFstate 		x,7,bossBrobkick_init		; 
	s_jmp_IFstate 		x,8,bossBrobfarjump1_init	; 
	s_jmp			bossBrobkick_init
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************
;*****************************************************************************


bossB_Istrat
	s_start_strat
	lda	whichroute
	cmp	#6
	beq	.morehp
	s_set_aldata	x,#bossBairHP,#bossBAP
	s_set_bossmaxHP	#bossBairHP
	bra	.donehp
.morehp
	s_set_aldata	x,#bossBairHP+10,#bossBAP
	s_set_bossmaxHP	#bossBairHP+10
.donehp
	s_set_alptrs	x,bossB_strat,hitflashBOSSd_Istrat,bossBescape_Istrat

	s_set_colltype	x,enemy2
	s_set_colltype	x,enemyweap

	s_set_alvar	B,x,al_rotx,#-deg90
	s_set_alvar	B,x,al_roty,#deg90
	s_set_speed	x,#40

	s_nodepthcue	x

	s_set_alsflag	x,sflag1	; image 1
	s_clr_alsflag	x,sflag2	; image 2
	s_set_alsflag	x,nohitaffect
bossB_strat
	s_start_strat

	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,4

	s_jmp_Zdistmore		x,y,#2500,.nstop
	s_speedto		x,#0,1,bossBdodge_init
.nstop
bossB_cont3
	s_gen_3dvecs	x,al_roty,al_rotx,al_speed

	s_add_vecs2pos	x
bossB_cont

	s_jmpNOT_alsflag	x,sflag1,.badobj
	s_not_alsflag		x,sflag4
	s_jmp_alsflag		x,sflag4,.badobj
	lda	whichroute
	cmp	#6
	beq	.bluelinkhead
	lda	stage51
	bne	.linkhead
	s_make_obj		#boss_B_1,.badobj
	bra	.donehead
.bluelinkhead
	s_make_obj		#linkhead,.badobj
	bra	.donehead
.linkhead
	s_make_obj		#linkhead,.badobj
.donehead
	s_set_alvartobeobj	y,al_ptr,x
	s_jmpNOT_alsflag	x,sflag2,.norm
	s_set_strat		y,bossBspinend_Istrat			     
	s_copy_alvar2alvar	B,y,al_sword1+1,x,al_sword1+1
	s_inc_alvar		B,x,al_sword1+1
	s_and_alvar		B,x,al_sword1+1,#3
	s_bra			.done
.norm
	s_set_strat		y,bossBent_Istrat
.done
	s_copy_pos		y,x
	s_copy_rots		y,x
.badobj	
bossB_cont2
	s_add_bossHP		x,al_hp
bossB_cont4
	s_keeprelto_player	x
	s_add_playerZ	x
	s_end_strat


;-----------------------------------------------------------------------------
bossBdodge_init
	s_set_strat	x,bossBdodge_strat
	s_set_alvar		B,x,al_sbyte3,#1
	s_set_collstrat		x,bossBdodgecol_Istrat
	s_clr_alsflag		x,nohitaffect
bossBdodge_strat
	s_start_strat	

	s_jmp_alvarless		B,x,al_hp,#16,bossBspin1_init	
;	s_jmp_alvarless		B,x,al_hp,#100,bossBspin1_init	


;	s_jmp_alvarNE		B,x,al_sbyte3,#1,.nsnd
;	trigse			$2d
;.nsnd

	s_decbne_alvar		B,x,al_sbyte3,.same
	s_set_alvar		B,x,al_sbyte3,#1

	s_set_var		B,svar_byte1,#0
	
	lda	player_posx+1
	bpl	.right
	inc	svar_byte1
.right
	a16
	lda	player_posy
	sec
	sbc	#space_viewCY
	a8
	bpl	.down
	inc	svar_byte1
	inc	svar_byte1
.down
	asl	svar_byte1
	asl	svar_byte1

	s_jmp_alvarEQ		B,x,al_sbyte1,svar_byte1,.same
	trigse			$2d

	s_set_alvar		B,x,al_sbyte1,svar_byte1
	s_set_alvar		B,x,al_sbyte2,#0
	s_jmp_random		.same,80
	s_set_alvar		B,x,al_sbyte2,#16
.same

	lda	al_sbyte1,x
	clc
	adc	al_sbyte2,x
	sta	svar_byte2

	s_set_var2vartab	B,W,W,svar_word1,svar_byte2,bossbpos_tab
	s_set_var2vartab	B,W,W,svar_word2,svar_byte2,bossbpos_tab+2


	s_achase_alvar		W,x,al_worldx,svar_word1,3
	s_achase_alvar		W,x,al_worldy,svar_word2,3

	s_jsr			bossBrange_srou
	s_jmp_varless		W,rangexz,#300,.faceplayer
.nthere

	s_set_alsflag		x,sflag1

	s_set_alvar		B,x,al_sbyte3,#25

	s_jsr			bossBpointdir_srou
	s_brl			.nfaceplayer

.faceplayer
	s_clr_alsflag		x,sflag1
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2,.fire

.doneface
	s_brl			.nfire
.fire
	s_jmp_notdelay		1,.nfire
	s_weapon_pos		#0,#0,#0	
	s_weapon_rndrot		3,3
	s_fire_weapon		x,RELSLOWELASER
.nfire
	s_brl			.nfiremiss	

.nfaceplayer
	s_jmp_NOTdelay		3,.nfiremiss
	s_set_objtobeplayer	y
	s_weapon_rots2obj	y
	s_weapon_pos		#0,#0,#0
	s_fire_weapon		x,HMISSILE1
	s_set_alvar		W,y,al_ptr,playpt
.nfiremiss
	s_brl		bossB_cont


bossBdodgecol_Istrat			       	
	s_start_strat
	s_set_alvar		B,x,al_sbyte3,#1
	s_jmp		hitflashBOSSD_Istrat

;------------------------------------------------------------------------------

bossBpostab	MACRO
bossBMove_scale	=	bossB_scale
bossBMove_perc		=	140
	dw	((((space_minx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_miny/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	dw	((((space_maxx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_miny/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	dw	((((space_minx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_maxy/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	dw	((((space_maxx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_maxy/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
bossBMove_perc		=	70					      
	dw	((((space_minx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_miny/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	dw	((((space_maxx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_miny/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	dw	((((space_minx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_maxy/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	dw	((((space_maxx/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\1,((((space_maxy/2)*bossBMove_Perc)/100)<<bossBMove_scale)+\2
	ENDM							      

	
bossbpos_tab
	bossBpostab	0,-400
	bossBpostab	-400,0
	bossBpostab	400,0
	bossBpostab	0,400




;------------------------------------------------------------------------------
bossBspin1_init
	s_set_strat	x,bossBspin1_strat
	s_set_alsflag	x,sflag1
	s_set_collstrat	x,hitflashBOSSD_Istrat

bossBspin1_strat
	s_start_strat
	

	s_achase_alvar	W,x,al_worldx,#0,3
	s_achase_alvar	W,y,al_worldy,#space_viewCY+100,3



	s_achase_alvar	B,x,al_roty,#deg90,2
	s_achase_alvar	B,x,al_rotx,#0,2
	
	s_set_var	W,svar_word1,#0
	s_set_var	W,svar_word2,#space_viewCY+100
	s_jsr			bossBrange_srou

	s_jmp_varless		W,rangexz,#300,bossBspin2_init

	s_brl		bossB_cont

;------------------------------------------------------------------------------

bossBspin2_init
	s_set_strat	x,bossBspin2_strat
	s_set_alvar	B,x,al_sbyte3,#0
	s_set_alvar	B,x,al_roty,#deg90
	s_set_alvar	B,x,al_rotx,#0
	s_set_alsflag	x,nohitaffect
	s_clr_alsflag	x,sflag4
bossBspin2_strat
	s_start_strat

	s_speedto	x,#120,2,.off
	s_set_alvar	B,x,al_sbyte1,#5		; WAS 8
	s_bra		.noff
.off 	s_set_alsflag	x,sflag2
.noff

	s_jmp_alvarNE	B,x,al_rotx,#deg180,.nsnd
	trigse			$2c
.nsnd



	s_add_alvar	B,x,al_rotx,#-16
	s_gen_3dvecs	x,al_roty,al_rotx,al_speed,1
	s_add_vecs2pos	x


	s_beqdec_alvar	B,x,al_sbyte1,bossBspinend2_init

	s_brl		bossB_cont

;------------------------------------------------------------------------------
bossBspinend2_init	     
	lda	whichroute
	cmp	#6
	beq	.morehp
	s_set_alvar	B,x,al_hp,#bossBspinHP
	s_set_bossmaxHP	#bossBspinHP
	bra	.donehp
.morehp
	s_set_alvar	B,x,al_hp,#bossBspinHP+10
	s_set_bossmaxHP	#bossBspinHP+10
.donehp
	s_set_strat	x,bossBspinend2_strat
	s_set_collstrat	x,bossBspinendcol_Istrat
	s_clr_alsflag	x,nohitaffect
	s_set_alvar	B,x,al_sbyte4,#0
	s_copy_alvar2alvar	B,x,al_sword2,x,al_hp
	s_zero_vecs		x
	txy
	s_set_alvartobeobj	x,al_ptr,y
	s_clr_var	B,gsvar_byte1
	s_brl		bossBspinend_Icont
bossBspinend2_strat
	s_start_strat	


	lda		al_sword2,x
	sec
	sbc		al_hp,x
	bpl		.nneg
	nega
.nneg	
	cmp		#6
	bmi		.nscream

	s_set_strat	x,bossBscream_Istrat

.nscream
	s_copy_alvar2alvar	B,x,al_sword2,x,al_hp


	s_jmp_varNE	B,gsvar_byte1,#2,.nnew2		; WAS 3
	s_clr_var	B,gsvar_byte1
	s_jsr		bossBspinendnewent_srou
.nnew2


	s_decbne_alvar	B,x,al_sbyte3,.nnew
	trigse		$2b
	s_set_alvar	B,x,al_sbyte3,#30
	s_jmp_varNE	B,gsvar_byte1,#2,.nfast
	s_set_alvar	B,x,al_sbyte3,#15
.nfast
	s_set_alvar2rnd	x,al_sbyte1,#7
	s_scale_alvar	B,x,al_sbyte1,2
.nnew

	s_beqdec_alvar	B,x,al_sbyte4,bossBspinend_cont
	
	s_jmp_alvarMORE	B,x,al_sbyte4,#3,.norm		; WAS 6
	s_clr_alsflag	x,sflag3
	s_jmp_alvarNE	B,x,al_sbyte4,#3,bossB_cont	; WAS 6
	s_set_alvar	B,x,al_sbyte3,#1
	s_brl		bossB_cont
.norm
	s_set_alsflag	x,sflag3
	s_brl		bossBspinend_cont


;------------------------------------------------------------------------------

bossBscream_Istrat
	s_set_strat	x,bossBscream_strat
	s_set_alvar	B,x,al_sbyte1,#30
	s_set_alsflag	x,nohitaffect
	s_set_alsflag	x,sflag5
bossBscream_strat
	s_start_strat
	
	s_beqdec_alvar	B,x,al_sbyte1,bossBscream2_init			     

	s_achase_alvar	B,x,al_roty,#deg180,2
	s_achase_alvar	B,x,al_rotx,#0,2


	s_achase_alvar	W,x,al_worldx,#0,2
	s_achase_alvar	W,x,al_worldy,#space_viewCY+100,2


	s_set_alsflag	x,sflag3

	s_brl		bossB_cont2

bossBscream2_init
	s_set_strat	x,bossBscream2_strat
	s_set_alvar	B,x,al_sbyte1,#93
bossBscream2_strat	
	s_start_strat

	s_beqdec_alvar	B,x,al_sbyte1,bossBscreamend_init			     
	
	s_jmp_alvarNE	B,x,al_sbyte1,#66,.nfire
	s_set_objtobeplayer	y
	s_weapon_pos	#0,#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon	x,CHICKHMISSILE1
	s_set_alvar	W,y,al_ptr,playpt
.nfire

	s_set_alvar		B,x,al_roty,#deg180
	s_add_rnd2alvar		x,al_roty,#15
	s_sub_alvar		B,x,al_roty,#7

	s_brl		bossB_cont2



bossBscreamend_init			     
	s_set_strat	x,bossBspinend2_strat
	s_set_alvar	B,x,al_sbyte4,#14
	s_set_alvar	B,x,al_sbyte3,#1
	s_clr_alsflag	x,sflag4
	s_clr_alsflag	x,nohitaffect
	s_jmpto_strat	x




;------------------------------------------------------------------------------
bossBspinend_Istrat			     
	s_start_strat
	s_set_strat	x,bossBspinend_strat
	s_set_collstrat	x,bossBspinendentcol_Istrat
	s_set_aldata	x,#hardHP,#0
	s_set_colltype	x,enemy2
	s_set_colltype	x,enemyweap
bossBspinend_Icont
	s_set_alvar	B,x,al_sbyte3,#1
	s_nodepthcue	x

bossBspinend_strat			     
	s_start_strat

	s_set_objtobealvar	y,x,al_ptr
	s_chk_objptr		y,.badobj
	s_jmpNOT_alsflag	y,sflag3,.ndie
	s_set_strat		x,bossBent_Istrat
.ndie

	s_jmp_varNE		B,gsvar_byte1,#2,.norm
	s_jmp_notdelay		4,.norm
.again	s_inc_alvar		B,x,al_sword1+1
	s_and_alvar		B,x,al_sword1+1,#3
	s_cmp_alvars		B,x,al_sword1+1,y,al_sword1+1
	s_beq			.again
.norm

.badobj

bossBspinend_cont

	s_set_objtobealvar	y,x,al_ptr
	s_copy_alvar2var	B,y,svar_byte1,al_sbyte1
	lda			al_sword1+1,x
	asl	a
	asl	a
	asl	a
	asl	a
	asl	a
	clc
	adc			svar_byte1
	sta			svar_byte1

	s_set_var2vartab	B,W,W,svar_word1,svar_byte1,bossbpos_tab
	s_set_var2vartab	B,W,W,svar_word2,svar_byte1,bossbpos_tab+2


	s_achase_alvar		W,x,al_worldx,svar_word1,3
	s_achase_alvar		W,x,al_worldy,svar_word2,3

	s_jsr			bossBrange_srou
	s_jmp_varless		W,rangexz,#300,.faceplayer

	s_jsr			bossBpointdir_srou

	s_jmp_frameLESS		31,63,.nfire1
	s_jmp_notdelay		3,.nfire1,al1pt
	s_weapon_pos		#0,#0,#0	
	s_weapon_rndrot		7,7
	lda	whichroute
	cmp	#6
	beq	.skullshot
	s_fire_weapon		x,HMISSILE1
	bra	.doneweap
.skullshot
	jsl		fire_skullshot

.doneweap
	s_set_alvar		W,y,al_ptr,playpt
.nfire1
	s_brl			bossB_cont2
;	s_add_playerZ		x
;	s_keeprelto_player	x
;	s_end_strat

.faceplayer
	s_set_objtobeplayer	y

	s_obj2obj_3dangle	x,y,al_roty,al_rotx,1,.fire

	s_brl			.nfire1

.fire
	
	s_jmp_frameMORE		31,63,.nfire
	s_jmp_notdelay		2,.nfire,al1pt
	s_weapon_pos		#0,#0,#0	
	s_weapon_rndrot		7,7
	s_fire_weapon		x,RELSLOWELASERHOME
.nfire	s_brl			.nfire1


;-------------------------------------------------------------
bossBspinendentcol_Istrat
	s_start_strat
	s_inc_var		B,gsvar_byte1
	s_jmp			bossBent_Istrat


;-------------------------------------------------------------
bossBspinendcol_Istrat	     
	s_start_strat

;	s_jsr		bossBspinendnewent_srou
;	s_jmp_alvarMORE	B,x,al_hp,#3,.ok
;	lda	#0
;	sta.l	m_bossmaxHP
;	s_set_alvar	B,x,al_hp,#0
;	s_end_strat
;.ok
	s_jmp		hitflashBOSSD_Istrat


;-------------------------------------------------------------
bossBspinendnewent_srou
	s_set_alvar	B,x,al_sbyte4,#14
	s_clr_alsflag	x,sflag4
	s_set_alvar	B,x,al_sbyte3,#1
	s_set_alvar2rnd	x,al_sword1+1,#3
	s_rts

;-------------------------------------------------------------
bossBescape_Istrat
	s_start_strat
	a8
	lda	stage51
	beq	.nostage51
	jml	qbossexplode_istrat

.nostage51
	s_set_expstrat	x,bossBescape_strat
	s_set_speed	x,#0
	s_set_alsflag	x,sflag3
	s_set_lifecnt	x,#60
	s_or_var	B,gameflags,#gf_bossdead
	trigse		$81
bossBescape_strat
	s_start_strat
	
	s_speedto	x,#100,1


	s_set_objtobeplayer	y
	s_jmp_Zdistless		x,y,#3000,.ndown
	s_jmp_alvarEQ		B,x,al_rotx,#deg90,.ndown

;	s_jmp_alsflag		x,sflag5,.nfire
;	s_jmp_alsflag		x,sflag6,.nfire
;	s_set_alsflag		x,sflag6
;	s_set_objtobeplayer	y
;	s_weapon_pos		#0,#0,#0
;   	s_weapon_rots2obj	y
;  	s_fire_weapon		x,CHICKHMISSILE1
; 	s_set_alvar		W,y,al_ptr,playpt
;.nfire


	s_inc_alvar		B,x,al_rotx
	s_dec_lifecnt	x
	s_brl			.nxinc
.ndown
	s_achase_alvar	B,x,al_roty,#0,4
	s_achase_alvar	B,x,al_rotx,#0,3
.nxinc

	s_gen_3dvecs	x,al_roty,al_rotx,al_speed
	s_add_vecs2pos	x

	s_brl			bossB_cont4




;-------------------------------------------------------------
bossBentlong_Istrat
	s_start_strat
	s_set_lifecnt	x,#20
	s_set_alsflag	x,colldisable
	s_set_strat	x,bossBent_strat
	s_set_alvar	B,x,al_depthoffset,#1
	s_jmpto_strat	
	s_start_strat





bossBent_Istrat
	s_start_strat
	s_set_lifecnt	x,#8
bossBent_Icont
	s_set_alsflag	x,colldisable
	s_set_strat	x,bossBent_strat
	s_set_alvar	B,x,al_depthoffset,#1

bossBent_strat
	s_start_strat
	s_jmp_notdelay	3,.nfade,al1pt
	s_add_alvar	B,x,al_depthoffset,#1
.nfade
	s_dec_lifecnt	x

bossBent_cont
	s_add_playerZ	x
	s_keeprelto_player	x
	s_inc_alvar	W,x,al_worldz
	s_end_strat






;-------------------------------------------------------------
bossBpointdir_srou		; svar_word1,svar_word2 - x,y
	s_copy_alvar2var	W,x,svar_word3,al_worldz
	s_set_wp		x,0,1,svar_word1,svar_word2,svar_word3
	s_obj2wp_angle		x,x,1,al_roty,al_rotx,2	
	s_rts
;-------------------------------------------------------------
bossBrange_srou
	a16
	lda			svar_word1
	sta			x2			
	lda			svar_word2
	sta			y2
	a8			
	s_jsl			xydiffs_abs_l
	s_rts

;-------------------------------------------------------------------
;-------------------------------------------------------------------
;-------------------------SPACE-CUBE AKA BATTLE CORE AKA THE CRIMSON KING AKA FUCK OFF AKA WORST BOSS EVER--------------------------------
;-------------------------------------------------------------------
;-------------------------------------------------------------------

newboss1_Istrat
	s_start_strat
	s_set_alptrs	x,newboss1_strat,newboss1col_Istrat,newboss1exp_Istrat
	s_set_colltype	x,ENEMY1
	s_set_colltype	x,ENEMY2
	s_set_colltype	x,ENEMYWEAP
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#100,#40
	s_set_alvar		W,x,al_shape,#boxxie
	s_set_bossmaxHP	#100
	s_set_alvar		B,x,al_roty,#0
	s_set_alvar		B,x,al_rotx,#0
	s_set_alvar		B,x,al_rotz,#0
.donerot
	s_clr_alsflag	x,nohitaffect
	s_set_alsflag	x,relexplode


newboss1_strat
	s_start_strat
	
	s_add_bossHP		x,al_hp
	lda.l	al_hp,x
	lbmi	newboss1exp_Istrat
	lbeq	newboss1exp_Istrat
	s_jmp_alsflag	x,invisible,.nowt

	s_set_objtobeplayer	y

;-----------------------------------------------
	s_jmp_ifnotstate	x,0,.nswait1

	lda	newgameplus
	bne	.waitlonger
	s_set_alvar	B,x,al_sbyte1,#20
	bra	.donewaiting
.waitlonger
	s_set_alvar	B,x,al_sbyte1,#40
.donewaiting
	s_next_state		x
.nswait1

;-----------------------------------------------
	s_jmp_ifnotstate	x,1,.nswait2
	s_beqdec_alvar	B,x,al_sbyte1,nextstate
.nswait2


;-----------------------------------------------
	s_jmp_ifnotstate	x,2,.nszoomup1
;	s_set_alsflag		x,nohitaffect
	s_add_alvar		B,x,al_sbyte2,#8
	s_set_alvar2alvartab	B,B,W,x,al_vx,x,al_sbyte2,sintab,-1
	s_set_alvar2alvartab	B,B,W,x,al_vy,x,al_sbyte2,costab,-1
;	jsr		fire_bonfire
	s_jmp_Zdistless		x,y,#1900,nextstate
;	jsr		mcoreZrot_srou
	s_jmp_alvarEQ	W,x,al_vz,#-80,.nszoomup1
	s_add_alvar	W,x,al_vz,#-10
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2,.fire2
.fire2
.nfire2


.nszoomup1
;-----------------------------------------------
	s_jmp_ifnotstate	x,3,.nszoomaway1
	s_add_alvar		B,x,al_sbyte2,#8
	s_set_alvar2alvartab	B,B,W,x,al_vx,x,al_sbyte2,sintab,-1
	s_set_alvar2alvartab	B,B,W,x,al_vy,x,al_sbyte2,costab,-1
;	jsr		fire_bonfire
	s_jmp_Zdistmore		x,y,#6000,setstate2
;	jsr		mcoreZrot_srou
	s_jmp_alvarEQ	W,x,al_vz,#120,.nszoomaway1
	s_add_alvar	W,x,al_vz,#10
	s_achase_alvar	W,x,al_worldx,#0,3
	s_achase_alvar	W,x,al_worldy,#space_viewcy,3
.faceplayer
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,2,.fire
;	s_brl			.nfire
.fire
	s_jmp_notdelay		3,.nfire
	s_set_objtobeplayer	y
	s_weapon_pos		#20,#0,#0
	s_weapon_rot		#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,vortex1
	s_set_colltype		y,ENEMY2
	s_set_alvar		W,y,al_ptr,playpt
.nfire
	s_jmp_alvarZERO		W,x,al_vz,setstate4
	s_jmp_notdelay		5,.nochik
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#0,#0
	s_set_objtobeplayer	y
	s_weapon_pos	#0,#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon	x,CHICKHMISSILE1
	s_set_colltype	y,enemy2
	s_set_alvar	W,y,al_ptr,playpt
	bra	.nszoomaway1
.nochik

.nszoomaway1

;-----------------------------------------------
	s_jmp_ifnotstate	x,4,.nsflipI


	s_clr_alsflag		x,nohitaffect
	s_set_alvar			B,x,al_sbyte1,#deg180
	lda	newgameplus
	bne	.nl3t
	s_jmp_varAND		B,superspeedcnt,#ee23,.jmpfourth
	s_jmp_ifnotlevel	4,.nl3t1
	s_jmp_varAND		B,superspeedcnt,#andr,.jmpfourth
	bra	.nl3t
.nl3t1
	s_jmp_ifnotlevel	3,.nl3t
.jmpfourth
	s_set_alvar		B,x,al_sbyte1,#(deg180/2)	;*3		;how long do you wait?
.nl3t	s_zero_vecs		x
	s_next_state		x
.nsflipI
;-----------------------------------------------
	s_jmp_ifnotstate	x,5,.nsflip
	s_set_objtobeplayer	y
	s_obj2obj_3dangle	x,y,al_rotx,al_rotx,3,.fire3
;	s_brl			.nfire3
.fire3
	s_jmp_notdelay		3,.nfire3
	s_set_objtobeplayer	y
	s_weapon_pos		#20,#0,#0
	s_weapon_rot		#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,vortex1
	s_set_colltype		y,ENEMY2
	s_set_alvar		W,y,al_ptr,playpt
	s_jmp_notdelay		5,.nfire3
	s_weapon_pos		#-20,#0,#0
	s_weapon_rot		#0,#0
	s_set_objtobeplayer	y
	s_weapon_rots2obj	y
	s_fire_weapon		x,bossHmissile1
	s_set_colltype		y,ENEMY2

.nfire3

	s_beqdec_alvar		B,x,al_sbyte1,setstate2
.nl3f
;	s_add_alvar		B,x,al_rotx,#8			;4 - 180deg - 8 - 360deg
	s_jmp_notdelay		6,.nsflip
	jsr	spawncubes
.nsflip

;-----------------------------------------------
	s_jmp_ifnotstate	x,6,.nscent
;	s_achase_alvar		B,x,al_rotx,#deg180,3
;	s_achase_alvar		B,x,al_roty,#-deg45,3
;	s_achase_alvar		B,x,al_rotz,#0,3
;	s_set_alsflag		x,nohitaffect
	s_achase_alvar		W,x,al_worldx,#0,3
	s_achase_alvar		W,x,al_worldy,viewCY,3
	s_set_var		W,svar_word1,player_posz
	s_add_var		W,svar_word1,#2500
	s_achase_alvar		W,x,al_worldz,svar_word1,3
	s_zero_vecs		x

;	jsr		fire_bonfire

.nscent

;-----------------------------------------------
	


	s_add_vecs2pos	x
.nowt
	s_add_playerZ	x

	s_end_strat

;-------------------------

newboss1col_Istrat
	s_start_strat
;	s_set_alvar			B,x,al_sbyte4,#5		;delay between getting hit
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 2 hp
	sta.w	al_hp,x		;store it
	lbmi	newboss1exp_Istrat
	lbeq	newboss1exp_Istrat
	s_set_alsflag		x,hitflash	;flash head
;	s_set_alsflag		x,colldisable
.player
	s_jmpto_strat	x
	s_end_strat





newboss1exp_Istrat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	s_and_var	B,strat_valid,#~brflag	
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
	a8
	lda	#0
	sta.l	al_hp,x

	IFEQ	1
	stx	viewtoobj ;<- magic
	lda	viewtype
	sta	viewtypebackup
	ora	#viewtype_toobj
	sta	viewtype
	s_set_find	0
.looper
	s_find_obj	y,x,#zaco_9,.nohandl
	s_kill_obj	y
	bra	.looper
.nohandl
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
	ENDC
	jml	qbossexplode_istrat

spawncubes
	s_make_obj		#zaco_9,.badobj
	s_copy_pos		y,x
	s_copy_rots		y,x
	s_set_alvar		B,y,al_rotx,#deg180
;	s_add_roffs2pos		B,y,y,y,#-10,#7,#0,0,1,0,boss7_scale,boss7_scale,boss7_scale
	s_add_alvar		B,y,al_rotx,#3
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	
	s_set_strat		y,path_istrat
	s_set_path		y,e_bee
.badobj	s_rts




;---------------------------------------------------------------------------------
;---------------------------------------------------------------------------------
;-----------------------Pierrot---------------------------------------------------
;---------------------------------------------------------------------------------
;---------------------------------------------------------------------------------
newboss2_Istrat
	s_start_strat
	s_set_alptrs	x,newboss2_strat,newboss2col_Istrat,newboss2exp_Istrat
	s_set_colltype	x,ENEMY1
	s_set_colltype	x,ENEMY2
	s_set_colltype	x,ENEMYWEAP
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#85,#8
	s_set_alvar		W,x,al_shape,#pierrot
	s_set_bossmaxHP	#85
	s_set_alvar		B,x,al_sbyte2,#0
	s_set_alvar		B,x,al_roty,#0
	s_set_alvar		B,x,al_rotx,#0
	s_set_alvar		B,x,al_rotz,#0
.donerot
	s_clr_alsflag	x,nohitaffect
	s_set_alsflag	x,relexplode


newboss2_strat
	s_start_strat
	
	s_add_bossHP		x,al_hp

	lda.l	al_hp,x
	lbmi	newboss2exp_Istrat
	lbeq	newboss2exp_Istrat
	
	s_set_objtobeplayer	y

;-----------------------------------------------
	s_jmp_ifnotstate	x,0,.nswait1

	s_set_alvar2rnd	x,al_sbyte1,#32
	s_next_state		x
.nswait1

;-----------------------------------------------
	s_jmp_ifnotstate	x,1,.nszoomup2
	s_achase_alvar	W,x,al_worldx,#-650,3
	s_achase_alvar	W,x,al_worldy,#-650,3
	s_beqdec_alvar	B,x,al_sbyte1,.random1

	s_jmp_alvareq	B,x,al_sbyte2,#1,.atk1phs2
;phase 1 attack
	s_achase_alvar	W,x,al_roty,#0,3
	s_jmp_notdelay		4,.nfire3
	s_face_player		x,2,0
	s_set_objtobeplayer	y
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#0,#0
	s_weapon_rots2obj	y
	jsl		fire_orb2
	s_set_colltype		y,ENEMY2
	s_set_alvar		W,y,al_ptr,playpt
.nfire3
	bra	.nszoomup2

.atk1phs2
;phase 2 attack
	s_achase_alvar	W,x,al_roty,#-deg180,3				;flip on y axis 180degrees
	s_jmp_notdelay		6,.nohands1
	jsr	spawnlefthand
	jsr	spawnrighthand

.nohands1

.nszoomup2	

;-----------------------------------------------
	s_jmp_ifnotstate	x,2,.nszoomup3
	s_set_alvar2rnd	x,al_sbyte1,#32
	s_next_state		x
.nszoomup3

;-----------------------------------------------
	s_jmp_ifnotstate	x,3,.nszoomup4
	s_achase_alvar	W,x,al_worldx,#650,3
	s_achase_alvar	W,x,al_worldy,#-650,3
	s_beqdec_alvar	B,x,al_sbyte1,.random2

	s_jmp_alvareq	B,x,al_sbyte2,#1,.atk2phs2
;phase 1 attack
	s_achase_alvar	W,x,al_roty,#0,3
	s_jmp_notdelay		4,.nfire4
	s_set_objtobeplayer	y
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,vortex2
	s_set_colltype		y,ENEMY2
	s_set_alvar		W,y,al_ptr,playpt
.nfire4
	bra	.nszoomup4

.atk2phs2
;phase 2 attack
	s_achase_alvar	W,x,al_roty,#-deg180,3				;flip on y axis 180degrees
	s_jmp_notdelay		6,.nohands2
	jsr	spawnlefthand
	jsr	spawnrighthand

.nohands2

.nszoomup4
;-----------------------------------------------
	s_jmp_ifnotstate	x,4,.nswait11

	s_set_alvar2rnd	x,al_sbyte1,#32
	s_next_state		x
.nswait11

;-----------------------------------------------
	s_jmp_ifnotstate	x,5,.nszoomup21
	s_achase_alvar	W,x,al_worldx,#-650,3
	s_achase_alvar	W,x,al_worldy,#-50,3
	s_beqdec_alvar	B,x,al_sbyte1,.random3

	s_jmp_alvareq	B,x,al_sbyte2,#1,.atk3phs2
;phase 1 attack
	s_achase_alvar	W,x,al_roty,#0,3
	s_jmp_notdelay		3,.nfire44
	s_set_objtobeplayer	y
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,hplasma
	s_set_colltype		y,ENEMY2
	s_set_alvar		W,y,al_ptr,playpt
.nfire44

	bra	.nszoomup21

.atk3phs2
;phase 2 attack
	s_achase_alvar	W,x,al_roty,#-deg180,3				;flip on y axis 180degrees
	s_jmp_notdelay		6,.nohands3
	jsr	spawnlefthand
	jsr	spawnrighthand

.nohands3

.nszoomup21

;-----------------------------------------------
	s_jmp_ifnotstate	x,6,.nszoomup31
	s_set_alvar2rnd	x,al_sbyte1,#32
	s_next_state		x
.nszoomup31

;-----------------------------------------------
	s_jmp_ifnotstate	x,7,.nszoomup41
	s_achase_alvar	W,x,al_worldx,#650,3
	s_achase_alvar	W,x,al_worldy,#-50,3
	s_beqdec_alvar	B,x,al_sbyte1,.random4

	s_jmp_alvareq	B,x,al_sbyte2,#1,.atk4phs2
;phase 1 attack
	s_achase_alvar	W,x,al_roty,#0,3
	s_jmp_notdelay		3,.nfire5
	s_set_objtobeplayer	y
	s_weapon_pos		#0,#0,#0
	s_weapon_rot		#0,#0
	s_weapon_rots2obj	y
	s_fire_weapon		x,relovalbeam
	s_set_colltype		y,ENEMY2
	s_set_alvar		W,y,al_ptr,playpt
.nfire5
	bra	.nszoomup41

.atk4phs2	
;phase 2 attack
	s_achase_alvar	W,x,al_roty,#-deg180,3				;flip on y axis 180degrees
	s_jmp_notdelay		6,.nohands4
	jsr	spawnlefthand
	jsr	spawnrighthand

.nohands4

.nszoomup41


;-----------------------------------------------
	s_jmp_ifnotstate	x,8,.end
	s_set_alvar2rnd	x,al_sbyte1,#32						;set timer to random number up to 32 frames
	s_jmp_alvareq	B,x,al_sbyte2,#0,.setto1	;if sbyte2 is 0, set it to 1

	s_set_alvar		B,x,al_sbyte2,#0			;set "i'm flipped!" flag to off
	s_next_state	x							
	bra	.end

.setto1
	s_set_alvar		B,x,al_sbyte2,#1			;set "i'm flipped!" flag to on
	s_next_state	x
.end

;------------------------------------------------ position chasing must be done on the repeated state
	s_jmp_ifnotstate	x,9,.end2				

	s_jmp_notdelay		6,.nohands5
	jsr	spawnlefthand
	jsr	spawnrighthand

.nohands5
	s_jmp_alvareq		B,x,al_sbyte2,#0,.flipback		;if sbyte2 is set to 0, flip back to normal
	s_achase_alvar	W,x,al_worldx,#0,3					;center
	s_achase_alvar	W,x,al_worldy,#0,3					;center
	s_achase_alvar	W,x,al_roty,#-deg180,3				;flip on y axis 180degrees
	s_set_alsflag	x,nohitaffect
	s_beqdec_alvar	B,x,al_sbyte1,.random5			;when the sbyte1 frame timer is 0, jump to .random
	bra	.end2
.flipback
	s_achase_alvar	W,x,al_worldx,#0,3					;center
	s_achase_alvar	W,x,al_worldy,#0,3					;center
	s_achase_alvar	W,x,al_roty,#0,3					;flip back on y axis to 0
	s_clr_alsflag	x,nohitaffect
	s_beqdec_alvar	B,x,al_sbyte1,.random5			;when the sbyte1 frame timer is 0, jump to .random
.end2
	s_add_vecs2pos	x
;	s_add_playerZ	x
	s_set_objtobeplayer	y
	a16
	lda.w	al_worldz,y
	clc
	adc	#2000
	sta.w	al_worldz,x
	a8

;	s_jmp_alvareq		B,x,al_sbyte2,#0,.noregen
	s_jmp_notdelay	4,.noregen
	lda.w	al_hp,x
	cmp	#85
	bpl	.noregen
	clc
	adc	#1
	sta.w	al_hp,x
	
.noregen
	s_end_strat

.random1
;	s_jmp_random	.0,5
	s_jmp_random	.2,10
	s_jmp_random	.4,10
	s_jmp_random	.6,10
	s_jmp_alvareq	B,x,al_sbyte2,#1,.biggerrand1
	s_jmp_random	.8,6
	bra	.donerand1
.biggerrand1
	s_jmp_random	.8,25
.donerand1
	bra	.random1

.random2
	s_jmp_random	.0,10
;	s_jmp_random	.2,5
	s_jmp_random	.4,10
	s_jmp_random	.6,10

	s_jmp_alvareq	B,x,al_sbyte2,#1,.biggerrand2
	s_jmp_random	.8,6
	bra	.donerand2
.biggerrand2
	s_jmp_random	.8,25
.donerand2

	bra	.random2

.random3
	s_jmp_random	.0,10
	s_jmp_random	.2,10
;	s_jmp_random	.4,5
	s_jmp_random	.6,10
	s_jmp_alvareq	B,x,al_sbyte2,#1,.biggerrand3
	s_jmp_random	.8,6
	bra	.donerand3
.biggerrand3
	s_jmp_random	.8,25
.donerand3
	bra	.random3

.random4
	s_jmp_random	.0,10
	s_jmp_random	.2,10
	s_jmp_random	.4,10
;	s_jmp_random	.6,5
	s_jmp_alvareq	B,x,al_sbyte2,#1,.biggerrand4
	s_jmp_random	.8,6
	bra	.donerand4
.biggerrand4
	s_jmp_random	.8,25
.donerand4

	bra	.random4

.random5
	s_jmp_random	.0,10
	s_jmp_random	.2,10
	s_jmp_random	.4,10
	s_jmp_random	.6,10
;	s_jmp_random	.8,5
	bra	.random5


	
.0
	s_set_state	x,#0
	bra	.nomore

.2
	s_set_state	x,#2
	bra	.nomore

.4
	s_set_state	x,#4
	bra	.nomore
	
.6
	s_set_state	x,#6
	bra	.nomore
.8
	s_set_state	x,#8
	bra	.nomore
	
	

.nomore
	jmp	.end
	s_end_strat


newboss2col_Istrat
	s_start_strat
;	s_set_alvar			B,x,al_sbyte4,#5		;delay between getting hit
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 2 hp
	sta.w	al_hp,x		;store it
	bmi	newboss2exp_Istrat
	beq	newboss2exp_Istrat
	s_set_alsflag		x,hitflash	;flash head
;	s_set_alsflag		x,colldisable
.player
	s_jmpto_strat	x
	s_end_strat



newboss2exp_Istrat
	s_start_strat
;	startbgm		$f0
;	trigse			$a1
	s_set_expstrat		x,newboss2exp_strat

newboss2exp_strat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	s_and_var	B,strat_valid,#~brflag		
	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
	s_set_alvar	B,x,al_sbyte2,#0
	IFEQ	1

	a8
	lda	#0
	sta.l	al_hp,x
	stx	viewtoobj ;<- magic
	lda	viewtype
	sta	viewtypebackup
	ora	#viewtype_toobj
	sta	viewtype
	s_set_find	0
.looper
	s_find_obj	y,x,#hand_l,.nohandl
	s_kill_obj	y
	bra	.looper
.nohandl
	s_set_find	0
.looper2
	s_find_obj	y,x,#hand_r,.nohandr
	s_kill_obj	y
	bra	.looper2
.nohandr
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
	ENDC
	jml	qbossexplode_istrat
	
spawnlefthand
	s_set_find		0
	s_find_obj		y,x,#hand_l,.nohand
	s_rts
.nohand
	s_make_obj		#hand_l,.badobj
	s_copy_pos		y,x
	s_set_alvar		W,y,al_worldx,#300
;	s_add_alvar		W,x,al_worldz,#1300
;	s_copy_rots		y,x
	s_set_aldata	y,#8,#8
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	

	s_set_strat		y,path_istrat
	s_set_path		y,e_hand
.badobj	s_rts

spawnrighthand
	s_set_find		0
	s_find_obj		y,x,#hand_r,.nohand
	s_rts
.nohand

	s_make_obj		#hand_r,.badobj
	s_copy_pos		y,x
	s_set_alvar		W,y,al_worldx,#-300
;	s_add_alvar		W,x,al_worldz,#1300
;	s_copy_rots		y,x
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	
	s_set_aldata	y,#8,#8
	s_set_strat		y,path_istrat
	s_set_path		y,e_hand
.badobj	s_rts



;---------------------------------------------------------------------------------
;---------------------------------------------------------------------------------
;-----------------------KING-DODORA-----------------------------------------------
;---------------------------------------------------------------------------------
;---------------------------------------------------------------------------------
dodonew_Istrat
	s_start_strat
	s_set_alvar		B,x,al_sbyte1,#2		;not jumping
	s_set_alptrs	x,dodocore_strat,0,0	;looping strat, collision strat, explosion strat
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#100,#8				;hp + ap
	s_set_alvar		W,x,al_shape,#dodora_2	;set shape
	s_set_bossmaxHP	#100					;set the max hp
	s_set_alvar		B,x,al_roty,#deg180			;no rotation
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	
	s_make_mother	x				;make this a mother object
	s_make_childobjrotpos	#D_ASHI_L,#dodora_2,#-7,#15,#0,#0,#0,#0,dodolegs_strat,ENEMY1			;make left wing
	s_make_childobjrotpos	#D_ASHI_R,#dodora_2,#7,#15,#0,#0,#0,#0,dodolegs_strat,ENEMY1			;make right wing
	s_make_childobjrotpos	#DODORA_L,#dodora_2,#-7,#0,#0,#0,#0,#0,dodo_strat,ENEMY1			;make left leg
	s_make_childobjrotpos	#DODORA_R,#dodora_2,#7,#0,#0,#0,#0,#0,dodo_strat,ENEMY1				;make right leg
	s_make_childobjrotpos	#DODORA_3,#dodora_2,#0,#4,#-12,#0,#0,#0,dodo_strat,ENEMY1			;make tail
	s_make_childobjrotpos	#DODORA_1,#dodora_2,#0,#-3,#12,#64,#0,#0,dodo_strat,ENEMY1			;make neck (rotated 90 degrees along the X axis (neck was facing up))
	s_make_childobjrotpos	#DODORA_0,#dodora_2,#0,#4,#24,#0,#0,#0,dodoheadinit_strat,ENEMY1		;make head
	s_rotpos_allchildren	x		;rotate all children with main body
	
;----looping strat for wings, neck and tail
dodo_strat
	s_start_strat
	s_setnoremove_behind	x	;don't remove if behind camera
	s_add_playerz	x	;add player z position to object's z position
	s_end_strat

;----leg strat----------------------
dodolegs_strat
	s_start_strat
	s_setnoremove_behind	x	;don't remove behind camera
	s_add_playerz	x			;add player's z position to objects
	s_set_objtobemother	y,x		;set mother to be Y
	lda.w	al_sflags,y			;load sflags for Y
	beq	.movethoselegs			;if set to 0, move the legs as its on the ground
	s_cmp_anim	x,#7			;otherwise, check if its at animation frame 7
	bne	.movethoselegs			;if not, keep moving until it gets there
	s_add_anim		x,#0,#16	;if so, add nothing to animation frame, rendering it static
	bra	.donemove				;done
.movethoselegs
	s_add_anim		x,#1,#16	;add 1 to animation frame
.donemove
	s_end_strat
	
	
;-----head stuff-------------------------------------
dodoheadinit_strat				;setup data for the head
	s_start_strat
	s_set_alptrs	x,dodohead_strat,dodoheadcol_strat,dodoexp_Istrat		;set the looping strat and collision/explosion strat
	s_set_colltype	x,ENEMY1								;set type of collision
	s_set_colltype	x,ENEMY2								;set type of collision
	s_set_colltype	x,ENEMYWEAP								;set type of collision
	s_set_aldata	x,#100,#8								;set hp and ap
	s_end_strat

dodohead_strat					;looping strat
	s_start_strat
	lda.l	al_hp,x
	lbmi	dodoexp_Istrat
	lbeq	dodoexp_Istrat
	s_setnoremove_behind	x		;don't remove behind the camera
	s_set_objtobemother	y,x			;set mother to be Y

	lda	birdwait
	lbne	.nfire3

	lda.w	al_sbyte3,y				;get Y's current sbyte3 value
	cmp	#2							;compare to #2
	beq	.eggtime						;if not facing player, don't fire this. do eggs
	phy
	s_set_objtobeplayer	y
	a16
	lda.w	al_worldz,y
	sec
	sbc	al_worldz,x
	cmp	#-400
	lbpl	.nfire3p
	ply
	a8
	s_jmp_notdelay		4,.nfire3	;every 16 frames
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_tame		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	bra	.nfire3
.eggtime
	s_set_objtobeplayer	y
	a16
	lda.w	al_worldz,y
	sec
	sbc	al_worldz,x
	cmp	#-300
	bpl	.nfire3		;don't do eggs if not 300 units in front of player
	s_jmp_notdelay		4,.nfire3	;every 16 frames
	s_make_obj	#egg,.nfire3
	s_sprite_obj	y,#0
	s_copy_pos	y,x
	s_set_strat	y,egg_istrat
	bra	.nfire3
	
.nfire3p
	ply
.nfire3
	a8

	s_add_bossHP		x,al_hp								;add boss hp to the meter
	s_add_playerz	x										;add player's Z position to the objects position to keep the distance
	s_end_strat
	
	
;----head collision-----
dodoheadcol_strat				;collision strat
	s_start_strat
	s_set_objtobealvar	y,x,al_collobjptr	;set collision object to Y
	cpy	playpt			;compare it to the player's object
	beq	.player			;if its the player, don't take any damage
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 3 hp
	bmi	dodoexp_Istrat
	beq	dodoexp_Istrat
	sta.w	al_hp,x		;store it
	s_set_alsflag		x,hitflash	;flash head
.player
;	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_jmpto_strat	x
	s_end_strat

;----explosion strat---
dodoexp_Istrat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	s_and_var	B,strat_valid,#~brflag		
	s_jmp	qbossexplode_Istrat
	s_end_strat

;-----CORE-------------------
dodocore_strat				;core body strat
			;sbyte1:	0 - start jump
			;			1 - start downward descent
			;			2 - not jumping
			;sbyte2:	Timer
			;sflags:	Flag for jumping for legs to center
			
	s_start_strat
;	s_add_alvar		B,x,al_roty,#5					;rotate 5 units along the y axis (spinning)
	s_jmp_alvarne	B,x,al_sbyte1,#2,.nosetjump		;skip this part if already in a jump
	s_jmp_notdelay	6,.nosetjump					;otherwise, every 64 frames, start a jump
	s_set_alvar	B,x,al_sbyte1,#0					;set jump flag to begin it
	
.nosetjump
	jsr	dodojumproutine				;check for jump routine code to execute

	jsr	dodochargeroutine			;check for charge routine to execute
	
	jsr	dolateralroutine			;check for lateral movement
	
	s_jmp_alvarne	B,x,al_sbyte3,#0,.nocenterortimer
	s_jmp_notdelay	7,.nocenterortimer
	s_set_alvar	B,x,al_sbyte3,#1

.nocenterortimer
	s_add_playerz	x										;add player's z position to object's z position to maintain distance
	s_rotpos_allchildren	x								;rotate all body parts with body
	s_end_strat
	
	
;-----jump routine
dodojumproutine
.inair			;going up stuff
	s_jmp_alvareq	B,x,al_sbyte1,#1,.godown				;if sbyte1 is #1, that means we are heading downwards so jump there
	s_jmp_alvarne	B,x,al_sbyte1,#0,.onground
	s_set_alvar		B,x,al_sflags,#1
	s_jmp_alvarless	W,x,al_worldy,#-390,.allthewayup		;otherwise, if the position is above -390 Y, jump to the "all the way up" code
	s_set_alvar		B,x,al_sbyte2,#2						;if that is not true, set the timer to stay up at max to 2 frames
	s_achase_alvar	W,x,al_worldy,#-400,3					;gradually head towards value -400 Y
	jmp	.donejump											;done
.onground
	s_achase_alvar	W,x,al_worldy,#-130,3					;chase -130 just in case we are in the frame wait
	jmp	.donejump
	
.godown		;going down stuff
	s_jmp_alvarmore	W,x,al_worldy,#-140,.allthewaydown		;if the position is below -140 Y, jump to the "all the way down" code
	s_set_alvar		B,x,al_sflags,#1
	s_set_alvar		B,x,al_sbyte2,#25						;otherwise, set the "stay at ground" timer to 25 frames
	s_achase_alvar	W,x,al_worldy,#-130,3					;and chase the value -130 Y position
	bra	.donejump				;done
	
.allthewayup	;stuff to do when all the way up
	s_achase_alvar	W,x,al_worldy,#-400,3					;chase -400 just in case we are in the frame wait
	s_set_alvar		B,x,al_sflags,#1
	s_decbne_alvar		B,x,al_sbyte2,.donejump				;reduce sbyte2 until 0 (frame wait), if it isn't 0 we skip the next section
	s_set_alvar		B,x,al_sbyte1,#1						;set sbyte to #1, indicating we are going down
	s_achase_alvar	W,x,al_worldy,#-130,3					;start chasing value -130 Y position
	bra	.donejump											;done
	
.allthewaydown	;stuff to do when all the way down
	s_achase_alvar	W,x,al_worldy,#-130,3					;chase -130 just in case we are in the frame wait
	s_set_alvar		B,x,al_sflags,#0
	s_decbne_alvar		B,x,al_sbyte2,.donejump				;reduce sbyte2 until 0 (frame wait), if it isn't 0 we skip the next section
	s_set_alvar		B,x,al_sbyte1,#2						;set sbyte to #1, indicating we are ready to go up
	s_achase_alvar	W,x,al_worldy,#-400,3					;start chasing value -400 Y position
	bra	.donejump											;done
.donejump
	rts
	
;----------charge------------	
dodochargeroutine
	s_set_objtobeplayer	y
	s_jmp_alvareq	B,x,al_sbyte3,#0,.noroutine
	s_jmp_alvareq	B,x,al_sbyte3,#2,.backroutine

	a16
	lda.w	al_worldz,y
	sec
	sbc	al_worldz,x
	cmp	#600
	bpl	.timetogoback
	a8
	s_sub_alvar	W,x,al_worldz,#30
	s_achase_alvar	B,x,al_roty,#deg180,2
	rts
.timetogoback
	a8
	s_set_alvar	B,x,al_sbyte3,#2
	s_achase_alvar	B,x,al_roty,#0,2
	rts
.backroutine
	s_achase_alvar	B,x,al_roty,#0,2
	a16
	lda.w	al_worldz,y
	sec
	sbc	al_worldz,x
	cmp	#-2000
	bmi	.donegoingback
	a8
	s_set_alvar	B,x,al_sflags4,#50
	s_add_alvar	W,x,al_worldz,#20
	rts
.donegoingback
	a8
	s_achase_alvar	B,x,al_roty,#-deg180,2
	lda	#1
	sta	birdwait
	s_decbne_alvar	B,x,al_sflags4,.notdonewaiting
	stz	birdwait
	s_set_alvar	B,x,al_sbyte3,#0
.notdonewaiting
	rts
.noroutine
	s_achase_alvar	B,x,al_roty,#deg180,2
	rts
	
;------Lateral Movement--------
dolateralroutine
	s_jmp_alvareq	B,x,al_sbyte4,#0,.startgoingleft
	s_jmp_alvareq	B,x,al_sbyte4,#1,.goleft
	s_jmp_alvareq	B,x,al_sbyte4,#2,.goright
	
.goleft
	s_jmp_alvarmore	W,x,al_worldx,#400,.startgoingright
	s_add_alvar		W,x,al_worldx,#8
	rts
.goright
	s_jmp_alvarless	W,x,al_worldx,#-400,.startgoingleft
	s_sub_alvar		W,x,al_worldx,#8
	rts
.startgoingright
	s_set_alvar		B,x,al_sbyte4,#2
	rts

.startgoingleft
	s_set_alvar		B,x,al_sbyte4,#1
	rts
	
.donothing
	rts
	
	
	
;---------------------------------------------------------------------------------
;---------------------------------------------------------------------------------
;-----------------------REX-------------------------------------------------------
;---------------------------------------------------------------------------------
;---------------------------------------------------------------------------------
rex_Istrat
	s_start_strat
	s_set_alptrs	x,rexcore_strat,rexcol_strat,rexexp_strat	;looping strat, collision strat, explosion strat
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_setnoremove_behind	x
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#100,#8				;hp + ap
	s_set_alvar		W,x,al_shape,#rex_b	;set shape
	s_set_bossmaxHP	#100					;set the max hp
	s_set_alvar		B,x,al_roty,#0			;no rotation
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
	s_make_mother	x				;make this a mother object
	s_make_childobjrotpos	#REX_F_L,#REX_B,#1,#0,#0,#0,#0,#0,rexlegL_strat,ENEMY1			;make left wing
	s_make_childobjrotpos	#REX_F_R,#REX_B,#-1,#0,#0,#0,#0,#0,rexlegR_strat,ENEMY1			;make right wing
	s_rotpos_allchildren	x		;rotate all children with main body
	s_end_strat
	
rexlegL_strat						;basic looping strat for legs
	s_start_strat
	s_set_objtobemother	y,x
	lda.w	al_sbyte3,y
	sta.w	al_sbyte3,x
	s_jmp_alvareq	B,x,al_sbyte3,#0,.noresurrect
	s_jmp_alvareq	B,x,al_sbyte3,#2,.resurrect2
	s_set_alvar	W,x,al_shape,#rex_f_l2
	bra	.noresurrect
.resurrect2
	s_set_alvar	W,x,al_shape,#rex_f_l3
.noresurrect
	s_add_playerz	x
	s_end_strat
	
rexlegR_strat						;basic looping strat for legs
	s_start_strat
	s_set_objtobemother	y,x
	lda.w	al_sbyte3,y
	sta.w	al_sbyte3,x
	s_jmp_alvareq	B,x,al_sbyte3,#0,.noresurrect
	s_jmp_alvareq	B,x,al_sbyte3,#2,.resurrect2
	s_set_alvar	W,x,al_shape,#rex_f_r2
	bra	.noresurrect
.resurrect2
	s_set_alvar	W,x,al_shape,#rex_f_r3
.noresurrect

	s_add_playerz	x
	s_end_strat


;------------------CORE BODY STRAT--------------------------	
rexcore_strat
	s_start_strat
	lda.l	al_hp,x
	lbmi	rexexp_strat
	lbeq	rexexp_strat
	s_jmp_alvareq	B,x,al_sbyte3,#0,.noresurrect
	s_jmp_alvareq	B,x,al_sbyte3,#2,.resurrect2
	s_set_alvar	W,x,al_shape,#rex_b2
	bra	.noresurrect
.resurrect2
	s_set_alvar	W,x,al_shape,#rex_b3
.noresurrect
	jsr	rexlateralmovement					;do lateral movements
	a16
	lda.w	al_worldy,x				;check his position
	cmp	#-20							;if its -20 units or higher
	bmi	.nofire							;don't do anything
	a8
	s_jmp_notdelay	6,.nofire		
	s_make_childobjrotpos	#firebreathing,#rex_b,#3,#-10,#0,#deg22,#0,#0,rexfire_istrat,ENEMY1	;FIREEEEEEE
.nofire
	a8
	s_set_find	0
	s_find_obj	y,x,#firebreathing,.nofirealive
	s_achase_alvar	W,x,al_worldy,#-300,3
	bra	.fireison
.nofirealive
	jsr	rexZmovement						;do z movements
	s_achase_alvar	W,x,al_worldy,#0,3
.fireison
	s_add_playerz	x
	s_rotpos_allchildren	x		;rotate all children with main body
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_end_strat

;----------LATERAL MOVEMENT Subroutine----
rexlateralmovement
	s_jmp_alvareq	B,x,al_sbyte1,#1,.goleft
.goright
	s_jmp_alvarmore	W,x,al_worldx,#400,.golefttime
	s_jmp_random	.golefttime,2
	s_set_alvar	B,x,al_sbyte4,#20

	s_jmp_alvareq	B,x,al_sbyte3,#1,.faster1
	s_jmp_alvareq	B,x,al_sbyte3,#2,.faster12
	s_add_alvar	W,x,al_worldx,#5				;BLUE DINO SPEED
	bra	.done1
.faster1
	s_add_alvar	W,x,al_worldx,#9				;RED DINO SPEED
	bra	.done1
.faster12
	s_add_alvar	W,x,al_worldx,#15				;RED DINO SPEED

.done1
	rts
.goleft
	s_jmp_alvarless	W,x,al_worldx,#-400,.gorighttime
	s_jmp_random	.gorighttime,2
	s_set_alvar	B,x,al_sbyte4,#20

	s_jmp_alvareq	B,x,al_sbyte3,#1,.faster2
	s_jmp_alvareq	B,x,al_sbyte3,#2,.faster22
	s_sub_alvar	W,x,al_worldx,#5				;BLUE DINO SPEED
	bra	.done2
.faster2
	s_sub_alvar	W,x,al_worldx,#9				;RED DINO SPEED
	bra	.done2
.faster22
	s_sub_alvar	W,x,al_worldx,#15				;RED DINO SPEED
.done2
	rts
.gorighttime
	s_decbne_alvar	B,x,al_sbyte4,.nothing
	s_set_alvar	B,x,al_sbyte1,#0
	rts
.golefttime
	s_decbne_alvar	B,x,al_sbyte4,.nothing
	s_set_alvar	B,x,al_sbyte1,#1
.nothing
	rts
;------------Z Movement Subroutine--------------------
rexZmovement

	s_jmp_alvareq	B,x,al_sflags4,#1,.goback
.goforward
	s_set_objtobeplayer	y
	a16
	lda.w al_worldz,y
	sec
	sbc	al_worldz,x
	cmp	#-400
	bpl	.timetogoback
	cmp	#-1000
	bmi	.bigger
	a8
	s_sub_alvar	W,x,al_worldz,#5
	bra	.donez
.bigger
	s_sub_alvar	W,x,al_worldz,#35
	bra	.donez
.goback	
	s_set_objtobeplayer	y
	a16
	lda.w al_worldz,y
	sec
	sbc	al_worldz,x
	cmp	#-600
	bmi	.timetogoforward
	a8
	s_add_alvar	W,x,al_worldz,#5
	bra	.donez
.timetogoback
	a8
	s_set_alvar	B,x,al_sflags4,#1
	bra	.donez
.timetogoforward
	a8
	s_set_alvar	B,x,al_sflags4,#0
	
.donez
	rts
;-----------Collision------------
rexcol_strat				;collision strat
	s_start_strat
;	s_docoll		x,#framesperAP
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 2 hp
	pha
	s_jmp_alvareq	B,x,al_sbyte3,#2,.notransform2
	pla
	cmp	#6
	beq	.timetorevive
	bmi	.timetorevive
	bra	.notransform
.notransform2
	pla
.notransform
	sta.w	al_hp,x		;store it
	s_set_alsflag		x,hitflash	;flash head
	lda.w	al_hp,x
	beq	rexexp_strat
	bmi	rexexp_strat
	s_jmpto_strat	x
	s_end_strat
.timetorevive
	s_set_alsflag	x,nohitaffect
	s_jmp_alvareq	B,x,al_sbyte3,#1,.restore2
	s_set_alptrs	x,restore_strat,0,0
	s_jmpto_strat	x
	s_end_strat
.restore2
	s_set_alptrs	x,restoreagain_strat,0,0
	s_jmpto_strat	x
	s_end_strat
;--------EXPLOSION? OR RESURRECTION--------

rexexp_strat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide
	saymsgx2	137
	lda	#0
	sta.w	al_hp,x
	s_and_var	B,strat_valid,#~brflag		
	s_set_find	0
.findloop
	s_find_obj	y,x,#pilar3,.done
	s_remove_obj	y
	bra	.findloop
.done
	s_set_find	0
.findloop2
	s_find_obj	y,x,#svolcano,.done2
	s_remove_obj	y
	bra	.findloop2
.done2
	s_set_find	0
.findloop3
	s_find_obj	y,x,#fireball,.done3
	s_remove_obj	y
	bra	.findloop3
.done3
	s_set_find	0
.findloop4
	s_find_obj	y,x,#rex_f_l3,.done4
	s_remove_obj	y
	bra	.findloop4
.done4
	s_set_find	0
.findloop5
	s_find_obj	y,x,#rex_f_r3,.done5
	s_remove_obj	y
	bra	.findloop5
.done5
	s_set_expstrat	x,qbossexplode_istrat
	s_jmp		qbossexplode_istrat
;	s_set_alvar	B,x,al_sbyte1,#60
;	s_set_alvar	B,x,al_sbyte2,#0
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
;.no

;rexboss_expd
;	s_decbne_alvar	B,x,al_sbyte1,.noexp

;.noexp
;	s_rotpos_allchildren	x		;rotate all children with main body
;	s_jmp_alvareq	B,x,al_sbyte2,#0,.noflash
;	s_set_alvar		B,x,al_sbyte2,#0
;	s_set_alsflag	x,hitflash
;	s_end_strat
	
;	s_add_playerz	x
;.noflash
;	s_set_alvar		B,x,al_sbyte2,#1
;	s_clr_alsflag	x,hitflash
;	trigse	168
;	s_end_strat		
;-----------Fire----------------------------------------------------
rexfire_istrat
	s_start_strat
	jsl		moveobjtoend_l
	s_set_alsflag	x,colldisable
	s_init_anim	x,#0
	s_set_aldata	x,#hardHP,#4
	s_set_strat	x,.strat
	s_set_alvar	B,x,al_sbyte2,#50

.strat	s_start_strat
	s_jmp_notalsflag	x,sflag1,.nodie

	s_cmp_anim	x,#0
	s_beq	.nomore2

	s_add_anim	x,#-1,#16

	jmp	.move
.nodie	s_cmp_alvar	B,x,al_sbyte2,#20
	beq		.dobonfire
	s_cmp_alvar	B,x,al_sbyte2,#1
	bne		.nobonfire
.dobonfire
	jsr		fire_flame
.nobonfire

	s_beqdec_alvar	B,x,al_sbyte2,.knockitdown
	s_add_anim	x,#1,#10,.nomore
.nomore	s_add_alvar	B,x,al_ty,#-5
.move	s_add_playerz	x

	s_set_alvar	B,x,al_roty,#0
	s_set_alvar	B,x,al_rotz,#0
.end	s_end_strat
.knockitdown
	s_add_anim	x,#1,#20,.nomore2
	bra		.nomore
.nomore2
	s_set_objtobemother	y,x
	phx
	tyx
	jsl	random_l
	and	#128
	cmp	#96
	bmi	.pillars
	jsr	volcanostuff				;VOLCANO
.pillars
	jsr	makepillars					;PILLARS
.donespawning
	plx
	s_remove_obj	x
.novolcano
	s_end_strat
	
	
;---restore---
restore_strat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_set_bossmaxHP	x,al_hp					;set the max hp
	lda.w	al_hp,x
	cmp	#60
	bpl	.donerestoring
	clc
	adc	#2
	sta.w	al_hp,x
	s_add_playerz	x
	s_rotpos_allchildren	x		;rotate all children with main body
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_end_strat
.donerestoring
	s_set_alvar	B,x,al_sbyte3,#1
	saymsgx2	135
	s_clr_alsflag		x,nohitaffect
	s_set_expstrat	x,rexexp_strat
	s_set_collstrat	x,rexcol_strat
	s_set_strat	x,rexcore_strat
	s_end_strat

;---restore again---
restoreagain_strat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_set_bossmaxHP	x,al_hp					;set the max hp
	lda.w	al_hp,x
	cmp	#50
	bpl	.donerestoring
	clc
	adc	#2
	sta.w	al_hp,x
	s_add_playerz	x
	s_rotpos_allchildren	x		;rotate all children with main body
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_end_strat
.donerestoring
	s_set_alvar	B,x,al_sbyte3,#2
	saymsgx2	136
	s_clr_alsflag		x,nohitaffect
	s_set_expstrat	x,rexexp_strat
	s_set_collstrat	x,rexcol_strat
	s_set_strat	x,rexcore_strat
	s_end_strat
	
;-----------------BON FIAR-----------
fire_flame
	s_make_obj	#flame,.ng
	s_copy_pos	y,x
	s_set_alvar	W,y,al_worldy,#0
	s_set_strat	y,flame_istrat
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
	
flame_istrat
	s_start_strat
	s_set_alptrs	x,.strat,hitflash_istrat,explode_istrat
	s_set_alsflag	x,nohitaffect
	s_set_aldata	x,#hardHP,#hardAP
	s_set_coltab	x,#flame_c
	s_sprite_obj	x,#0
	s_set_alvar	B,x,al_speed,#120
	s_gen_3dvecs	x,al_roty,al_rotx,al_speed
.strat	s_start_strat
	s_make_obj	#flame,.ng
	s_copy_pos	y,x
	s_set_strat	y,.dummdumm_strat
	s_set_alsflag	y,colldisable
.ng
	s_add_vecs2pos	x
	s_cmp_alvar	B,x,al_sbyte1,#10
	beq		.rem4
	s_inc_alvar	B,x,al_sbyte1
	s_add_playerz	x
	s_end_strat
.rem4	s_remove_obj	x
	s_end_strat

.dummdumm_strat
	s_start_strat
	s_set_colltype	x,ENEMY1
	s_set_colltype	x,ENEMY2
	s_set_colltype	x,ENEMYWEAP
	s_set_coltab	x,#flame_c
	s_sprite_obj	x,#0
	s_cmp_alvar	B,x,al_sbyte1,#10
	beq		.rem5
	s_inc_alvar	B,x,al_sbyte1
	s_add_playerz	x
	s_end_strat
.rem5	s_remove_obj	x
	s_end_strat



;--------------PILLAR STUFF---------------

makepillars
.start
	s_jmp_random	.1,10				;xoxxxxx
	s_jmp_random	.2,10				;xxoxxxx
	s_jmp_random	.3,10				;xxxoxxx
	s_jmp_random	.4,10				;xxxxoxx
	s_jmp_random	.5,10				;xxxxxox
	bra	.start
.1
	jsr	makepilar1
	jsr	makepilar3
	jsr	makepilar4
	jsr	makepilar5
	jsr	makepilar6
	jsr	makepilar7
	jmp	.done
	
.2
	jsr	makepilar1
	jsr	makepilar2
	jsr	makepilar4
	jsr	makepilar5
	jsr	makepilar6
	jsr	makepilar7
	jmp	.done
	
.3
	jsr	makepilar1
	jsr	makepilar2
	jsr	makepilar3
	jsr	makepilar5
	jsr	makepilar6
	jsr	makepilar7
	jmp	.done
	
.4
	jsr	makepilar1
	jsr	makepilar2
	jsr	makepilar3
	jsr	makepilar4
	jsr	makepilar6
	jsr	makepilar7
	jmp	.done
	
.5
	jsr	makepilar1
	jsr	makepilar2
	jsr	makepilar3
	jsr	makepilar4
	jsr	makepilar5
	jsr	makepilar7
	jmp	.done
	
.done	
	rts

makepilar1
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#-540
.done
	rts
	
makepilar2
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#-360
.done
	rts
	
makepilar3
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#-180
.done
	rts
	
makepilar4
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#0
.done
	rts
	
makepilar5
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#180
.done
	rts
	
makepilar6
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#360
.done
	rts
	
makepilar7
	s_make_obj	#pilar3,.done
	s_set_strat	y,hardrandom_istrat
	s_set_colltype	x,ENEMY1
	s_copy_pos	y,x
	s_add_alvar	W,y,al_worldz,#3700
	s_set_alvar	W,y,al_worldy,#0
	s_set_alvar	W,y,al_worldx,#540
.done
	rts

;-------------------------------	
volcanostuff	
	s_make_obj	#svolcano,.novolcano
	s_copy_pos	y,x
	s_set_alvar	W,y,al_worldy,#0
	s_add_alvar	W,y,al_worldz,#2500
	s_set_strat	y,volcano_Istrat
.novolcano
	rts
	
	
	
;--------DONE REX-------------	
	
;---------------------------------------------
;--------------LOG----------------------------
;---------------------------------------------

log_istrat
	s_start_strat
	s_set_alptrs	x,log_strat,0,0
	s_set_aldata	x,#hardHP,#8
	s_set_colltype	x,enemy1
	s_set_colltype	x,enemy2
	s_add_playerz	x
	
log_strat
	s_start_strat
;	s_add_playerz	x

	s_sub_alvar	B,x,al_rotx,#5
	s_sub_alvar	B,x,al_worldz,#5
	s_end_strat
	
;---------------------------------------------
;--------------BOUNCING LOG----------------------------
;---------------------------------------------

bouncinglog_istrat
	s_start_strat
	s_set_alptrs	x,bouncinglog_strat,0,0
	s_set_aldata	x,#hardHP,#8
	s_set_colltype	x,enemy1
	s_set_colltype	x,enemy2
	s_add_playerz	x
	
bouncinglog_strat
	s_start_strat										;start strat
	s_jmp_alvareq	B,x,al_sbyte1,#1,.goup				;if SBYTE1 = 1, we are going up, so jump to .goup
	s_jmp_alvarmore	W,x,al_worldy,#-10,.starttogoup		;if WORLDY > -10, go to .starttogoup
	s_sub_alvar	B,x,al_rotx,#5							;rotate
	s_achase_alvar	W,x,al_worldy,#0,3					;gradually move log down to WORLDY 0
	s_sub_alvar	W,x,al_worldz,#5						;move towards player
	bra	.end											;end
.goup
	s_jmp_alvarless	W,x,al_worldy,#-190,.starttogodown	;if WORLDY < -190, go to .starttogodown
	s_sub_alvar	B,x,al_rotx,#5							;rotate
	s_achase_alvar	W,x,al_worldy,#-200,3				;gradually move log up to WORLDY -200
	s_sub_alvar	W,x,al_worldz,#5						;move towards player
	bra	.end											;end
.starttogodown
	s_set_alvar	B,x,al_sbyte1,#0						;set sbyte to 0
	s_achase_alvar	W,x,al_worldy,#0,3					;start moving log down
	s_add_alvar	W,x,al_worldy,#5						;move it down 5 units right now
	bra	.end
.starttogoup
	s_set_alvar	B,x,al_sbyte1,#1						;set sbyte to 1
	s_achase_alvar	W,x,al_worldy,#-200,3				;start moving log up
	s_sub_alvar	W,x,al_worldy,#5						;move log up 5 units right now

.end
	s_end_strat
	

;----------------------------------------
;----------------------------------------
;----------------------------------------
;		SKY BOSS	- DONE (AIR RAIDER)
;----------------------------------------
;----------------------------------------

;sbyte1:	0 - not spinning
;			1 - spinning

skybossrotspeed	=	7
shieldrotspeed	=	10

skyboss_Istrat
	s_start_strat
	s_set_alptrs	x,skyboss_strat,skybosscol_strat,skybossexp_strat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#90,#8				;hp + ap
	s_set_bossmaxHP	#90					;set the max hp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_roty,#deg180			;no rotation
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_set_alvar		W,x,al_sword1,#7
;	s_add_playerz	x
;	s_make_childobj	#protecc,#1,shieldrotate,enemy1
;	s_end_strat
	
skyboss_strat
	s_start_strat
;	jsl		moveobjtoend_l
	lda.l	al_hp,x
	lbeq	skybossexp_strat	;if hp = 0, explode
	lbmi	skybossexp_strat	;if hp < 0, explode
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targety2,al_worldz
	a16
	lda	targety2
	clc
	adc	#700
	sta	targety2
	a8	
	s_decbne_alvar	W,x,al_sword1,.noreset
	s_clr_alsflag	x,colldisable
.noreset

	s_jmp_alvarEQ	B,x,al_sbyte1,#1,.maybestop		;if its spinning, jump to section to consider stopping spinning
	s_jmp_notdelay	6,.donothing					;how fast to resume spinning (5 = 32 frames) (6 = 64 frames)
	s_set_alvar		B,x,al_sbyte1,#1				;start the spinning
	bra	.donothing
.maybestop
	s_jmp_notdelay	7,.donothing					;stop spinning every 128 frames
	s_set_alvar		B,x,al_sbyte1,#0				;set spinning to stop
	s_set_alvar		B,x,al_sbyte4,#30				;set a 25 frame countdown until firing special attack
;	s_make_childobj	#bolt,#1,boltcharge_istrat,enemy1
;	s_set_objtobechild	y,x,#1
;	s_sprite_obj		y,#0
;	s_copy_pos	y,x
;	s_set_alvar	B,y,al_sbyte1,#30		;timer until the charging bolt goes away
;	s_sub_alvar	W,y,al_worldz,#50
;	jsl		moveobjtoend_l		;move x to the lowest on-screen priority
.donothing
;do movement routines
	jsr	skybossrotate
	jsr	skybosslateralmovement
	jsr	skybossverticalmovement
	jsr	skybossZmovement
;do attack routines
	s_jmp_alvarEQ	B,x,al_sbyte1,#0,.nonormalshot
	s_jmp_notdelay	4,.nonormalshot
;fire 4 orbs in a cross pattern
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#20,#0	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_multiorb		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_add_anim		y,#1,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#-20,#0	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_multiorb		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_add_anim		y,#3,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#20,#0,#0	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_multiorb		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_add_anim		y,#5,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#-20,#0,#0	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_multiorb		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
.nonormalshot
	s_jmp_alvarNE	B,x,al_sbyte1,#0,.noskullshot			;only fire skullshot if centered and no shield
	s_jmp_alvareq	B,x,al_sbyte4,#1,.fire
	s_sub_alvar		B,x,al_sbyte4,#1
	s_jmp_notdelay	7,.noskullshot
	s_jmp_alvarless	B,x,al_sbyte4,#1,.set
	jmp	.noskullshot
.set
	s_set_alvar		B,x,al_sbyte4,#15
	jmp	.noskullshot

.fire	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_bolt		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#25	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_bolt		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#50	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_bolt		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player
	
	s_set_objtobeplayer	y			;set player to be object of target
	s_weapon_pos		#0,#0,#75	;no change to position
	s_weapon_rot		#0,#0		;no change to rotation
	s_weapon_rots2obj	y			;rotate towards player
	jsl				fire_bolt		;fire!
	s_set_colltype		y,ENEMYWEAP	;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player

	s_set_alvar		B,x,al_sbyte4,#0	
;	s_set_objtobechild	y,x,#1
;	s_remove_child	y,x
.noskullshot
	s_achase_alvar		W,x,al_worldz,targety2,4

	s_add_playerz	x
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_end_strat
	

	
	
	
;--------------------rotation
skybossrotate
	s_jmp_alvarEQ	B,x,al_sbyte1,#0,.chasecenter				;sbyte1 is 0, chase center
	s_jmp_alvarEQ	B,x,al_sbyte1,#1,.rotate					;sbyte1 is 1, rotate
.rotate
	s_add_alvar	B,x,al_roty,#skybossrotspeed					;rotation speed****************************
	s_achase_alvar	B,x,al_rotz,#0,3							;Z rotation 0 out
	bra	.donerotate												;done
.chasecenter
	s_achase_alvar	B,x,al_roty,#deg180,3							;chase deg180 rotation
	s_add_alvar	B,x,al_rotz,#skybossrotspeed						;Z axis rotation speed****************************

.donerotate														;done
	rts
	
	
;-----------------lateral movement
skybosslateralmovement
	s_jmp_alvarEQ	B,x,al_sbyte2,#0,.moveleft
	s_jmp_alvarEQ	B,x,al_sbyte2,#1,.moveright
	
.moveleft
	s_jmp_alvarLESS	W,x,al_worldx,#-500,.starttogoright
	s_sub_alvar		W,x,al_worldx,#10
	bra	.doner
.moveright
	s_jmp_alvarmore	W,x,al_worldx,#500,.starttogoleft
	s_add_alvar		W,x,al_worldx,#10
	bra	.doner
.starttogoright
	s_add_alvar		W,x,al_worldx,#20
	s_set_alvar		B,x,al_sbyte2,#1
	bra	.doner
.starttogoleft
	s_sub_alvar		W,x,al_worldx,#20
	s_set_alvar		B,x,al_sbyte2,#0
.doner
	rts

;-----------------vertical movement
skybossverticalmovement
	s_jmp_alvarEQ	B,x,al_sbyte3,#0,.moveup
	s_jmp_alvarEQ	B,x,al_sbyte3,#1,.movedown	
.moveup
	s_jmp_alvarLESS	W,x,al_worldy,#-500,.starttogoup
	s_sub_alvar		W,x,al_worldy,#5
	bra	.doner
.movedown
	s_jmp_alvarmore	W,x,al_worldy,#300,.starttogodown
	s_add_alvar		W,x,al_worldy,#5
	bra	.doner
.starttogoup
	s_add_alvar		W,x,al_worldy,#10
	s_set_alvar		B,x,al_sbyte3,#1
	bra	.doner
.starttogodown
	s_sub_alvar		W,x,al_worldy,#10
	s_set_alvar		B,x,al_sbyte3,#0


.doner
	rts




;------------------z movement
skybossZmovement	
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_add_var		W,targetx,#600
	s_achase_alvar	W,x,al_worldz,targetx,4
	rts
	
;-------------collision	
skybosscol_strat
	s_start_strat
;	s_set_objtobechild	y,x,#1
;	lda.w	al_roty,y
;	cmp	#deg45			;if the shield is less than 45 degrees
;	bmi	.nohurt
;	cmp	#deg315			;or more than 315 degrees, the shield is protecting the core, so rebound laser attacks
;	bpl	.nohurt
	s_test_hitflags	x,#HF2		;if the collision is at a collision spot marked with HITFLAG2, its on an outside part, so rebound lasers
	bne	.nohurt
	s_test_hitflags	x,#HF1		;if the collision box is HITFLAG1, do normal collision
	bne	.hurtbody
	bra	.donecol
.hurtbody
	s_set_alvar		W,x,al_sword1,#7
	s_docoll		x,#framesperAP
	s_set_alsflag		x,hitflash
	lda.w	al_hp,x
	sec
	sbc	#1
	sta.w	al_hp,x
	beq	skybossexp_strat	;if hp = 0, explode
	bmi	skybossexp_strat	;if hp < 0, explode
	s_set_alsflag	x,colldisable
	s_set_alvar		B,x,al_hitflags,#0
	bra	.donecol
.nohurt
	s_set_alvar		B,x,al_hitflags,#0
	s_jmp_alvarEQ	B,x,al_sbyte1,#0,.defnotreb
	s_jmp			defelasercol_Istrat		;deflect laser outwards if spinning
	bra	.donecol
.defnotreb
	s_jmp			rebelasercolall_Istrat		;rebound laser back at player if static
.donecol
	s_jmpto_strat	x		;jump to normal strat to continue movements and rotations
	s_end_strat

boltcharge_istrat
	s_start_strat
	s_set_objtobemother	y,x			;set mother to be Y
;	phx				;push x
;	tyx				;transfer y to x
;	jsl		moveobjtoend_l		;move x to the lowest on-screen priority
;	txy				;transfer x back to y
;	plx				;pull x back out
	s_copy_pos	x,y					;copy position of Y into X (the bolt)
	s_sub_alvar	W,x,al_worldz,#50	;back the bolt up a bit to charge
	s_add_playerz	x				;add Z distance traveled to bolt
	s_decbne_alvar	B,x,al_sbyte1,.noremove
	s_remove_obj	x
.noremove
	s_end_strat

skybossexp_strat
	s_start_strat
;	lda	#0
;	sta.w	al_hp,x
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide

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
;-----------------------------------------------------------	
	
shieldrotate
	s_start_strat
	s_set_objtobemother	y,x
	s_copy_pos	x,y
	s_copy_rots	x,y
	s_set_alvar		B,x,al_roty,#0
	s_sub_alvar		W,x,al_worldz,#100
	s_set_alptrs	x,shieldrotate_strat,shieldrotate_col,0
	s_set_colltype	x,ENEMY1
	s_set_colltype	x,ENEMY2
	s_set_colltype	x,ENEMYWEAP	

	s_end_strat
	
shieldrotate_strat
	s_start_strat
	s_set_objtobemother	y,x
	s_jmp_alvarmore	B,x,al_roty,#deg90,.nothing
	s_jmp_alvarless	B,x,al_roty,#deg270,.nothing
	phx
	tyx
	jsl		moveobjtoend_l
	txy
	plx
	bra	.done
.nothing
	jsl		moveobjtoend_l	
.done
	lda.w	al_sbyte1,y
	beq	.goback
	s_sub_alvar		B,x,al_roty,#shieldrotspeed
	bra	.done2
	
.goback
	s_achase_alvar	B,x,al_roty,#deg180,3

.done2
	s_copy_pos	x,y
	s_sub_alvar		W,x,al_worldz,#100
	s_add_playerz	x
	s_end_strat
	
shieldrotate_col
	s_start_strat
	s_set_alvar		B,x,al_hitflags,#0
	s_jmp			rebelasercolall_Istrat	
	s_jmpto_strat	x		;jump to normal strat to continue movements and rotations
	s_end_strat
	
	
	
;-------------------------HOVER BOSS-------------------------------------
;-------------------------HOVER BOSS-------------------------------------
;-------------------------HOVER BOSS-------------------------------------
;-------------------------HOVER BOSS-------------------------------------

;	al_sbyte4	- invincibility timer


hoverboss_istrat			;set initial data for the boss (only runs once)
	s_start_strat
	s_set_alptrs	x,hoverboss_strat,hoverbosscol_strat,hoverbossexp_strat	;hoverbossexp_strat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
;	s_set_alvar			B,x,al_sbyte4,#5		;delay between getting hit
	s_set_alvar			B,x,al_sbyte1,#60		;timer for state 0
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#120,#16				;hp + ap
	s_set_bossmaxHP	#120					;set the max hp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
;	s_make_childobj	#protecc,#1,shieldrotate,enemy1
	s_set_alsflag		x,colldisable
	s_end_strat






hoverboss_strat			;main strat loop
	s_start_strat
;collision resuming stuff
;	s_decbne_alvar		B,x,al_sbyte4,.noresethit		;check for a delay between getting hit, if there is one, decrease it and jump over this
;	s_clr_alsflag		x,colldisable					;otherwise, clear the collision disabled flag
;.noresethit
;main strat	-	going to use STATES for this boss
	lda.l	al_hp,x
	lbeq	hoverbossexp_strat
	lbmi	hoverbossexp_strat
	s_jmp_ifnotstate	x,0,.not0			;coming down from the sky, come down and hover for a few seconds
	s_jmp_alvarMORE	W,x,al_worldy,#-200,.noadd
	s_add_alvar		W,x,al_worldy,#10
.noadd
	s_face_player	x,2,0
	s_decbne_alvar	B,x,al_sbyte1,.not0
	s_set_alvar	B,x,al_sbyte1,#50		;set next state's timer
	s_set_state		x,#1				;set next state
	s_clr_alsflag		x,colldisable
;------------------------------------------------------------
.not0
	s_jmp_ifnotstate	x,1,.not1			;fly towards the top right, facing/firing at the player
	s_face_player	x,2,0					;face player
	s_jmp_alvarless	B,x,al_sbyte1,#10,.nofire		;don't fire if less than 10 frames left on timer
	s_achase_alvar	W,x,al_worldx,#350,3			;chase x(400)
	s_achase_alvar	W,x,al_worldy,#-400,3			;chase y(-400)
	s_jmp_notdelay	4,.nofire			;fire every 8 frames
	s_set_objtobeplayer	y				;set player to be object of target
	s_weapon_pos		#0,#20,#0		;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_plasma			;fire!
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_add_anim		y,#1,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire	
	s_decbne_alvar	B,x,al_sbyte1,.not1
	s_set_alvar	B,x,al_sbyte1,#50		;set next state's timer
	s_set_state		x,#2				;set next state
;------------------------------------------------------------
.not1									;Fly back into the distance and to the bottom left
	s_jmp_ifnotstate	x,2,.not2		;if not state 2, don't do any of this
	s_face_player	x,2,0				;face player
	s_jmp_alvarless	B,x,al_sbyte1,#10,.nofire2
	s_achase_alvar	W,x,al_worldx,#-400,3
	s_achase_alvar	W,x,al_worldy,#0,3
	s_jmp_notdelay	4,.nofire2			;fire every 8 frames
	s_set_objtobeplayer	y				;set player to be object of target
	s_weapon_pos		#0,#20,#0		;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_plasma			;fire!
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_add_anim		y,#1,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire2	
	s_decbne_alvar	B,x,al_sbyte1,.not2
	s_set_alvar	B,x,al_sbyte1,#60		;set next state's timer
	s_set_state		x,#3

;------------------------------------------------------------
.not2									;fly towards the center of the screen, straight at the player past the camera
	s_jmp_ifnotstate	x,3,.not3
	s_face_player	x,2,0				;face player
	s_achase_alvar	W,x,al_worldx,#0,3
	s_achase_alvar	W,x,al_worldy,#0,3
	s_sub_alvar		W,x,al_worldz,#40			
	s_jmp_alvarless	B,x,al_sbyte1,#10,.nofire3
	s_jmp_notdelay	2,.nofire3			;fire every 8 frames
	s_set_objtobeplayer	y				;set player to be object of target
	s_weapon_pos		#0,#20,#0		;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_slowelaser			;fire!
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_add_anim		y,#1,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire3	
	s_decbne_alvar	B,x,al_sbyte1,.not3
	s_set_alvar	B,x,al_sbyte1,#70		;set next state's timer
	s_set_state		x,#4

;------------------------------------------------------------
.not3									;turn around and go back towards the distance, center x
	s_jmp_ifnotstate	x,4,.not4
	s_face_player	x,2,0
	s_achase_alvar	W,x,al_worldx,#-350,3
	s_achase_alvar	W,x,al_worldy,#0,3
	s_add_alvar		W,x,al_worldz,#40			
	s_jmp_alvarless	B,x,al_sbyte1,#30,.nofire4
	s_jmp_notdelay	4,.nofire4			;fire every 8 frames
	s_set_objtobeplayer	y				;set player to be object of target
	s_weapon_pos		#0,#20,#0		;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_orb			;fire!
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_add_anim		y,#1,#6
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player	
.nofire4
	s_decbne_alvar	B,x,al_sbyte1,.not4
	s_set_alvar	B,x,al_sbyte1,#30
	s_set_state		x,#10

;------------------------------------------------------------
.not4									;fly up and away
	s_jmp_ifnotstate	x,5,.not5
	s_sub_alvar	W,x,al_worldy,#30
	s_decbne_alvar	B,x,al_sbyte1,.not5
	s_set_state		x,#6
	s_set_alsflag	x,invisible			;go invisible
	s_set_alvar		B,x,al_sbyte1,#120
	s_set_alvar		W,x,al_worldx,#0
	s_set_alvar		W,x,al_worldy,#-700

	lda	numofenemies
	cmp	#6
	bpl	.noships
	jsr	spawnships
	inc	numofenemies
	inc	numofenemies
.noships

;------------------------------------------------------------
.not5									;time to wait
	s_jmp_ifnotstate	x,6,.not6
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx3,al_worldz
	a16
	lda	targetx3
	clc
	adc	#800
	sta	targetx3
	a8
	s_achase_alvar	W,x,al_worldz,targetx3,1
	s_decbne_alvar	B,x,al_sbyte1,.not6
	s_set_state		x,#7
	s_set_alvar		B,x,al_sbyte1,#40

;------------------------------------------------------------
.not6									;time to restart after waiting again
	s_jmp_ifnotstate	x,7,.not7
	
	s_decbne_alvar	B,x,al_sbyte1,.not7
	s_clr_alsflag	x,invisible
	s_set_state		x,#0
	s_set_alvar		B,x,al_sbyte1,#60

.not7
;------------------------------------------
	s_jmp_ifnotstate	x,10,.not10		;wait
	
	s_decbne_alvar	B,x,al_sbyte1,.not10
	s_set_alvar	B,x,al_sbyte1,#50
	s_set_state		x,#5
		
	
.not10

;end stuff
	s_add_playerz	x			;add distance of z traveled by player to this boss
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_end_strat
	
	
	
	
	
	
	
	
hoverbosscol_strat		;collision
	s_start_strat
;	s_set_alvar			B,x,al_sbyte4,#5		;delay between getting hit
	s_set_objtobealvar	y,x,al_collobjptr	;set collision object to Y
	cpy	playpt			;compare it to the player's object
	beq	.player			;if its the player, don't take any damage
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#1				;subtract 3 hp
	sta.w	al_hp,x		;store it
	bmi	hoverbossexp_strat
	beq	hoverbossexp_strat
	s_set_alsflag		x,hitflash	;flash head
;	s_set_alsflag		x,colldisable
.player
	s_jmpto_strat	x
	s_end_strat


hoverbossexp_strat
	s_start_strat
	s_set_alsflag		x,nohitaffect
	s_clr_alsflag	x,collide

	saymsgx2	105
	lda	#0
	sta.w	al_hp,x
	s_and_var	B,strat_valid,#~brflag		
	s_set_find	0
.findloop
	s_find_obj	y,x,#enemy5v,.done
	s_kill_obj	y
	bra	.findloop
.done
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

	s_set_expstrat	x,qbossexplode_istrat
;	s_set_alvar	B,x,al_sbyte1,#60
;	s_set_alvar	B,x,al_sbyte2,#0
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	sta	viewtypebackup
;	ora	#viewtype_toobj
;	sta	viewtype
;.no
	s_jmp	qbossexplode_istrat
	
	
spawnships
	s_make_obj		#enemy5v,.badobj
	s_copy_pos		y,x
	s_set_alvar		W,y,al_worldx,#100
	s_set_alvar		W,x,al_worldy,#-700
	s_add_playerz	y
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	

	s_set_strat		y,bossship1_istrat		;full custom code

.badobj	

	s_make_obj		#enemy5v,.badobj2
	s_copy_pos		y,x
	s_set_alvar		W,y,al_worldx,#-100
	s_set_alvar		W,x,al_worldy,#-700
	s_add_playerz	y
	s_set_colltype		y,ENEMY2
	s_set_colltype		y,ENEMYWEAP	

	s_set_strat		y,bossship2_istrat

.badobj2	s_rts


bossship1_istrat
	s_start_strat
	s_set_alptrs	x,bossship1_strat,hitflash_Istrat,bsexplode_Istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_aldata	x,#24,#10				;hp + ap
	s_set_alvar		B,x,al_sbyte1,#30
					;continue the strat

bossship1_strat
	s_start_strat

	s_jmp_ifnotstate	x,0,.not0
	s_set_alvar		B,x,al_roty,#-deg90
	s_add_alvar		W,x,al_worldy,#20
	s_decbne_alvar	B,x,al_sbyte1,.not0		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#1
	s_set_alvar		B,x,al_sbyte1,#40		;set next state timer to 30
	
.not0
	s_jmp_ifnotstate	x,1,.not1
	s_set_state		x,0
	s_set_strat		x,bossship3_Istrat
	s_jmpto_strat		x
	s_end_strat
	
	s_add_alvar		W,x,al_worldx,#22
	s_sub_alvar		W,x,al_worldy,#7
	s_face_player		x,2,0
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
	s_sub_alvar		W,x,al_worldx,#10
	s_add_alvar		W,x,al_worldy,#2
	s_face_player		x,2,0
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
	s_add_alvar		W,x,al_worldx,#10
	s_sub_alvar		W,x,al_worldy,#2
	s_face_player		x,2,0
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
	s_achase_alvar		W,x,al_worldy,#-400,3
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldz
	a16
	lda	targetx2
	clc
	adc	#400
	sta	targetx2
	a8
	s_achase_alvar		W,x,al_worldz,targetx2,3

	s_face_player		x,2,0
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
	s_set_state		x,#1
	s_set_alvar		B,x,al_sbyte1,#90
	

.not4
	s_add_playerz	x
	s_end_strat





bossship2_istrat
	s_start_strat
	s_set_alptrs	x,bossship2_strat,hitflash_Istrat,bsexplode_Istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_aldata	x,#24,#10				;hp + ap	
	s_set_alvar		B,x,al_sbyte1,#30
					;continue the strat

bossship2_strat
	s_start_strat
	
	s_jmp_ifnotstate	x,0,.not0
	s_set_alvar		B,x,al_roty,#-deg90
	s_add_alvar		W,x,al_worldy,#20
	s_decbne_alvar	B,x,al_sbyte1,.not0		;decrease sbyte1 by 1, and skip this next part until sbyte1 is 0
	s_set_state		x,#1
	s_set_alvar		B,x,al_sbyte1,#40		;set next state timer to 30
	
.not0
	s_jmp_ifnotstate	x,1,.not1
	s_set_state		x,0
	s_set_strat		x,bossship4_Istrat
	s_jmpto_strat		x
	s_end_strat
	
	
	
	s_jmp_ifnotstate	x,1,.not1
	s_sub_alvar		W,x,al_worldx,#25
	s_add_alvar		W,x,al_worldy,#2
	s_face_player		x,2,0
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
	s_add_alvar		W,x,al_worldx,#10
	s_add_alvar		W,x,al_worldy,#5
	s_face_player		x,2,0
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
	s_sub_alvar		W,x,al_worldx,#20
	s_sub_alvar		W,x,al_worldy,#10
	s_face_player		x,2,0
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
	s_achase_alvar		W,x,al_worldy,#-400,3
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldz
	a16
	lda	targetx
	clc
	adc	#400
	sta	targetx
	a8
	s_achase_alvar		W,x,al_worldz,targetx2,3

	s_face_player		x,2,0
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
	s_set_state		x,#1
	s_set_alvar		B,x,al_sbyte1,#40
	

.not4
	s_add_playerz	x
	
	s_end_strat
	
	
fire_orb3
	s_make_obj		#multiorb,.badobj
	s_sprite_obj		y,#0
	s_set_aldata		y,#1,#8
	s_set_alptrs		y,vortex1_Istrat,weapcollide_Istrat,remove_Istrat
	s_set_speed		y,#40
	s_set_lifecnt		y,#55
	s_set_colltype		y,enemyweap
	s_set_alsflag		y,relexplode
;	s_setnoremove_behind	y
	jsl			gen_weapon_l
	jsl			enemybattrysound_l
.badobj	rtl
;*****************************************************************************

bsexplode_istrat
	dec	numofenemies
	jml	explode_istrat
	
	
	
	
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------BALL BOSS---------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;----------------------------------------------------------------------------

ballboss_istrat			;set initial data for the boss (only runs once)
	s_start_strat
	s_set_alptrs	x,ballboss_strat,ballboss_col,ballboss_exp	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_or_var	B,strat_valid,#brflag		;disable barrel roll continuance
	s_set_aldata	x,#100,#12				;hp + ap
	s_set_bossmaxHP	#100					;set the max hp
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_add_playerz	x
;	s_make_childobj	#protecc,#1,shieldrotate,enemy1
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_set_alsflag	x,collide

ballboss_strat
	s_start_strat
	lda.l	al_hp,x
	lbeq	ballboss_exp
	lbmi	ballboss_exp
	s_set_objtobeplayer	y			;player is y

;-----------------------------------------		state 0 - after spawning, move closer to player until 1200 units waay

	s_jmp_ifnotstate	x,0,.not0
	s_set_alsflag	x,nohitaffect
	s_sub_alvar			W,x,al_worldz,#50		;move closer to player
	s_jmp_Zdistless		x,y,#1200,.changestate	;when closer than 1200 units, change state
	bra	.not0
.changestate
	s_set_alvar			B,x,al_sbyte1,#30		;wait 30 frames in next state
	s_next_state		x
.not0

;------------------------------------------		state 1 - wait for 30 frames and do nothing

	s_jmp_ifnotstate	x,1,.not1
	s_decbne_alvar		B,x,al_sbyte1,.not1		;jump to .not1 until sbyte1 is 0
	s_set_alvar			B,x,al_sbyte1,#30		;wait 30 frames in next state
	s_set_alvar			W,x,al_shape,#ninja_2	;change to animated model ninja_2
	s_init_anim			x,#0				;start at frame 0
	s_next_state		x
.not1

;------------------------------------------		state 2 - uncurl the ball

	s_jmp_ifnotstate	x,2,.not2
	s_cmp_alvar			W,x,al_shape,#ninja_1		;if its already in ninja_1 shape, its done with its animation, so skip this part
	beq	.nochange
	s_cmp_anim			x,#15						;if its at animation frame 15, stop and change to ninja_1
	beq	.outshape
	s_add_anim			x,#1,#16					;otherwise, add 1 frame of animation
.nochange
	s_decbne_alvar		B,x,al_sbyte1,.not2			;subtract the sbyte1 counter and go to .not2 until sbyte1 is 0
	s_set_alvar			B,x,al_sbyte1,#40			;40 frame timer for use in state 3
	s_next_state	x								;go to next state
	bra	.not2
.outshape
	s_set_alvar			W,x,al_shape,#ninja_1			;changes to ninja_1, a static boss model
	s_clr_alsflag	x,nohitaffect
.not2

;------------------------------------------		State 3 - stick and move, kid!

	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		B,x,al_rotz,#0,3
	s_face_player		x,2,0						;face the player like a creep
	s_jmp_notdelay		5,.nofire1					;every 32 frames, fire a shot
	s_weapon_pos		#-100,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_skullshot		;fire! (y gets replaced with this object)
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player (playpt is the player pointer)
	s_weapon_pos		#100,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_skullshot		;fire! (y gets replaced with this object)
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player (playpt is the player pointer)


.nofire1
	s_add_alvar		W,x,al_worldz,#10	;move into the distance a little bit (10*40 frames = 400 units)
	s_add_alvar		W,x,al_worldx,#25	;move to the right (25*40 frames = 1000 units)
	s_decbne_alvar	B,x,al_sbyte1,.not3
	s_set_alvar		B,x,al_sbyte1,#60	;60 frame timer for state 4
	s_next_state	x
.not3

;------------------------------------------		State 4 - fire, hide, move

	s_jmp_ifnotstate	x,4,.not4
	s_cmp_alvar			W,x,al_shape,#ninja_2
	beq	.nofire2
	s_cmp_alvar			W,x,al_shape,#ninja_0
	beq	.nofire2
;	s_jmp_notdelay		5,.nofire2
;	s_weapon_pos		#0,#0,#0	;no change to position
;	s_weapon_rot		#0,#0			;no change to rotation
;	s_weapon_rots2obj	y				;rotate towards player
;	jsl				fire_skullshot		;fire! (y gets replaced with this object)
;	s_set_colltype		y,ENEMYWEAP		;set collision type
;	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player (playpt is the player pointer)	
	s_set_alvar			W,x,al_shape,#ninja_2
	s_init_anim			x,#15
.nofire2
	s_cmp_alvar			W,x,al_shape,#ninja_0
	beq	.ninja0
	s_cmp_anim			x,#1
	beq	.turntoninja0
	s_add_anim			x,#-1,#16
	bra	.ninja0
.turntoninja0
	s_set_alvar			W,x,al_shape,#ninja_0
	s_set_alsflag	x,nohitaffect
.ninja0
	s_sub_alvar			W,x,al_worldx,#25		;(25*60=1500)				;this routine needs to be made into a crazy bouncing ball
	s_sub_alvar			W,x,al_worldy,#10		;(10*60=600)					;Thats all I can mentally do right now thanks for watching <3
	s_decbne_alvar	B,x,al_sbyte1,.not4
	s_set_alvar		B,x,al_sbyte1,#80
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldx
	s_copy_alvar2var	W,y,targety2,al_worldy
	s_next_state	x
.not4

;-------------------------------------------	State 5 - fly towards player and bounce back a couple of times
												;sbyte4 used to tell if it needs to go forwards or backwards
	s_jmp_ifnotstate	x,5,.not5
	s_achase_alvar		B,x,al_roty,#deg180,3
	s_achase_alvar		W,x,al_worldx,targetx2,2
	s_achase_alvar		W,x,al_worldy,targety2,2

	s_jmp_alvareq		B,x,al_sbyte4,#1,.goback
	s_add_alvar			B,x,al_rotx,#10
	s_sub_alvar				W,x,al_worldz,#75
	a16
	lda.w				al_worldz,x
	sec
	sbc.w				al_worldz,y		;subtract players z
	bmi	.change
;	s_jmp_zdistless		x,y,#110,.change
	a8
	bra	.donemovement

.goback
	s_sub_alvar			B,x,al_rotx,#10
	s_add_alvar			W,x,al_worldz,#100
	s_jmp_zdistmore		x,y,#1200,.change2
	bra	.donemovement
	
.change
	a8
	s_set_alvar		B,x,al_sbyte4,#1
	s_add_alvar			W,x,al_worldz,#100
	bra	.donemovement

.change2
	s_set_alvar		B,x,al_sbyte4,#0
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx2,al_worldx
	s_copy_alvar2var	W,y,targety2,al_worldy
	s_sub_alvar			W,x,al_worldz,#100
.donemovement
	s_decbne_alvar	B,x,al_sbyte1,.not5
	s_set_alvar		B,x,al_sbyte1,#40
	s_set_alvar		B,x,al_sbyte4,#0
	s_set_alvar		B,x,al_rotx,#0
	s_set_alvar			W,x,al_shape,#ninja_2	;change to animated model ninja_2
	s_clr_alsflag	x,nohitaffect
	s_init_anim			x,#0				;start at frame 0
	s_next_state	x


.not5
;------------------------------------------		State 6 - Open up, lean back and fire

	s_jmp_ifnotstate	x,6,.not6
	s_face_player		x,2,0						;face the player like a creep
;	s_add_alvar			B,x,al_rotz,#15
	s_cmp_alvar			W,x,al_shape,#ninja_1		;if its already in ninja_1 shape, its done with its animation, so skip this part
	beq	.nochange2
	s_cmp_anim			x,#15						;if its at animation frame 15, stop and change to ninja_1
	beq	.outshape2
	s_add_anim			x,#1,#16					;otherwise, add 1 frame of animation
	jmp	.nochange3
.outshape2
	s_set_alvar			W,x,al_shape,#ninja_1			;changes to ninja_1, a static boss model
.nochange2
	s_achase_alvar		B,x,al_rotx,#-deg135,3
	s_jmp_notdelay		3,.nofire3					;every 16 frames, fire a shot
	s_weapon_pos		#-60,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_orb		;fire! (y gets replaced with this object)
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player (playpt is the player pointer)
	s_weapon_pos		#60,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	jsl				fire_orb		;fire! (y gets replaced with this object)
	s_set_colltype		y,ENEMYWEAP		;set collision type
	s_set_alvar		W,y,al_ptr,playpt	;set the object target to player (playpt is the player pointer)

.nofire3
.nochange3
	s_jmp_zdistmore		x,y,#1200,.noadd
	s_add_alvar		W,x,al_worldz,#100
;	bra	.noadd
.noadd
	s_achase_alvar		W,x,al_worldy,#-300,4
	s_achase_alvar		W,x,al_worldx,#400,4






	s_decbne_alvar		B,x,al_sbyte1,.not6
	s_set_state			X,#3
	s_set_alvar		B,x,al_sbyte1,#40


.not6
;------------------------------------

;done with states here	
	s_add_bossHP		x,al_hp		;update HP on hp bar
	s_add_playerz	x	
	s_end_strat


ballboss_col
	s_start_strat
;	s_set_alvar			B,x,al_sbyte4,#5		;delay between getting hit
	s_jmp_alsflag	x,nohitaffect,.player
	trigse		168
	lda.w	al_hp,x		;load the hp
	sec					;clear carry flag
	sbc	#2				;subtract 2 hp
	bmi	ballboss_exp
	beq	ballboss_exp
	sta.w	al_hp,x		;store it
	s_set_alsflag		x,hitflash	;flash head
;	s_set_alsflag		x,colldisable
.player
	s_jmpto_strat	x
	s_end_strat


ballboss_exp
	s_start_strat
	lda	#0
	sta.w	al_hp,x
	s_and_var	B,strat_valid,#~brflag		
;	s_set_expstrat	x,qbossexplode_istrat
	s_set_alvar	B,x,al_sbyte1,#60
;	s_set_alvar	B,x,al_sbyte2,#0
;	a8
;	stx	viewtoobj ;<- magic
;	lda	viewtype
;	ora	#viewtype_toobj
;	sta	viewtype
.no

ballboss_expd
;	s_set_objtobeplayer	y
;	s_set_alsflag		y,nohitaffect
;	s_set_alsflag		y,colldisable
;	s_clr_alsflag	y,collide
;	s_clr_alsflag	y,colldisable
;	s_decbne_alvar	B,x,al_sbyte1,.noexp
;	a8
	s_jmp			qbossexplode_istrat

;	jsl	clearmap_l
;	ldy	playpt
;	sty	viewtoobj ;<- magic
;	lda	viewtype
;	and	#viewtype_toobj
;	sta	viewtype

;.noexp
;	s_jmp_alvareq	B,x,al_sbyte2,#0,.noflash
;	s_set_alvar		B,x,al_sbyte2,#0
;	s_set_alsflag	x,hitflash
;	s_end_strat
	
;	s_add_playerz	x
;.noflash
;	s_set_alvar		B,x,al_sbyte2,#1
;	s_clr_alsflag	x,hitflash
;	trigse	168
;	s_end_strat	






fallingmeteor_istrat
	s_start_strat
	s_set_alptrs	x,fallingmeteor_strat,hitflash_Istrat,bigexplode_istrat	;looping strat, collision strat, explosion strat
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_aldata	x,#20,#15				;hp + ap

fallingmeteor_strat
	s_start_strat
	s_sub_alvar		B,x,al_rotx,#6
	s_sub_alvar		W,x,al_worldz,#50
	s_add_alvar		W,x,al_worldy,#20
	s_add_playerz		x
	s_jmp	missboundchkexp
	s_end_strat








;------------------fifth PLAYER

fifthplayer_Istrat
	s_start_strat
	s_set_alptrs	x,fifthplayer_strat,playerfivecol_Istrat,playerfivedead_Istrat
	s_set_aldata	x,#100,#friendAP
	s_set_colltype	x,friend
;	s_set_colltype	x,laser

	s_setnoremove_behind	x
	s_set_alsflag	x,shadow
	s_set_alsflag		x,playerobj
	s_set_objtobeplayer	y
	s_copy_pos		x,y
	s_add_alvar		W,x,al_worldy,#150
	s_add_alvar		W,x,al_worldx,#50
	s_end_strat
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fifthplayer_strat
	s_start_strat
	a8
	lda	numplayers
	cmp	#1
	bne	.nofuckery
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldx
	s_copy_alvar2var	W,y,targety,al_worldy
	s_add_var		W,targety,#150
	s_add_var		W,targetx,#50
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
	lbeq	nomorep5
	stz	pfivedead
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
.ok2	sta.l	m_damagefive


	
;~~~~~~~~~~~~~~~Follow P1 in cutscene~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	lda	inascene
	beq	.notincutscene
	s_achase_alvar2alvar	W,x,al_worldx,y,al_worldx,3
	s_achase_alvar2alvar	W,x,al_worldy,y,al_worldy,3
;	s_achase_alvar2alvar	B,x,al_rotx,y,al_rotx,3
;	s_achase_alvar2alvar	B,x,al_roty,y,al_roty,3
	jmp	fiveplayerkill


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
	lda	currxhair5
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
	s_set_strat	y,test5_istrat
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


	s_jmpNOT_varAND		B,pfiveshipflags2,#ptwosf2_wireship,.notwire
	s_jmp_varlesseq		B,pfivenumhits,#3-1,.iswire
	
	s_beqdec_var		B,wirefiveendflash,.backtonorm
	s_jmp_varAND		B,wirefiveendflash,#3,.wire
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
	s_and_var		B,pfiveshipflags2,#~ptwosf2_wireship
.iswire    
	s_set_var		B,wirefiveendflash,#50
.notwire    


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_jmpNOT_varAND		B,pfiveshipflags2,#ptwosf2_wireship,.nwire
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
	s_jmp_varNOTZERO	B,playerfive_rollZvel,.nroll

	s_beqdec_var		B,playerfive_rolldelay,.lragain
	s_jmp_anyLR5keyup	.nroll
	s_jmp_anylr5keydown	.nroll,last
	s_set_var		B,playerfive_rollZvel,#-32	
	s_set_var		B,playerfive_rollZoff,#0
	s_jmp_keyup		left5,.isright
	s_set_var		B,playerfive_rollZvel,#32	
	s_set_var		B,playerfive_rollZoff,#0
.isright
.lragain
	s_jmp_anyLR5keyup	.nroll
	s_set_var		B,playerfive_rolldelay,#3
.nroll
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	s_and_var		B,keyflags5,#~kf_lrkeydown
	s_jmp_keyup		left5,.nlk
	s_or_var		B,keyflags5,#kf_lrkeydown
;	s_jmp_lastkeydown	left3,.nrk2
;	s_or_var		B,keyflags3,#kf_lkeydown
	s_brl			.nrk2
.nlk
	s_jmp_keyup		right5,.nrk2
	s_and_var		B,keyflags5,#~kf_lkeydown
.nrk2

labelit1xtc
	s_jmp_keyup		right5,.nrk
	s_or_var		B,keyflags5,#kf_lrkeydown
;	s_jmp_lastkeydown	right3,.nlk2
	s_and_var		B,keyflags5,#~kf_lkeydown
	s_brl			.nlk2	 
.nrk
	s_jmp_keyup		left5,.nlk2
	s_or_var		B,keyflags5,#kf_lkeydown
.nlk2
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_jmpNOT_varAND		B,keyflags5,#kf_lrkeydown,.nhtr
	s_jmpNOT_varAND		B,keyflags5,#kf_lkeydown,.nhtl
;	s_jmp_keyup		right2,.noright						;Right Trig
	s_add_alvar		B,x,al_rotz,#deg45/3
	s_cmp_alvar		B,x,al_rotz,#deg90
	s_bmi			.nhptc
	s_set_alvar		B,x,al_rotz,#deg90
	s_jmp			.nhptc
.nhtl
	s_jmp_keyup		right5,.nhtr
.drt	s_sub_alvar		B,x,al_rotz,#deg45/3
	s_cmp_alvar		B,x,al_rotz,#-deg90
	s_bpl			.nhptc
	s_set_alvar		B,x,al_rotz,#-deg90
	s_jmp			.nhptc
.nhtr


	s_achase_alvar		B,x,al_rotz,#0,3
.nhptc
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_varNOTZERO	B,playerfive_rollZvel,.zroll
	s_achase_var		B,playerfive_rollZoff,#0,3
	s_brl			.zrcont
.zroll
	s_add_vars		B,playerfive_rollZoff,playerfive_rollZvel
.noxtrabr
	s_jmp_varpl		B,playerfive_rollZvel,.zrispl
	s_add_var		B,playerfive_rollZvel,#2
	s_bra			.zrcont
.zrispl       	
	s_sub_var		B,playerfive_rollZvel,#2
.zrcont
	s_add_alvar		B,x,al_rotz,playerfive_rollZoff
	

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jright5,.eplrc						;
														;
	s_sub_alvar		W,x,al_worldx,#7					;	right
	s_Achase_alvar	B,x,al_roty,#-deg22,2				;


.eplrc													;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jleft5,.eprrc						;
														;
	s_add_alvar		W,x,al_worldx,#7					;
	s_Achase_alvar	B,x,al_roty,#deg22,2				;	left
															
.eprrc		

	s_jmp_keydown	jleft5,.nfno
	s_jmp_keydown	jright5,.nfno						;	center chase
	s_achase_alvar		B,x,al_roty,#0,3
.nfno										
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_keyup		jup5,.noup								;up
	s_add_alvar		W,x,al_worldy,#7						;
	s_Achase_alvar	B,x,al_rotx,#deg22,3
.noup
	s_jmp_keyup		jdown5,.nodown							;down
	s_sub_alvar		W,x,al_worldy,#7						;
	s_Achase_alvar	B,x,al_rotx,#-deg22,3

.nodown

	s_jmp_keydown	jdown5,.nfup
	s_jmp_keydown	jup5,.nfup
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
	s_set_var2vartab	B,B,B,playerfive_Zrotfloat,playerfive_Zrotfloatptr,twopZrotfloattab
.vcont
	s_add_alvar		B,x,al_rotz,playerfive_Zrotfloat
	s_add_var		B,playerfive_Zrotfloatptr,#1
	s_jmp_varNE		B,playerfive_Zrotfloatptr,#twopZrotfloattab_len,.pfzptrok
	s_set_var		B,playerfive_Zrotfloatptr,#0
.pfzptrok
.nwob

	s_limit_alvar		B,x,al_speed,minPspeed,maxPspeed
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.goaheadandfire
	s_decbne_var		B,firedelayfive,.noshoot
;	s_set_var		B,firedelaytwo,#5	

	lda	weaponnumberpfive
	cmp	#99
	beq .slow
	cmp	#9
	beq	.gofast
	cmp	#2
	bpl	.slower
	bra	.gofast
.slow
	s_set_var		B,firedelayfive,#7
	bra			.faster
.gofast
	s_set_var		B,firedelayfive,#6
	bra			.faster
.slower
	s_set_var		B,firedelayfive,#6
.faster	
	a8
	lda	scopemode
	beq	.noscopeshoot
	lda	scope_held+1
	and	#$80
	bne	.skipy
.noscopeshoot
	s_jmp_keyup		y5,.shootdone
.skipy
;	s_jmp_lastkeydown	y2,.shootdone	;shoot once
	lda	weaponnumberpfive
	sta	weaponnumber
	jsl	dofireplease_l
	bra	.noshoot
.shootdone
	s_set_var		B,firedelayfive,#1
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.noshoot

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	lda	specialdelayfive
	cmp	#0
	bpl	.mustdec
	bra	.okdoit
.mustdec
	dec	specialdelayfive
	jmp	.npfa

.okdoit
	s_set_var		B,specialdelayfive,#0

	a8
	lda	scopemode
	beq	.noscopeshoot2
	lda	scope_held+1
	and	#$10
	bne	.timetoscopenuke
.noscopeshoot2
	s_jmp_keyup		a5,.npfa
	s_jmp_lastkeydown	a5,.npfa
.timetoscopenuke
	lda	godmode
	bne	.godmodeb
	s_set_var		B,specialdelayfive,#10
	bra	.startcountdown
.godmodeb
	s_set_var	B,specialdelayfive,#1	
	bra	.skipcount
.startcountdown
	s_beqdec_var		W,speccntfive,.npfa	
.skipcount
	trigse			$31
	s_weapon_pos		#0,#0,#80>>weapon_scale
	s_weapon_rot		#0,#0
;	s_fire_weapon		x,NUKE2,.npfa
	jsl	fire_nuke5
;	s_set_alvar		B,y,al_sbyte4,#2
	lda	godmode
	bne	.npfa
	s_dec_var		W,specwepcntfivetemp
	
.npfa

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	s_beqdec_alvar		B,x,al_sbyte4,.nhfl
	s_set_var2rnd		viewshakeX,#15
	s_sub_var		B,viewshakeX,#7
	s_set_var2rnd		viewshakeY,#15
	s_sub_var		B,viewshakeY,#7
	s_set_var2rnd		viewshakeZ,#15
	s_sub_var		B,viewshakeZ,#7
	s_jmp_notdelay		1,done1112x
	s_set_alsflag		x,hitflash
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,colldisable
	s_brl			done1112x


.nhfl
	s_clr_alsflag	x,nohitaffect
	s_clr_alsflag	x,colldisable
	s_set_collstrat		x,playerfivecol_Istrat
	stz			viewshakeX
	stz			viewshakeY
	stz			viewshakeZ


	lda	godmode
	beq	.collision
	s_set_alsflag	x,nohitaffect				;god mode damage disable
	s_set_alsflag	x,colldisable
.collision
	s_jmp_keyup	left5,fiveplayerkill
	s_jmp_keyup	a5,fiveplayerkill
	s_jmp_keyup	start5,fiveplayerkill
	s_jmp_lastkeydown	start5,fiveplayerkill
;	s_set_alvar	B,x,al_hp,#0

fiveplayerkill
	settext	0,5
	a8
	lda.l	al_hp,x
	sta	p5hp
;------------------
	s_end_strat
done1112x

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
	sta.l	m_damagefive	
	stz	speccntfive
	s_set_strat		x,0
	s_end_strat
;----------------------------------------------------------------------------------------

playerfivedead_Istrat
	s_start_strat
	s_set_alvar	B,x,al_hp,#0
	lda	pfiverevivedelay
	beq	.norm
	cmp	#1
	beq	.revive
	bpl	.dec
	
.revive
	stz	pfiverevivedelay
	s_set_alvar	B,x,al_hp,#100
	lda	newgameplus
	bne	.less
	s_set_var	B,speccntfive,#5
	bra	.donbom
.less
	s_set_var	B,speccntfive,#2
.donbom
	s_clr_alsflag	x,invisible
	s_clr_alsflag	x,colldisable
	s_set_alptrs	x,fifthplayer_strat,playerfivecol_Istrat,playerfivedead_Istrat
	s_end_strat
	
.dec
	dec	pfiverevivedelay
	jmp	.end
	
.norm
	dec	livesfive
	lda	lives
	clc
	adc	livestwo
	clc
	adc	livesthree
	clc
	adc	livesfour
	beq	.oneisdead
	bra	.disappear
.oneisdead
	lda	livesfive
	lbeq		bothdeadd
.disappear
	trigse			se_playerdown
;	stz	twoplayer
;	lda	#1
;	sta	dohofs
;	stz	noxrot
	lda	#0
	sta.l	m_damagefive
;	s_set_var    W,viewdist,#120
;	s_set_var    W,outviewdist,#120
;	s_set_var    W,outdist,#120

;	stz	speccntfive
;	s_set_strat	x,explode_Istrat
	lda	#1
	sta	pfivedead
	lda	livesfive
	beq	nomorep5
	lda	#60
	sta	pfiverevivedelay
	s_set_alsflag	x,invisible
	s_set_alsflag	x,colldisable

.end
	s_end_strat
	
nomorep5
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
	sta.l	m_damagefive
	stz	speccntfive
	s_remove_obj	x
	s_end_strat


	
playerfivecol_Istrat
	s_start_strat
	s_clr_alsflag		x,collide
;	s_jmp_alsflag		x,nohitaffect,.nocol

	s_jmp_varAND	B,pfiveshipflags2,#ptwosf2_wireship,.halfcol	;if	ptwo wireship bit set, no damage
	s_docoll		x,#framesperAP
	s_set_alsflag		x,hitflash
	s_bra	.doneplayerfiveshieldhitcheck

.halfcol
	s_inc_var		B,pfivenumhits 

.doneplayerfiveshieldhitcheck

.Icont	local

	s_set_objtobealvar.w	y,x,al_collobjptr
	s_jmp_varAND	B,pfiveshipflags2,#ptwosf2_wireship,.dsn
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
	s_set_collstrat	x,playerfivecoltwo_Istrat
	s_set_endcollstrat	x,playerfivecoltwo_Istrat
	s_end_strat

playerfivecoltwo_Istrat
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
	s_set_collstrat		x,playerfivecol_Istrat
	s_end_strat
.done
	s_end_strat

bothdeadd
	lda	lives
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


gekmidboss_istrat
	s_set_alptrs	x,gekmidboss_strat,hitflash_istrat,gekmidexp_istrat	;looping strat, collision strat, explosion strat
	s_setnoremove_behind	x
	s_set_colltype	x,ENEMY1				;collision type
	s_set_colltype	x,ENEMY2				;collision type
	s_set_colltype	x,ENEMYWEAP				;collsiion type
	s_set_aldata	x,#60,#10				;hp + ap
	s_set_alvar		B,x,al_roty,#deg180			;rotation foward facing
	s_set_alvar		B,x,al_rotx,#0			;no rotation
	s_set_alvar		B,x,al_rotz,#0			;no rotation
	s_set_alsflag		x,nohitaffect
	s_set_alsflag	x,relexplode
	s_clr_alsflag	x,collide
	s_set_alvar		B,x,al_sbyte1,#60		;timer for state 0
	
gekmidboss_strat
	s_start_strat
	s_set_objtobeplayer	y
	s_copy_alvar2var	W,y,targetx,al_worldz

	s_jmp_ifnotstate	x,0,.not0
	a16
	lda	targetx
	clc
	adc	#400
	sta	targetx
	a8
	s_jmp_alvarless		W,x,al_worldz,targetx,.nosub
	s_sub_alvar			W,x,al_worldz,#50
.nosub
	s_decbne_alvar		B,x,al_sbyte1,.instate0
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.not0
	s_jmp_ifnotstate	x,1,.not1
	s_clr_alsflag		x,nohitaffect
	s_set_alsflag	x,collide
	s_achase_alvar		W,x,al_worldy,#-200,7
	s_achase_alvar		W,x,al_worldx,#300,7
	s_decbne_alvar		B,x,al_sbyte1,.not1
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.not1
	s_jmp_ifnotstate	x,2,.not2
	s_achase_alvar		W,x,al_worldy,#0,7
	s_achase_alvar		W,x,al_worldx,#300,7
	s_decbne_alvar		B,x,al_sbyte1,.not2
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.not2
	s_jmp_ifnotstate	x,3,.not3
	s_achase_alvar		W,x,al_worldy,#0,7
	s_achase_alvar		W,x,al_worldx,#-300,7
	s_decbne_alvar		B,x,al_sbyte1,.not3
	s_set_alvar			B,x,al_sbyte1,#60
	s_next_state		x
.not3
	s_jmp_ifnotstate	x,4,.not4
	s_achase_alvar		W,x,al_worldy,#-200,7
	s_achase_alvar		W,x,al_worldx,#-300,7
	s_decbne_alvar		B,x,al_sbyte1,.not4
	s_set_alvar			B,x,al_sbyte1,#60
	s_set_state			x,#1
.not4

	s_jmp_notdelay		5,.nofire
	s_weapon_pos		#0,#0,#0	;no change to position
	s_weapon_rot		#0,#0			;no change to rotation
	s_weapon_rots2obj	y				;rotate towards player
	s_fire_weapon		x,orb
.nofire
	a16
	lda	targetx
	clc
	adc	#400
	sta	targetx
	a8
	s_achase_alvar	W,x,al_worldz,targetx,4
.instate0
	s_add_bossHP	x,al_hp		;update HP on hp bar
	s_add_playerz	x
	s_end_strat
	
	
gekmidexp_istrat
	s_start_strat
	a8
	lda	#1
	sta	tempvar10
	sta	tempvar10+1
	s_jmp	bigexplode_istrat
	

testor		equ		5/4
	
test_istrat
	s_start_strat
	s_clr_alsflag	y,invisible
	s_set_objtobeplayer	y
	s_copy_rots			x,y
	s_copy_vecs		x,y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_copy_alvar2var	W,x,targety,al_worldz
	a16
	lda	targety
	sec
	sbc	targetx
	cmp	#700
	bpl	.die
	a8
	s_set_speed		x,#127
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_add_vecs2pos	x
	s_add_playerz	x
	s_end_strat
.die
	a8
	s_remove_obj	x
	s_end_strat

test2_istrat
	s_start_strat
	ldy		playpttwo
	s_copy_rots			x,y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_copy_alvar2var	W,x,targety,al_worldz
	a16
	lda	targety
	sec
	sbc	targetx
	cmp	#700
	bpl	.die
	a8
	s_set_speed		x,#127
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_add_vecs2pos	x
	s_add_playerz	x
	s_end_strat
.die
	a8
	s_remove_obj	x
	s_end_strat

test3_istrat
	s_start_strat
	ldy		playptthree
	s_copy_rots			x,y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_copy_alvar2var	W,x,targety,al_worldz
	a16
	lda	targety
	sec
	sbc	targetx
	cmp	#700
	bpl	.die
	a8
	s_set_speed		x,#127
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_add_vecs2pos	x
	s_add_playerz	x
	s_end_strat
.die
	a8
	s_remove_obj	x
	s_end_strat

test4_istrat
	s_start_strat
	ldy		playptfour
	s_copy_rots			x,y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_copy_alvar2var	W,x,targety,al_worldz
	a16
	lda	targety
	sec
	sbc	targetx
	cmp	#700
	bpl	.die
	a8
	s_set_speed		x,#127
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_add_vecs2pos	x
	s_add_playerz	x
	s_end_strat
.die
	a8
	s_remove_obj	x
	s_end_strat

test5_istrat
	s_start_strat
	ldy		playptfive
	s_copy_rots			x,y
	s_copy_alvar2var	W,y,targetx,al_worldz
	s_copy_alvar2var	W,x,targety,al_worldz
	a16
	lda	targety
	sec
	sbc	targetx
	cmp	#700
	bpl	.die
	a8
	s_set_speed		x,#127
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_addgen_3dvecs		x,al_roty,al_rotx,al_speed,1
	s_add_vecs2pos	x
	s_add_playerz	x
	s_end_strat
.die
	a8
	s_remove_obj	x
	s_end_strat

fire_orb
	s_make_obj		#orb,.badobj
	s_sprite_obj		y,#0
	s_set_aldata		y,#1,#8
	s_set_alptrs		y,skullshot_Istrat,weapcollide_Istrat,remove_Istrat
	s_set_speed		y,#30
	s_set_lifecnt		y,#60
	s_set_colltype		y,laser
	s_set_colltype		y,enemyweap
	s_set_alsflag		y,relexplode
;	s_setnoremove_behind	y
	jsl			gen_weapon_l
	jsl			enemybattrysound_l
.badobj	rtl


;*****************************************************************************
fire_porb
	s_make_obj		#orb,.badobj
	s_sprite_obj		y,#0
	s_set_aldata		y,#1,#12
	s_set_alptrs		y,skullshot_Istrat,weapcollide_Istrat,remove_Istrat
	s_set_speed		y,#30
	s_set_lifecnt		y,#60
	s_set_colltype		y,laser
;	s_set_colltype		y,enemyweap
	s_set_alsflag		y,relexplode
;	s_setnoremove_behind	y
	jsl			gen_weapon_l
	jsl			enemybattrysound_l
.badobj	rtl

;*****************************************************************************
fire_orb2
	s_make_obj		#orb,.badobj
	s_sprite_obj		y,#0
	s_set_aldata		y,#1,#13
	s_set_alptrs		y,vortex1_Istrat,weapcollide_Istrat,remove_Istrat
	s_set_speed		y,#17
	s_set_lifecnt		y,#45
	s_set_colltype		y,enemyweap
	s_set_alsflag		y,relexplode
;	s_setnoremove_behind	y
	jsl			gen_weapon_l
	jsl			enemybattrysound_l
.badobj	rtl

;*****************************************************************************
fire_bolt
	s_make_obj		#bolt,.badobj
	s_sprite_obj		y,#0
	s_set_aldata		y,#50,#15
	s_set_alptrs		y,skullshot_Istrat,weapcollide_Istrat,remove_Istrat
	s_set_speed		y,#19
	s_set_lifecnt		y,#40
	s_set_colltype		y,enemyweap
	s_set_alsflag		y,relexplode
;	s_setnoremove_behind	y
	jsl			gen_weapon_l
;	jsl			enemybattrysound_l
	trigse	102
.badobj	rtl



