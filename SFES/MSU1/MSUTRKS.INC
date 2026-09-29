;###############################
;# STAR FOX EX MSU-1 TRACK IDS #
;###############################

	IFNE	MSUTRACKREPORT
; Write MSUTRKS.CSV header
	fopen	+MSUTRKS.CSV
	printf	"Track Number,Label,Desc,Version%n"
	fclose	MSUTRKS.CSV
	ENDC

	msutrack	fitunl,0,<Entering the Pipe>,<OST>
	msutrack	newtitle,1,<EX - Title Screen>,<OST>
	msutrack	menu,2,<Exploratorium>,<Demo>
	msutrack	controls,3,<Controls Select>,<Church of Kondo>
	msutrack	training,4,<Training Mode>,<OST>
	msutrack	map1,5,<Star Fox Map>,<Church of Kondo>
	msutrack	map2,6,<Star Fox EX Map>,<Arranged>
	msutrack	briefing,7,<Map Briefing Zoom>,<OST>
	msutrack	briefingshort,8,<Map Briefing Zoom Short>,<OST>
	msutrack	scramble,9,<SCRAMBLE Sequence>,<OST>
; -- MAP 2 LEVELS --
	; route 5
	msutrack	level5_1,10,<SG Proto Space>,<Arranged>
	msutrack	level5_2,11,<Gekou>,<Arranged>
	msutrack	level5_3,12,<Sector K>,<OST>
	msutrack	level5_4,13,<Alpha>,<Arr. Demo>
	msutrack	level5_5,14,<Kazaru>,<Arr. Demo>
	; route 6
	msutrack	level6_2,15,<Pebble Beach>,<OST>
	msutrack	level6_3,16,<Tarkus-H 2-112>,<Original .it Version>
	msutrack	level6_4,17,<Cygard / Shmuppy>,<OST>
	msutrack	level6_5,18,<Tolimas>,<OST>
	; route 7
	msutrack	level7_1,19,<Interstellar>,<SPC>
	msutrack	level7_2,20,<Papetoon>,<Arr. Demo>
	msutrack	level7_3,21,<Eis>,<Arr. Demo>
	msutrack	level7_4,22,<Kuraudo>,<OST>

; -- MAP 2 BOSSES --
	; route 5
	msutrack	boss5_1,23,<Linktron>,<Arranged>
	msutrack	boss5_2,24,<Black Rose>,<Arr. Demo>
	msutrack	boss5_3,25,<Morph Ball>,<SPC>
	msutrack	boss5_4,26,<King Dodora>,<OST>
	msutrack	boss5_5a,27,<Star Wolf>,<OST>
	msutrack	boss5_5b,28,<We are the Mario Bros.>,<OST>
	; route 6
	msutrack	boss6_2,29,<Luigi Hydra>,<OST>
	msutrack	boss6_4,30,<Pierrot>,<OST>
	msutrack	boss6_5,31,<Gyaraga>,<OST>
	; route 7
	msutrack	boss7_2,32,<Galaxip>,<OST>
	msutrack	boss7_3,33,<Rexius>,<OST>
	msutrack	boss7_4,34,<Air Raider>,<OST>
	msutrack	boss7_5,35,<Brobot Attack!>,<OST>
	msutrack	bosscomet,36,<Yoshisaur>,<Arr. Demo>

; -- BONUS LEVELS --
	msutrack	levelaustralia,37,<Australia>,<OST>
	msutrack	levelcomet,38,<Suisei>,<OST>

; -- FANFARES --
	msutrack	fanfare,39,<Stage Clear>,<Arranged>
	msutrack	fanfarefinal,40,<Last Boss Clear (Star Fox)>,<OST>
	msutrack	fanfarefinalmap2,41,<Final Fanfare>,<OST>
	msutrack	playerdown,42,<Player Down>,<OST>

; -- Ending & Credits
	msutrack	gameenddemo,43,<Game End Demonstration>,<OST>
	msutrack	bossroll,44,<Boss Roll (Star Fox)>,<OST>
	msutrack	bossrollmap2,45,<Hurricane (Star Fox EX Boss Roll)>,<SPC>
	msutrack	credits,46,<Credits (Sp0rch)>,<SPC>

; -- BONUS TRACKS
	msutrack	eschatos,47,<Eschatos - POINT OF NO RETURN>,<Eschatos OST>

; -- MAP 1 LEVELS --
	; route 1
	msutrack	level1_1,48,<Corneria>,<Church of Kondo>
	msutrack	level1_2,49,<Asteroid/Venom Orbital>,<OST>
	msutrack	level1_3,50,<Space Armada>,<OST>
	msutrack	level1_4,51,<Meteor>,<OST>
	msutrack	level1_6,52,<Venom Surface>,<OST>
	; route 2
	msutrack	level2_2,53,<Sector X / Z>,<OST>
	msutrack	level2_3,54,<Titania>,<OST>
	msutrack	level2_4,55,<Sector Y>,<Church of Kondo>
	msutrack	level2_6,56,<Venom Rt. 2>,<OST>
	; route 3
	msutrack	level3_3,57,<Fortuna>,<Church of Kondo>
	msutrack	level3_5,58,<Macbeth>,<Church of Kondo>

; -- MAP 1 BOSSES --
	; route 1
	msutrack	boss1_1,59,<Boss Corneria>,<OST>
	msutrack	boss1_2,60,<Boss Asteroid>,<OST>
	msutrack	boss1_3,61,<Boss Space Armada>,<OST>
	msutrack	boss1_4,62,<Boss Meteor>,<OST>
	; route 2
	msutrack	boss2_3,63,<Boss Titania>,<OST>
	; route 3
	msutrack	boss3_3,64,<Boss Fortuna>,<OST>
	msutrack	boss3_5,65,<Boss Macbeth>,<OST>
	; common
	msutrack	boss1_5a,66,<Phantron II>,<OST>
	msutrack	boss1_5b,67,<Great Commander>,<SPC>
	msutrack	boss1_5c,68,<Phantron I>,<OST>
	msutrack	bossandross,69,<Boss Andross>,<OST>
	; bonus
	msutrack	bossootd,70,<Slot Machine>,<Church of Kondo>

; -- BONUS LEVELS --
	msutrack	levelblackhole,71,<Black Hole>,<OST Arranged>
	msutrack	levelootd,72,<Out of this Dimension>,<OST>
; -- MISC --
	msutrack	enteringdangerousterritory,73,<Entering Dangerous Territory>,<Church of Kondo>
	msutrack	creditsmap1,74,<Staff Roll>,<OST>
	msutrack	secretactivated,75,<Secret Activated>,<OST>

; EOF