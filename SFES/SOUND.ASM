
	INCPUBLICS	sound.ext

obsdist	equ	100	;320

cutoffsnd	equ	3150
dist3snd	equ	1150
dist2snd	equ	650
dist1snd	equ	250

ship_1_cutoffsnd equ	11000
ship_1_dist3snd equ	10000
ship_1_dist2snd equ	10000
ship_1_dist1snd equ	5000
ship_1_mindist  equ	500

playaccel1	equ	2
playaccel2	equ	4
playaccel3	equ	8
playaccel4	equ	16

	shorta
	longi
do_bgm_init							bootapu	#snd_init
do_bgm_title						bootapu	#snd_title
do_bgm_ops							bootapu	#snd_ops
do_bgm_training 					bootapu #snd_training
do_bgm_map							bootapu	#snd_map
do_bgm_reset							bootapu	#snd_reset
do_bgm_newmap							bootapu	#snd_newmap
do_bgm_mapbh						bootapu	#snd_mapbh
do_bgm_10							bootapu	#snd_10
do_bgm_10cursed							bootapu	#snd_10



do_bgm_11						bootapu	#snd_11
do_bgm_11boss						bootapu	#snd_11boss
do_bgm_11fanfare					bootapu	#snd_11fanfare
do_bgm_11death						bootapu	#snd_11death
do_bgm_12						bootapu	#snd_12
do_bgm_12boss						bootapu	#snd_12boss
do_bgm_12fanfare					bootapu	#snd_12fanfare
do_bgm_12death						bootapu	#snd_12death
do_bgm_13b						bootapu	#snd_13b
do_bgm_13						bootapu	#snd_13
do_bgm_13boss						bootapu	#snd_13boss
do_bgm_13fanfare					bootapu	#snd_13fanfare
do_bgm_13death						bootapu	#snd_13death
do_bgm_14						bootapu	#snd_14
do_bgm_14boss						bootapu	#snd_14boss
do_bgm_14fanfare					bootapu	#snd_14fanfare
do_bgm_14death						bootapu	#snd_14death
do_bgm_15						bootapu	#snd_15
do_bgm_15boss						bootapu	#snd_15boss
do_bgm_15fanfare					bootapu	#snd_15fanfare
do_bgm_15death						bootapu	#snd_15death
do_bgm_16						bootapu	#snd_16
do_bgm_16boss						bootapu	#snd_16boss
do_bgm_16short						bootapu	#snd_16short
do_bgm_16fanfare					bootapu	#snd_16fanfare
do_bgm_16death						bootapu	#snd_16death
do_bgm_22						bootapu	#snd_22
do_bgm_22boss						bootapu	#snd_22boss
do_bgm_22fanfare					bootapu	#snd_22fanfare
do_bgm_22death						bootapu	#snd_22death
do_bgm_23						bootapu	#snd_23
do_bgm_23boss						bootapu	#snd_23boss
do_bgm_23fanfare					bootapu	#snd_23fanfare
do_bgm_23death						bootapu	#snd_23death
do_bgm_24						bootapu	#snd_24
do_bgm_24boss						bootapu	#snd_24boss
do_bgm_24fanfare					bootapu	#snd_24fanfare
do_bgm_24death						bootapu	#snd_24death
do_bgm_25						bootapu	#snd_25
do_bgm_25boss						bootapu	#snd_25boss
do_bgm_25fanfare					bootapu	#snd_25fanfare
do_bgm_25death						bootapu	#snd_25death
do_bgm_26						bootapu	#snd_26
do_bgm_26boss						bootapu	#snd_26boss
do_bgm_26fanfare					bootapu	#snd_26fanfare
do_bgm_26death						bootapu	#snd_26death
do_bgm_32						bootapu	#snd_32
do_bgm_32boss						bootapu	#snd_32boss
do_bgm_32fanfare					bootapu	#snd_32fanfare
do_bgm_32death						bootapu	#snd_32death
do_bgm_33						bootapu	#snd_33
do_bgm_33boss						bootapu	#snd_33boss
do_bgm_33fanfare					bootapu	#snd_33fanfare
do_bgm_33death						bootapu	#snd_33death
do_bgm_34						bootapu	#snd_34
do_bgm_34boss						bootapu	#snd_34boss
do_bgm_34fanfare					bootapu	#snd_34fanfare
do_bgm_34death						bootapu	#snd_34death
do_bgm_35						bootapu	#snd_35
do_bgm_35boss						bootapu	#snd_35boss
do_bgm_35fanfare					bootapu	#snd_35fanfare
do_bgm_35death						bootapu	#snd_35death
do_bgm_36						bootapu	#snd_36
do_bgm_36boss						bootapu	#snd_36boss
do_bgm_36fanfare					bootapu	#snd_36fanfare
do_bgm_36death						bootapu	#snd_36death
do_bgm_37						bootapu	#snd_37
do_bgm_37boss						bootapu	#snd_37boss
do_bgm_37extralongboss					bootapu	#snd_37extralongboss
do_bgm_37fanfare					bootapu	#snd_37fanfare
do_bgm_37death						bootapu	#snd_37death
do_bgm_enteringdangerousterritory			bootapu	#snd_enteringdangerousterritory
do_bgm_continue						bootapu #snd_continue
do_bgm_bhole						bootapu	#snd_bhole
do_bgm_intro						bootapu	#snd_intro
do_bgm_endseq						bootapu	#snd_endseq
do_bgm_bossroll						bootapu	#snd_bossroll
do_bgm_staff						bootapu	#snd_staff
do_bgm_gameover						bootapu	#snd_gameover
do_bgm_special						bootapu	#snd_special
do_bgm_specialboss					bootapu	#snd_specialboss
do_bgm_specialfanfare					bootapu	#snd_specialfanfare
do_bgm_andross						bootapu	#snd_andross
do_bgm_warpout						bootapu	#snd_warpout
do_bgm_secretfound					bootapu	#snd_secretfound
do_bgm_kandojingle					bootapu	#snd_kandojingle
do_bgm_testnewbgm					bootapu	#snd_testnewbgm
do_bgm_newtitle						bootapu	#snd_newtitle
do_bgm_sgproto						bootapu	#snd_sgproto
do_bgm_metropolis					bootapu	#snd_metropolis
do_bgm_gnat						bootapu	#snd_gnat
do_bgm_smb3swim						bootapu	#snd_smb3swim
do_bgm_sf2sele						bootapu	#snd_sf2sele
do_bgm_kazaru						bootapu	#snd_kazaru
do_bgm_kazaru2						bootapu	#snd_kazaru2
do_bgm_eis						bootapu	#snd_eis
do_bgm_rexius						bootapu	#snd_rexius
do_bgm_sectork						bootapu	#snd_sectork
do_bgm_sectorkboss					bootapu	#snd_sectorkboss
do_bgm_pebble						bootapu	#snd_pebble
do_bgm_mario						bootapu	#snd_mario
do_bgm_mario2						bootapu	#snd_mario2
do_bgm_fitunl						bootapu	#snd_fitunl
do_bgm_fitunl2						bootapu	#snd_fitunl2
do_bgm_kuruso						bootapu	#snd_kuruso
do_bgm_papetoon						bootapu	#snd_papetoon
do_bgm_tolimas						bootapu	#snd_tolimas
do_bgm_gekkou						bootapu	#snd_gekkou
do_bgm_luigihydra					bootapu	#snd_luigihydra
do_bgm_galaxip						bootapu	#snd_galaxip
do_bgm_gyaraga						bootapu	#snd_gyaraga
do_bgm_shmuppy						bootapu	#snd_shmuppy
do_bgm_zeromus						bootapu	#snd_zeromus
do_bgm_airraider					bootapu	#snd_airraider
do_bgm_linktron						bootapu	#snd_linktron
do_bgm_alpha						bootapu	#snd_alpha
do_bgm_wolfie						bootapu	#snd_wolfie
do_bgm_kidodora						bootapu	#snd_kidodora
do_bgm_blackrose					bootapu	#snd_blackrose
do_bgm_cometbgm						bootapu	#snd_cometbgm
do_bgm_yoshibgm						bootapu	#snd_yoshibgm
do_bgm_australia					bootapu	#snd_australia
do_bgm_menu						bootapu	#snd_menu
do_bgm_finfanfare					bootapu	#snd_finfanfare
do_bgm_eschatos						bootapu	#snd_eschatos
do_bgm_tarkus						bootapu	#snd_tarkus
do_bgm_tarkush						bootapu	#snd_tarkush
do_bgm_funkmonkies					bootapu	#snd_funkmonkies
do_bgm_interstellar					bootapu	#snd_interstellar
do_bgm_sp0rch						bootapu	#snd_sp0rch
do_bgm_hurricane					bootapu	#snd_hurricane

;------

do_bgm_11cursed						bootapu	#snd_11cursed
do_bgm_12cursed						bootapu	#snd_12cursed
do_bgm_13bcursed					bootapu	#snd_13bcursed
do_bgm_14cursed						bootapu	#snd_14cursed
do_bgm_15cursed						bootapu	#snd_15cursed
do_bgm_16cursed						bootapu	#snd_16cursed
do_bgm_22cursed						bootapu	#snd_22cursed
do_bgm_23cursed						bootapu	#snd_23cursed
do_bgm_24cursed						bootapu	#snd_24cursed
do_bgm_25cursed						bootapu	#snd_25cursed
do_bgm_26cursed						bootapu	#snd_26cursed
do_bgm_32cursed						bootapu	#snd_32cursed
do_bgm_33cursed						bootapu	#snd_33cursed
do_bgm_34cursed						bootapu	#snd_34cursed
do_bgm_35cursed						bootapu	#snd_35cursed
do_bgm_36cursed						bootapu	#snd_36cursed
do_bgm_37cursed						bootapu	#snd_37cursed


do_bgm_introcursed					bootapu	#snd_introcursed
do_bgm_titlecursed					bootapu	#snd_titlecursed
do_bgm_newtitlecursed				bootapu	#snd_newtitlecursed
do_bgm_opscursed					bootapu	#snd_opscursed
do_bgm_resetcursed					bootapu	#snd_resetcursed
do_bgm_staffcursed					bootapu	#snd_staffcursed
do_bgm_endseqcursed					bootapu	#snd_endseqcursed
do_bgm_bossrollcursed				bootapu	#snd_bossrollcursed
do_bgm_continuecursed				bootapu	#snd_continuecursed
do_bgm_gameovercursed				bootapu	#snd_gameovercursed
do_bgm_newmapcursed					bootapu	#snd_newmapcursed
do_bgm_mapcursed					bootapu	#snd_mapcursed
do_bgm_mapbhcursed					bootapu	#snd_mapbhcursed
do_bgm_trainingcursed				bootapu	#snd_trainingcursed
do_bgm_specialcursed				bootapu	#snd_specialcursed
do_bgm_bholecursed					bootapu	#snd_bholecursed

do_bgm_23bosscursed							bootapu	#snd_23bosscursed
do_bgm_37bosscursed							bootapu	#snd_37bosscursed
do_bgm_sgprotocursed						bootapu	#snd_sgprotocursed
do_bgm_luigihydracursed						bootapu	#snd_luigihydracursed
do_bgm_galaxipcursed						bootapu	#snd_galaxipcursed
do_bgm_gnatcursed							bootapu	#snd_gnatcursed
do_bgm_smb3swimcursed						bootapu	#snd_smb3swimcursed
do_bgm_sf2selecursed						bootapu	#snd_sf2selecursed
do_bgm_metropoliscursed						bootapu	#snd_metropoliscursed


do_bgm_kandojinglecursed					bootapu	#snd_kandojinglecursed
do_bgm_enteringdangerousterritorycursed		bootapu	#snd_enteringdangerousterritorycursed
do_bgm_kazarucursed							bootapu	#snd_kazarucursed
do_bgm_kazaru2cursed							bootapu	#snd_kazaru2cursed
do_bgm_eiscursed							bootapu	#snd_eiscursed
do_bgm_rexiuscursed							bootapu	#snd_rexiuscursed
do_bgm_sectorkcursed						bootapu	#snd_sectorkcursed
do_bgm_sectorkbosscursed					bootapu	#snd_sectorkbosscursed
do_bgm_pebblecursed							bootapu	#snd_pebblecursed
do_bgm_mariocursed							bootapu	#snd_mariocursed
do_bgm_mario2cursed							bootapu	#snd_mario2cursed
do_bgm_fitunlcursed							bootapu	#snd_fitunlcursed
do_bgm_fitunl2cursed							bootapu	#snd_fitunl2cursed
do_bgm_kurusocursed							bootapu	#snd_kurusocursed
do_bgm_papetooncursed						bootapu	#snd_papetooncursed
do_bgm_tolimascursed						bootapu	#snd_tolimascursed
do_bgm_gyaragacursed						bootapu	#snd_gyaragacursed
do_bgm_gekkoucursed							bootapu	#snd_gekkoucursed
;do_bgm_luigihydracursed						bootapu	#snd_luigihydracursed
do_bgm_shmuppycursed						bootapu	#snd_shmuppycursed
do_bgm_zeromuscursed						bootapu	#snd_zeromuscursed
do_bgm_airraidercursed						bootapu	#snd_airraidercursed
do_bgm_linktroncursed						bootapu	#snd_linktroncursed
do_bgm_alphacursed							bootapu	#snd_alphacursed
do_bgm_kidodoracursed						bootapu	#snd_kidodoracursed
do_bgm_blackrosecursed						bootapu	#snd_blackrosecursed
do_bgm_cometbgmcursed							bootapu	#snd_cometbgmcursed
do_bgm_yoshibgmcursed							bootapu	#snd_yoshibgmcursed
do_bgm_australiacursed							bootapu	#snd_australiacursed
do_bgm_menucursed							bootapu	#snd_menucursed
do_bgm_wolfiecursed							bootapu	#snd_wolfiecursed
do_bgm_finfanfarecursed							bootapu	#snd_finfanfarecursed
do_bgm_eschatoscursed							bootapu	#snd_eschatoscursed
do_bgm_tarkuscursed							bootapu	#snd_tarkuscursed
do_bgm_tarkushcursed							bootapu	#snd_tarkushcursed
do_bgm_funkmonkiescursed					bootapu	#snd_funkmonkiescursed
do_bgm_interstellarcursed					bootapu	#snd_interstellarcursed
do_bgm_sp0rchcursed						bootapu	#snd_sp0rchcursed
do_bgm_hurricanecursed						bootapu	#snd_hurricanecursed



sndtbl
	snd_data	init,0,sound0
	
	snd_data	intro,18,sound1,orchestra,bgmintro
	snd_data	title,18,titlebgm
	snd_data	newtitle,18,newtitle
	snd_data	ops,18,sound1,ops
	snd_data	staff,18,bgmstaff	
	snd_data	endseq,3,bgmendseq
	snd_data	bossroll,18,bgmendseq
	snd_data	continue,10,bgmcontinue	
	snd_data	gameover,12,game_over
	snd_data	map,1,orchestra,sound6
	snd_data	reset,1,orchestra
	snd_data	mapbh,15,orchestra,sound6
	snd_data	newmap,1,orchestra,sound6,newmapbgm


	snd_data	training,3,band,training
	snd_data	special,3,band,out_of_this_dimension
	snd_data	specialboss,5,band,out_of_this_dimension
	snd_data	specialfanfare,6,band,out_of_this_dimension
	snd_data	bhole,3,black_hole	

	
	
	snd_data	10,16,corneria,boss_corneria,sound5

	snd_data	11,3,sound1,band,corneria,boss_corneria
	snd_data	11boss,6,sound1,band,corneria,boss_corneria
	snd_data	11fanfare,7,sound1,band,corneria,boss_corneria
	snd_data	11death,17,sound1,band,corneria,boss_corneria
	snd_data	12,3,asteroid_field,boss_asteroid
	snd_data	12boss,6,asteroid_field,boss_asteroid
	snd_data	12fanfare,7,asteroid_field,boss_asteroid
	snd_data	12death,17,asteroid_field,boss_asteroid
	snd_data	warpout,14,asteroid_field,boss_asteroid
	snd_data	13b,3,space_armada,boss_space_armada
	snd_data	13,9,space_armada,boss_space_armada
	snd_data	13boss,6,space_armada,boss_space_armada
	snd_data	13fanfare,7,space_armada,boss_space_armada
	snd_data	13death,17,space_armada,boss_space_armada
	snd_data	14,3,band,sound4,meteor_base,boss_meteor
	snd_data	14boss,6,band,sound4,meteor_base,boss_meteor
	snd_data	14fanfare,7,band,sound4,meteor_base,boss_meteor
	snd_data	14death,17,band,sound4,meteor_base,boss_meteor
	snd_data	15,3,asteroid_field,boss_venom_base_2
	snd_data	15boss,6,asteroid_field,boss_venom_base_2
	snd_data	15fanfare,7,asteroid_field,boss_venom_base_2
	snd_data	15death,17,asteroid_field,boss_venom_base_2
	snd_data	16,3,venom_base_1_3,boss_venom_base_2,venom_andross
	snd_data	16short,5,venom_base_1_3,boss_venom_base_2,venom_andross
	snd_data	16boss,6,venom_base_1_3,boss_venom_base_2,venom_andross
	snd_data	16fanfare,7,venom_base_1_3,boss_venom_base_2,venom_andross
	snd_data	16death,17,venom_base_1_3,boss_venom_base_2,venom_andross
	
	snd_data	22,3,sector_x_z,boss_asteroid	
	snd_data	22boss,6,sector_x_z,boss_asteroid	
	snd_data	22fanfare,7,sector_x_z,boss_asteroid	
	snd_data	22death,17,sector_x_z,boss_asteroid	
	snd_data	23,3,band,sound4,titania,boss_titania
	snd_data	23boss,6,band,sound4,titania,boss_titania
	snd_data	23fanfare,7,band,sound4,titania,boss_titania
	snd_data	23death,17,band,sound4,titania,boss_titania
	snd_data	24,3,sector_y,boss_asteroid
	snd_data	24boss,6,sector_y,boss_asteroid
	snd_data	24fanfare,7,sector_y,boss_asteroid
	snd_data	24death,17,sector_y,boss_asteroid
	snd_data	25,3,asteroid_field,boss_venom_base_2
	snd_data	25boss,6,asteroid_field,boss_venom_base_2
	snd_data	25fanfare,7,asteroid_field,boss_venom_base_2
	snd_data	25death,17,asteroid_field,boss_venom_base_2
	snd_data	26,3,venom_base_2,boss_venom_base_2,venom_andross
	snd_data	26boss,6,venom_base_2,boss_venom_base_2,venom_andross
	snd_data	26fanfare,7,venom_base_2,boss_venom_base_2,venom_andross
	snd_data	26death,17,venom_base_2,boss_venom_base_2,venom_andross

	snd_data	32,3,asteroid_field,boss_asteroid
	snd_data	32boss,6,asteroid_field,boss_asteroid
	snd_data	32fanfare,7,asteroid_field,boss_asteroid
	snd_data	32death,17,asteroid_field,boss_asteroid
	snd_data	33,3,band,sound4,fortuna,boss_fortuna
	snd_data	33boss,6,band,sound4,fortuna,boss_fortuna
	snd_data	33fanfare,7,band,sound4,fortuna,boss_fortuna
	snd_data	33death,17,band,sound4,fortuna,boss_fortuna
	snd_data	34,3,sector_x_z,boss_space_armada
	snd_data	34boss,6,sector_x_z,boss_space_armada
	snd_data	34fanfare,7,sector_x_z,boss_space_armada
	snd_data	34death,17,sector_x_z,boss_space_armada


	snd_data	35,3,band,macbeth,boss_macbeth
	snd_data	35boss,6,band,macbeth,boss_macbeth
	snd_data	35fanfare,7,band,macbeth,boss_macbeth
	snd_data	35death,17,band,macbeth,boss_macbeth
	snd_data	36,3,asteroid_field,boss_venom_base_1
	snd_data	36boss,6,asteroid_field,boss_venom_base_1
	snd_data	36fanfare,7,asteroid_field,boss_venom_base_1
	snd_data	36death,17,asteroid_field,boss_venom_base_1
	snd_data	37,3,venom_base_1_3,boss_venom_base_1,venom_andross
	snd_data	37extralongboss,5,venom_base_1_3,boss_venom_base_1,venom_andross
	snd_data	37boss,6,venom_base_1_3,boss_venom_base_1,venom_andross
	snd_data	37fanfare,7,venom_base_1_3,boss_venom_base_1,venom_andross
	snd_data	37death,17,venom_base_1_3,boss_venom_base_1,venom_andross
	snd_data	enteringdangerousterritory,18,venom_base_1_3,boss_venom_base_1,venom_andross
	snd_data	andross,19,venom_base_1_3,boss_venom_base_1,venom_andross

	snd_data	kandojingle,1,sound1,band,asteroid_field,boss_corneria,boss_asteroid	;newly added
	snd_data	secretfound,2,sound1,band,asteroid_field,boss_corneria,boss_asteroid	;newly added
	snd_data	testnewbgm,6,band,sound1

	snd_data	gnat,3,sound1,band,gnat				;add ops for extra bass
	snd_data	smb3swim,3,sound1,band,smb3swim,boss_corneria
	snd_data	sf2sele,3,sound1,band,sound6,sf2sele
	snd_data	metropolis,3,sound1,band,metropolis,boss_corneria

	snd_data	sgproto,3,sound1,band,sgproto,linktron
	snd_data	linktron,6,sound1,band,sgproto,linktron
	
	snd_data	gekkou,3,sound1,band,gekkou,blackrosebgm
	snd_data	blackrose,6,sound1,band,gekkou,blackrosebgm

	snd_data	sectork,3,sectork,seckboss
	snd_data	sectorkboss,6,sectork,seckboss

	snd_data	papetoon,3,sound1,band,papetoon,galaxip
	snd_data	galaxip,6,sound1,band,papetoon,galaxip

	snd_data	alpha,3,sound1,band,alpha,kidodora
	snd_data	kidodora,6,sound1,band,alpha,kidodora

	snd_data	pebble,3,sound1,band,pebble,luigihydra
	snd_data	luigihydra,6,sound1,band,sgproto,luigihydra

	snd_data	shmuppy,3,sound1,band,shmuppy,zeromus
	snd_data	zeromus,6,sound1,band,shmuppy,zeromus

	snd_data	tolimas,3,sound1,band,tolimas,GYARAGA
	snd_data	GYARAGA,6,sound1,band,tolimas,GYARAGA

	snd_data	eis,3,eis,bossbgms
	snd_data	rexius,6,eis,bossbgms

	snd_data	kuruso,3,sound1,band,kuruso,bossbgmk
	snd_data	airraider,6,sound1,band,kuruso,bossbgmk

	snd_data	kazaru,3,sound1,band,kazaru
	snd_data	kazaru2,3,sound1,band,kazaru2
	snd_data	wolfie,6,sound1,band,kazaru

	
	snd_data	fitunl,18,sound1,band,kazaru
	snd_data	fitunl2,18,sound1,band,kazaru2

	snd_data	mario,19,sound1,band,kazaru
	snd_data	mario2,19,sound1,band,kazaru2

	snd_data	finfanfare,7,sound1,band,kazaru

	snd_data	cometbgm,3,sound1,band,cometbgm,yoshibgm
	snd_data	yoshibgm,6,sound1,band,cometbgm,yoshibgm


	snd_data	australia,3,sound1,band,australiabgm,linktron


	snd_data	menu,3,sound1,band,menubgm
	snd_data	eschatos,3,sound1,band,eschatos
	snd_data	tarkus,3,sound1,band,tarkus
	snd_data	tarkush,4,sound1,band,tarkus

	snd_data	funkmonkies,3,sound1,band,funkmonkies
	snd_data	interstellar,3,sound1,band,interstellar,linktron
	snd_data	hurricane,3,sound1,band,hurricane
	snd_data	sp0rch,3,sp0rch


;-------------

	snd_data	resetcursed,1,orchestra
	snd_data	introcursed,18,sound1,orchestra,bgmintro,sound5
	snd_data	titlecursed,18,titlebgm,sound5
	snd_data	newtitlecursed,18,newtitle,sound5
	snd_data	opscursed,18,sound1,sound5
	snd_data	staffcursed,18,bgmstaff,sound5
	snd_data	endseqcursed,3,bgmendseq,sound5
	snd_data	bossrollcursed,18,bgmendseq,sound5
	snd_data	continuecursed,10,bgmcontinue,ops
	snd_data	gameovercursed,12,game_over,ops
	snd_data	mapcursed,1,orchestra,sound6,sound5
	snd_data	mapbhcursed,15,orchestra,sound6,sound5
	snd_data	newmapcursed,1,orchestra,sound6,newmapbgm,sound5
	snd_data	trainingcursed,3,band,training,ops		;added ops for extra oomph
	snd_data	specialcursed,3,band,out_of_this_dimension,ops
	snd_data	bholecursed,3,black_hole,ops

	snd_data	11cursed,3,corneria,boss_corneria,sound5
	snd_data	12cursed,3,asteroid_field,boss_asteroid,sound5
	snd_data	13bcursed,3,space_armada,boss_space_armada,sound5
	snd_data	14cursed,3,band,sound4,meteor_base,boss_meteor,ops		;good
	snd_data	15cursed,3,asteroid_field,boss_venom_base_2,sound5
	snd_data	16cursed,3,venom_base_1_3,boss_venom_base_2,venom_andross,sound5
	
	snd_data	22cursed,3,sector_x_z,boss_asteroid,sound5
	snd_data	23cursed,3,band,sound4,titania,boss_titania,sound5
	snd_data	24cursed,3,sector_y,boss_asteroid,sound5
	snd_data	25cursed,3,asteroid_field,boss_venom_base_2,sound5
	snd_data	26cursed,3,venom_base_2,boss_venom_base_2,venom_andross,sound5

	snd_data	32cursed,3,asteroid_field,boss_asteroid,sound5
	snd_data	33cursed,3,band,sound4,fortuna,boss_fortuna,ops			;good
	snd_data	34cursed,3,sector_x_z,boss_space_armada,sound5
	snd_data	35cursed,3,band,macbeth,boss_macbeth,ops				; good
	snd_data	36cursed,3,asteroid_field,boss_venom_base_1,sound5
	snd_data	37cursed,3,venom_base_1_3,boss_venom_base_1,venom_andross,sound5

	snd_data	23bosscursed,6,band,sound4,titania,boss_titania,ops
	snd_data	37bosscursed,6,venom_base_1_3,boss_venom_base_1,venom_andross,sound5
	snd_data	sgprotocursed,3,sound1,band,sgproto,luigihydra,ops
	snd_data	luigihydracursed,6,sound1,band,sgproto,luigihydra,ops
	snd_data	galaxipcursed,6,sound1,band,papetoon,galaxip,ops
	snd_data	gnatcursed,3,sound1,band,gnat,ops				;add ops for extra bass
	snd_data	smb3swimcursed,3,sound1,band,smb3swim,boss_corneria,ops
	snd_data	sf2selecursed,3,sound1,band,sf2sele,boss_corneria,ops
	snd_data	gekkoucursed,3,sound1,band,gekkou,blackrosebgm,ops
	snd_data	metropoliscursed,3,sound1,band,metropolis,boss_corneria,ops	;good - meh
	snd_data	kazarucursed,3,sound1,band,kazaru,ops						;good
	snd_data	kazaru2cursed,3,sound1,band,kazaru2,ops						;good
	snd_data	eiscursed,3,eis,boss_asteroid,sound5						;good
	snd_data	rexiuscursed,6,eis,bossbgms,sound5
	snd_data	sectorkcursed,3,sectork,seckboss,sound5
	snd_data	sectorkbosscursed,6,sectork,seckboss,sound5
	snd_data	pebblecursed,3,sound1,band,pebble,luigihydra,ops				;add ops for extra bass	
	snd_data	kandojinglecursed,1,sound1,band,asteroid_field,boss_corneria,boss_asteroid,ops	;newly added	
	snd_data	enteringdangerousterritorycursed,18,venom_base_1_3,boss_venom_base_1,venom_andross,ops
	snd_data	mariocursed,19,sound1,band,kazaru,ops
	snd_data	mario2cursed,19,sound1,band,kazaru,ops
	snd_data	blackrosecursed,6,sound1,band,gekkou,blackrosebgm,ops
	snd_data	fitunlcursed,18,sound1,band,kazaru,ops
	snd_data	fitunl2cursed,18,sound1,band,kazaru2,ops
	snd_data	kurusocursed,3,sound1,band,kuruso,bossbgmk,ops	
	snd_data	papetooncursed,3,sound1,band,papetoon,galaxip,ops
	snd_data	tolimascursed,3,sound1,band,tolimas,GYARAGA,ops
	snd_data	gyaragacursed,6,sound1,band,tolimas,GYARAGA,ops
	snd_data	shmuppycursed,3,sound1,band,shmuppy,zeromus,ops	
	snd_data	zeromuscursed,6,sound1,band,shmuppy,zeromus,ops	
	snd_data	airraidercursed,6,sound1,band,kuruso,bossbgmk,ops
	snd_data	linktroncursed,6,sound1,band,sgproto,linktron,ops
	snd_data	alphacursed,3,sound1,band,alpha,kidodora,ops
	snd_data	kidodoracursed,6,sound1,band,alpha,kidodora,ops
	snd_data	cometbgmcursed,3,sound1,band,cometbgm,linktron,ops
	snd_data	yoshibgmcursed,3,sound1,band,cometbgm,yoshibgm,ops
	snd_data	australiacursed,3,sound1,band,australiabgm,linktron,ops
	snd_data	menucursed,3,sound1,band,menubgm,ops
	snd_data	wolfiecursed,6,sound1,band,kazaru,ops
	snd_data	finfanfarecursed,7,sound1,band,kazaru,ops
	snd_data	eschatoscursed,3,sound1,band,eschatos,ops
	snd_data	tarkuscursed,3,sound1,band,tarkus,ops
	snd_data	tarkushcursed,4,sound1,band,tarkus,ops
	snd_data	funkmonkiescursed,3,sound1,band,funkmonkies,ops
	snd_data	interstellarcursed,3,sound1,band,interstellar,ops
	snd_data	hurricanecursed,3,sound1,band,hurricane,ops
	snd_data	sp0rchcursed,3,sp0rch,sound5



bgmplaylist				;bgm test playlist
.s
	dw	do_bgm_intro&WM
	dw	do_bgm_title&WM
	dw	do_bgm_ops&WM
	dw	do_bgm_map&WM
	dw	do_bgm_10&WM
	dw	do_bgm_11&WM
	dw	do_bgm_14&WM
	dw	do_bgm_23&WM
	dw	do_bgm_33&WM
	dw	do_bgm_35&WM
	dw	do_bgm_12&WM
	dw	do_bgm_13b&WM
	dw	do_bgm_26&WM
	dw	do_bgm_34&WM
	dw	do_bgm_24&WM
	dw	do_bgm_16&WM
	dw	do_bgm_11boss&WM
	dw	do_bgm_14boss&WM
	dw	do_bgm_33boss&WM
	dw	do_bgm_35boss&WM
	dw	do_bgm_23boss&WM
	dw	do_bgm_12boss&WM
	dw	do_bgm_13boss&WM
	dw	do_bgm_16boss&WM
	dw	do_bgm_37boss&WM
	dw	do_bgm_16short&WM
	dw	do_bgm_andross&WM
	dw	do_bgm_12death&WM
	dw	do_bgm_11death&WM
	dw	do_bgm_gameover&WM
	dw	do_bgm_continue&WM
	dw	do_bgm_12fanfare&WM
	dw	do_bgm_11fanfare&WM
	dw	do_bgm_37fanfare&WM
	dw	do_bgm_endseq&WM
	dw	do_bgm_bossroll&WM
	dw	do_bgm_staff&WM
	dw	do_bgm_special&WM
	dw	do_bgm_specialboss&WM
	dw	do_bgm_bhole&WM
	dw	do_bgm_mapbh&WM
	dw	do_bgm_training&WM
	dw	do_bgm_enteringdangerousterritory&WM
	dw	do_bgm_specialfanfare&WM
	dw	do_bgm_secretfound&WM
	dw	do_bgm_warpout&WM
	dw	do_bgm_newtitle&WM
	dw	do_bgm_menu&WM
	dw	do_bgm_eschatos&WM
	dw	do_bgm_gnat&WM
	dw	do_bgm_metropolis&WM
	dw	do_bgm_smb3swim&WM
	dw	do_bgm_newmap&WM
	dw	do_bgm_sgproto&WM
	dw	do_bgm_linktron&WM
	dw	do_bgm_gekkou&WM
	dw	do_bgm_blackrose&WM
	dw	do_bgm_sectork&WM
	dw	do_bgm_sectorkboss&WM
	dw	do_bgm_alpha&WM
	dw	do_bgm_kidodora&WM
	dw	do_bgm_pebble&WM
	dw	do_bgm_luigihydra&WM
	dw	do_bgm_tarkus&WM
	dw	do_bgm_shmuppy&WM
	dw	do_bgm_zeromus&WM
	dw	do_bgm_tolimas&WM
	dw	do_bgm_gyaraga&WM
	dw	do_bgm_papetoon&WM
	dw	do_bgm_galaxip&WM
	dw	do_bgm_eis&WM
	dw	do_bgm_rexius&WM
	dw	do_bgm_kuruso&WM
	dw	do_bgm_airraider&WM
	dw	do_bgm_kazaru&WM
	dw	do_bgm_wolfie&WM
	dw	do_bgm_fitunl&WM
	dw	do_bgm_mario&WM
	dw	do_bgm_mario2&WM
	dw	do_bgm_finfanfare&WM
	dw	do_bgm_cometbgm&WM
	dw	do_bgm_yoshibgm&WM
	dw	do_bgm_australia&WM
	dw	do_bgm_funkmonkies&WM
	dw	do_bgm_interstellar&WM
	dw	do_bgm_sp0rch&WM
	dw	do_bgm_hurricane&WM
.e


;~~~~~~~~~~~~~~~~~~~~~
;totaltracks	equ	78			;total number of bgm tracks
totaltracks	equ	(.e-.s)/2			;total number of bgm tracks
;~~~~~~~~~~~~~~~~~~~~~

	

bgmplaylistcursed				;bgm test playlist (cursed)
	dw	do_bgm_introcursed&WM
	dw	do_bgm_titlecursed&WM
	dw	do_bgm_opscursed&WM
	dw	do_bgm_mapcursed&WM
	dw	do_bgm_10cursed&WM
	dw	do_bgm_11cursed&WM
	dw	do_bgm_14cursed&WM
	dw	do_bgm_23cursed&WM
	dw	do_bgm_33cursed&WM
	dw	do_bgm_35cursed&WM
	dw	do_bgm_12cursed&WM
	dw	do_bgm_13bcursed&WM
	dw	do_bgm_26cursed&WM
	dw	do_bgm_34cursed&WM
	dw	do_bgm_24cursed&WM
	dw	do_bgm_16cursed&WM
	dw	do_bgm_11boss&WM
	dw	do_bgm_14boss&WM
	dw	do_bgm_33boss&WM
	dw	do_bgm_35boss&WM
	dw	do_bgm_23boss&WM
	dw	do_bgm_12boss&WM
	dw	do_bgm_13boss&WM
	dw	do_bgm_16boss&WM
	dw	do_bgm_37boss&WM
	dw	do_bgm_16short&WM
	dw	do_bgm_andross&WM
	dw	do_bgm_12death&WM
	dw	do_bgm_11death&WM
	dw	do_bgm_gameovercursed&WM
	dw	do_bgm_continuecursed&WM
	dw	do_bgm_12fanfare&WM
	dw	do_bgm_11fanfare&WM
	dw	do_bgm_37fanfare&WM
	dw	do_bgm_endseqcursed&WM
	dw	do_bgm_bossrollcursed&WM
	dw	do_bgm_staffcursed&WM
	dw	do_bgm_specialcursed&WM
	dw	do_bgm_specialboss&WM
	dw	do_bgm_bholecursed&WM
	dw	do_bgm_mapbhcursed&WM
	dw	do_bgm_trainingcursed&WM
	dw	do_bgm_enteringdangerousterritorycursed&WM
	dw	do_bgm_specialfanfare&WM
	dw	do_bgm_secretfound&WM
	dw	do_bgm_warpout&WM
	
	dw	do_bgm_newtitlecursed&WM
	dw	do_bgm_menucursed&WM
	dw	do_bgm_eschatoscursed&WM
	dw	do_bgm_gnatcursed&WM
	dw	do_bgm_metropoliscursed&WM
	dw	do_bgm_smb3swimcursed&WM
	dw	do_bgm_newmapcursed&WM
	dw	do_bgm_sgprotocursed&WM
	dw	do_bgm_linktroncursed&WM
	dw	do_bgm_gekkoucursed&WM
	dw	do_bgm_blackrosecursed&WM
	dw	do_bgm_sectorkcursed&WM
	dw	do_bgm_sectorkbosscursed&WM
	dw	do_bgm_alphacursed&WM
	dw	do_bgm_kidodoracursed&WM
	dw	do_bgm_pebblecursed&WM
	dw	do_bgm_luigihydracursed&WM
	dw	do_bgm_tarkuscursed&WM
	dw	do_bgm_shmuppycursed&WM
	dw	do_bgm_zeromuscursed&WM
	dw	do_bgm_tolimascursed&WM
	dw	do_bgm_gyaragacursed&WM
	dw	do_bgm_papetooncursed&WM
	dw	do_bgm_galaxipcursed&WM
	dw	do_bgm_eiscursed&WM
	dw	do_bgm_rexiuscursed&WM
	dw	do_bgm_kurusocursed&WM
	dw	do_bgm_airraidercursed&WM
	dw	do_bgm_kazarucursed&WM
	dw	do_bgm_wolfiecursed&WM
	dw	do_bgm_fitunlcursed&WM
	dw	do_bgm_mariocursed&WM
	dw	do_bgm_mario2cursed&WM
	dw	do_bgm_finfanfarecursed&WM
	dw	do_bgm_cometbgmcursed&WM
	dw	do_bgm_yoshibgmcursed&WM
	dw	do_bgm_australiacursed&WM
	dw	do_bgm_funkmonkiescursed&WM
	dw	do_bgm_interstellarcursed&WM
	dw	do_bgm_sp0rchcursed&WM
	dw	do_bgm_hurricanecursed&WM
;--------------------------------------------------------------------

sbootapu	a8
	disable
	lda.l	sndtbl,x
	sta	bgm_music
	inx
	stx	snd_ptr

	lda	firstdnld
	beq	.first
	lda	#$ff
	sta	apu_port0
.first	lda	#1
	sta	firstdnld

; If the sound data does overlap a bank then use this code
; ALL sound data goes through here to start with.
	ai16
	ldy	#0
	lda	#$bbaa
sboot_initial
	cmp	apu_port0		;m16
	bne	sboot_initial
	a8
	lda 	#$cc
	pha
	jmp	sboot_entry3
sboot_repeat
	lda	[address],y
	iny
	bne	.cok1
	inc	address+2
	stz	address+1
	stz	address
	ldy	#$8000
.cok1
	xba
	lda	#0
	bra	sboot_entry2
sboot_loop	xba
	lda	[address],y
	iny
	bne	.cok2
	inc	address+2
	stz	address+1
	stz	address
	ldy	#$8000
.cok2
	xba
sboot_wait1	cmp	apu_port0
	bne	sboot_wait1
	inc	a
sboot_entry2
	a16
	sta	apu_port0		;m16
	a8
	dex
	bne	sboot_loop
sboot_wait2	cmp	apu_port0
	bne	sboot_wait2
sboot_zero	adc	#3
	beq	sboot_zero
sboot_entry1
	pha			;>
sboot_entry4
	ifeq	1
	phx
	phy
	pha
	php
	a8i16
	stratdebug
	plp
	pla
	ply
	plx
	endc

	a16
	lda	[address],y		;m16
	beq	sboot_entry3
	iny
	bne	.cok3
	blink	3
.cok3
	iny
	bne	.cok6
	blink	3
.cok6
	tax
	lda	[address],y		;m16
	iny
	bne	.cok4
	blink	3
.cok4
	iny	          	
	bne	.cok5
	blink	3
.cok5
	sta	apu_port2		;m16
	a8
	cpx	#1
	lda	#0
	rol	a
	sta	apu_port1
	pla
	sta	apu_port0
sboot_wait3	cmp	apu_port0
	bne	sboot_wait3
	jmp	sboot_repeat
	longa
sboot_entry3
	a16
	ldx	snd_ptr
	lda.l	sndtbl,x
	sta	ktpy
	lda.l	sndtbl+3,x
	sta	ktpz
	a8
	lda.l	sndtbl+2,x
	sta	address+2
	inx
	inx
	inx
	inx
	inx
	stx	snd_ptr

	a16
	stz	address
	lda	ktpy
	beq	.end
	tay
	clc
	adc	ktpz
	bcc	boot_entry4
	jmp	sboot_entry4
.end
	a16
	lda	#0400h
	sta	apu_port2

	ai8
	lda	#0
	xba
	pla
	a16
	sta	apu_port0

	a8
sboot_wait4	cmp	apu_port0
	bne	sboot_wait4

	stz	apu_port1
	stz	apu_port2
	stz	apu_port3

	stz	bgmcnt
	enable
;	blink	4
	rts


; If the sound data does not overlap a bank then use this code
	shorta
	longi
boot_repeat
	lda	[address],y
	iny
	xba
	lda	#0
	bra	boot_entry2
boot_loop	xba
	lda	[address],y
	iny
	xba
boot_wait1	cmp	apu_port0
	bne	boot_wait1
	inc	a
boot_entry2
	a16
	sta	apu_port0		;m16
	a8
	dex
	bne	boot_loop
boot_wait2	cmp	apu_port0
	bne	boot_wait2
boot_zero	adc	#3
	beq	boot_zero
boot_entry1
	pha			;>
boot_entry4
	ifeq	1
	phx
	phy
	pha
	php
	a8i16
	stratdebug
	plp
	pla
	ply
	plx
	endc

	a16
	lda	[address],y		;m16
	lbeq	sboot_entry3
	iny
	iny
	tax
	lda	[address],y		;m16
	iny
	iny	          	
	sta	apu_port2		;m16
	a8
	cpx	#1
	lda	#0
	rol	a
	sta	apu_port1
	pla
	sta	apu_port0
boot_wait3	cmp	apu_port0
	bne	boot_wait3
	bra	boot_repeat





;--------------------------------------------------------------------
dosounds_l	a8
	lda	nosetport3
	bne	.nosnd
	lda	gameflags2
	and	#gf2_ingame
	beq	.dosnds
	lda	pshipflags2
	and	#psf2_playerHP0
	bne	.nsnds
.dosnds
	lda	levelfinished
	cmp	#le_enterspec
	beq	.nsnds
	cmp	#le_enterbhole
	beq	.nsnds
	cmp	#le_bhole1
	beq	.nsnds
	cmp	#le_bhole2
	beq	.nsnds
	cmp	#le_bhole3
	beq	.nsnds

	jsr	nearobjs
	jsr	do_obstacles
	bra	.fin

.nsnds	shorta
	stz	apu_port2
.fin
	jsr	playersnd
.nosnd
	rtl

	shorta

playersnd	a8i16
	ldx	internalplaypt
	s_jmp_alcollflag	x,firstframe,.nsnd

	lda	nosfx
	bne	.nsnd
	lda	bgmsfx
	cmp	#1
	beq	.nsnd
	cmp	#3
	beq	.nsnd

	lda	gameflags
	and	#gf_playerdead
	bne	.nsnd
	lda	noenginemode
	bne	.nsnd
	lda	tempenginekill
	bne	.nsnd

	lda	pshipflags3
	and	#psf3_enginesnd
	beq	.nsnd
	lda	pshipflags2
	and	#psf2_playerHP0
	bne	.dying
	bra	.ndying

.nsnd	lda	#$00
	sta	apu_port1
	sta	port1bolox
	rts
.dying
	lda	#$4b
	sta	apu_port1
	sta	port1bolox
	rts
.ndying
	lda	inatunnel
	bne	.tunnel
	lda	gamemode
	bit	#space_mode
	bne	.space
.planet	lda	#%11000000
	bra	.gotmode
.water	lda	#%11000000
	bra	.gotmode
.space	lda	#%00000000
	bra	.gotmode
.tunnel	cmp	#2		;for water
	beq	.water
	lda	#%10000000
.gotmode	ora	playersndflag	;boost/slowdown sound
	sta	tpa


	lda	contl0
	bit	#key_leftl+key_rightl
	beq	.skip

	ai16			;get players acceleration
	ldx	playpt
	lda	al_worldx,x
	tax
	sec
	sbc	lastplayx
	stx	lastplayx
	bpl	.ok
	nega
.ok
	cmp	#playaccel1
	bcc	.accel1
	cmp	#playaccel2
	bcc	.accel2
	cmp	#playaccel3
	bcc	.accel3
.accel4	lda	#%11
	bra	.gotaccel
.accel3	lda	#%10
	bra	.gotaccel
.accel2	lda	#%01
	bra	.gotaccel
.accel1	lda	#%00
.gotaccel	ora	tpa
	sta	tpa
.skip	a8
	lda	nosetport3
	bne	.nosnd
	lda	tpa
	sta	apu_port1
	sta	port1bolox
	rts

.playport2
	sta	apu_port2
.nosnd
	rts



do_obstacles
	ai16			;do nearest sounds
	ldx	allst
.loop
	a8
	lda	al_hp,x
	cmp	#hardhp
	bne	.no
	s_jmpNOT_alsflag	x,realobj,.no
	s_jmp_alsflag	x,donesnd,.no

	a16
	ldy	playpt
	lda	pviewposx
	sec
	sbc	al_worldx,x
	bmi	.left
	cmp	#300
	bcs	.no
	bra	.ok
.left	cmp	#-300
	bcc	.no
.ok	lda	al_worldz,x
	sec
	sbc.w	al_worldz,y
	cmp	#obsdist
	bcc	.make


.no	ldy	_next,x
	tyx
	bne	.loop
	rts
.make
	a8
	s_set_alsflag	x,donesnd
	a16
	lda	pviewposx
	sec
	sbc	al_worldx,x
	bmi	.left2
.right	cmp	#80
	bcc	.centre
	a8
	trigse	se_dopright
	rts
	longa
.left2	cmp	#-80
	bcs	.centre
	a8
	trigse	se_dopleft
	rts
	longa
.centre	a8
	trigse	se_dopcentre
	rts




nearobjs	ai16			;do nearest sounds for port1
	ldx	allst
	lda	#$7fff
	stz	ktpx
.loop
	ldy	al_shape,x
	cpy	#ship_1
	lbeq	.forcesnd
	cpy	#ship_5s
	lbeq	.forcesnd
	cpy	#ship_5m
	lbeq	.forcesnd
	cpy	#ship_5
	lbeq	.forcesnd
	cpy	#ship_0_c
	lbeq	.forcesnd

	pha
	a8
	lda	al_flags,x
	bit	#afexp
	bne	.notnearest8
	lda.l	alx_snd1,x
	bne	.tst
	lda.l	alx_snd2,x
	beq	.notnearest8
.tst
	ldy	playpt
	a16
	lda	al_worldz,x
	sec
	sbc.w	al_worldz,y
	bpl	.okp
	nega
.okp	sta	rangexz
	pla

	cmp	rangexz    		;check if closest
	bcc	.skip
	lda	rangexz
	stx	ktpx		;store away ptr to block
	sta	ktpy		;and range
	bra	.skip

.notnearest8
	a16
.notnearest	pla
.skip	ldy	_next,x
	tyx
	lbne	.loop


	ldx	ktpx		;x = block of nearest alien
	lbeq	.nothing
	cpx	lastblock
	lbne	.nothing

	lda.l	alx_snd1,x
	and	#$ff
	lbne	.snd1

	lda.l	alx_snd2,x
	and	#$ff
	sta	ktpx		;store sound fx


	ldy	viewpt		;do arctan to object
	jsl	anglexy_l
	xba
	shorta
	longi
	a16
	and	#$ff
	tax
	lda.l	pantab,x
	and	#$ff
	ora	ktpx
	sta	ktpx

	lda	ktpy		;range
	cmp	#dist1snd
	bcc	.near
	cmp	#dist2snd
	bcc	.nmed
	cmp	#dist3snd
	bcc	.med
	cmp	#cutoffsnd
	bcs	.nothing
.far	a8
	lda	#%110000
	bra	.or
.med	a8
	lda	#%100000
	bra	.or
.nmed	a8
	lda	#%010000
	bra	.or
.near	a8
	lda	#%000000
.or	ora	ktpx
	pha
	lda	noenginemode
	bne	.done
	lda	tempenginekill
	bne	.done
	pla
	sta	apu_port2
	rts
.done
	pla
	rts
.nothing	a8
	stz	apu_port2
	stx	lastblock
	rts

.snd1	a8
	sta	apu_port2
	rts

.forcesnd	a16
	lda.l	alx_snd2,x
	and	#$ff
	sta	ktpx
	stx	lastblock

	ldy	playpt
	lda	al_worldz,x
	sec
	sbc.w	al_worldz,y
	bmi	.nothing
	sta	ktpy

	lda	pviewposx
	sec
	sbc	al_worldx,x
	bmi	.left
.right	cmp	#80
	bcc	.centre
	lda	ktpx
	ora	#%01000000
	bra	.donea
.left	cmp	#-80
	bcs	.centre
	lda	ktpx
	ora	#%11000000
	bra	.donea
.centre	lda	ktpx
	ora	#%10000000
.donea	sta	ktpx

	lda	ktpy
	cmp	#ship_1_mindist
	bcc	.nothing
	cmp	#ship_1_dist1snd
	bcc	.near
	cmp	#ship_1_dist2snd
	lbcc	.nmed
	cmp	#ship_1_dist3snd
	lbcc	.med
	cmp	#ship_1_cutoffsnd
	lbcc	.far
	bra	.nothing

;---------------------------------------------------------------
pantab
	rept	$78
	db	%01000000
	endr

	db	%01000000
	db	%01000000
	db	%01000000
	db	%01000000
	db	%01000000
	db	%10000000
	db	%10000000
	db	%10000000
	db	%10000000
	db	%10000000
	db	%11000000
	db	%11000000
	db	%11000000
	db	%11000000
	db	%11000000
	db	%11000000

	rept	$78
	db	%11000000
	endr


;---------------------------------------------------------------
	shorta
destbosssound_l
	lda	#se_destructbossnear
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#se_destructbossmid
	sta	msnd
	lda	#se_destructbossfar
	sta	fsnd
	jmp	makesnd

destenemysound_l
	lda	#se_destructenemynear
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#se_destructenemymid
	sta	msnd
	lda	#se_destructenemyfar
	sta	fsnd
	jmp	makesnd

damenemysound_l
	lda	#se_damageenemynear
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#se_damageenemymid
	sta	msnd
	lda	#se_damageenemyfar
	sta	fsnd
	jmp	makesnd

hitwallsound_l
	lda	#se_hitwallnear
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#se_hitwallmid
	sta	msnd
	lda	#se_hitwallfar
	sta	fsnd
	jmp	makesnd

missilesound_l
	lda	#se_missilenear
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#se_missilemid
	sta	msnd
	lda	#se_missilefar
	sta	fsnd
	jmp	makesnd

movewallsound_l
	lda	#se_movingwallleft
	sta	lsnd
	lda	#se_movingwallcentre
	sta	csnd
	lda	#se_movingwallright
	sta	rsnd
	lda	#se_movingwallmid
	sta	msnd
	lda	#se_movingwallfar
	sta	fsnd
	jmp	makesnd

lasersound_l
	lda	#se_laserleft
	sta	lsnd
	lda	#se_lasercentre
	sta	csnd
	lda	#se_laserright
	sta	rsnd
	lda	#se_lasermid
	sta	msnd
	lda	#se_laserfar
	sta	fsnd
	jmp	makesnd

enemybattrysound_l
	lda	#se_enemybattrynear
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#se_enemybattrymid
	sta	msnd
	lda	#se_enemybattryfar
	sta	fsnd
	jmp	makesnd

ringlasersound_l
	lda	#$5c
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#$5d
	sta	msnd
	lda	#$5e
	sta	fsnd
	jmp	makesnd


dooropensound_l
	lda	#054h
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#055h
	sta	msnd
	lda	#055h
	sta	fsnd
	jmp	makesnd

doorclosesound_l
	lda	#052h
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#053h
	sta	msnd
	lda	#053h
	sta	fsnd
	jmp	makesnd

enemyupsea_l
	lda	#068h
	sta	lsnd
	lda	#069h
	sta	csnd
	lda	#06ah
	sta	rsnd
	lda	#06bh
	sta	msnd
	lda	#06ch
	sta	fsnd
	jmp	makesnd

enemydownsea_l
	lda	#074h
	sta	lsnd
	lda	#075h
	sta	csnd
	lda	#076h
	sta	rsnd
	lda	#077h
	sta	msnd
	lda	#078h
	sta	fsnd
	jmp	makesnd

separatemissile_l
	lda	#049h
	sta	lsnd
	sta	csnd
	sta	rsnd
	lda	#04ah
	sta	msnd
	lda	#04bh
	sta	fsnd
	jmp	makesnd


makesnd	phx
	phy
	php
	ldy	playpt
	jsl	xzdiffs_l
	a16

	lda	rangexz
	cmp	#2000		;dist2snd
	bcc	.dist1
	cmp	#dist3snd
	bcc	.dist2
	cmp	#cutoffsnd
	bcc	.dist3
.ret
	plp
	ply
	plx
	rtl

	longa
.dist1	lda	pviewposx
	sec
	sbc	al_worldx,x
	bmi	.left
.right	cmp	#170
	bcc	.centre
	a8
	lda	lsnd
	jmp	.set
	longa
.left	cmp	#-170
	bcs	.centre
	a8
	lda	rsnd
	jmp	.set
.centre	a8
	lda	csnd
	jmp	.set
.dist2	a8
	lda	msnd
	jmp	.set
.dist3	a8
	lda	fsnd
.set
	jsl	setport3_l
.miss	jmp	.ret



	shorta
	longi
setport3_l	
	php
	pha
	a8
	lda	nosfx
	bne	.noset
	lda	bgmsfx
	cmp	#1
	beq	.noset
	cmp	#3
	beq	.noset

	lda	nosetport3
	bne	.noset

	lda	gameflags2
	and	#gf2_ingame
	beq	.dosnd

	lda	pshipflags2
	and	#psf2_playerHP0
	bne	.noset

;	lda	gameflags
;	and	#GF_PLAYERDYING
;	bne	.noset

.dosnd	
	lda	randomsound
	beq	.normsndgo
	pla
	bra	.doagain

.normsndgo
	pla
	bra	.ok
.doagain	jsl	random_l
	and	#255
	cmp	#176		;last sfx
	bpl	.doagain
	cmp	#2
	beq	.doagain
;	lda	#98
.ok
	phx
	ldx	sdspt3
	sta	sdport3,x
	lda	sdspt3
	inc	a
	and	#15
	sta	sdspt3
	plx
	plp
	rtl
.noset
	pla
	plp
	rtl





