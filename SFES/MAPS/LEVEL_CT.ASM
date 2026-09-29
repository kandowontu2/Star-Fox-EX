
level_CREDTEST
	initlevel	3_7a,0
	mapwait		1000
	mapjsr	map4_5
	mapwait	1000
	start_65816
	bgm2	endseq
	IFNE	MSU1
	msuplay	gameenddemo,repeat
	ENDC
	stz	boss_ptr
	end_65816
	markboss	boss11
	markboss	boss12
	markboss	boss13
	markboss	boss14	
	markboss	boss15
	markboss	boss16
	markboss	boss23
	markboss	boss24
	markboss	boss25
	markboss	boss26
	markboss	boss31
	markboss	boss32
	markboss	boss33
	markboss	boss35
	markboss	boss36
	markboss	boss37
	markboss	bossfinal2
	mapwait	1000
	setvar.n	levelfinished,6
	mapwait	1000
	setvar.n	levelfinished,9


.lp	mapwait	3000
	mapgoto	.lp


level_CREDTEST2
	
;	mapjsr	bossbgm2
	
	initlevel	7_5,0
	mapwait		1000
	mapjsr	map4_5
	mapwait	1000
	start_65816
	bgm2	endseq
	IFNE	MSU1
	msuplay	gameenddemo,repeat
	ENDC
	stz	boss_ptr
	end_65816
	markboss	boss51
	markboss	boss52
	markboss	boss53
	markboss	boss54	
	markboss	boss55
	markboss	boss61
	markboss	boss62
	markboss	boss63
	markboss	boss64
	markboss	boss65
	markboss	boss66
	markboss	bossyoshi
	markboss	boss71
	markboss	boss72
	markboss	boss73
	markboss	boss74
	markboss	boss75
	markboss	bossfinal5
	mapwait	1000
	setvar.n	levelfinished,6
	mapwait	1000
	setvar.n	levelfinished,9


.lp	mapwait	3000
	mapgoto	.lp


