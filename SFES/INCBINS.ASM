
	include	header.inc

	incpublics	incbins.ext


	bank	35
msprites1	incbinfile	msprites\sprites3.dat
mworldspr	equ	msprites1
	bankend	35

	bank	36
msprites2	incbinfile	msprites\sprites4.dat
	fileslog	msprites\spritesg.dat
	bankend	36

	bank	37
msprites3	incbinfile	msprites\msprite4.dat
	bankend	37
	
	bank	38
msprites5	incbinfile	msprites\msprite5.dat
	bankend	38	
	
	bank	39
msprites6	incbinfile	msprites\msprite6.dat
	bankend	39

	bank	40
	inccru	bgetestccr,data\e-test.ccr
	inccru	bgetestpcr,data\e-test.pcr
	inccru	bgetest2ccr,data\e-test2.ccr
	inccru	bgetest2pcr,data\e-test2.pcr
	inccru	bgfoxccr,data\fox.ccr
	inccru	bgfoxpcr,data\fox.pcr
	inccru	bgbmccr,data\b-m.ccr
	inccru	bgstpccr,data\st-p.ccr	
	inccru	bg23hpcr,data\2-3h.pcr
	inccru	bgcityccr,data\city.ccr
	inccru	bgcitypcr,data\city.pcr
	inccru	bgcityppcr,data\cityp.pcr
	inccru	bgvordesccr,data\vordes.ccr
	inccru	bgvordespcr,data\vordes.pcr
	inccru	bgvoriceccr,data\vorice.ccr
	inccru	bgvoricepcr,data\vorice.pcr
	inccru	bgmap2pcr,data\map2.pcr
	inccru	bgmap2ccr,data\map2.ccr
	inccru	bgsgsxpcr,data\sgsx.pcr
	inccru	bgsgsxccr,data\sgsx.ccr
	inccru	bgf1pcr,data\f-1.pcr
	inccru	bggektunccr,data\gektun.ccr
	inccru	bggektunpcr,data\gektun.pcr
	inccru	bg24ccr,data\2-4.ccr
	bankend	40
	
	bank	41
	inccru	bgstppcr,data\st-p.pcr
	inccru	bg22ccr,data\2-2.ccr
	inccru	bg23ccr,data\2-3.ccr
	inccru	bg23bccr,data\2-3b.ccr
	inccru	bgstarsccr,data\stars.ccr
	inccru	bg13bccr,data\1-3-b.ccr
	inccru	bgspaceccr,data\space.ccr
	inccru	bglastpcr,data\last.pcr
	inccru	bg32ccr,data\3-2.ccr
	inccru	bgfsbg3ccr,data\fs-bg3.ccr
	inccru	mapccr,data\map.ccr
	inccru	bg33ccr,data\3-3.ccr
	inccru	bgfsnipcr,data\fs-ni.pcr
	inccru	bgtsspcr,data\t-ss.pcr
	inccru	bg34ccr,data\3-4.ccr
	bankend	41

	bank	42
	inccru	bg22pcr,data\2-2.pcr
	inccru	bglsbccr,data\lsb.ccr
	inccru	bgf1ccr,data\f-1.ccr
	inccru	bgbholeccr,data\b-hole.ccr
	inccru	bgtfspcr,data\t-f-s.pcr
	inccru	bg23pcr,data\2-3.pcr
	inccru	bg23bpcr,data\2-3b.pcr
	inccru	mappcr,data\map.pcr
	inccru	bgstarspcr,data\stars.pcr
	inccru	bg32pcr,data\3-2.pcr
	inccru	bg13bpcr,data\1-3-b.pcr
	inccru	bg13pcr,data\1-3.pcr
	inccru	bg14pcr,data\1-4.pcr
	inccru	bg14ccr,data\1-4.ccr
	inccru	bg33pcr,data\3-3.pcr
	inccru	bg34pcr,data\3-4.pcr
	inccru	bglsbpcr,data\lsb.pcr
	inccru	fobjccr,data\f-obj.ccr
	inccru	bgbholepcr,data\b-hole.pcr
	inccru	bgholeapcr,data\hole-a.pcr
	inccru	bgtsppcr,data\t-sp.pcr
	inccru	bg24pcr,data\2-4.pcr
	inccru	bgtstpcr,data\t-st.pcr
	bankend	42

	bank	43
	IFNE	newmugshots
facedata	inccolfile	data\newface.cgx,0,980		;size / 32
	ELSEIF
facedata	inccolfile	data\face.cgx,0,980		;size / 32
	ENDC
	bankend	43

	bank	44
	inccru	bgfortnccr,data\fortn.ccr
	inccru	bgfortnpcr,data\fortn.pcr
	inccru	bgfxdesccr,data\FXDES.ccr
	inccru	bgfxdespcr,data\FXDES.pcr
	inccru	bgcornccr,data\corn.ccr
	inccru	bgcornpcr,data\corn.pcr
	inccru	bgasteroidccr,data\asteroid.ccr
	inccru	bgasteroidpcr,data\asteroid.pcr
	inccru	bgalphaccr,data\alpha.ccr
	inccru	bgalphapcr,data\alpha.pcr
	inccru	bgrbccr,data\rb.ccr
	inccru	bgrbpcr,data\rb.pcr
	inccru	bgvhwypccr,data\vhwyp.ccr
	inccru	bgvhwyppcr,data\vhwyp.pcr
	inccru	bgvenomaccr,data\venoma.ccr
	inccru	bgvenomapcr,data\venoma.pcr
	inccru	bgcmccr,data\c-m.ccr
	inccru	bgvorcloccr,data\vorclo.ccr
	inccru	bgvorclopcr,data\vorclo.pcr
	bankend	44

;------------------------------------------------------------------
	bank	45
	incfile	mdata.mc
	inccru	bgyamaccr,data\yama.ccr
	inccru	bgyamapcr,data\yama.pcr
	inccru	dogpcr,data\dog.pcr
	inccru	bgcppcr,data\cp.pcr
	inccru	bgti3ccr,data\ti-3-us.ccr
	inccru	bgti3pcr,data\ti-3-us.pcr
	inccru	bgtstccr,data\t-st.ccr
	inccru	bgtspccr,data\t-sp.ccr
	inccru	bgmacbethccr,data\macbeth.ccr
	inccru	bgmacbethpcr,data\macbeth.pcr
fxfadecornnite	inccolfile	data\gfx\cornnite.col,0,32

	bankend	45

	bank	47
fxfadenewspace1	inccolfile	data\gfx\newspace.col,0,32
fxfadenewspace2	inccolfile	data\gfx\alt1.col,0,32
fxfadenewspace3	inccolfile	data\gfx\alt2.col,0,32
fxfadenewspace4	inccolfile	data\gfx\alt3.col,0,32
fxfadenewspace5	inccolfile	data\gfx\alt4.col,0,32
titlepalette	inccolfile	data\gfx\cp-us.col,0,32
spacepalette	inccolfile	data\gfx\space.col,0,32

	inccru	bgdesertccr,data\desert.ccr
	inccru	bgdesertpcr,data\desert.pcr

	inccru	allcolscru,data\gfx\allcols.pac

	bankend	47

	bank	51
	IFNE	newmugshots
facedata2	inccolfile	data\newface2.cgx,0,620		;size / 32
	elseif
facedata2	inccolfile	data\face2.cgx,0,620		;size / 32	
	ENDC
	bankend	51

firstsndbnk	=	52
musicsize	=	0
	IFNE	MSU1
	incsnd	sound0,MSU1\MSUSND0.BIN
	ELSEIF
	incsnd	sound0,snd\sgsound0.bin
	ENDC
	incsnd	sound1,snd\sgsound1.bin
	incsnd	orchestra,snd\sgsound2.bin
	incsnd	band,snd\sgsound3.bin
	incsnd	sound4,snd\sgsound4.bin
	incsnd	sound5,snd\sgsound5.bin
	incsnd	sound6,snd\sgsound6.bin

	incsnd	titlebgm,snd\sgsound7.bin
	incsnd	bgmendseq,snd\sgsound8.bin
	incsnd	bgmcontinue,snd\sgsound9.bin
	incsnd	bgmstaff,snd\sgsounda.bin
	incsnd	corneria,snd\sgbgma.bin
	incsnd	meteor_base,snd\sgbgmb.bin
	incsnd	titania,snd\sgbgmc.bin
	incsnd	training,snd\sgbgmo.bin
	incsnd	macbeth,snd\sgbgme.bin
	incsnd	asteroid_field,snd\sgbgmf.bin
	incsnd	space_armada,snd\sgbgmg.bin
	incsnd	venom_base_2,snd\sgbgmh.bin
	incsnd	sector_x_z,snd\sgbgmi.bin
	incsnd	venom_base_1_3,snd\sgbgmk.bin
	incsnd	out_of_this_dimension,snd\sgbgmp.bin
	incsnd	boss_corneria,snd\sgbgm1.bin
	incsnd	boss_titania,snd\sgbgm4.bin
	incsnd	boss_meteor,snd\sgbgm5.bin
	incsnd	boss_space_armada,snd\sgbgm6.bin
	incsnd	boss_venom_base_2,snd\sgbgm8.bin
	incsnd	boss_venom_base_1,snd\sgbgm9.bin
	incsnd	venom_andross,snd\sgbgm10.bin

	incsnd	newtitle,snd\sfestitl.bin
	incsnd	sgproto,snd\bgmspec.bin
	incsnd	gnat,snd\gnat.bin
	incsnd	metropolis,snd\metropo.bin
	incsnd	smb3swim,snd\smb3swim.bin
	incsnd	sf2sele,snd\sf2sele.bin
	incsnd	kazaru,snd\kazaru.bin
	incsnd	kazaru2,snd\kazaru2.bin
	incsnd	luigihydra,snd\newboss1.bin
;	incsnd	blackrosebgm,snd\newb15.bin
	incsnd	GYARAGA,snd\newb2.bin
	incsnd	eis,snd\eis.bin
	incsnd	sectork,snd\sectork.bin
	incsnd	pebble,snd\pebble.bin
	incsnd	kuruso,snd\kuruso.bin
	incsnd	papetoon,snd\papetoon.bin
	incsnd	tolimas,snd\tolimas.bin
	incsnd	seckboss,snd\seckboss.bin
	incsnd	bossbgms,snd\bossbgms.bin
	incsnd	gekkou,snd\gekkou.bin
	incsnd	bossbgmk,snd\bossbgmk.bin
	incsnd	shmuppy,snd\shmuppy.bin
	incsnd	linktron,snd\linktron.bin
	incsnd	alpha,snd\alpha.bin
	incsnd	kidodora,snd\kidodora.bin
	incsnd	galaxip,snd\bossbgmp.bin
	incsnd	cometbgm,snd\comet.bin
	incsnd	australiabgm,snd\australi.bin
	incsnd	menubgm,snd\menu.bin
	incsnd	blackrosebgm,snd\brose.bin
	incsnd	newmapbgm,snd\newmap.bin
	incsnd	yoshibgm,snd\yoshibgm.bin
	incsnd	zeromus,snd\zeromus.bin
	incsnd	eschatos,snd\eschatos.bin
	incsnd	tarkus,snd\tarkus.bin
	incsnd	funkmonkies,snd\funkm.bin
	incsnd	interstellar,snd\interst.bin
	incsnd	sp0rch,snd\sp0rch.bin
	incsnd	hurricane,snd\hurr.bin
	printf	:$*,"%n"

	fopen	+BANKS.CSV
	printf	"Sound data start,%xfirstsndbnk %n"
	printf "Sound data size,%xmusicsize %n"
	fclose	BANKS.CSV

	ifgt	@-$200000
	printf	"%N%N  MORE THAN 2 MEGA-BYTES OF ROM USED!! %N%N"
	FAIL
	endc


	include	tail.inc


