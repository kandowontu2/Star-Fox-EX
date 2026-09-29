

	start_shapes

	ifne	DO_HDR
demoshapes
	endc




;------------------------------------------------------------------------------

s	=	playerW_boxsize
	ifne	DO_HDR
pcolLW		
	IFNE		player_showcolboxes	
	shapehdr	PWcube_P,0,Pcube_F,0,0,0,0,0,0,playerW_boxsize,playerW_boxsize,playerW_boxsize,69,default_c,0,<pcolRW>
	ELSEIF
	shapehdr	0,0,0,0,0,0,0,0,0,playerW_boxsize,playerW_boxsize,playerW_boxsize,69,default_c,0,<cube>
	ENDC
pcolRW
	IFNE		player_showcolboxes	
	shapehdr	PWcube_P,0,Pcube_F,0,0,0,0,0,0,playerW_boxsize,playerW_boxsize,playerW_boxsize,69,default_c,0,<pcolRW>
	ELSEIF
	shapehdr	0,0,0,0,0,0,0,0,0,playerW_boxsize,playerW_boxsize,playerW_boxsize,69,default_c,0,<cube>
	ENDC

	elseif

PWcube_P
	datahdr
	Pointsb	3
	pb	s,-s,s	;0
	pb	-s,s,s	;1
	pb	s,s,-s	;2
	PointsXb	1
	pb	s,-s,-s	;3
	Pointsb	3
	pb	-s,-s,s	;5
	pb	-s,s,-s	;6
	pb	s,s,s	;7

	EndPoints

	ENDC

;------------------------------------------------------------------------------

s	=	playerB_boxsize
	ifne	DO_HDR
pcolB
	IFNE		player_showcolboxes	
	shapehdr	Pcube_P,0,Pcube_F,0,0,0,0,0,0,playerB_boxsize,playerB_boxsize,playerB_boxsize,69,default_c,0,<pcolB>
	ELSEIF
	shapehdr	0,0,0,0,0,0,0,0,0,playerB_boxsize,playerB_boxsize,playerB_boxsize,69,default_c,0,<cube>
	ENDC
	elseif


Pcube_P
	datahdr
	Pointsb	3
	pb	s,-s,s	;0
	pb	-s,s,s	;1
	pb	s,s,-s	;2
	PointsXb	1
	pb	s,-s,-s	;3
	Pointsb	3
	pb	-s,-s,s	;5
	pb	-s,s,-s	;6
	pb	s,s,s	;7

	EndPoints
Pcube_F
	Vizis	4
	Viz	5,4,3,0,127,0	;0
	Viz	5,1,6,127,0,0	;1
	Viz	4,6,2,0,0,-127	;2
	Viz	7,0,3,-127,0,0	;3

	Faces
	Face4	18,0,0,127,0,5,4,3,0
	Face4	16,1,127,0,0,5,1,6,4
	Face4	14,2,0,0,-127,4,6,2,3
	Face4	12,3,-127,0,0,7,0,3,2
	Fend
	EndShape

	ENDC

;------------------------------------------------------------------------------

	ifne	DO_HDR
andross	shapehdr TXsquare100_P,0,TXsquare_F2,0,0,0,0,1,0,100,100,100,100,andross_C,0,<andross>
;androsshole	shapehdr TXsquare100_P,0,TXsquare_F3,0,0,0,0,2,0,100,100,100,100,androsshole_C,0,<androsshole>
	endc

;------------------------------------------------------------------------------

as	=	200

	ifne	DO_HDR
androsscube	
	shapehdr	androsscube_P,0,androsscube_F,0,0,0,0,0,0,as,as,as,as,andross_C,0,<androsscube>
	elseif


androsscube_P
	PointsXw	4
	pw	as,as,-as	;0
	pw	as,-as,-as	;2
	pw	as,as,as 	;4
	pw	as,-as,as	;6

	EndPoints
androsscube_F
	Vizis	6
	Viz	5,7,6,0,0,127	;0
	Viz	2,3,1,0,0,-127	;1
	Viz	4,6,2,-127,0,0	;2
	Viz	3,7,5,127,0,0	;3
	Viz	2,6,7,0,127,0	;4
	Viz	5,4,0,0,-127,0	;5

	Faces
	Face4	0,0,0,0,127,5,7,6,4
	Face4	0,1,0,0,-127,2,3,1,0
	Face4	0,2,-127,0,0,4,6,2,0
	Face4	0,3,127,0,0,3,7,5,1
	Face4	0,4,0,127,0,2,6,7,3
	Face4	0,5,0,-127,0,5,4,0,1

	Fend
	EndShape

	ENDC

ass	=	50

	ifne	DO_HDR
kandrosscubee	
	shapehdr	kandrosscube_P,0,kandrosscube_F,0,0,0,0,0,0,ass,ass,ass,ass,kandross_C,0,<androsscube>
	elseif


kandrosscube_P
	PointsXw	4
	pw	ass,ass,-ass	;0
	pw	ass,-ass,-ass	;2
	pw	ass,ass,ass 	;4
	pw	ass,-ass,ass	;6

	EndPoints
kandrosscube_F
	Vizis	6
	Viz	5,7,6,0,0,127	;0
	Viz	2,3,1,0,0,-127	;1
	Viz	4,6,2,-127,0,0	;2
	Viz	3,7,5,127,0,0	;3
	Viz	2,6,7,0,127,0	;4
	Viz	5,4,0,0,-127,0	;5

	Faces
	Face4	0,0,0,0,127,5,7,6,4
	Face4	0,1,0,0,-127,2,3,1,0
	Face4	0,2,-127,0,0,4,6,2,0
	Face4	0,3,127,0,0,3,7,5,1
	Face4	0,4,0,127,0,2,6,7,3
	Face4	0,5,0,-127,0,5,4,0,1

	Fend
	EndShape

	ENDC



ars	=	75

	ifne	DO_HDR
kandologocube
	ShapeHdr	landrosscube_P,0,landrosscube_F,0,0,0,0,0,0,ars,ars,ars,ars,kandologo_c,0,<kandologocube>


	elseif


landrosscube_P
	PointsXw	4
	pw	ars,ars,-ars	;0
	pw	ars,-ars,-ars	;2
	pw	ars,ars,ars 	;4
	pw	ars,-ars,ars	;6

	EndPoints
landrosscube_F
	Vizis	6
	Viz	5,7,6,0,0,127	;0
	Viz	2,3,1,0,0,-127	;1
	Viz	4,6,2,-127,0,0	;2
	Viz	3,7,5,127,0,0	;3
	Viz	2,6,7,0,127,0	;4
	Viz	5,4,0,0,-127,0	;5

	Faces
	Face4	0,0,0,0,127,5,7,6,4
	Face4	0,1,0,0,-127,2,3,1,0
	Face4	0,2,-127,0,0,4,6,2,0
	Face4	0,3,127,0,0,3,7,5,1
	Face4	0,4,0,127,0,2,6,7,3
	Face4	0,5,0,-127,0,5,4,0,1

	Fend
	EndShape

	ENDC




softsprites	=	1	; software sprites off/on (0/1)


	ifne	DO_HDR
nullshape	shapehdr 0,0,0,0,0,0,0,2,0,34,34,36,47,burnmark_C,0,<null>
FOlargeshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,1000,1000,0,0,<FOlargeshape>
largeshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,200,200,0,0,<largeshape>
mediumshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,90,90,0,0,<mediumshape>
smallshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,50,50,0,0,<smallshape>

firesize	=	10
firebreath	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,1+1,0,firesize,firesize,firesize,firesize,fire_C,0,<firebreath>
fire	shapehdr square_P,0,square_F2,0,0,0,0,1+1,0,34,34,36,47,burnmark_C,0,<fire>
ringlaser	shapehdr square_P,0,square_F3,0,0,0,0,2,0,firesize,firesize,firesize*3,firesize,ringlaser_C,0,<ringlaser>
ironball	shapehdr square_P,0,square_F3,0,0,0,0,2+1,0,firesize,firesize,firesize*3,firesize,ironball_C,boll,<ironball>
ironball2	shapehdr square_P,0,square_F3,0,0,0,0,1,0,firesize,firesize,firesize*3,firesize,ironball_C,boll,<ironball2>
fireball	shapehdr square_P,0,square_F2,0,0,0,0,1+1,0,firesize,firesize,firesize,firesize,fireball_C,boll,<fireball>
flame	shapehdr square_P,0,square_F2,0,0,0,0,1+1,0,firesize,firesize,firesize,firesize,flame_C,boll,<fireball>
bonfireball	shapehdr square_P,0,square_F2,0,0,0,0,1+1,0,firesize,firesize,firesize,firesize,bonfire_C,boll,<bonfireball>
Lfireball	shapehdr square_P,0,square_F3,0,0,0,0,2+1,0,firesize,firesize,firesize,firesize,fireball_C,boll,<Lfireball>
SSsmoke	shapehdr square_P,0,square_F3,0,0,0,0,0,0,firesize,firesize,firesize,firesize,smoke2_C,0,<smoke>
Ssmoke	shapehdr square_P,0,square_F3,0,0,0,0,1,0,firesize,firesize,firesize,firesize,smoke2_C,0,<smoke>
smoke	shapehdr square_P,0,square_F3,0,0,0,0,2,0,firesize,firesize,firesize,firesize,smoke_C,0,<smoke>
Lsmoke	shapehdr square_P,0,square_F4,0,0,0,0,3,0,firesize,firesize,firesize,firesize,smoke_C,0,<Lsmoke>
L2smoke	shapehdr square_P,0,square_F4,0,0,0,0,4,0,firesize,firesize,firesize,firesize,smoke_C,0,<L2smoke>
FOLsmoke	shapehdr square_P,0,square_F4,0,0,0,0,5,0,firesize,firesize,firesize,firesize,smoke_C,0,<FOLsmoke>

mother1	shapehdr 0,0,0,0,0,0,0,0,0,0,0,0,0,default_c,0,<MOTHER1>
Ssplash	shapehdr square_P,0,square_F,0,0,0,0,2,0,4,4,4,4,splash_C,0,<Ssplash>
splash 	shapehdr square_P,0,square_F1,0,0,0,0,3,0,4,4,4,4,splash_C,0,<splash>
fsplash 	shapehdr square_P,0,square_F1,0,0,0,0,3,0,4,4,4,4,fsplash_C,0,<splash>
lavasplash 	shapehdr square_P,0,square_F1,0,500,0,0,2,0,4,4,4,4,lavasplash_C,0,<splash>
superboost	shapehdr square_P,0,square_F3,0,0,0,0,1,0,4,4,4,4,bouncyball_C,0,<superboost>
bouncyball	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,bouncyball_C,0,<bouncyball>
largeplasma	shapehdr square_P,0,square_F3,0,0,0,0,3+1,0,4,4,4,4,bouncyball_C,0,<largeplasma>


vortex1	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,2,2,30,99,vortex1_c,0,<vortex1>
blueasteroid	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,blueasteroid_C,0,<blueasteroid>
greenasteroid	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,greenasteroid_C,0,<greenasteroid>
yellowasteroid	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,yellowasteroid_C,0,<yellowasteroid>
aasteroid	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,aasteroid_C,0,<aasteroid>

grabber2	shapehdr square_P,0,square_F5,0,0,0,0,4,0,7,7,7,7,ballandchain_C,0,<grabber2>
grabber3	shapehdr square_P,0,square_F5,0,0,0,0,2,0,7,7,7,7,ballandchain_C,0,<grabber3>
nuke    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,specialweapon_C,0,<nuke>
tame 	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,tame_c,0,<tame>
xhair2 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair2_c,0,<xhair2>
xhair3 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair3_c,0,<xhair3>
xhair4 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair4_c,0,<xhair4>
xhair5 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair5_c,0,<xhair5>
xhair6 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair6_c,0,<xhair6>
xhair7 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair7_c,0,<xhair7>
xhair8 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair8_c,0,<xhair8>
xhair9 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair9_c,0,<xhair9>
xhair10 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair10_c,0,<xhair10>
xhair11 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair11_c,0,<xhair11>
xhair12 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair12_c,0,<xhair12>
xhair13 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair13_c,0,<xhair13>
xhair14 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair14_c,0,<xhair14>
xhair15 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair15_c,0,<xhair15>
xhair16 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair16_c,0,<xhair16>
xhair17 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,xhair17_c,0,<xhair17>
gxhair1 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,gxhair1_c,0,<gxhair1>
gxhair2 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,gxhair2_c,0,<gxhair2>
gxhair3 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,gxhair3_c,0,<gxhair3>
gxhair4 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,gxhair4_c,0,<gxhair4>
bxhair1 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,metroid_c,0,<bxhair1>
bxhair2 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,bxhair2_c,0,<bxhair2>
bxhair3 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,bxhair3_c,0,<bxhair3>
bxhair4 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,bxhair4_c,0,<bxhair4>
yxhair1 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,yxhair1_c,0,<yxhair1>
yxhair2 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,yxhair2_c,0,<yxhair2>
yxhair3 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,yxhair3_c,0,<yxhair3>
yxhair4 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,yxhair4_c,0,<yxhair4>
rxhair1 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,rxhair1_c,0,<rxhair1>
rxhair2 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,rxhair2_c,0,<rxhair2>
rxhair3 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,rxhair3_c,0,<rxhair3>
rxhair4 	shapehdr PWcube_P,0,Pcube_F,0,0,0,0,3,0,4,4,4,4,rxhair4_c,0,<rxhair4>

asteroid1	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,asteroid_C,0,<asteroid1>
asteroid2	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,asteroid2_C,0,<asteroid2>
asteroidb	shapehdr square_P,0,square_F4,0,0,0,0,3,0,4,4,4,4,asteroid2_C,0,<asteroidb>
asteroid3	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,asteroid_C,0,<asteroid3>
asteroid4	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,asteroid2_C,0,<asteroid4>
big_meteor	shapehdr txsquare_P,0,txsquare_F,0,0,0,0,6,meteor_col,4,4,4,4,big_meteor_C,0,<big_meteor>

clasteroid	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,asteroid_C,0,<clasteroid>

blackhole	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,blackhole_C,0,<blackhole>
firecomet	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,firepit_c,0,<firecomet>

ovalbeam 	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,ovalbeam_c,0,<ovalbeam>
orb 	shapehdr	square_P,0,square_F2,0,0,0,0,3,0,4,4,4,4,orb_c,0,<vortex1>
bolt 	shapehdr	square_P,0,square_F2,0,0,0,0,3,0,4,4,4,4,elec_c,0,<bolt>
plasma 	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,id_5_c,0,<plasma>
skullshot 	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,skullshot_c,0,<skullshot>
multiorb 	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,multiorb_c,0,<multiorb>
egg    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,6,6,6,6,egg_c,0,<egg>
egggreen    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,6,6,6,6,egggreen_c,0,<egg>
eggblue    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,6,6,6,6,eggblue_c,0,<egg>
eggyellow    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,6,6,6,6,eggyellow_c,0,<egg>
eggblack    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,6,6,6,6,eggblack_c,0,<egg>

Lflash_0	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,flash_c,0,<Lflash_0>
Mflash_0	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,flash_c,0,<Mflash_0>
Sflash_0	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,flash_c,0,<Sflash_0>

helpball	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,4,4,4,4,specialweapon_C,0,<helpball>
Shelpball	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,10,10,10,4,specialweapon_C,0,<shelpball>
explosion	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,3,0,4,4,4,4,explode_C,0,<explosion>
explosion2    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,4,0,4,4,4,4,explode2_C,0,<explosion2>
explosion3    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,5,0,4,4,4,4,explode3_C,0,<explosion3>
explosion4    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,6,0,4,4,4,4,explode3_C,0,<explosion4>
explosion5    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,4,4,4,4,explode3_C,0,<explosion5>
amoeba1	shapehdr TXsquare_P,0,TXsquare_F,0,-100,0,0,1+1,0,firesize,firesize,firesize,firesize,amoeba_C,0,<amoeba1>
amoeba2	shapehdr TXsquare_P,0,TXsquare_F,0,-100,0,0,2+1,0,firesize,firesize,firesize,firesize,amoeba_C,0,<amoeba2>
metroid1	shapehdr TXsquare_P,0,TXsquare_F,0,-100,0,0,1+1,0,firesize,firesize,firesize,firesize,metroid_C,0,<metroid1>
metroid2	shapehdr TXsquare_P,0,TXsquare_F,0,-100,0,0,2+1,0,firesize,firesize,firesize,firesize,metroid_C,0,<metroid2>
PEXPLOD	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,1,0,4,4,4,4,PEXPLOD2S_C,0,<PEXPLOD>
rockbeam 	shapehdr square_P,0,square_F2,0,0,0,0,3,0,4,4,4,4,rockbeam_c,0,<rockbeam>
playerbeam	shapehdr square_P,0,square_F3,0,0,0,0,2,0,8*2,5*2,30,4,playerbeam_C,0,<playerbeam>
boostshape	shapehdr square_P,0,square_F3,0,0,0,0,1,0,firesize,firesize,firesize,firesize,boost_C,0,<boostshape>

gamesh	shapehdr TXsquare_P2,0,TXsquare_F2,0,0,0,0,3,0,firesize,firesize,firesize,firesize,game_C,0,<gamesh>
oversh	shapehdr TXsquare_P2,0,TXsquare_F2,0,0,0,0,3,0,firesize,firesize,firesize,firesize,over_C,0,<oversh>

escapee	shapehdr TXsquare_P,0,TXsquare_F2,0,0,0,0,3,0,4,4,4,4,escapee_C,0,<escapee>


				    
SPEXPLOD	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,4,4,4,4,spark_c,0,<SPEXPLOD>
lfDie   	shapehdr LFDIE_P,0,LFDIE_F,0,0,0,0,2,0,4,4,4,4,lfdie_c,0,<lfDie>

	endc




	ifne	DO_HDR
line	shapehdr	line_P,0,line_F,0,0,0,0,0,0,20,20,0,22,line_c,0,<line>
line2	shapehdr	line_P,0,line_F,0,0,0,0,1,0,20,20,0,22,line_c,0,<line2>
line3	shapehdr	line_P,0,line_F,0,0,0,0,2,0,20,20,0,22,line_c,0,<line3>
laserline	shapehdr	line_P,0,line_F,0,0,0,0,1,0,20,20,20,22,line_c,0,<laserline>
	elseif			 
line_P
	datahdr
	Pointsb	3
	pb	0,0,0		
	pb	0,10,0	
	pb	-10,10,0	

	EndPoints
line_F

line_f1
	vizis	2
	viz	0,1,2,0,0,127
	viz	2,1,0,0,0,127
	Faces
	Face2	0,0,0,0,0,0,1
	Face2	0,1,0,0,0,0,1
	Fend
	EndShape

	endc


;--Shape file ----- elaser2.asm ----
	ifne	DO_HDR

elaser2a
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,2,2,30,99,Ebullet_c,0,<elaser2a>
elaser2
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,bullet_c,0,<elaser2>
elaserfire
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,3,0,8,5,30,99,afire_c,0,<elaserfire>
elaserwhite
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,white_c,0,<elaserwhite>
elaserblack
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,black_c,0,<elaserblack>	
elaserred
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,red_c,0,<elaserred>	
elaserred2
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,red2_c,0,<elaserred2>	
elaserblue
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,blue1_c,0,<elaserblue>		
elasergreen
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,green_c,0,<elasergreen>	
elaseryellow
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,yellow_c,0,<elaseryellow>	
elaservblue
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,vblue_c,0,<elaservblue>	

	elseif

mlaser	macro	length of nose, middle, length of tail (70/49/-99)
	pointsb	6
	pb	0,0,\3	;0
	pb	-\4,0,\2	;1
	pb	0,0,\1	;2
	pb	\4,0,\2	;3
	pb	0,-2,\2	;4
	pb	0,2,\2	;5
	endpoints
	endm
	

elaser2_P
	datahdr
	frames	9
	jumptab	.a0a
	jumptab	.a1a
	jumptab	.a2a
	jumptab	.a3a
	jumptab	.a4a
	jumptab	.a5a
	jumptab	.a6a
	jumptab	.a7a
	jumptab	.a8a

.a0a	mlaser	0,-10,0,1
.a1a	mlaser	0,-10,-20,2
.a2a	mlaser	0,-10,-40,3
.a3a	mlaser	0,-10,-60,4
.a4a	mlaser	0,-10,-80,4	; frame 4 = normal laser

.a5a	mlaser	0,0,-60,4
.a6a	mlaser	0,0,-40,4
.a7a	mlaser	0,0,-20,3
.a8a	mlaser	0,0,-20,2

elaser2_ps2
	Pointsb	4
	pb	0,0,-99	;0
	pb	-8,0,49	;1
	pb	0,0,70	;2
	pb	8,0,49	;3

	EndPoints
elaser2_F
	vizis	6
	viz	2,1,0,0,0,127
	viz	0,1,2,0,0,-127
	viz	2,4,0,0,0,-127
	viz	4,2,0,0,0,127
	viz	1,4,3,0,0,-127
	viz	3,4,1,0,0,127
	Faces
	Face4	0,0,0,127,0,2,1,0,3
	Face4	0,1,0,-127,0,0,1,2,3

	Face4	0,2,0,-127,0,2,4,0,5
	Face4	0,3,0,-127,0,5,0,4,2

	Face4	0,4,0,-127,0,1,4,3,5
	Face4	0,5,0,-127,0,5,3,4,1


	Fend
	EndShape


elaser2_Fs2
	vizis	2
	viz	2,1,0,0,0,127
	viz	0,1,2,0,0,-127
	Faces
	Face4	0,0,0,127,0,2,1,0,3
	Face4	0,1,0,-127,0,0,1,2,3

	Fend
	EndShape

	endc


;--Shape file ----- flat 1 poly ----
	ifne	DO_HDR
Smark	shapehdr mark_P,0,mark_F,0,0,0,0,0,0,4,4,4,4,burnmark_C,0,<Smark>
Mmark	shapehdr mark_P,0,mark_F,0,0,0,0,1,0,4,4,4,4,burnmark_C,0,<Mmark>
Lmark	shapehdr mark_P,0,mark_F,0,0,0,0,2,0,4,4,4,4,burnmark_C,0,<Lmark>
	elseif

mark_P	POINTSB	4
	PB	50,0,50		;0
	PB	-50,0,50	;1
	PB	-50,0,-50	;2
	PB	50,0,-50	;3
	ENDPOINTS


mark_F
	vizis	1
	viz	0,1,2,0,-127,0
	FACES
	FACE4	0,0,0,-127,0,0,1,2,3
	FEND
	ENDSHAPE

	IFEQ	softsprites

LFDIE_F
	vizis	1
	viz	2,3,0,0,0,127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FEND
	ENDSHAPE

LFDIE_P	POINTSB	4
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	ENDPOINTS

	ELSEIF

LFDIE_F
	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,1
	ENDSHAPE

LFDIE_P	POINTSB	5
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	PB	0,0,0
	ENDPOINTS
	endc




;-----------------------------------------------------
TXSQUARE_F	vizis	1
	viz	2,3,0,0,0,127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FEND
	ENDSHAPE

TXSQUARE_P	POINTSB	4
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	ENDPOINTS

TXSQUARE100_P	POINTSXB	2
	PB	100,100,0	;0
	PB	-100,-100,0	;2
	ENDPOINTS



TXSQUARE_P2	POINTSB	4
	PB	32,8,0	;0
	PB	-32,8,0	;1
	PB	-32,-8,0	;2
	PB	32,-8,0	;3
	ENDPOINTS

TXSQUARE_F2	vizis	2
	viz	2,3,0,0,0,127
	viz	0,3,2,0,0,-127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FACE4	1,1,0,0,127,3,2,1,0
	FEND
	ENDSHAPE


TXSQUARE_F3	vizis	2
	viz	2,3,0,0,0,127
	viz	0,3,2,0,0,-127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FACE4	1,1,0,0,127,1,0,3,2
	FEND
	ENDSHAPE

;-----------------------------------------------------





	IFEQ	softsprites

SQUARE_F
SQUARE_F1
SQUARE_F2
SQUARE_F3
SQUARE_F4
SQUARE_F5
SQUARE_F6
	vizis	1
	viz	2,3,0,0,0,127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FEND
	ENDSHAPE

SQUARE_P	POINTSB	4
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	ENDPOINTS

	ELSEIF

SQUARE_F 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,0
	ENDSHAPE


SQUARE_F6
SQUARE_F5
SQUARE_F4
SQUARE_F3
SQUARE_F2
SQUARE_F1 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,1
	ENDSHAPE

	ifeq	1
SQUARE_F2 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,2
	ENDSHAPE

SQUARE_F3	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,3
	ENDSHAPE

SQUARE_F4 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,4
	ENDSHAPE

SQUARE_F5 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,5
	ENDSHAPE

SQUARE_F6 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,6
	ENDSHAPE
	endc



SQUARE_P	POINTSB	5
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	PB	0,0,0
	ENDPOINTS
	endc
	endc


	end_shapes


	






