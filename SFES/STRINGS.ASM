strats_start

	INCPUBLICS	strings.ext	



version
	dw	0
	db	"v1.11.03"
	dw	0

msu1text
	dw	0
	db	"MSU-1"
	dw	0

builddatetext
	dw	0
	run	' db %qBuilt %$BUILDDATE%q'
	dw	0

fpscountertext
	dw	0
	db	"FPS Counter"
	dw	0

nobackgroundstext
	dw	0
	db	"NO BACKGROUNDS"
	dw	0

blankspace
	dw	0
	db	" "
	dw	0


	dw	0

	
weaponslist			
.start
	dw	.end-.start
	db	"Elaser"
	dw	0
	db	"Dual Laser"
	dw	0
	db	"Dual Beam"
	dw	0
	db	"Cross Laser"
	dw	0
	db	"Quintouple Laser"
	dw	0
	db	"Plasma Beam"
	dw	0
	db	"Oval Beam"
	dw	0 
	db	"Ring Laser"
	dw	0 
	db	"Fireball"
	dw	0 
	db	"Flame Thrower"
	dw	0 
	db	"Black Hole"
	dw	0 
	db	"Electric Shock"
	dw	0 
	db	"Space Debris"
	dw	0 	
	db	"Iron Ball"
	dw	0 
	db	"Asteroid"
	dw	0 
	db	"Amoeba"
	dw	0 
	db	"Escapee"
	dw	0 
	dw	.end-.start
.end
	dw	0

weaponslist2					
.start
	dw	.end-.start
	db	"Fire Breath"
	dw	0
	db	"Missile"
	dw	0
	db	"Chicken Missile"
	dw	0
	db	"Water Gun"
	dw	0
	db	"Smoke Gun"
	dw	0
	db	"Spikey Ball"
	dw	0
	db	"Egg Shooter"
	dw	0 
	db	"Arwing Shooter"
	dw	0 
	db	"Andross Shooter"
	dw	0 
	db	"Nano Wasps"
	dw	0 
	db	"Nucleus Beam"
	dw	0 
	db	"Super Homing Laser"
	dw	0 
	db	"Shotgun"
	dw	0
	db	"God Gun 98"
	dw	0 	
	db	"God Gun 99"
	dw	0 
	dw	.end-.start
.end
	dw	0
	
BGMlist				
.start
	dw	.end-.start
	db	"Title Demonstration"
	dw	0
	db	"Title Screen"
	dw	0
	db	"Controls"
	dw	0
	db	"Training Mode"
	dw	0
	db	"Course Map Select"
	dw	0
	db	"Black Hole Map Select"
	dw	0
	db	"Emergency Call"
	dw	0 
	db	"Corneria"
	dw	0 
	db	"Asteroid and Venom Orbital"
	dw	0 
	db	"Coming out of warp speed"
	dw	0 
	db	"Space Armada"
	dw	0 
	db	"Meteor"
	dw	0 
	db	"Titania"
	dw	0 	
	db	"Sector Y"
	dw	0 
	db	"Venom Base Level 2"
	dw	0 
	db	"Fortuna"
	dw	0 
	dw	.end-.start
.end
	dw	0	
	
BGMlist2					
.start
	dw	.end-.start
	db	"Sector X and Sector Z"
	dw	0
	db	"Macbeth"
	dw	0
	db	"Black Hole BGM"
	dw	0
	db	"Out of this Dimension"
	dw	0
	db	"Game Over"
	dw	0
	db	"Continue"
	dw	0
	db	"Game Clear Demonstration"
	dw	0 
	db	"Ending"
	dw	0
	db	"Main Theme"
	dw	0 
	db	"Venom Base Levels 1 and 3"
	dw	0 
	db	"Press R again for bossbgm"
	dw	0
	dw	.end-.start
.end
	dw	0	
	
bgmspeedtext
	dw	0
	db	"BGM Speed"
	dw	0

modelviewtext
	dw	0
	db	"MODEL VIEW"
	dw	0

fasttext
	dw	0
	db	"FAST"
	dw	0

playercolboxtext
	dw	0
	db	"Show Player ColBox"
	dw	0
	
subtracknumbertext
	dw	0
	db	"Sub Track Number"
	dw	0

slowtext
	dw	0
	db	"SLOW"
	dw	0

menudarkmodetext
	dw	0
	db	"Dark Mode"
	dw	0

menudefaultmodetext
	dw	0
	db	" Default"
	dw	0

menurainbowkmodetext
	dw	0
	db	"RainbowK"
	dw	0
	
menublackscmodetext
	dw	0
	db	"Black.Sc"
	dw	0
	
menuwhitescmodetext
	dw	0
	db	"White.Sc"
	dw	0
	
menugreenscmodetext
	dw	0
	db	"Green.Sc"
	dw	0

menubluescmodetext
	dw	0
	db	" Blue.Sc"
	dw	0

menucyanscmodetext
	dw	0
	db	" Cyan.Sc"
	dw	0

menupalettetext
	dw	0
	db	"OBJ Palette"
	dw	0

menuretro2modetext
	dw	0
	db	" Retro 2"
	dw	0

menugreenmodetext
	dw	0
	db	"   Green"
	dw	0
	
menuretro1modetext
	dw	0
	db	" Retro 1"
	dw	0
	

menumistmodetext
	dw	0
	db	"    Mist"
	dw	0

menurainbowmodetext
	dw	0
	db	" Rainbow"
	dw	0

pressstarttext
	dw	0
	db	"PRESS START"
	dw	0
	
stepbysteptext
	dw	0
	db	"Step By Step"
	dw	0

menunodotstext
	dw	0
	db	"No Dots/Snow/Stars"
	dw	0

	
fireratetext
	dw	0
	db	"FireRate"
	dw	0
	
settingstext	
	dw	0
	db	"settings"
	dw	0

bgmtext				
	dw	0
	db	"BGM"
	dw	0
	
sfxtext				
	dw	0
	db	"SFX"
	dw	0
	
rapidfiretext					
	dw	0
	db	"Rapid Fire"
	dw	0
	
godmodetext					
	dw	0
	db	"God"
	dw	0

curspetext					
	dw	0
	db	"CurSpec"
	dw	0

totspetext					
	dw	0
	db	"TotSpec"
	dw	0

plustext					
	dw	0
	db	"+"
	dw	0

minustext					
	dw	0
	db	"-"
	dw	0
	
doubletext					
	dw	0
	db	"double"
	dw	0

ontext						
	dw	0
	db	"on  "
	dw	0

p2text
	dw	0
	db	"2p "
	dw	0

p2plustext
	dw	0
	db	"2p+"
	dw	0

p4text
	dw	0
	db	"4p "
	dw	0

onplusplustext						
	dw	0
	db	"Assault"
	dw	0
	
blank7						
	dw	0
	db	"       "
	dw	0
	
onplustext						
	dw	0
	db	"on+ "
	dw	0
	
worldxtext						
	dw	0
	db	"worldx"
	dw	0

worldytext						
	dw	0
	db	"worldy"
	dw	0
	
offtext						
	dw	0
	db	"off  "
	dw	0

weapontext					
	dw	0
	db	"Weapon"
	dw	0

healthtext
	dw	0
	db	"Health"
	dw	0
		
ngplustext
	dw	0
	db	"  hard"
	dw	0
		
text51
	dw	0
	db	"Corneria Boss"
	dw	0

text52
	dw	0
	db	"Asteroid Boss"
	dw	0
text53
	dw	0
	db	"Titania Boss"
	dw	0

text54
	dw	0
	db	"Fortuna Boss"
	dw	0

text55
	dw	0
	db	"Meteor Boss"
	dw	0

text56
	dw	0
	db	"Macbeth Boss"
	dw	0
	
text57
	dw	0
	db	"Venom Boss"
	dw	0

text58
	dw	0
	db	"Course Clear OOTD"
	dw	0

text59
	dw	0
	db	"Last Boss Andross"
	dw	0

text510
	dw	0
	db	"Space Armada Boss"
	dw	0

PressRtext
	dw	0
	db	"Press Start to exit         Press R to kill"
	dw	0
	
menutitletext
	dw	0
	db	"++SPECIAL MENU++"
	dw	0

menumodestext
	dw	0
	db	"Game Modes"
	dw	0

menucheatstext
	dw	0
	db	"Cheats"
	dw	0

menumodstext
	dw	0
	db	"Mods"
	dw	0

fpsmenutext
	dw	0
	db	"FPS MENU"
	dw	0
	
regiontext
	dw	0
	db	"PAL MODE"
	dw	0
	
PALtext
	dw	0
	db	"PAL "
	dw	0
	
NTSCtext
	dw	0
	db	"NTSC"
	dw	0
	
menupressstarttext
	dw	0
	db	"Press start to exit"
	dw	0

	
menu4text
	dw	0
	db	"Scored"
	dw	0
	
menu5text
	dw	0
	db	"HARD MODE"
	dw	0

menu6text
	dw	0
	db	"Endurance"
	dw	0		

menu7text
	dw	0
	db	"Level Features"
	dw	0	

menu8text
	dw	0
	db	"Enemy fire disabled"
	dw	0		

menu9text
	dw	0
	db	"2 Player Mode    "
	dw	0
	
menu10text
	dw	0
	db	"Rainbow Laser"
	dw	0

menu11text
	dw	0
	db	"Model Size"
	dw	0

menu12text
	dw	0
	db	"CPU AI TEAM MODE"
	dw	0
	
menufonttext
	dw	0
	db	"WIREFRAME MODE"
	dw	0
	
menunewtext
	dw	0
	db	"New "
	dw	0
	

	
menunormaltext
	dw	0
	db	"x1"
	dw	0

menubiggertext
	dw	0
	db	"x2"
	dw	0

menubiggesttext
	dw	0
	db	"x4"
	dw	0


menupreviouspagetext
	dw	0
	db	"previous page"
	dw	0
	
	
menuscrambletext
	dw	0
	db	"scramble skip"
	dw	0

configsaveloadtext
	dw	0
	db	"config load/reset"
	dw	0
	
configmenutext
	dw	0
	db	"config load+reset"
	dw	0

resetdefaultstext
	dw	0
	db	"reset to defaults"
	dw	0
	
classicpresettext
	dw	0
	db	"Classic preset"
	dw	0


	
freezeexp
	dw	0
	db	"Frz+Exp"
	dw	0
	
pressytext	
	dw	0
	db	"Press Y to play sfx+bgm"
	dw	0

thankstext	
	dw	0
	db	"Thanks"
	dw	0

altsoundfonttext
	dw	0
	db	"Alt Instruments"
	dw	0

	dw	0	
thanks1
	dw	0
	db	"Emuchicken MLGari CornFlakesDel.Devilish JirachiKid 41DNHayao Gersonzao Dajoho FenixOrengefox Snaphat Wilptx w7ndrwhosthat drgreen sfan     Sunlit + Monika Delta pigma1Dirtbag RandomStuff StarxxonBirdonwheels Pikangs Chuck  ChrisHighwind"
	dw	0 ;																																																											  "
	
thanks2
	dw	0
	db	" NickReynolds  CoolK FuxMcClown VitorVilelaCrashOverride Snakpak Wolfy RetroMasterHD Ecks Matze    MrL314 Atomic PaulieWalnuts MrHashshashin Catador TranceKaine23 HGWells628 Talnova  controllerhead Karmic Juno  SegaRetro92 citizen17 DAD   CMM1215 JakeDSnake MADevil "
	dw	0

thanks3
	dw	0
	db	" Wifey + Kids K.A.O.T. MOM   Studsx Loz EdenGT alefunky"
	dw	0

	dw	0	
	
titledemonstrationtext
;	db	"                            "
	db	"Title Demonstration         "
	dw	0

titlescreentext
	db	"Title Screen                "
	dw	0

controlstext
	db	"Controls                    "
	dw	0

trainingmodetext
	db	"Training Mode               "
	dw	0

CourseMapSelecttext
	db	"Course Map Select           "
	dw	0

blackholemapselecttext
	db	"Black Hole Map Select       "
	dw	0

emergencycalltext
	db	"Emergency Call              "
	dw	0

corneriatext
	db	"Corneria                    "
	dw	0
funkmonkiestext
	db	"funkmonkies                 "
	dw	0
interstellartext
	db	"Interstellar                "
	dw	0
sp0rchtext
	db	"Sp0rch                      "
	dw	0
hurricanetext
	db	"HURRICANE                   "
	dw	0

asteroidandvenomorbitaltext
	db	"Asteroid and Venom Orbital  "
	dw	0

Comingoutofwarpspeedtext
	db	"Coming out of warp speed    "
	dw	0

spacearmadatext
	db	"space armada                "
	dw	0

meteortext
	db	"Meteor                      "
	dw	0

titaniatext
	db	"Titania                     "
	dw	0

SectorYtext
	db	"Sector Y                    "
	dw	0

VenomBaseLevel2text
	db	"Venom Base Level 2          "
	dw	0

fortunatext
	db	"Fortuna                     "
	dw	0

sectorxandsectorztext	
	db	"Sector X and Sector Z       "
	dw	0
	
macbethtext
	db	"Macbeth                     "
	dw	0
	
blackholebgmtext
	db	"Black Hole BGM              "
	dw	0
	
Outofthisdimensiontext
	db	"Out of this Dimension       "
	dw	0
	
gameovertext	
	db	"game over                   "
	dw	0
	
continuetext	
	db	"Continue                    "
	dw	0
	
gamecleardemonstrationtext
	db	"Game Clear Demonstration    "
	dw	0
	
endingtext	
	db	"Ending                      "
	dw	0
	
MainThemetext	
	db	"Main Theme                  "
	dw	0

venombaselevels1and3text	
	db	"Venom Base Levels 1 and 3   "
	dw	0
	
bosscorneriatext
	db	"Boss Corneria               "
	dw	0

BossMeteortext
	db	"Boss Meteor                 "
	dw	0

Bossfortunatext
	db	"Boss Fortuna                "
	dw	0
	
BossMacbethtext
	db	"Boss Macbeth                "
	dw	0
	
BossTitaniaText
	db	"Boss Titania                "
	dw	0

BossAsteroidText
	db	"Boss Asteroid               "
	dw	0

BossSpaceArmadaText	
	db	"Boss Space Armada           "
	dw	0
	
Bossvenombase1text
	db	"Boss Venom Base 1           "
	dw	0

BossVenomBase2text
	db	"Boss Venom Base 2           "
	dw	0

bossvenombaseextendedtext
	db	"Boss Venom Base Extended    "
	dw	0

BossVenomBaseShortText
	db	"Boss Venom Base Short       "
	dw	0

lastbossandrosstext
	db	"Last Boss Andross           "
	dw	0

playerdownorchestratext
	db	"Player Down Orchestra       "
	dw	0

PlayerDownBandText
	db	"Player Down Band            "
	dw	0

lastbosscleartext
	db	"Last Boss Clear             "
	dw	0

courseclearorchestratext
	db	"Course Clear Orchestra      "
	dw	0

courseclearbandtext
	db	"Course Clear Band           "
	dw	0
	
slotmachinetext
	db	"Slot Machine                "
	dw	0
	
EnteringDangerousTerritorytext
	db	"Entering Dangerous Territory"
	dw	0
	
courseclearootdtext
	db	"Course Clear OOTD           "
	dw	0
		
secretactivatedtext
	db	"Secret Activated            "
	dw	0
	
bgmtesttext
	dw	0
	db	"Sound Test"
	dw	0

bgmnumbertext
	dw	0
	db	"BGM Number"
	dw	0
	
playrestarttext
	dw	0
	db	"Play-restart"
	dw	0

tracknumbertext
	dw	0
	db	"Track Number"
	dw	0
	
speeduptext
	dw	0
	db	"SPEED UP"
	dw	0
	
slowdowntext
	dw	0
	db	"slow down"
	dw	0

fadeouttext
	dw	0
	db	"fade out"
	dw	0

soundfxnumbertext
	dw	0
	db	"Sound FX Number"
	dw	0

menudisablebgmtext
	dw	0
	db	"Disable BGM/SFX"
	dw	0	

fpstext
	dw	0
	db	"FPS "
	dw	0

playsoundtext
	dw	0
	db	"Play Sound"
	dw	0

shipselecttext
	dw	0
	db	"SHIP SELECT"
	dw	0	
	
	dw	0

	
sfx1text	    ;took 4 days,CK,8.8.21
	db	"PAUSE                       "
	dw	0
sfx2text
	db	"-NAN                        "
	dw	0
sfx3text
	db	"PLAYER DOWN                 "
	dw	0
sfx4text
	db	"PLAYER CRASH                "
	dw	0
sfx5text
	db	"LEFT WING DAMAGED           "
	dw	0
sfx6text
	db	"RIGHT WING DAMAGED          "
	dw	0
sfx7text
	db	"LEFT WING CRASH             "
	dw	0
sfx8text
	db	"RIGHT WING CRASH            "
	dw	0
sfx9text
	db	"LEFT WING SCRATCH           "
	dw	0
sfx10text
	db	"RIGHT WING SCRATCH          "
	dw	0
sfx11text
	db	"INCOMING ENEMY              "
	dw	0
sfx12text
	db	"WING DAMAGED                "
	dw	0
sfx13text
	db	"COME IN CORNERIA -BGM 34-   "
	dw	0
sfx14text
	db	"BONUS CREDIT                "
	dw	0
sfx15text
	db	"BIG SUPPORT RING            "
	dw	0
sfx16text
	db	"1UP RING HIT                "
	dw	0
sfx17text
	db	"CONTROLS SELECT             "
	dw	0
sfx18text
	db	"PERCENTAGE RING             "
	dw	0
sfx19text
	db	"JINGLE + GOOD LUCK -BGM 4-  "
	dw	0
sfx20text
	db	"CONE HIT                    "
	dw	0
sfx21text
	db	"TWIN BLASTER POWERUP        "
	dw	0
sfx22text
	db	"SHIELD POWERUP              "
	dw	0
sfx23text
	db	"WING REPAIRED POWERUP       "
	dw	0
sfx24text
	db	"BOMB POWERUP                "
	dw	0
sfx25text
	db	"WINGLESS ARWING COLLISION   "
	dw	0
sfx26text
	db	"SLOT MACHINE COIN           "
	dw	0
sfx27text
	db	"SMALL ARWING DAMAGE ALARM   "
	dw	0
sfx28text
	db	"BIG ARWING DAMAGE ALARM     "
	dw	0
sfx29text
	db	"SMALL BOSS EXPLOSION        "
	dw	0
sfx30text
	db	"NEAR BIG BOSS EXPLOSION     "
	dw	0
sfx31text
	db	"MID BIG BOSS EXPLOSION      "
	dw	0
sfx32text
	db	"FAR BIG BOSS EXPLOSION      "
	dw	0
sfx33text
	db	"NEAR ENEMY EXPLOSION        "
	dw	0
sfx34text
	db	"MID ENEMY EXPLOSION         "
	dw	0
sfx35text
	db	"FAR ENEMY EXPLOSION         "
	dw	0
sfx36text
	db	"NEAR ENEMY HIT              "
	dw	0
sfx37text
	db	"MID ENEMY HIT               "
	dw	0
sfx38text
	db	"FAR ENEMY HIT               "
	dw	0
sfx39text
	db	"NEAR LASER DEFLECT          "
	dw	0
sfx40text
	db	"MID LASER DEFLECT           "
	dw	0
sfx41text
	db	"FAR LASER DEFLECT           "
	dw	0
sfx42text
	db	"GOOD LUCK -BGM 4-           "
	dw	0
sfx43text
	db	"ENEMY WARP-IN               "
	dw	0
sfx44text
	db	"CONE TRIANGLE               "
	dw	0
sfx45text
	db	"1-6+2-3 BOSS SHADOWING      "
	dw	0
sfx46text
	db	"PLASMA HYDRA ARM HIT        "
	dw	0
sfx47text
	db	"ROCK CRUSHER ROLL           "
	dw	0
sfx48text
	db	"PLAYER BOMB EXPLOSION       "
	dw	0
sfx49text
	db	"PLAYER BOMB SHOT            "
	dw	0
sfx50text
	db	"PLAYER BOOST                "
	dw	0
sfx51text
	db	"PLAYER BRAKE                "
	dw	0
sfx52text
	db	"PLAYER TWIN BLASTER SHOT    "
	dw	0
sfx53text
	db	"PLAYER LASER SHOT           "
	dw	0
sfx54text
	db	"DUAL BEAM SHOT              "
	dw	0
sfx55text
	db	"DUAL BEAM SHOT -UNUSED-     "
	dw	0
sfx56text
	db	"BIRD SCREAM -UNUSED-        "
	dw	0
sfx57text
	db	"ENEMY ROCKET PLAYER HIT     "
	dw	0
sfx58text
	db	"DODORA EGG CRACK + BIRD     "
	dw	0
sfx59text
	db	"DODORA HIT                  "
	dw	0
sfx60text
	db	"NEAR ENEMY ROCKET SHOT      "
	dw	0
sfx61text
	db	"MID ENEMY ROCKET SHOT       "
	dw	0
sfx62text
	db	"FAR ENEMY ROCKET SHOT       "
	dw	0
sfx63text
	db	"LEFT GATE MOVING            "
	dw	0
sfx64text
	db	"CENTRE GATE MOVING          "
	dw	0
sfx65text
	db	"RIGHT GATE MOVING           "
	dw	0
sfx66text
	db	"MID GATE MOVING             "
	dw	0
sfx67text
	db	"FAR GATE MOVING             "
	dw	0
sfx68text
	db	"LEFT ENEMY LASER SHOT       "
	dw	0
sfx69text
	db	"CENTRE ENEMY LASER SHOT     "
	dw	0
sfx70text
	db	"RIGHT ENEMY LASER SHOT      "
	dw	0
sfx71text
	db	"MID ENEMY LASER SHOT        "
	dw	0
sfx72text
	db	"FAR ENEMY LASER SHOT        "
	dw	0
sfx73text
	db	"NEAR ENEMY BATTERY          "
	dw	0
sfx74text
	db	"MID ENEMY BATTERY           "
	dw	0
sfx75text
	db	"FAR ENEMY BATTERY           "
	dw	0
sfx76text
	db	"PHATRON 2 LANDING           "
	dw	0
sfx77text
	db	"PHATRON 2 JUMP              "
	dw	0
sfx78text
	db	"-UNUSED-                    "
	dw	0
sfx79text
	db	"DANCING INSECTOR PROPELLING "
	dw	0
sfx80text
	db	"BLADE BARRIER POST-DRILL ATK"
	dw	0
sfx81text
	db	"BLADE BARRIER PLAYER WEB HIT"
	dw	0
sfx82text
	db	"LAST BASE ENTRY 2.DOOR CLOSE"
	dw	0
sfx83text
	db	"FAR LB ENTRY 2.DOOR CLOSE   "
	dw	0
sfx84text
	db	"LAST BASE ENTRY 2.DOOR OPEN "
	dw	0
sfx85text
	db	"FAR LB ENTRY 2.DOOR OPEN    "
	dw	0
sfx86text
	db	"PLAYER AMOEBA HIT           "
	dw	0
sfx87text
	db	"BLOCKADE DIRECTION CHANGE   "
	dw	0
sfx88text
	db	"HOVERING -UNUSED-           "
	dw	0
sfx89text
	db	"DOOR CLOSE -UNUSED-         "
	dw	0
sfx90text
	db	"DOOR OPEN -UNUSED-          "
	dw	0
sfx91text
	db	"HOVERING -UNUSED-           "
	dw	0
sfx92text
	db	"NEAR ENEMY RING SHOT        "
	dw	0
sfx93text
	db	"MID ENEMY RING SHOT         "
	dw	0
sfx94text
	db	"FAR ENEMY RING SHOT         "
	dw	0
sfx95text
	db	"PEPPER RADIO CHAT           "
	dw	0
sfx96text
	db	"FOX RADIO CHAT              "
	dw	0
sfx97text
	db	"FALCO RADIO CHAT            "
	dw	0
sfx98text
	db	"PEPPY RADIO CHAT            "
	dw	0
sfx99text
	db	"SLIPPY RADIO CHAT           "
	dw	0
sfx100text
	db	"RADIO CHAT QUIT             "
	dw	0
sfx101text
	db	"PLAYER CAMERA CHANGE        "
	dw	0
sfx102text
	db	"DESTRUCTOR WEAPN HEAD ATTACK"
	dw	0
sfx103text
	db	"CONTINUE LETS GO -BGM 30-   "
	dw	0
sfx104text
	db	"LEFT WATER SPLASH OUT       "
	dw	0
sfx105text
	db	"CENTRE WATER SPLASH         "
	dw	0
sfx106text
	db	"RIGHT WATER SPLASH          "
	dw	0
sfx107text
	db	"MID WATER SPLASH            "
	dw	0
sfx108text
	db	"FAR WATER SPLASH            "
	dw	0
sfx109text
	db	"LEFT OBJECT FLY-BY          "
	dw	0
sfx110text
	db	"CENTRE OBJECT FLY-BY        "
	dw	0
sfx111text
	db	"RIGHT OBJECT FLY-BY         "
	dw	0
sfx112text
	db	"ATOMIC BASE POWER SUPPLY OFF"
	dw	0
sfx113text
	db	"ATOMIC BASE POWER SUPPLY ON "
	dw	0
sfx114text
	db	"ATOMIC BASE CORE CLOSE      "
	dw	0
sfx115text
	db	"ATOMIC BASE CORE OPEN       "
	dw	0
sfx116text
	db	"LEFT WATER SPLASH IN        "
	dw	0
sfx117text
	db	"CENTRE WATER SPLASH IN      "
	dw	0
sfx118text
	db	"RIGHT WATER SPLASH IN       "
	dw	0
sfx119text
	db	"MID WATER SPLASH IN         "
	dw	0
sfx120text
	db	"FAR WATER SPLASH IN         "
	dw	0
sfx121text
	db	"BACKGROUND THUNDER -UNUSED- "
	dw	0
sfx122text
	db	"FALCO RADIO CHAT HIT        "
	dw	0
sfx123text
	db	"FALCO RADIO CHAT DOWN       "
	dw	0
sfx124text
	db	"PEPPY RADIO CHAT HIT        "
	dw	0
sfx125text
	db	"PEPPY RADIO CHAT DOWN       "
	dw	0
sfx126text
	db	"SLIPPY RADIO CHAT HIT       "
	dw	0
sfx127text
	db	"SLIPPY RADIO CHAT DOWN      "
	dw	0
sfx128text
	db	"PHANTRON 2 HIT              "
	dw	0
sfx129text
	db	"PHANTRON 2 SCREAM           "
	dw	0
sfx130text
	db	"ROCK CRUSHER APPEARS        "
	dw	0
sfx131text
	db	"DESTRUCTOR ENGINE           "
	dw	0
sfx132text
	db	"PHANTRON APPEARS            "
	dw	0
sfx133text
	db	"ROCK CRUSHER UNCOVER        "
	dw	0
sfx134text
	db	"PILON TO GROUND             "
	dw	0
sfx135text
	db	"ANDROSS APPEARS             "
	dw	0
sfx136text
	db	"ANDROSS HIT                 "
	dw	0
sfx137text
	db	"TEXT TING                   "
	dw	0
sfx138text
	db	"SILENCE -BGM 10-            "
	dw	0
sfx139text
	db	"PRE-WING REPAIRED           "
	dw	0
sfx140text
	db	"ANDROSS RADIO CHAT          "
	dw	0
sfx141text
	db	"METAL SMASHER SMASHING      "
	dw	0
sfx142text
	db	"METAL SMASHER CLOSE         "
	dw	0
sfx143text
	db	"BLADE BARRIER WEB ATTACK    "
	dw	0
sfx144text
	db	"BONUS RING BIRD             "
	dw	0
sfx145text
	db	"COMET FLY-BY                "
	dw	0
sfx146text
	db	"WHALE SCREAM                "
	dw	0
sfx147text
	db	"STINGRAY HIT                "
	dw	0
sfx148text
	db	"SQUID HIT                   "
	dw	0
sfx149text
	db	"SPINNING CORE BG THUNDER    "
	dw	0
sfx150text
	db	"PHANTRON SCREAM             "
	dw	0
sfx151text
	db	"DANCING INSECTOR MOVEMENT   "
	dw	0
sfx152text
	db	"DANCING INSECTOR FIRE SHOT  "
	dw	0
sfx153text
	db	"DANCING INSECTOR FIRE FLY-BY"
	dw	0
sfx154text
	db	"VOLCANO FIRE                "
	dw	0
sfx155text
	db	"SLOT MACHINE HANDLE DOWN    "
	dw	0
sfx156text
	db	"SLOT MACHINE SLOT SPINNING  "
	dw	0
sfx157text
	db	"PROFESSOR HANGER APPEARS    "
	dw	0
sfx158text
	db	"PROFESSOR HANGER DISAPPEARS "
	dw	0
sfx159text
	db	"FINAL SCORE SCREEN FLIGHT   "
	dw	0
sfx160text
	db	"ANDROSS SHELL EXPLOSION     "
	dw	0
sfx161text
	db	"ANDROSS SCREAM 4            "
	dw	0
sfx162text
	db	"ANDROSS SCREAM 3            "
	dw	0
sfx163text
	db	"ANDROSS SCREAM 2            "
	dw	0
sfx164text
	db	"ANDROSS SCREAM 1            "
	dw	0
sfx165text
	db	"-NO SOUND-                  "
	dw	0
sfx166text
	db	"ENEMY HOVERING -UNUSED-     "
	dw	0
sfx167text
	db	"SHOOTING STAR -UNUSED-      "
	dw	0
sfx168text
	db	"OBJECT IMPACT -UNUSED-      "
	dw	0
sfx169text
	db	"ENEMY -UNUSED-              "
	dw	0
sfx170text
	db	"BACKGROUND THUNDER -UNUSED- "
	dw	0
sfx171text
	db	"BONUS -UNUSED-              "
	dw	0
sfx172text
	db	"DESTRUCTOR ENGINE -UNUSED-  "
	dw	0
sfx173text
	db	"PHANTRON SCREAM -UNUSED-    "
	dw	0
sfx174text
	db	"GOOD LUCK -BGM 4- -UNUSED-  "
	dw	0
sfx175text
	db	"BONUS -UNUSED-              "
	dw	0
	
	
	
menustartgametext
	dw	0
	db	"start game"
	dw	0
	
menudisablesfxtext
	dw	0
	db	"Disable SFX"
	dw	0	

	

mtinstruct1
	dw	0
	db	"Y-B"
	dw	0
	
		
	
mtinstruct4
	dw	0
	db	"ROTATE MODEL"
	dw	0
	
mtinstruct5
	dw	0
	db	"L-R"
	dw	0

mtinstruct7
	dw	0
	db	"HOLD A"
	dw	0
	
mtinstruct8
	dw	0
	db	"DRAWING MODE"
	dw	0
	
	
mtinstruct10
	dw	0
	db	"AND PRESS A"
	dw	0
	
mtinstruct11
	dw	0
	db	"HIDE MODEL NAME"
	dw	0
	
mtinstruct12
	dw	0
	db	"AND PRESS DPAD"
	dw	0
	
mtinstruct13
	dw	0
	db	"MOVE OBJECT CENTER"
	dw	0
	
mtinstruct14
	dw	0
	db	"L AND R TOGETHER"
	dw	0
	
mtinstruct15
	dw	0
	db	"RESET ALL POSITIONS"
	dw	0

	
debugtext
	dw	0
	db	"debug"
	dw	0

noobjmodetext
	dw	0
	db	"no objects"
	dw	0
	
menu2text
	dw	0
	db	"PEPPER SKIP"
	dw	0


mousebothtext
	dw	0
	db	"Both mouse"
	dw	0

braketext
	dw	0
	db	"brake"
	dw	0
	
boosttext
	dw	0
	db	"boost"
	dw	0

scopetext
	dw	0
	db	"Super Scope Mode"
	dw	0

calibratetext
	dw	0
	db	"SCOPE CALIBRATION"
	dw	0

dblblankspace
	dw	0
	db	"  "
	dw	0

colortext
	dw	0
	db	"color"
	dw	0
	
sizetext
	dw	0
	db	"size"
	dw	0
	
calibrateheretext
	dw	0
	db	"HIT C ON TARGET TO CALIBRATE"
	dw	0

selecttocleartext
	dw	0
	db	"PRESS SELECT TO CLEAR SCREEN"
	dw	0


zerokeytext
	dw	0
	db	"0"
	dw	0

onekeytext
	dw	0
	db	"1"
	dw	0

twokeytext
	dw	0
	db	"2"
	dw	0

threekeytext
	dw	0
	db	"3"
	dw	0

fourkeytext
	dw	0
	db	"4"
	dw	0

fivekeytext
	dw	0
	db	"5"
	dw	0

sixkeytext
	dw	0
	db	"6"
	dw	0

sevenkeytext
	dw	0
	db	"7"
	dw	0

eightkeytext
	dw	0
	db	"8"
	dw	0


hashkeytext
	dw	0
	db	"hash"
	dw	0
	
hanguptext
	dw	0
	db	"hangup"
	dw	0

periodtext
	dw	0
	db	"period"
	dw	0

startext
	dw	0
	db	"star"
	dw	0




noborderstext
	dw	0
	db	"noborder"
	dw	0


press1text
	dw	0
	db	"Press start to reset game"
	dw	0
	
press2text
	dw	0
	db	"Press select for Hard Mode"
	dw	0

boostmetertext
	dw	0
	db	"boost/brake meter"
	dw	0


mtinstruct6
	dw	0
	db	"ZOOM IN OR OUT"
	dw	0


mousetext
	dw	0
	db	"MOUSE CONTROL"
	dw	0


menuorigtext
	dw	0
	db	"Orig"
	dw	0

newtitletext
	db	"New Title Screen            "
	dw	0

flygametext
	db	"mario paint fly game        "
	dw	0

prototypetext
	db	"star glider proto space     "
	dw	0

gnattext
	db	"mario paint gnat music      "
	dw	0

	
metropolistext
	db	"sim city metropolis         "
	dw	0	
	
centershiptext
	dw	0
	db	"classic camera"
	dw	0
	
classichptext
	dw	0
	db	"classic HP/Wing dmg"
	dw	0

barrelrolltext
	dw	0
	db	"hold to barrel roll"
	dw	0


	dw	0

	
kazarutext
	db	"Assault on Kazaru           "
	dw	0
	
hilitecolortext
	dw	0
	db	"hilite color"
	dw	0
	
dotstext
	dw	0
	db	"dots "
	dw	0
	
starstext
	dw	0
	db	"stars"
	dw	0
	db	0
	
bothtext
	dw	0
	db	"both "
	dw	0
	
bgmofftext
	dw	0
	db	"bgm "
	dw	0
	
sfxofftext
	dw	0
	db	"sfx "
	dw	0
	
nanmodetext
	dw	0
	db	"-NAN MODE"
	dw	0


superfx2text
	dw	0
	db	"21.4 MHZ SUPER FX"
	dw	0

mtinstruct2
	dw	0
	db	"NEXT or PREV MODEL"
	dw	0
		
mtinstruct3
	dw	0
	db	"UP-DOWN-LEFT-RIGHT"
	dw	0

ninekeytext
	dw	0
	db	"9"
	dw	0
	
cbuttontext
	dw	0
	db	"C"
	dw	0

noenginesoundtext
	dw	0
	db	"no engine sounds"
	dw	0

menumodeltestmodetext
	dw	0
	db	"model viewer"
	dw	0
	
mtinstruct9
	dw	0
	db	"HOLD X"
	dw	0	

menu3text
	dw	0
	db	"Random Fire"
	dw	0	
	
bouncedeathtext
	dw	0
	db	"bouncy death mode"
	dw	0
	
starglidtext
	dw	0
	db	"starglid"
	dw	0
	
randomsoundtext
	dw	0
	db	"random sfx"
	dw	0

eistext
	db	"EIS                         "
	dw	0
	
pebbletext
	db	"pebble beach                "
	dw	0
	

sectorktext
	db	"Sector K                    "
	dw	0	
	
smb3swimtext
	db	"SMB 3 Swim Level            "
	dw	0	
	
sf2seletext
	db	"NEW MAP                     "
	dw	0
	
mariotext
	db	"We are the mario bros       "
	dw	0

secretmenutext
	dw	0
	db	"secret menu"
	dw	0
	
craymodetext
	dw	0
	db	"cray mode"
	dw	0

randompostext
	dw	0
	db	"random spawn pos"
	dw	0
	
randombgmtext
	dw	0
	db	"random bgms"
	dw	0
	
kandomodetext
	dw	0
	db	"kando mode"
	dw	0
	
autosafaritext
	dw	0
	db	"auto safari mode"
	dw	0
	
	
backgroundtext
	dw	0
	db	"background"
	dw	0
	
nohudtext
	dw	0
	db	"no hud"
	dw	0
	
moredotstext
	dw	0
	db	"more dots/snow/stars"
	dw	0
	
papetoontext
	db	"PAPETOON                   "
	dw	0	
fitunltext
	db	"ENTERING THE PIPE          "
	dw	0	
	
colorwarptext
	dw	0
	db	"texture warp mode"
	dw	0
	
lsdmodetext
	dw	0
	db	"rave party mode"
	dw	0
	
colortriptext
	dw	0
	db	"color trip mode"
	dw	0
	
	
menu1text
	dw	0
	db	"God Mode"
	dw	0

cursedbgmtext
	dw	0
	db	"CURSED BGMS"
	dw	0	
	
	
randompalettetext
	dw	0
	db	"Randomize BG Palette"
	dw	0


randomobjpalettetext
	dw	0
	db	"Randomize OBJ Palette"
	dw	0
	
	
allatoncetext
	dw	0
	db	"All at once mode"
	dw	0
	
colortripobjtext
	dw	0
	db	"Color Trip OBJ Mode"
	dw	0

	dw	0

kurusotext
	db	"KURAUDO                    "
	dw	0

starwolftext
	db	"STAR WOLF BATTLE           "
	dw	0	
finfanfaretext
	db	"FINAL FANFARE NEW          "
	dw	0
mario2text
	db	"MARIO BROS FINALE          "
	dw	0	
yoshibgmtext
	db	"YOSHISAUR                  "
	dw	0	
zeromustext
	db	"ZEROMUS                    "
	dw	0	
eschatostext
	db	"ESCHATOS                   "
	dw	0	
tarkustext
	db	"TARKUS                     "
	dw	0	

sectorkbosstext
	db	"MORPH BALL                 "
	dw	0		
luigihydratext
	db	"LUIGI HYDRA                "
	dw	0		
gyaragatext
	db	"GYARAGA                    "
	dw	0		
tolimastext
	db	"TOLIMAS                    "
	dw	0		
galaxiptext
	db	"GALAXIP                    "
	dw	0		
gekoutext
	db	"GEKOU                      "
	dw	0		
rexiustext
	db	"REXIUS                     "
	dw	0		
shmuppytext
	db	"CYGARD                     "
	dw	0		
airraidertext
	db	"AIR RAIDER                 "
	dw	0		
linktrontext
	db	"LINKTRON                   "
	dw	0		
alphatext
	db	"ALPHA                      "
	dw	0		

kidodoratext
	db	"king dodora                "
	dw	0		
blackrosetext
	db	"black rose                 "
	dw	0
	IFNE	MSU1
msu1_notitletext
	db	"no title                   "
	dw	0
msu1_briefingzoomtext
	db	"Briefing Zoom              "
	dw	0
msu1_briefingzoomshorttext
	db	"Briefing Zoom Short        "
	dw	0
	ENDC
thanks4
	dw	0
	db	"Phonymike raphnet labs kungfufurby livvy94 chromius scoub razorvolare ben hickling captain N chewbaccabox chuckborisnorris euclidium godfist matze quickbutt plasmariel solgnar andross64 punk7890 blazingraven darkhorse mbachmann"
	dw	0

menupagetext
	dw	0
	db	"page"
	dw	0

gridlinestext
	dw	0
	db	"grid lines"
	dw	0	
	
crosshairtext2
	dw	0
	db	"XHAIR"
	dw	0	
crosshairtext
	dw	0
	db	"CROSSHAIR MENU"
	dw	0
	
shapetext
	dw	0
	db	"shape"
	dw	0
	
australiatext
	dw	0
	db	"PRESS FIRE TO EXPERIENCE    AUSTRALIA"
	dw	0
	
nttpadtesttext
	dw	0
	db	"ntt pad test"
	dw	0
	
SHIPtext
	dw	0
	db	"SHIP"
	dw	0


comettext
	db	"SUISEI                     "
	dw	0	
australiabgmtext
	db	"AUSTRALIA                  "
	dw	0	
menubgmtext
	db	"EXPLORATORIUM              "
	dw	0	
	
atext
	dw	0
	db	"a"
	dw	0
	
btext
	dw	0
	db	"b"
	dw	0
	
xtext
	dw	0
	db	"x"
	dw	0
	
ytext
	dw	0
	db	"y"
	dw	0
	
ltext
	dw	0
	db	"lt"
	dw	0
	
rtext
	dw	0
	db	"rt"
	dw	0

starttext
	dw	0
	db	"st"
	dw	0
	
selecttext
	dw	0
	db	"s"
	dw	0
	
uptext
	dw	0
	db	"u"
	dw	0
	
downtext
	dw	0
	db	"d"
	dw	0
	
lefttext
	dw	0
	db	"l"
	dw	0
	
righttext
	dw	0
	db	"r"
	dw	0

p1text
	dw	0
	db	"P1"
	dw	0

p2textt
	dw	0
	db	"P2"
	dw	0

p3text
	dw	0
	db	"P3"
	dw	0

p4textt
	dw	0
	db	"P4"
	dw	0

p5text
	dw	0
	db	"P5"
	dw	0
	
multitaptext
	dw	0
	db	"MULTITAP  TEST"
	dw	0	

multitapsupporttext
	dw	0
	db	"MULTITAP SUPPORT"
	dw	0

numplayerstext
	dw	0
	db	"NUMBER OF PLAYERS"
	dw	0
	
nttsupport
	dw	0
	db	"NTT Data Pad Support"
	dw	0
	
maxfpstext
	dw	0
	db	"MAX FPS"
	dw	0
crosshairtypetext
	dw	0
	db	"Crosshair Type"
	dw	0
crosshairshapetext
	dw	0
	db	"Crosshair Shape"
	dw	0
	
	
currplayertext
	dw	0
	db	"Current Player"
	dw	0

	
randomizelevelstext
	dw	0
	db	"RANDOMIZE LEVELS"
	dw	0
	
	
sfxplaylist
	dw	sfx1text&WM
	dw	sfx2text&WM
	dw	sfx3text&WM
	dw	sfx4text&WM
	dw	sfx5text&WM
	dw	sfx6text&WM
	dw	sfx7text&WM
	dw	sfx8text&WM
	dw	sfx9text&WM
	dw	sfx10text&WM
	dw	sfx11text&WM
	dw	sfx12text&WM
	dw	sfx13text&WM
	dw	sfx14text&WM
	dw	sfx15text&WM
	dw	sfx16text&WM
	dw	sfx17text&WM
	dw	sfx18text&WM
	dw	sfx19text&WM
	dw	sfx20text&WM
	dw	sfx21text&WM
	dw	sfx22text&WM
	dw	sfx23text&WM
	dw	sfx24text&WM
	dw	sfx25text&WM
	dw	sfx26text&WM
	dw	sfx27text&WM
	dw	sfx28text&WM
	dw	sfx29text&WM
	dw	sfx30text&WM
	dw	sfx31text&WM
	dw	sfx32text&WM
	dw	sfx33text&WM
	dw	sfx34text&WM
	dw	sfx35text&WM
	dw	sfx36text&WM
	dw	sfx37text&WM
	dw	sfx38text&WM
	dw	sfx39text&WM
	dw	sfx40text&WM
	dw	sfx41text&WM
	dw	sfx42text&WM
	dw	sfx43text&WM
	dw	sfx44text&WM
	dw	sfx45text&WM
	dw	sfx46text&WM
	dw	sfx47text&WM
	dw	sfx48text&WM
	dw	sfx49text&WM
	dw	sfx50text&WM
	dw	sfx51text&WM
	dw	sfx52text&WM
	dw	sfx53text&WM
	dw	sfx54text&WM
	dw	sfx55text&WM
	dw	sfx56text&WM
	dw	sfx57text&WM
	dw	sfx58text&WM
	dw	sfx59text&WM
	dw	sfx60text&WM
	dw	sfx61text&WM
	dw	sfx62text&WM
	dw	sfx63text&WM
	dw	sfx64text&WM
	dw	sfx65text&WM
	dw	sfx66text&WM
	dw	sfx67text&WM
	dw	sfx68text&WM
	dw	sfx69text&WM
	dw	sfx70text&WM
	dw	sfx71text&WM
	dw	sfx72text&WM
	dw	sfx73text&WM
	dw	sfx74text&WM
	dw	sfx75text&WM
	dw	sfx76text&WM
	dw	sfx77text&WM
	dw	sfx78text&WM
	dw	sfx79text&WM
	dw	sfx80text&WM
	dw	sfx81text&WM
	dw	sfx82text&WM
	dw	sfx83text&WM
	dw	sfx84text&WM
	dw	sfx85text&WM
	dw	sfx86text&WM
	dw	sfx87text&WM
	dw	sfx88text&WM
	dw	sfx89text&WM
	dw	sfx90text&WM
	dw	sfx91text&WM
	dw	sfx92text&WM
	dw	sfx93text&WM
	dw	sfx94text&WM
	dw	sfx95text&WM
	dw	sfx96text&WM
	dw	sfx97text&WM
	dw	sfx98text&WM
	dw	sfx99text&WM
	dw	sfx100text&WM
	dw	sfx101text&WM
	dw	sfx102text&WM
	dw	sfx103text&WM
	dw	sfx104text&WM
	dw	sfx105text&WM
	dw	sfx106text&WM
	dw	sfx107text&WM
	dw	sfx108text&WM
	dw	sfx109text&WM
	dw	sfx110text&WM
	dw	sfx111text&WM
	dw	sfx112text&WM
	dw	sfx113text&WM
	dw	sfx114text&WM
	dw	sfx115text&WM
	dw	sfx116text&WM
	dw	sfx117text&WM
	dw	sfx118text&WM
	dw	sfx119text&WM
	dw	sfx120text&WM
	dw	sfx121text&WM
	dw	sfx122text&WM
	dw	sfx123text&WM
	dw	sfx124text&WM
	dw	sfx125text&WM
	dw	sfx126text&WM
	dw	sfx127text&WM
	dw	sfx128text&WM
	dw	sfx129text&WM
	dw	sfx130text&WM
	dw	sfx131text&WM
	dw	sfx132text&WM
	dw	sfx133text&WM
	dw	sfx134text&WM
	dw	sfx135text&WM
	dw	sfx136text&WM
	dw	sfx137text&WM
	dw	sfx138text&WM
	dw	sfx139text&WM
	dw	sfx140text&WM
	dw	sfx141text&WM
	dw	sfx142text&WM
	dw	sfx143text&WM
	dw	sfx144text&WM
	dw	sfx145text&WM
	dw	sfx146text&WM
	dw	sfx147text&WM
	dw	sfx148text&WM
	dw	sfx149text&WM
	dw	sfx150text&WM
	dw	sfx151text&WM
	dw	sfx152text&WM
	dw	sfx153text&WM
	dw	sfx154text&WM
	dw	sfx155text&WM
	dw	sfx156text&WM
	dw	sfx157text&WM
	dw	sfx158text&WM
	dw	sfx159text&WM
	dw	sfx160text&WM
	dw	sfx161text&WM
	dw	sfx162text&WM
	dw	sfx163text&WM
	dw	sfx164text&WM
	dw	sfx165text&WM
	dw	sfx166text&WM
	dw	sfx167text&WM
	dw	sfx168text&WM
	dw	sfx169text&WM
	dw	sfx170text&WM
	dw	sfx171text&WM
	dw	sfx172text&WM
	dw	sfx173text&WM
	dw	sfx174text&WM
	dw	sfx175text&WM

	IFNE	MSU1
bgmlisttext
	dw	fitunltext&WM	; MAP 2
	dw	titlescreentext&WM
	dw	menubgmtext&WM
	dw	controlstext&WM
	dw	trainingmodetext&WM
	dw	coursemapselecttext&WM
	dw	sf2seletext&WM
	dw	msu1_briefingzoomtext&WM
	dw	msu1_briefingzoomshorttext&WM
	dw	emergencycalltext&WM
	dw	prototypetext&WM
	dw	gekoutext&WM
	dw	sectorktext&WM
	dw	alphatext&WM
	dw	kazarutext&WM
	dw	pebbletext&WM
	dw	tarkustext&WM
	dw	shmuppytext&WM
	dw	tolimastext&WM
	dw	interstellartext&WM
	dw	papetoontext&WM
	dw	eistext&WM
	dw	kurusotext&WM
	dw	linktrontext&WM
	dw	blackrosetext&WM
	dw	sectorkbosstext&WM
	dw	kidodoratext&WM
	dw	starwolftext&WM
	dw	mariotext&WM
	dw	luigihydratext&WM
	dw	zeromustext&WM
	dw	gyaragatext&WM
	dw	galaxiptext&WM
	dw	rexiustext&WM
	dw	airraidertext&WM
	dw	mario2text&WM
	dw	yoshibgmtext&WM
	dw	australiabgmtext&WM
	dw	comettext&WM
	dw	courseclearbandtext&WM
	dw	lastbosscleartext&WM
	dw	finfanfaretext&WM
	dw	playerdownbandtext&WM
	dw	gamecleardemonstrationtext&WM
	dw	endingtext&WM
	dw	hurricanetext&WM
	dw	sp0rchtext&WM
	dw	eschatostext&WM
	dw	corneriatext&WM	; MAP 1
	dw	asteroidandvenomorbitaltext&WM
	dw	spacearmadatext&WM
	dw	meteortext&WM
	dw	venombaselevels1and3text&WM
	dw	sectorxandsectorztext&WM
	dw	titaniatext&WM
	dw	sectorytext&WM
	dw	venombaselevel2text&WM
	dw	fortunatext&WM
	dw	macbethtext&WM
	dw	bosscorneriatext&WM
	dw	bossasteroidtext&WM
	dw	bossspacearmadatext&WM
	dw	bossmeteortext&WM
	dw	bosstitaniatext&WM
	dw	bossfortunatext&WM
	dw	bossmacbethtext&WM
	dw	Bossvenombase2text&WM
	dw	Bossvenombaseextendedtext&WM
	dw	Bossvenombase1text&WM
	dw	lastbossandrosstext&WM
	dw	slotmachinetext&WM
	dw	blackholebgmtext&WM
	dw	outofthisdimensiontext&WM
	dw	enteringdangerousterritorytext&WM
	dw	mainthemetext&WM
	dw	secretactivatedtext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	dw	msu1_notitletext&WM
	ELSEIF
bgmlisttext
	dw	titledemonstrationtext&WM
	dw	titlescreentext&WM
	dw	controlstext&WM
	dw	coursemapselecttext&WM
	dw	emergencycalltext&WM
	dw	corneriatext&WM
	dw	meteortext&WM
	dw	titaniatext&WM
	dw	fortunatext&WM
	dw	macbethtext&WM
	dw	asteroidandvenomorbitaltext&WM
	dw	spacearmadatext&WM
	dw	venombaselevel2text&WM
	dw	sectorxandsectorztext&WM
	dw	sectorytext&WM
	dw	venombaselevels1and3text&WM
	dw	bosscorneriatext&WM
	dw	bossmeteortext&WM
	dw	bossfortunatext&WM
	dw	bossmacbethtext&WM
	dw	bosstitaniatext&WM
	dw	bossasteroidtext&WM
	dw	bossspacearmadatext&WM
	dw	bossvenombase2text&WM
	dw	bossvenombaseextendedtext&WM
	dw	bossvenombaseshorttext&WM
	dw	lastbossandrosstext&WM
	dw	playerdownorchestratext&WM
	dw	playerdownbandtext&WM
	dw	gameovertext&WM
	dw	continuetext&WM
	dw	courseclearorchestratext&WM
	dw	courseclearbandtext&WM
	dw	lastbosscleartext&WM
	dw	gamecleardemonstrationtext&WM
	dw	endingtext&WM
	dw	mainthemetext&WM
	dw	outofthisdimensiontext&WM
	dw	slotmachinetext&WM
	dw	blackholebgmtext&WM
	dw	blackholemapselecttext&WM
	dw	trainingmodetext&WM
	dw	enteringdangerousterritorytext&WM
	dw	courseclearootdtext&WM
	dw	secretactivatedtext&WM
	dw	Comingoutofwarpspeedtext&WM
	dw	newtitletext&WM
	dw	menubgmtext&WM
	dw	eschatostext&WM
	dw	gnattext&WM
	dw	metropolistext&WM
	dw	smb3swimtext&WM
	dw	sf2seletext&WM
	dw	prototypetext&WM
	dw	linktrontext&WM
	dw	gekoutext&WM
	dw	blackrosetext&WM
	dw	sectorktext&WM
	dw	sectorkbosstext&WM
	dw	alphatext&WM
	dw	kidodoratext&WM
	dw	pebbletext&WM
	dw	luigihydratext&WM
	dw	tarkustext&WM
	dw	shmuppytext&WM
	dw	zeromustext&WM
	dw	tolimastext&WM
	dw	gyaragatext&WM
	dw	papetoontext&WM
	dw	galaxiptext&WM
	dw	eistext&WM
	dw	rexiustext&WM
	dw	kurusotext&WM
	dw	airraidertext&WM
	dw	kazarutext&WM
	dw	starwolftext&WM
	dw	fitunltext&WM
	dw	mariotext&WM
	dw	mario2text&WM
	dw	finfanfaretext&WM
	dw	comettext&WM
	dw	yoshibgmtext&WM
	dw	australiabgmtext&WM
	dw	funkmonkiestext&WM
	dw	interstellartext&WM
	dw	sp0rchtext&WM
	dw	hurricanetext&WM
	ENDC
	strats_end
	