	start_shapes



;--Shape file ----- C:\SHED\SHAPES6\MYBASE_0.TXT ----
	ifne	DO_HDR

mybase_0
	ShapeHdr	mybase_0_P,0,mybase_0_F,0,0,0,0,mybase_scale+1,0,50,42,47,75,id_0_c,0,<mybase_0>
	elseif
mybase_0_P
	Pointsb	26
	pb	-5,-15,-47	;0
	pb	-2,-37,-47	;1
	pb	4,-15,-45	;2
	pb	-5,-15,-45	;3
	pb	1,-37,-45	;4
	pb	-2,-37,-45	;5
	pb	1,-15,-42	;6
	pb	-2,-15,-42	;7
	pb	29,0,-40	;8
	pb	-50,0,-40	;9
	pb	-50,-40,-40	;10
	pb	31,-42,-40	;11
	pb	-47,-42,-40	;12
	pb	-50,0,-37	;13
	pb	-29,-22,-37	;14
	pb	10,-27,-37	;15
	pb	-24,-27,-37	;16
	pb	-50,-40,-37	;17
	pb	42,-42,-37	;18
	pb	-47,-42,-37	;19
	pb	42,0,-35	;20
	pb	-47,0,-35	;21
	pb	42,-40,-35	;22
	pb	-47,-40,-35	;23
	pb	-21,-18,-27	;24
	pb	-21,-22,-27	;25
	PointsXb	23
	pb	-29,-40,-40	;26
	pb	-29,0,-37	;28
	pb	5,-22,-37	;30
	pb	29,-40,-37	;32
	pb	31,-42,-37	;34
	pb	31,0,-35	;36
	pb	31,-40,-35	;38
	pb	-5,-18,-27	;40
	pb	-5,-22,-27	;42
	pb	10,-27,-27	;44
	pb	16,-27,-27	;46
	pb	-11,-18,2	;48
	pb	-15,-18,2	;50
	pb	-11,-21,2	;52
	pb	-15,-21,2	;54
	pb	7,0,7	;56
	pb	19,0,7	;58
	pb	-10,-18,7	;60
	pb	-16,-18,7	;62
	pb	-10,-22,7	;64
	pb	16,-22,7	;66
	pb	10,-13,12	;68
	pb	16,-13,12	;70

	EndPoints
mybase_0_F
	Vizis	48
	Viz	3,5,7,89,12,89	;0
	Viz	6,4,2,-89,12,89	;1
	Viz	4,6,7,0,17,126	;2
	Viz	5,3,0,126,17,0	;3
	Viz	18,22,38,0,90,90	;4
	Viz	32,34,38,73,73,73	;5
	Viz	34,32,27,90,90,0	;6
	Viz	32,38,36,90,0,90	;7
	Viz	38,22,20,0,0,127	;8
	Viz	27,32,29,127,0,0	;9
	Viz	35,39,23,0,90,90	;11
	Viz	39,35,33,-73,73,73	;12
	Viz	23,39,37,0,0,127	;13
	Viz	28,37,39,-90,0,90	;14
	Viz	17,23,21,70,0,106	;15
	Viz	10,17,13,127,0,0	;16
	Viz	17,19,23,54,81,81	;17
	Viz	19,17,10,70,106,0	;18
	Viz	66,55,53,0,-125,25	;20
	Viz	49,53,55,0,0,127	;21
	Viz	66,63,51,125,0,25	;22
	Viz	50,54,52,0,0,127	;23
	Viz	64,60,48,125,0,25	;24
	Viz	64,52,54,0,-125,25	;25
	Viz	44,46,66,0,126,18	;26
	Viz	65,43,44,89,89,13	;27
	Viz	30,15,44,90,90,0	;28
	Viz	65,61,41,126,0,18	;29
	Viz	61,63,70,0,90,90	;30
	Viz	68,41,61,124,18,18	;31
	Viz	56,41,68,124,21,19	;32
	Viz	58,56,68,0,-46,119	;33
	Viz	56,57,40,0,112,59	;34
	Viz	30,43,41,127,0,0	;35
	Viz	31,30,41,0,118,47	;36
	Viz	42,40,60,-126,0,18	;37
	Viz	45,42,64,-89,89,13	;38
	Viz	57,69,40,-124,21,19	;39
	Viz	60,40,69,-124,18,18	;40
	Viz	64,67,47,0,126,18	;41
	Viz	69,71,62,0,90,90	;42
	Viz	67,25,47,89,89,13	;43
	Viz	71,24,62,124,18,18	;44
	Viz	59,24,71,124,21,19	;45
	Viz	71,69,57,0,-46,119	;46
	Viz	47,25,14,78,78,63	;47
	Viz	24,59,28,118,38,27	;48
	Viz	28,14,25,99,0,79	;49
;	BSPInit	mybase_0_EBSP
;	BSP	3,mybase_0_f1,.bsp2
;	BSP	30,mybase_0_f3,.bsp4
;	BSPE	mybase_0_f5
;.bsp4	BSPE	mybase_0_f6
;.bsp2	BSPE	mybase_0_f7

mybase_0_f1	Faces
	Face4	14,3,126,17,0,5,3,0,1
;	FendQ
;mybase_0_f3	Faces
;	FendQ
;mybase_0_f5	Faces
	Face2	21,-1,0,0,0,26,45
	Face2	21,-1,0,0,0,44,27
	Face4	20,4,0,90,90,18,22,38,34
	Face3	18,5,73,73,73,32,34,38
	Face4	14,6,90,90,0,34,32,27,11
	Face4	16,7,90,0,90,32,38,36,29
	Face4	12,9,127,0,0,27,32,29,8
	Face4	18,8,0,0,127,38,22,20,36
	Face4	14,20,125,0,25,66,63,51,55
	Face4	18,24,0,126,18,44,46,66,65
;	FendQ
;mybase_0_f6	Faces
	Face3	18,1,-89,12,89,6,4,2
	Face3	28,33,127,0,0,30,43,41
	Face4	12,18,0,-125,25,66,55,53,65
	Face4	10,19,0,0,127,49,53,55,51
	Face4	30,26,90,90,0,30,15,44,43
	Face4	18,34,0,118,47,31,30,41,40
	Face4	30,27,126,0,18,65,61,41,43
	Face4	18,28,0,90,90,61,63,70,68
;	FendQ
;mybase_0_f7	Faces
	Face4	18,12,0,0,127,23,39,37,21
	Face4	16,32,0,112,59,56,57,40,41
	Face4	16,13,-90,0,90,28,37,39,33
	Face4	20,10,0,90,90,35,39,23,19
	Face4	20,2,0,17,126,4,6,7,5
	Face3	18,0,89,12,89,3,5,7
	Face3	18,11,-73,73,73,39,35,33


	Face4	16,14,70,0,106,17,23,21,13
	Face4	10,21,0,0,127,50,54,52,48
	Face4	14,22,125,0,25,64,60,48,52
	Face4	12,23,0,-125,25,64,52,54,67
	Face3	34,36,-89,89,13,45,42,64
	Face4	18,39,0,126,18,64,67,47,45
	Face3	30,43,124,21,19,59,24,71
	Face4	30,45,78,78,63,47,25,14,16
	Face3	14,46,118,38,27,24,59,28
	Face4	12,47,99,0,79,28,14,25,24
	Face4	12,15,127,0,0,10,17,13,9
	Face3	18,16,54,81,81,17,19,23
	Face4	14,17,70,106,0,19,17,10,12
	Face3	34,38,-124,18,18,60,40,69
	Face4	18,40,0,90,90,69,71,62,60
	Face3	32,41,89,89,13,67,25,47
	Face3	32,42,124,18,18,71,24,62
	Face3	32,37,-124,21,19,57,69,40
	Face3	32,25,89,89,13,65,43,44
	Face3	32,29,124,18,18,68,41,61
	Face4	32,35,-126,0,18,42,40,60,64
	Face3	30,30,124,21,19,56,41,68
	Face4	14,31,0,-46,119,58,56,68,70
	Face4	102,31,0,-46,119,68,70,58,56
	Face4	14,44,0,-46,119,71,69,57,59
	Face4	102,44,0,-46,119,71,69,57,59
;	FendQ
	fend
mybase_0_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\MYBASE_1.TXT ----
	ifne	DO_HDR

MYBASE_1
	ShapeHdr	MYBASE_1_P,0,MYBASE_1_F,0,0,0,0,mybase_scale,0,43,44,55,83,id_0_c,0,<MYBASE_1>
	elseif
MYBASE_1_P
	Pointsb	4
	pb	-43,-36,-55	;0
	pb	-43,-44,-55	;1
	pb	-33,-36,15	;2
	pb	-33,-44,15	;3

	EndPoints
MYBASE_1_F
	Vizis	1
	Viz	3,2,0,126,0,18	;0

MYBASE_1_f1	Faces
	Face4	30,0,126,0,18,3,2,0,1
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\ship_s_1.txt ----
	ifne	DO_HDR

ship_s_1
	ShapeHdr	ship_s_1_P,0,ship_s_1_F,0,0,0,0,3,0,45,18,5,45,id_0_c,0,<ship_s_1>
	elseif
ship_s_1_P
	Pointsb	10
	pb	2,-12,-5	;0
	pb	5,-6,-5	;1
	pb	-18,18,-5	;2
	pb	-23,13,-5	;3
	pb	-6,-9,-5	;4
	pb	-8,-11,0	;5
	pb	4,11,0	;6
	pb	-12,11,0	;7
	pb	-45,0,0	;8
	pb	-28,-11,0	;9

	EndPoints
ship_s_1_F
	Vizis	2
	Viz	0,1,2,0,0,127	;0
	Viz	5,6,7,0,0,127	;1

ship_s_1_f1	Faces
	Face5	14,0,0,0,127,0,1,2,3,4
	Face5	16,1,0,0,127,5,6,7,8,9
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\ship_4.txt ----
	ifne	DO_HDR

ship_4
	ShapeHdr	ship_4_P,0,ship_4_F,0,0,0,0,1,0,40,40,60,64,id_0_c,0,<ship_4>
	elseif
ship_4_P
	Pointsb	7
	pb	-30,-10,-40	;0
	pb	-30,10,-40	;1
	pb	-40,20,-20	;2
	pb	10,-30,10	;3
	pb	-10,-40,-45	;4
	pb	10,-20,40	;5
	pb	-10,-35,-30	;6
	PointsXb	1
	pb	-10,30,10	;7
	Pointsb	5
	pb	10,0,60	;9
	pb	-40,20,0	;10
	pb	-10,30,-30	;11
	pb	10,-35,-30	;12
	pb	10,-40,-45	;13
	PointsXb	1
	pb	-10,-30,-30	;14
	Pointsb	20
	pb	-30,-10,20	;16
	pb	-10,-20,40	;17
	pb	-10,0,60	;18
	pb	-10,-30,10	;19
	pb	-40,-20,0	;20
	pb	-40,0,-20	;21
	pb	-40,0,-50	;22
	pb	-40,-20,-20	;23
	pb	-30,10,20	;24
	pb	30,-10,20	;25
	pb	40,-20,0	;26
	pb	40,20,0	;27
	pb	30,10,20	;28
	pb	40,0,-50	;29
	pb	40,0,-20	;30
	pb	30,-10,-40	;31
	pb	40,-20,-20	;32
	pb	30,10,-40	;33
	pb	40,20,-20	;34
	pb	10,30,-30	;35
	PointsXb	1
	pb	-10,-17,43	;36

	EndPoints
ship_4_F
	Vizis	39
	Viz	4,6,14,127,0,0	;0
	Viz	13,12,15,127,0,0	;1
	Viz	16,17,18,92,62,62	;2
	Viz	19,17,16,79,95,32	;3
	Viz	16,24,10,114,0,57	;4
	Viz	16,18,24,114,0,57	;5
	Viz	20,19,16,54,90,72	;6
	Viz	0,21,22,90,90,0	;7
	Viz	23,21,0,114,0,-57	;8
	Viz	0,14,23,54,90,-72	;9
	Viz	23,14,19,40,120,0	;10
	Viz	18,7,24,65,-93,56	;11
	Viz	24,7,10,54,-90,72	;12
	Viz	22,21,1,90,-90,0	;13
	Viz	1,21,2,114,0,-57	;14
	Viz	2,11,1,54,-90,-72	;15
	Viz	10,7,11,40,-120,0	;16
	Viz	37,36,17,0,90,90	;17
	Viz	17,19,3,0,120,40	;18
	Viz	19,14,15,0,127,0	;19
	Viz	9,8,7,0,-109,65	;20
	Viz	10,2,23,127,0,0	;21
	Viz	9,5,25,-92,62,62	;22
	Viz	25,5,3,-79,95,32	;23
	Viz	26,27,28,-114,0,57	;24
	Viz	28,9,25,-114,0,57	;25
	Viz	25,3,26,-54,90,72	;26
	Viz	29,30,31,-90,90,0	;27
	Viz	31,30,32,-114,0,-57	;28
	Viz	32,15,31,-54,90,-72	;29
	Viz	26,3,15,-40,120,0	;30
	Viz	28,8,9,-65,-93,56	;31
	Viz	27,8,28,-54,-90,72	;32
	Viz	33,30,29,-90,-90,0	;33
	Viz	34,30,33,-114,0,-57	;34
	Viz	33,35,34,-54,-90,-72	;35
	Viz	34,35,8,-40,-120,0	;36
	Viz	26,32,34,-127,0,0	;37
	Viz	9,18,36,0,90,90	;38
	BSPInit	ship_4_EBSP
	BSP	0,ship_4_f1,.bsp2
	BSP	1,ship_4_f3,.bsp4
	BSP	28,ship_4_f5,.bsp6
	BSPE	ship_4_f7
.bsp6	BSPE	ship_4_f8
.bsp4	BSPE	ship_4_f9
.bsp2	BSP	8,ship_4_f10,.bsp11
	BSPE	ship_4_f12
.bsp11	BSPE	ship_4_f13

ship_4_f1	Faces
	Face3	0,0,127,0,0,4,6,14
	FendQ
ship_4_f3	Faces
	Face3	0,1,127,0,0,13,12,15
	FendQ
ship_4_f5	Faces
	Face3	21,28,-114,0,-57,31,30,32
	FendQ
ship_4_f7	Faces
	Face3	20,23,-79,95,32,25,5,3
	Face3	18,26,-54,90,72,25,3,26
	Face3	16,31,-65,-93,56,28,8,9
	Face3	14,32,-54,-90,72,27,8,28
	Face3	13,35,-54,-90,-72,33,35,34
	Face3	18,22,-92,62,62,9,5,25
	Face4	21,24,-114,0,57,26,27,28,25
	Face3	23,25,-114,0,57,28,9,25
	Face3	18,29,-54,90,-72,32,15,31
	Face4	20,30,-40,120,0,26,3,15,32
	Face4	12,36,-40,-120,0,34,35,8,27
	Face4	10,37,-127,0,0,26,32,34,27
	FendQ
ship_4_f8	Faces
	Face3	21,34,-114,0,-57,34,30,33
	Face3	14,33,-90,-90,0,33,30,29
	Face3	16,27,-90,90,0,29,30,31
	FendQ
ship_4_f9	Faces
	Face4	44,17,0,90,90,37,36,17,5
	Face4	18,18,0,120,40,17,19,3,5
	Face4	16,19,0,127,0,19,14,15,3
	Face4	14,20,0,-109,65,9,8,7,18
	Face4	16,38,0,90,90,9,18,36,37
	FendQ
ship_4_f10	Faces
	Face3	21,8,114,0,-57,23,21,0
	FendQ
ship_4_f12	Faces
	Face3	20,3,79,95,32,19,17,16
	Face3	18,6,54,90,72,20,19,16
	Face3	16,11,65,-93,56,18,7,24
	Face3	14,12,54,-90,72,24,7,10
	Face3	13,15,54,-90,-72,2,11,1
	Face3	18,2,92,62,62,16,17,18
	Face4	21,4,114,0,57,16,24,10,20
	Face3	23,5,114,0,57,16,18,24
	Face3	18,9,54,90,-72,0,14,23
	Face4	20,10,40,120,0,23,14,19,20
	Face4	12,16,40,-120,0,10,7,11,2
	Face4	10,21,127,0,0,10,2,23,20
	FendQ
ship_4_f13	Faces
	Face3	21,14,114,0,-57,1,21,2
	Face3	14,13,90,-90,0,22,21,1
	Face3	16,7,90,90,0,0,21,22
	FendQ
ship_4_EBSP
	EndShape

	endc



;--Shape file ----- C:\SHED\NSHAPES\ship_4_s.txt ----
	ifne	DO_HDR

ship_4_s
	ShapeHdr	ship_4_s_P,0,ship_4_s_F,0,0,0,0,0,0,40,25,110,110,id_0_c,0,<ship_4_s>
	elseif
ship_4_s_P
	Pointsb	2
	pb	0,10,-30	;0
	pb	0,-10,-30	;1
	PointsXb	5
	pb	-40,25,30	;2
	pb	-40,-25,30	;4
	pb	-40,25,50	;6
	pb	-40,-25,50	;8
	pb	10,0,110	;10

	EndPoints
ship_4_s_F
	Vizis	10
	Viz	1,0,3,-106,0,-70	;0
	Viz	4,2,0,106,0,-70	;1
	Viz	8,4,5,0,127,0	;2
	Viz	10,11,8,0,117,49	;3
	Viz	7,6,11,0,-117,49	;4
	Viz	7,3,2,0,-127,0	;5
	Viz	10,9,7,-114,0,57	;6
	Viz	6,8,11,114,0,57	;7
	Viz	6,2,4,127,0,0	;8
	Viz	9,5,3,-127,0,0	;9

ship_4_s_f1	Faces
	Face4	21,0,-106,0,-70,1,0,3,5
	Face4	21,1,106,0,-70,4,2,0,1
	Face4	20,2,0,127,0,8,4,5,9
	Face4	18,3,0,117,49,10,11,8,9
	Face4	14,4,0,-117,49,7,6,11,10
	Face4	12,5,0,-127,0,7,3,2,6
	Face3	23,6,-114,0,57,10,9,7
	Face3	23,7,114,0,57,6,8,11
	Face4	10,8,127,0,0,6,2,4,8
	Face4	10,9,-127,0,0,9,5,3,7
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\warker_3.anm ----
	ifne	DO_HDR

Bwarker_3
	ShapeHdr	warker_3_P,0,warker_3_F,0,0,0,0,1,0,32,42,25,44,id_0_c,0,<Bwarker_3>
warker_3
	ShapeHdr	warker_3_P,0,warker_3_F,0,0,0,0,0,0,32,42,25,44,id_0_c,0,<warker_3>
	elseif
warker_3_P
	Frames	12
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
.A0A	Pointsb	9
	pb	-20,0,-2	;0
	pb	25,-28,-12	;1
	pb	-15,-23,-10	;2
	pb	15,-23,-10	;3
	pb	-5,-38,-10	;4
	pb	5,-38,-10	;5
	pb	-25,-28,-12	;6
	pb	0,-29,10	;7
	pb	20,0,-2	;8
	jump	.EB0
.A1A	Pointsb	9
	pb	-21,-9,5	;0
	pb	27,-28,-10	;1
	pb	-13,-27,-10	;2
	pb	17,-24,-10	;3
	pb	-2,-41,-10	;4
	pb	8,-40,-10	;5
	pb	-22,-33,-14	;6
	pb	3,-32,10	;7
	pb	20,0,-10	;8
	jump	.EB0
.A2A	Pointsb	9
	pb	-20,-17,11	;0
	pb	30,-26,-8	;1
	pb	-11,-28,-10	;2
	pb	19,-23,-10	;3
	pb	2,-41,-10	;4
	pb	12,-39,-10	;5
	pb	-19,-33,-15	;6
	pb	5,-31,10	;7
	pb	20,0,-18	;8
	jump	.EB0
.A3A	Pointsb	9
	pb	-18,-21,13	;0
	pb	30,-20,-6	;1
	pb	-9,-26,-10	;2
	pb	20,-19,-10	;3
	pb	4,-38,-10	;4
	pb	14,-36,-10	;5
	pb	-18,-32,-15	;6
	pb	7,-28,10	;7
	pb	20,0,-25	;8
	jump	.EB0
.A4A	Pointsb	9
	pb	-20,-17,11	;0
	pb	30,-26,-8	;1
	pb	-11,-28,-10	;2
	pb	19,-23,-10	;3
	pb	2,-41,-10	;4
	pb	12,-39,-10	;5
	pb	-19,-33,-15	;6
	pb	5,-31,10	;7
	pb	20,0,-18	;8
	jump	.EB0
.A5A	Pointsb	9
	pb	-22,-8,5	;0
	pb	27,-27,-10	;1
	pb	-13,-26,-10	;2
	pb	17,-23,-10	;3
	pb	-2,-40,-10	;4
	pb	8,-39,-10	;5
	pb	-23,-32,-14	;6
	pb	3,-31,10	;7
	pb	20,0,-10	;8
	jump	.EB0
.A6A	Pointsb	9
	pb	-20,0,-2	;0
	pb	25,-28,-12	;1
	pb	-15,-23,-10	;2
	pb	15,-23,-10	;3
	pb	-5,-38,-10	;4
	pb	5,-38,-10	;5
	pb	-25,-28,-12	;6
	pb	0,-29,10	;7
	pb	20,0,-2	;8
	jump	.EB0
.A7A	Pointsb	9
	pb	-20,0,-10	;0
	pb	22,-33,-14	;1
	pb	-17,-24,-10	;2
	pb	13,-27,-10	;3
	pb	-8,-40,-10	;4
	pb	2,-41,-10	;5
	pb	-27,-28,-10	;6
	pb	-3,-32,10	;7
	pb	21,-9,5	;8
	jump	.EB0
.A8A	Pointsb	9
	pb	-20,0,-18	;0
	pb	19,-33,-15	;1
	pb	-19,-23,-10	;2
	pb	11,-28,-10	;3
	pb	-12,-39,-10	;4
	pb	-2,-41,-10	;5
	pb	-30,-26,-8	;6
	pb	-5,-31,10	;7
	pb	20,-17,11	;8
	jump	.EB0
.A9A	Pointsb	9
	pb	-21,-2,-22	;0
	pb	16,-36,-15	;1
	pb	-21,-23,-10	;2
	pb	8,-30,-10	;3
	pb	-15,-40,-10	;4
	pb	-5,-42,-10	;5
	pb	-32,-25,-7	;6
	pb	-8,-32,10	;7
	pb	17,-25,13	;8
	jump	.EB0
.A10A	Pointsb	9
	pb	-20,0,-18	;0
	pb	19,-33,-15	;1
	pb	-19,-23,-10	;2
	pb	11,-28,-10	;3
	pb	-12,-39,-10	;4
	pb	-2,-41,-10	;5
	pb	-30,-26,-8	;6
	pb	-5,-31,10	;7
	pb	20,-17,11	;8
	jump	.EB0
.A11A	Pointsb	9
	pb	-20,0,-10	;0
	pb	23,-32,-14	;1
	pb	-17,-23,-10	;2
	pb	13,-26,-10	;3
	pb	-8,-39,-10	;4
	pb	2,-40,-10	;5
	pb	-27,-27,-10	;6
	pb	-3,-31,10	;7
	pb	21,-8,5	;8
.EB0

	EndPoints
warker_3_F
	Vizis	6
	Viz	3,1,8,25,106,66	;0
	Viz	0,6,2,-10,-42,119	;2
	Viz	5,7,4,23,113,53	;4
	Viz	4,7,2,105,46,55	;5
	Viz	3,7,5,-82,82,53	;6
	Viz	3,2,7,-20,-121,34	;7
	BSPInit	warker_3_EBSP
	BSP	4,warker_3_f1,.bsp2
	BSPE	warker_3_f3
.bsp2	BSPE	warker_3_f4

warker_3_f1	Faces
	Face3	14,4,-82,82,53,3,7,5
	FendQ
warker_3_f3	Faces
	Face3	6,1,-10,-42,119,0,6,2
	Face3	20,3,105,46,55,4,7,2
	Face3	12,5,-20,-121,34,3,2,7
	Face2	25,-1,0,0,0,4,6
	FendQ
warker_3_f4	Faces
	Face3	6,0,25,106,66,3,1,8
	Face2	25,-1,0,0,0,1,5
	Face3	44,2,23,113,53,5,7,4
	FendQ
warker_3_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\bazooka.anm ----
	ifne	DO_HDR

bazooka
	ShapeHdr	bazooka_P,0,bazooka_F,0,0,0,0,2,0,40,25,31,51,id_0_c,0,<bazooka>
	elseif
bazooka_P
	Pointsb	5
	pb	30,-25,-25	;0
	pb	20,-5,-31	;1
	pb	-26,-5,-10	;2
	pb	-20,-5,-31	;3
	pb	40,-5,-31	;4
	Frames	4
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
.A0A	Pointsb	1
	pb	-34,5,29	;5
	jump	.EB0
.A1A	Pointsb	1
	pb	-34,5,29	;5
	jump	.EB0
.A2A	Pointsb	1
	pb	-34,0,9	;5
	jump	.EB0
.A3A	Pointsb	1
	pb	-34,4,24	;5
.EB0
	Pointsb	5
	pb	-30,-25,-25	;6
	pb	-40,-5,-31	;7
	pb	-5,-5,10	;8
	pb	0,-15,-10	;9
	pb	0,5,-10	;10
	Frames	4
	jumptab	.A0B
	jumptab	.A1B
	jumptab	.A2B
	jumptab	.A3B
.A0B	Pointsb	2
	pb	-26,5,29	;11
	pb	-30,-8,11	;12
	jump	.EB1
.A1B	Pointsb	2
	pb	-26,5,29	;11
	pb	-30,-8,11	;12
	jump	.EB1
.A2B	Pointsb	2
	pb	-26,0,9	;11
	pb	-30,-13,-8	;12
	jump	.EB1
.A3B	Pointsb	2
	pb	-26,4,24	;11
	pb	-30,-9,7	;12
.EB1
	Pointsb	3
	pb	-34,-5,-10	;13
	pb	5,-5,10	;14
	pb	26,-5,-10	;15
	Frames	4
	jumptab	.A0C
	jumptab	.A1C
	jumptab	.A2C
	jumptab	.A3C
.A0C	Pointsb	3
	pb	30,-8,11	;16
	pb	26,5,29	;17
	pb	34,5,29	;18
	jump	.EB2
.A1C	Pointsb	3
	pb	30,-13,-8	;16
	pb	26,0,9	;17
	pb	34,0,9	;18
	jump	.EB2
.A2C	Pointsb	3
	pb	30,-9,7	;16
	pb	26,4,24	;17
	pb	34,4,24	;18
	jump	.EB2
.A3C	Pointsb	3
	pb	30,-8,11	;16
	pb	26,5,29	;17
	pb	34,5,29	;18
.EB2
	Pointsb	1
	pb	34,-5,-10	;19
	PointsXb	1
	pb	30,-13,-8	;20

	EndPoints
bazooka_F
	Vizis	23
	Viz	3,6,7,0,36,-122	;127
	Viz	2,3,7,0,-127,0	;128
	Viz	7,6,21,113,47,33	;129
	Viz	2,21,6,-113,48,34	;130
	Viz	21,2,11,-114,54,14	;131
	Viz	12,5,13,114,54,14	;132
	Viz	2,13,5,0,-123,-32	;133
	Viz	12,11,5,0,103,74	;134
	Viz	4,0,1,0,36,-122	;135
	Viz	19,4,1,0,-127,0	;136
	Viz	19,20,0,-113,48,34	;137
	Viz	1,0,20,113,47,33	;138
	Viz	17,18,19,0,-123,-32	;139
	Viz	16,17,15,114,54,14	;140
	Viz	20,19,18,-114,54,14	;141
	Viz	18,17,16,0,103,74	;142
	Viz	10,15,9,0,0,-127	;143
	Viz	8,14,10,0,-114,57	;144
	Viz	8,9,14,0,114,57	;145
	Viz	10,14,15,-43,-111,45	;146
	Viz	15,14,9,-43,111,45	;147
	Viz	2,8,10,43,-111,45	;148
	Viz	9,8,2,43,111,45	;149
	BSPInit	bazooka_EBSP
	BSP	16,bazooka_f1,.bsp2
	BSP	20,bazooka_f3,.bsp4
	BSP	22,bazooka_f5,.bsp6
	BSPE	bazooka_f7
.bsp6	BSPE	bazooka_f8
.bsp4	BSPE	bazooka_f9
.bsp2	BSPE	bazooka_f10

bazooka_f1	Faces
	Face4	12,16,0,0,-127,10,15,9,2
	FendQ
bazooka_f3	Faces
	Face3	18,20,-43,111,45,15,14,9
	FendQ
bazooka_f5	Faces
	Face3	14,22,43,111,45,9,8,2
	FendQ
bazooka_f7	Faces
	Face3	21,17,0,-114,57,8,14,10
	Face3	25,19,-43,-111,45,10,14,15
	Face3	23,21,43,-111,45,2,8,10
	FendQ
bazooka_f8	Faces
	Face4	18,4,-114,54,14,21,2,11,12
	Face4	16,5,114,54,14,12,5,13,21
	Face4	12,6,0,-123,-32,2,13,5,11
	Face3	43,7,0,103,74,12,11,5
	FendQ
bazooka_f9	Faces
	Face4	18,13,114,54,14,16,17,15,20
	Face3	44,18,0,114,57,8,9,14
	Face4	12,12,0,-123,-32,17,18,19,15
	Face4	20,14,-114,54,14,20,19,18,16
	Face3	43,15,0,103,74,18,17,16
	FendQ
bazooka_f10	Faces
	Face4	25,3,-113,48,34,2,21,6,3
	Face4	25,11,113,47,33,1,0,20,15
	Face3	0,0,0,36,-122,3,6,7
	Face4	21,1,0,-127,0,2,3,7,13
	Face4	23,2,113,47,33,7,6,21,13
	Face3	0,8,0,36,-122,4,0,1
	Face4	21,9,0,-127,0,19,4,1,15
	Face4	27,10,-113,48,34,19,20,0,4
	FendQ
bazooka_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\BAZOOKA1.TXT ----
	ifne	DO_HDR

BAZOOKA1
	ShapeHdr	BAZOOKA1_P,0,BAZOOKA1_F,0,0,0,0,2,0,10,25,31,35,id_0_c,0,<BAZOOKA1>
	elseif
BAZOOKA1_P
	Pointsb	3
	pb	0,-25,-25	;0
	pb	0,-13,-8	;1
	pb	0,-8,11	;2
	PointsXb	3
	pb	10,-5,-31	;3
	pb	4,-5,-10	;5
	pb	-4,5,29	;7

	EndPoints
BAZOOKA1_F
	Vizis	8
	Viz	3,0,4,0,36,-122	;0
	Viz	5,3,4,0,-127,0	;1
	Viz	4,0,1,113,47,33	;2
	Viz	5,1,0,-113,48,34	;3
	Viz	1,5,8,-114,54,14	;4
	Viz	2,7,6,114,54,14	;5
	Viz	5,6,7,0,-123,-32	;6
	Viz	2,8,7,0,103,74	;7

BAZOOKA1_f1	Faces
	Face4	21,1,0,-127,0,5,3,4,6
	Face4	23,2,113,47,33,4,0,1,6
	Face4	25,3,-113,48,34,5,1,0,3
	Face4	18,4,-114,54,14,1,5,8,2
	Face4	16,5,114,54,14,2,7,6,1
	Face4	12,6,0,-123,-32,5,6,7,8
	Face3	0,0,0,36,-122,3,0,4
	Face3	43,7,0,103,74,2,8,7
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\bazooka2.txt ----
	ifne	DO_HDR

bazooka2
	ShapeHdr	bazooka2_P,0,bazooka2_F,0,0,0,0,2,0,26,15,10,28,id_0_c,0,<bazooka2>
	elseif
bazooka2_P
	Pointsb	2
	pb	0,5,-10	;0
	pb	0,-15,-10	;1
	PointsXb	2
	pb	-26,-5,-10	;2
	pb	-5,-5,10	;4

	EndPoints
bazooka2_F
	Vizis	7
	Viz	1,4,2,43,111,45	;143
	Viz	2,4,0,43,-111,45	;144
	Viz	3,5,1,-43,111,45	;145
	Viz	0,5,3,-43,-111,45	;146
	Viz	4,1,5,0,114,57	;147
	Viz	4,5,0,0,-114,57	;148
	Viz	0,3,1,0,0,-127	;149

bazooka2_f1	Faces
	Face3	14,0,43,111,45,1,4,2
	Face3	23,1,43,-111,45,2,4,0
	Face3	18,2,-43,111,45,3,5,1
	Face3	25,3,-43,-111,45,0,5,3
	Face3	44,4,0,114,57,4,1,5
	Face3	21,5,0,-114,57,4,5,0
	Face4	12,6,0,0,-127,0,3,1,2
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\uper_m.txt ----
	ifne	DO_HDR

uper_m
	ShapeHdr	uper_m_P,0,uper_m_F,0,0,0,0,1,0,26,32,45,46,id_0_c,0,<uper_m>
	elseif
uper_m_P
	Pointsb	7
	pb	0,-7,-45	;0
	pb	0,-12,-25	;1
	pb	0,-7,-15	;2
	pb	0,-32,-5	;3
	pb	0,-7,10	;4
	pb	0,-17,30	;5
	pb	0,-7,45	;6
	PointsXb	7
	pb	5,3,-45	;7
	pb	-10,8,-25	;9
	pb	-5,3,-15	;11
	pb	-26,21,-5	;13
	pb	5,3,10	;15
	pb	15,13,30	;17
	pb	5,3,45	;19

	EndPoints
uper_m_F
	Vizis	23
	Viz	5,4,15,-111,55,-28	;0
	Viz	18,16,4,111,55,-28	;1
	Viz	17,19,6,-109,54,36	;2
	Viz	5,6,20,109,54,36	;3
	Viz	18,20,19,0,-106,70	;4
	Viz	17,15,16,0,-114,-57	;5
	Viz	4,16,11,114,57,0	;6
	Viz	2,12,15,-114,57,0	;7
	Viz	12,11,16,0,-127,0	;8
	Viz	10,12,2,-111,55,28	;9
	Viz	1,2,11,111,55,28	;10
	Viz	1,0,7,-113,56,-14	;11
	Viz	9,8,0,113,56,-14	;12
	Viz	10,7,8,0,-123,-31	;13
	Viz	9,11,12,0,-114,57	;14
	Viz	8,7,0,0,0,-127	;15
	Viz	6,19,20,0,0,127	;16
	Viz	15,17,14,85,-95,-5	;17
	Viz	14,17,15,-85,95,5	;18
	Viz	4,5,3,-127,0,0	;19
	Viz	3,5,4,127,0,0	;20
	Viz	13,18,16,-85,-95,-5	;21
	Viz	16,18,13,85,95,5	;22

uper_m_f1	Faces
	Face4	16,0,-111,55,-28,5,4,15,17
	Face4	14,1,111,55,-28,18,16,4,5
	Face4	12,5,0,-114,-57,17,15,16,18
	Face4	16,6,114,57,0,4,16,11,2
	Face4	18,7,-114,57,0,2,12,15,4
	Face4	14,8,0,-127,0,12,11,16,15
	Face4	25,9,-111,55,28,10,12,2,1
	Face4	23,10,111,55,28,1,2,11,9
	Face4	16,11,-113,56,-14,1,0,7,10
	Face4	14,12,113,56,-14,9,8,0,1
	Face4	12,13,0,-123,-31,10,7,8,9
	Face4	21,14,0,-114,57,9,11,12,10
	Face3	6,17,85,-95,-5,15,17,14
	Face3	6,18,-85,95,5,14,17,15
	Face3	6,19,-127,0,0,4,5,3
	Face3	6,20,127,0,0,3,5,4
	Face3	6,21,-85,-95,-5,13,18,16
	Face3	6,22,85,95,5,16,18,13
	Face2	23,-1,0,0,0,10,14
	Face2	23,-1,0,0,0,13,9
	Face2	23,-1,0,0,0,3,1
	Face4	20,2,-109,54,36,17,19,6,5
	Face4	18,3,109,54,36,5,6,20,18
	Face4	16,4,0,-106,70,18,20,19,17
	Face3	43,15,0,0,-127,8,7,0
	Face3	43,16,0,0,127,6,19,20
	Fend
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\warp.txt ----
	ifne	DO_HDR

warp
	ShapeHdr	warp_P,0,warp_F,0,0,0,0,1,0,30,17,45,54,id_0_c,0,<warp>
	elseif
warp_P
	Pointsb	15
	pb	10,0,0	;0
	pb	0,0,40	;1
	pb	-10,0,0	;2
	pb	-25,15,-45	;3
	pb	30,10,-10	;4
	pb	-20,15,45	;5
	pb	15,10,-40	;6
	pb	20,15,45	;7
	pb	0,0,-40	;8
	pb	0,-17,5	;9
	pb	0,0,30	;10
	pb	0,10,10	;11
	pb	-15,10,-40	;12
	pb	-30,10,-10	;13
	pb	25,15,-45	;14

	EndPoints
warp_F
	Vizis	16
	Viz	9,10,2,109,54,36	;0
	Viz	0,10,9,-109,54,36	;1
	Viz	2,10,11,102,-68,34	;2
	Viz	11,10,0,-102,-68,34	;3
	Viz	2,8,9,104,69,-26	;4
	Viz	9,8,0,-104,69,-26	;5
	Viz	11,0,2,0,-90,-90	;6
	Viz	2,0,8,0,-127,0	;7
	Viz	3,12,2,46,116,-23	;8
	Viz	13,2,12,-46,-116,23	;9
	Viz	5,13,2,64,107,21	;10
	Viz	2,13,5,-64,-107,-21	;11
	Viz	4,0,6,-46,116,-23	;12
	Viz	14,6,0,46,-116,23	;13
	Viz	0,4,7,-64,107,21	;14
	Viz	7,4,0,64,-107,-21	;15
	BSPInit	warp_EBSP
	BSP	2,warp_f1,.bsp2
	BSP	3,warp_f3,.bsp4
	BSPE	warp_f5
.bsp4	BSPE	warp_f6
.bsp2	BSPE	warp_f7

warp_f1	Faces
	Face3	0,2,102,-68,34,2,10,11
	FendQ
warp_f3	Faces
	Face3	0,3,-102,-68,34,11,10,0
	FendQ
warp_f5	Faces
	Face3	43,6,0,-90,-90,11,0,2
	Face3	0,0,109,54,36,9,10,2
	Face3	0,1,-109,54,36,0,10,9
	Face3	44,7,0,-127,0,2,0,8
	Face3	7,4,104,69,-26,2,8,9
	Face3	7,5,-104,69,-26,9,8,0
	FendQ
warp_f6	Faces
	Face4	0,13,46,-116,23,14,6,0,4
	Face3	3,15,64,-107,-21,7,4,0
	Face4	0,12,-46,116,-23,4,0,6,14
	Face3	3,14,-64,107,21,0,4,7
	FendQ
warp_f7	Faces
	Face4	0,9,-46,-116,23,13,2,12,3
	Face3	3,11,-64,-107,-21,2,13,5
	Face2	16,-1,0,0,0,10,1
	Face4	0,8,46,116,-23,3,12,2,13
	Face3	3,10,64,107,21,5,13,2
	FendQ
warp_EBSP
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\warp_1.txt ----
	ifne	DO_HDR

warp_1
	ShapeHdr	warp_1_P,0,warp_1_F,0,0,0,0,1,0,30,17,45,54,id_0_c,0,<warp_1>
	elseif
warp_1_P
	Pointsb	5
	pb	0,0,-40	;0
	pb	0,-17,5	;1
	pb	0,10,10	;2
	pb	0,0,30	;3
	pb	0,0,40	;4
	PointsXb	5
	pb	-25,15,-45	;5
	pb	15,10,-40	;7
	pb	30,10,-10	;9
	pb	10,0,0	;11
	pb	-20,15,45	;13

	EndPoints
warp_1_F
	Vizis	1
	Viz	1,12,11,0,36,-122	;25

warp_1_f1	Faces
;	Face3	15,0,0,36,-122,1,12,11
	Face2	44,-1,109,54,36,11,3
	Face2	44,-1,-109,54,36,1,3
	Face2	44,-1,102,-68,34,3,12
	Face2	44,-1,-102,-68,34,3,2
	Face2	44,-1,0,-90,-90,12,2
	Face2	44,-1,-46,-116,23,12,13
	Face2	44,-1,64,107,21,13,10
	Face2	44,-1,46,-116,23,14,11
	Face2	44,-1,-64,107,21,9,14
	Face2	44,-1,0,0,0,3,4
	Face2	44,-1,0,0,0,2,11
	Face2	44,-1,104,69,-26,12,1
	Face2	44,-1,-104,69,-26,1,11
	Face2	44,-1,0,-127,0,11,0
	Face2	44,-1,46,116,-23,12,10
	Face2	44,-1,-64,-107,-21,12,8
	Face2	44,-1,-46,116,-23,9,11
	Face2	44,-1,64,-107,-21,7,11
	Face2	44,-1,0,0,0,11,12
	Face2	44,-1,0,0,0,0,12
	Face2	44,-1,0,0,0,0,1
	Face2	44,-1,0,0,0,5,10
	Face2	44,-1,0,0,0,5,8
	Face2	44,-1,0,0,0,9,6
	Face2	44,-1,0,0,0,7,6
	Fend
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\warp_2.txt ----
	ifne	DO_HDR

warp_2
	ShapeHdr	warp_2_P,0,warp_2_F,0,0,0,0,1,0,30,17,45,54,id_0_c,0,<warp_2>
	elseif
warp_2_P
	Pointsb	5
	pb	10,0,0	;0
	pb	0,0,40	;1
	pb	-10,0,0	;2
	pb	-25,15,-45	;3
	pb	30,10,-10	;4
	PointsXb	1
	pb	-20,15,45	;5
	Pointsb	8
	pb	15,10,-40	;7
	pb	0,0,-40	;8
	pb	0,-17,5	;9
	pb	0,0,30	;10
	pb	0,10,10	;11
	pb	-15,10,-40	;12
	pb	-30,10,-10	;13
	pb	25,15,-45	;14

	EndPoints
warp_2_F
	Vizis	1
	Viz	0,11,2,0,90,90	;19

warp_2_f1	Faces
;	Face3	15,0,0,90,90,0,11,2
	Face2	44,-1,104,69,-26,0,8
	Face2	44,-1,0,-90,-90,5,13
	Face2	44,-1,0,-127,0,2,12
	Face2	44,-1,-46,-116,23,4,6
	Face2	44,-1,64,107,21,7,0
	Face2	44,-1,46,-116,23,8,2
	Face2	44,-1,-64,107,21,8,9
	Face2	44,-1,64,-107,-21,3,13
	Face2	44,-1,0,0,0,3,12
	Face2	44,-1,0,0,0,4,14
	Face2	44,-1,0,0,0,7,14
	Face2	44,-1,109,54,36,0,10
	Face2	44,-1,-109,54,36,9,10
	Face2	44,-1,102,-68,34,10,2
	Face2	44,-1,-102,-68,34,2,11
	Face2	44,-1,-104,69,-26,2,5
	Face2	44,-1,46,116,-23,6,0
	Face2	44,-1,-64,-107,-21,10,1
	Face2	44,-1,-46,116,-23,11,0
	Fend
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\warp_3.txt ----
	ifne	DO_HDR

warp_3
	ShapeHdr	warp_3_P,0,warp_3_F,0,0,0,0,1,0,30,17,45,54,id_0_c,0,<warp_3>
	elseif
warp_3_P
	Pointsb	4
	pb	0,0,-40	;0
	pb	0,-17,5	;1
	pb	0,10,10	;2
	pb	0,0,30	;3
	PointsXb	4
	pb	-25,15,-45	;4
	pb	30,10,-10	;6
	pb	10,0,0	;8
	pb	-20,15,45	;10

	EndPoints
warp_3_F
	Vizis	1
	Viz	8,2,9,0,90,90	;9

warp_3_f1	Faces
;	Face3	15,0,0,90,90,8,2,9
	Face2	44,-1,102,-68,34,10,7
	Face2	44,-1,-102,-68,34,6,11
	Face2	44,-1,-104,69,-26,0,9
	Face2	44,-1,0,-90,-90,0,1
	Face2	44,-1,0,-127,0,4,7
	Face2	44,-1,46,116,-23,6,5
	Face2	44,-1,109,54,36,8,3
	Face2	44,-1,-109,54,36,1,3
	Face2	44,-1,104,69,-26,2,8
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\tank_2.txt ----
	ifne	DO_HDR

tank_2
	ShapeHdr	tank_2_P,0,tank_2_F,0,0,0,0,1,0,65,50,75,90,id_0_c,0,<tank_2>
	elseif
tank_2_P
	PointsXb	19
	pb	-30,-35,-75	;0
	pb	26,-45,-73	;2
	pb	26,-40,-68	;4
	pb	-10,-35,-65	;6
	pb	10,-45,-65	;8
	pb	10,-50,-65	;10
	pb	-65,0,-60	;12
	pb	-60,-10,-60	;14
	pb	10,-20,-60	;16
	pb	50,-20,-60	;18
	pb	-10,-40,-60	;20
	pb	-10,-20,-40	;22
	pb	10,0,0	;24
	pb	-65,0,20	;26
	pb	-60,-10,20	;28
	pb	10,-20,20	;30
	pb	50,-20,20	;32
	pb	10,0,60	;34
	pb	30,0,60	;36

	EndPoints
tank_2_F
	Vizis	24
	Viz	35,37,33,0,114,57	;0
	Viz	33,37,28,73,73,73	;1
	Viz	28,37,26,89,45,78	;2
	Viz	31,33,19,0,127,0	;3
	Viz	19,33,28,90,90,0	;4
	Viz	28,26,12,114,57,0	;5
	Viz	30,32,36,0,114,57	;6
	Viz	29,36,32,-73,73,73	;7
	Viz	27,36,29,-89,45,78	;8
	Viz	16,18,32,0,127,0	;9
	Viz	15,29,32,-90,90,0	;10
	Viz	15,13,27,-114,57,0	;11
	Viz	22,23,24,0,114,57	;12
	Viz	20,5,3,42,85,85	;13
	Viz	6,0,5,42,-85,85	;14
	Viz	0,3,5,115,38,38	;15
	Viz	8,2,4,-42,85,85	;16
	Viz	21,4,1,-42,-85,85	;17
	Viz	4,2,1,-115,38,38	;18
	Viz	20,22,17,127,0,0	;19
	Viz	22,9,8,0,90,90	;20
	Viz	7,16,23,-127,0,0	;21
	Viz	35,31,22,-127,0,0	;22
	Viz	24,23,30,127,0,0	;23
	BSPInit	tank_2_EBSP
	BSP	3,tank_2_f1,.bsp2
	BSPE	tank_2_f3
.bsp2	BSP	19,tank_2_f4,.bsp5
	BSPE	tank_2_f6
.bsp5	BSPE	tank_2_f7

tank_2_f1	Faces
	Face4	18,3,0,127,0,31,33,19,17
	FendQ
tank_2_f3	Faces
	Face4	16,22,-127,0,0,35,31,22,25
	Face4	12,23,127,0,0,24,23,30,34
	Face4	25,12,0,114,57,22,23,24,25
	Face4	20,0,0,114,57,35,37,33,31
	Face3	25,1,73,73,73,33,37,28
	Face3	23,2,89,45,78,28,37,26
	Face4	23,4,90,90,0,19,33,28,14
	Face4	21,5,114,57,0,28,26,12,14
	Face4	20,6,0,114,57,30,32,36,34
	Face3	27,7,-73,73,73,29,36,32
	Face3	25,8,-89,45,78,27,36,29
	Face4	25,10,-90,90,0,15,29,32,18
	Face4	23,11,-114,57,0,15,13,27,29
	FendQ
tank_2_f4	Faces
	Face4	21,19,127,0,0,20,22,17,6
	FendQ
tank_2_f6	Faces
	Face4	18,9,0,127,0,16,18,32,30
	Face4	25,21,-127,0,0,7,16,23,21
	Face4	20,16,-42,85,85,8,2,4,21
	Face4	16,17,-42,-85,85,21,4,1,7
	Face3	43,18,-115,38,38,4,2,1
	Face4	27,20,0,90,90,22,9,8,23
	Face2	44,-1,0,0,0,8,10
	FendQ
tank_2_f7	Faces
	Face2	44,-1,0,0,0,11,9
	Face4	18,13,42,85,85,20,5,3,9
	Face4	14,14,42,-85,85,6,0,5,20
	Face3	43,15,115,38,38,0,3,5
	FendQ
tank_2_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\f_dragon.anm ----
	ifne	DO_HDR

f_dragon
	ShapeHdr	f_dragon_P,0,f_dragon_F,0,0,0,0,2,0,68,25,54,85,id_0_c,0,<f_dragon>
f_dragonp
	ShapeHdr	f_dragon_P,0,f_dragon_F,0,0,0,0,2,playerB_col,68,25,54,85,id_0_c,0,<f_dragon>
	elseif
f_dragon_P
	Pointsb	4
	pb	0,10,-40	;0
	pb	0,2,-30	;1
	pb	0,0,10	;2
	pb	0,-10,20	;3
	PointsXb	5
	pb	-5,7,-29	;4
	pb	-13,3,32	;6
	pb	-5,0,35	;8
	pb	-10,-3,35	;10
	pb	-7,3,38	;12
	Frames	8
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
.A0A	Pointsb	4
	pb	-33,18,3	;14
	pb	33,18,3	;15
	pb	-35,-39,27	;16
	pb	35,-39,27	;17
	PointsXb	4
	pb	-52,34,10	;18
	pb	-52,34,20	;20
	pb	-49,-51,45	;22
	pb	-45,-48,54	;24
	jump	.EB0
.A1A	Pointsb	4
	pb	-40,5,3	;14
	pb	40,5,3	;15
	pb	-43,-25,27	;16
	pb	43,-25,27	;17
	PointsXb	4
	pb	-64,14,10	;18
	pb	-64,14,20	;20
	pb	-60,-32,45	;22
	pb	-55,-30,54	;24
	jump	.EB0
.A2A	Pointsb	4
	pb	-43,-10,3	;14
	pb	43,-10,3	;15
	pb	-45,-10,27	;16
	pb	45,-10,27	;17
	PointsXb	4
	pb	-68,-10,10	;18
	pb	-68,-10,20	;20
	pb	-64,-10,45	;22
	pb	-59,-10,54	;24
	jump	.EB0
.A3A	Pointsb	4
	pb	-41,-24,3	;14
	pb	41,-25,3	;15
	pb	-42,6,27	;16
	pb	43,6,27	;17
	PointsXb	4
	pb	-64,-33,10	;18
	pb	-64,-33,20	;20
	pb	-60,12,45	;22
	pb	-55,10,54	;24
	jump	.EB0
.A4A	Pointsb	4
	pb	-33,-38,3	;14
	pb	33,-38,3	;15
	pb	-35,19,27	;16
	pb	35,19,27	;17
	PointsXb	4
	pb	-52,-54,10	;18
	pb	-52,-54,20	;20
	pb	-49,31,45	;22
	pb	-45,28,54	;24
	jump	.EB0
.A5A	Pointsb	4
	pb	-41,-24,3	;14
	pb	41,-25,3	;15
	pb	-42,6,27	;16
	pb	43,6,27	;17
	PointsXb	4
	pb	-64,-33,10	;18
	pb	-64,-33,20	;20
	pb	-60,12,45	;22
	pb	-55,10,54	;24
	jump	.EB0
.A6A	Pointsb	4
	pb	-43,-10,3	;14
	pb	43,-10,3	;15
	pb	-45,-10,27	;16
	pb	45,-10,27	;17
	PointsXb	4
	pb	-68,-10,10	;18
	pb	-68,-10,20	;20
	pb	-64,-10,45	;22
	pb	-59,-10,54	;24
	jump	.EB0
.A7A	Pointsb	4
	pb	-40,5,3	;14
	pb	40,5,3	;15
	pb	-43,-25,27	;16
	pb	43,-25,27	;17
	PointsXb	4
	pb	-64,14,10	;18
	pb	-64,14,20	;20
	pb	-60,-32,45	;22
	pb	-55,-30,54	;24
.EB0

	EndPoints
f_dragon_F
	Vizis	34
	Viz	19,15,21,82,-97,0	;0
	Viz	21,15,19,-82,97,0	;1
	Viz	15,21,3,-82,97,-0	;2
	Viz	3,21,15,82,-97,0	;3
	Viz	23,17,25,-80,-98,3	;4
	Viz	25,17,23,80,98,-3	;5
	Viz	17,25,3,81,98,-3	;6
	Viz	3,25,17,-81,-98,3	;7
	Viz	20,14,18,-82,-97,0	;8
	Viz	18,14,20,82,97,0	;9
	Viz	3,20,14,82,97,-0	;10
	Viz	14,20,3,-82,-97,0	;11
	Viz	24,16,22,80,-98,3	;12
	Viz	22,16,24,-80,98,-3	;13
	Viz	3,24,16,-81,98,-3	;14
	Viz	16,24,3,81,-98,3	;15
	Viz	7,13,11,-90,0,90	;16
	Viz	9,13,7,58,-97,-58	;17
	Viz	7,11,9,27,45,-116	;18
	Viz	11,13,9,42,70,98	;19
	Viz	10,12,6,90,0,90	;20
	Viz	6,12,8,-58,-97,-58	;21
	Viz	8,10,6,-27,45,-116	;22
	Viz	8,12,10,-42,70,98	;23
	Viz	0,4,5,0,-123,33	;24
	Viz	0,5,1,-85,74,-59	;25
	Viz	1,4,0,85,74,-59	;26
	Viz	5,4,2,0,-125,22	;27
	Viz	1,5,2,-90,89,-4	;28
	Viz	2,4,1,90,89,-4	;29
	Viz	8,9,2,0,-127,0	;30
	Viz	2,9,3,-122,24,-24	;31
	Viz	3,8,2,122,24,-24	;32
	Viz	3,9,8,0,106,70	;33
	BSPInit	f_dragon_EBSP
	BSP	0,f_dragon_f1,.bsp2
	BSPE	f_dragon_f3
.bsp2	BSP	8,f_dragon_f4,.bsp5
	BSPE	f_dragon_f6
.bsp5	BSP	19,f_dragon_f7,.bsp8
	BSP	31,f_dragon_f9,.bsp10
	BSPE	f_dragon_f11
.bsp10	BSP	32,f_dragon_f12,.bsp13
	BSPE	f_dragon_f14
.bsp13	BSPE	f_dragon_f15
.bsp8	BSP	18,f_dragon_f16,.bsp17
	BSPEND
.bsp17	BSPE	f_dragon_f18

f_dragon_f1	Faces
	Face3	6,0,82,-97,0,19,15,21
	FendQ
f_dragon_f3	Faces
	Face3	6,4,-80,-98,3,23,17,25
	Face3	6,5,80,98,-3,25,17,23
	Face3	0,6,81,98,-3,17,25,3
	Face3	0,7,-81,-98,3,3,25,17
	FendQ
f_dragon_f4	Faces
	Face3	6,8,-82,-97,0,20,14,18
	FendQ
f_dragon_f6	Faces
	Face3	6,12,80,-98,3,24,16,22
	Face3	6,13,-80,98,-3,22,16,24
	Face3	0,14,-81,98,-3,3,24,16
	Face3	0,15,81,-98,3,16,24,3
	FendQ
f_dragon_f7	Faces
	Face3	14,19,42,70,98,11,13,9
	FendQ
f_dragon_f9	Faces
	Face3	27,31,-122,24,-24,2,9,3
	FendQ
f_dragon_f11	Faces
	Face3	6,9,82,97,0,18,14,20
	Face3	0,10,82,97,-0,3,20,14
	Face3	0,11,-82,-97,0,14,20,3
	FendQ
f_dragon_f12	Faces
	Face3	23,32,122,24,-24,3,8,2
	FendQ
f_dragon_f14	Faces
	Face3	6,1,-82,97,0,21,15,19
	Face3	0,2,-82,97,-0,15,21,3
	Face3	0,3,82,-97,0,3,21,15
	FendQ
f_dragon_f15	Faces
	Face3	21,30,0,-127,0,8,9,2
	Face3	0,24,0,-123,33,0,4,5
	Face3	21,27,0,-125,22,5,4,2
	Face3	0,25,-85,74,-59,0,5,1
	Face3	0,26,85,74,-59,1,4,0
	Face3	25,28,-90,89,-4,1,5,2
	Face3	23,29,90,89,-4,2,4,1
	FendQ
f_dragon_f16	Faces
	Face3	18,18,27,45,-116,7,11,9
	FendQ
f_dragon_f18	Faces
	Face3	12,17,58,-97,-58,9,13,7
	Face3	14,21,-58,-97,-58,6,12,8
	Face3	16,22,-27,45,-116,8,10,6
	Face3	18,23,-42,70,98,8,12,10
	Face3	44,16,-90,0,90,7,13,11
	Face3	44,20,90,0,90,10,12,6
	Face3	25,33,0,106,70,3,9,8
	FendQ
f_dragon_EBSP
	EndShape

	endc



;--Shape file ----- C:\SHED\NSHAPES\f_dra_1.anm ----
	ifne	DO_HDR

f_dra_1
	ShapeHdr	f_dra_1_P,0,f_dra_1_F,0,0,0,0,0,0,36,23,35,46,id_0_c,0,<f_dra_1>
	elseif
f_dra_1_P
	Pointsb	1
	pb	0,0,15	;0
	PointsXb	1
	pb	3,5,20	;1
	Frames	8
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
.A0A	Pointsb	3
	pb	0,10,-35	;3
	pb	24,0,7	;4
	pb	-24,0,7	;5
	PointsXb	6
	pb	-33,0,11	;6
	pb	-36,0,15	;8
	pb	-25,0,20	;10
	pb	-6,8,25	;12
	pb	-30,0,30	;14
	pb	-30,0,35	;16
	jump	.EB0
.A1A	Pointsb	3
	pb	0,11,-35	;3
	pb	22,8,7	;4
	pb	-23,8,7	;5
	PointsXb	6
	pb	-31,11,11	;6
	pb	-34,12,15	;8
	pb	-23,-8,20	;10
	pb	-6,9,25	;12
	pb	-28,-10,30	;14
	pb	-28,-10,35	;16
	jump	.EB0
.A2A	Pointsb	3
	pb	0,12,-35	;3
	pb	18,15,7	;4
	pb	-18,15,7	;5
	PointsXb	6
	pb	-25,21,11	;6
	pb	-28,23,15	;8
	pb	-19,-16,20	;10
	pb	-6,8,25	;12
	pb	-23,-19,30	;14
	pb	-23,-19,35	;16
	jump	.EB0
.A3A	Pointsb	3
	pb	0,11,-35	;3
	pb	22,8,7	;4
	pb	-23,8,7	;5
	PointsXb	6
	pb	-31,11,11	;6
	pb	-34,12,15	;8
	pb	-23,-8,20	;10
	pb	-6,7,25	;12
	pb	-28,-10,30	;14
	pb	-28,-10,35	;16
	jump	.EB0
.A4A	Pointsb	3
	pb	0,10,-35	;3
	pb	24,0,7	;4
	pb	-24,0,7	;5
	PointsXb	6
	pb	-33,0,11	;6
	pb	-36,0,15	;8
	pb	-25,0,20	;10
	pb	-6,8,25	;12
	pb	-30,0,30	;14
	pb	-30,0,35	;16
	jump	.EB0
.A5A	Pointsb	3
	pb	0,9,-35	;3
	pb	22,-8,7	;4
	pb	-23,-8,7	;5
	PointsXb	6
	pb	-31,-11,11	;6
	pb	-34,-12,15	;8
	pb	-23,8,20	;10
	pb	-6,9,25	;12
	pb	-28,10,30	;14
	pb	-28,10,35	;16
	jump	.EB0
.A6A	Pointsb	3
	pb	0,8,-35	;3
	pb	18,-15,7	;4
	pb	-18,-15,7	;5
	PointsXb	6
	pb	-25,-21,11	;6
	pb	-28,-23,15	;8
	pb	-19,16,20	;10
	pb	-6,8,25	;12
	pb	-23,19,30	;14
	pb	-23,19,35	;16
	jump	.EB0
.A7A	Pointsb	3
	pb	0,9,-35	;3
	pb	22,-8,7	;4
	pb	-23,-8,7	;5
	PointsXb	6
	pb	-31,-11,11	;6
	pb	-34,-12,15	;8
	pb	-23,8,20	;10
	pb	-6,7,25	;12
	pb	-28,10,30	;14
	pb	-28,10,35	;16
.EB0

	EndPoints
f_dra_1_F
	Vizis	12
	Viz	3,1,0,-113,57,-10	;2
	Viz	0,2,3,113,57,-10	;3
	Viz	2,1,3,0,-127,9	;4
	Viz	0,1,2,0,90,90	;5
	Viz	11,15,17,-47,118,0	;6
	Viz	0,17,15,43,-120,0	;7
	Viz	4,7,9,40,120,0	;8
	Viz	0,9,7,-42,-120,-2	;9
	Viz	0,16,14,43,120,0	;10
	Viz	10,14,16,-47,-118,0	;11
	Viz	0,8,6,-42,120,2	;12
	Viz	5,6,8,47,-118,-6	;13
	BSPInit	f_dra_1_EBSP
	BSP	0,f_dra_1_f1,.bsp2
	BSP	8,f_dra_1_f3,.bsp4
	BSPE	f_dra_1_f5
.bsp4	BSPE	f_dra_1_f6
.bsp2	BSP	4,f_dra_1_f7,.bsp8
	BSPE	f_dra_1_f9
.bsp8	BSPE	f_dra_1_f10

f_dra_1_f1	Faces
	Face3	32,0,-113,57,-10,3,1,0
	FendQ
f_dra_1_f3	Faces
	Face4	3,8,43,120,0,0,16,14,10
	FendQ
f_dra_1_f5	Faces
	Face2	43,-1,0,0,0,2,12
	FendQ
f_dra_1_f6	Faces
	Face4	3,11,47,-118,-6,5,6,8,0
	Face4	3,10,-42,120,2,0,8,6,5
	Face4	3,9,-47,-118,0,10,14,16,0
	FendQ
f_dra_1_f7	Faces
	Face4	3,4,-47,118,0,11,15,17,0
	FendQ
f_dra_1_f9	Faces
	Face3	28,2,0,-127,9,2,1,3
	Face2	43,-1,0,0,0,13,1
	Face3	34,3,0,90,90,0,1,2
	Face3	30,1,113,57,-10,0,2,3
	FendQ
f_dra_1_f10	Faces
	Face4	3,7,-42,-120,-2,0,9,7,4
	Face4	3,6,40,120,0,4,7,9,0
	Face4	3,5,43,-120,0,0,17,15,11
	FendQ
f_dra_1_EBSP
	EndShape

	endc


spacebarcol	=	97

;-----------------------------------------------------------------------
	ifne	DO_HDR

len	=	Xspacebarlen/2
size	=	Xspacebarsize/2
Xwirespacebar		ShapeHdr	Xspacebar_P,0,wirespacebar_F,0,0,0,0,0,0,len,size,size,len,id_0_c,0,<Xwirespacebar>
Xsolidspacebar		ShapeHdr	Xspacebar_P,0,solidspacebar_F,0,0,0,0,0,0,len,size,size,len,id_0_c,0,<Xsolidspacebar>

XPwirespacebar		ShapeHdr	Xspacebar_P,0,wirespacebar_F,0,0,0,0,0,Xspacebar_col,len,len,len,len,id_0_c,0,<XPwirespacebar>
XPsolidspacebar	ShapeHdr	Xspacebar_P,0,solidspacebar_F,0,0,0,0,0,Xspacebar_col,len,len,len,len,id_0_c,0,<XPsolidspacebar>

XPwirespacebarRotY 	ShapeHdr	XspacebarRotY_P,0,wirespacebar_F,0,0,0,0,0,XspacebarRotY_col,len,len,len,len,id_0_c,0,<XPwirespacebarRotY>
XPsolidspacebarRotY	ShapeHdr	XspacebarRotY_P,0,solidspacebar_F,0,0,0,0,0,XspacebarRotY_col,len,len,len,len,id_0_c,0,<XPsolidspacebarRotY>


len	=	Yspacebarlen/2
size	=	Yspacebarsize/2
Ywirespacebar		ShapeHdr	Yspacebar_P,0,wirespacebar_F,0,0,0,0,0,0,size,len,size,len,id_0_c,0,<Ywirespacebar>
Ysolidspacebar		ShapeHdr	Yspacebar_P,0,solidspacebar_F,0,0,0,0,0,0,size,len,size,len,id_0_c,0,<Ysolidspacebar>

len	=	Zspacebarlen/2
size	=	Zspacebarsize/2
Zwirespacebar		ShapeHdr	Zspacebar_P,0,wirespacebar_F,0,0,0,0,0,0,size,size,len,len,id_0_c,0,<Zwirespacebar>
Zsolidspacebar		ShapeHdr	Zspacebar_P,0,solidspacebar_F,0,0,0,0,0,0,size,size,len,len,id_0_c,0,<Zsolidspacebar>



len	=	SXspacebarlen/2
size	=	SXspacebarsize/2
SXwirespacebar		ShapeHdr	SXspacebar_P,0,wirespacebar_F,0,0,0,0,0,0,len,size,size,len,id_0_c,0,<SXwirespacebar>
SXsolidspacebar	ShapeHdr	SXspacebar_P,0,solidspacebar_F,0,0,0,0,0,0,len,size,size,len,id_0_c,0,<SXsolidspacebar>

SXPwirespacebar	ShapeHdr	SXspacebar_P,0,wirespacebar_F,0,0,0,0,0,SXspacebar_col,len,len,len,len,id_0_c,0,<SXPwirespacebar>
SXPsolidspacebar	ShapeHdr	SXspacebar_P,0,solidspacebar_F,0,0,0,0,0,SXspacebar_col,len,len,len,len,id_0_c,0,<SXPsolidspacebar>

SXPwirespacebarRotY	ShapeHdr	SXspacebarRotY_P,0,wirespacebar_F,0,0,0,0,0,SXspacebarRotY_col,len,len,len,len,id_0_c,0,<SXPwirespacebarRotY>
SXPsolidspacebarRotY	ShapeHdr	SXspacebarRotY_P,0,solidspacebar_F,0,0,0,0,0,SXspacebarRotY_col,len,len,len,len,id_0_c,0,<SXPsolidspacebarRotY>

len	=	SYspacebarlen/2
size	=	SYspacebarsize/2
SYwirespacebar		ShapeHdr        SYspacebar_P,0,wirespacebar_F,0,0,0,0,0,0,size,len,size,len,id_0_c,0,<SYwirespacebar>
SYsolidspacebar	ShapeHdr	SYspacebar_P,0,solidspacebar_F,0,0,0,0,0,0,size,len,size,len,id_0_c,0,<SYsolidspacebar>

len	=	SZspacebarlen/2
size	=	SZspacebarsize/2
SZwirespacebar		ShapeHdr	SZspacebar_P,0,wirespacebar_F,0,0,0,0,0,0,size,size,len,len,id_0_c,0,<SZwirespacebar>
SZsolidspacebar	ShapeHdr	SZspacebar_P,0,solidspacebar_F,0,0,0,0,0,0,size,size,len,len,id_0_c,0,<SZsolidspacebar>


	elseif


Xspacebar_P
len	=	Xspacebarlen/2
size	=	Xspacebarsize/2
	Pointsxw	4
	pw	len,size,size		;0
	pw	len,size,-size		;2
	pw	len,-size,size		;4
	pw	len,-size,-size		;6
	EndPoints


XspacebarRotY_P
len	=	Xspacebarlen/2
size	=	Xspacebarsize/2
	Pointsw	8
	pw	0,size,size		;0
	pw	-len*2,size,size		;1
	pw	0,size,-size		;2
	pw	-len*2,size,-size		;3
	pw	0,-size,size		;4
	pw	-len*2,-size,size		;5
	pw	0,-size,-size		;6
	pw	-len*2,-size,-size		;7
	EndPoints


Yspacebar_P
len	=	Yspacebarlen/2
size	=	Yspacebarsize/2
	Pointsxw	4
	pw	size,len,size		;0
	pw	size,len,-size		;2
	pw	size,-len,size		;4
	pw	size,-len,-size		;6
	EndPoints


Zspacebar_P
len	=	Zspacebarlen/2
size	=	Zspacebarsize/2
	Pointsxw	4
	pw	size,size,len		;0
	pw	size,size,-len		;2
	pw	size,-size,len		;4
	pw	size,-size,-len		;6
	EndPoints






SXspacebar_P
len	=	SXspacebarlen/2
size	=	SXspacebarsize/2
	Pointsxw	4
	pw	len,size,size		;0
	pw	len,size,-size		;2
	pw	len,-size,size		;4
	pw	len,-size,-size		;6
	EndPoints



SXspacebarRotY_P
len	=	SXspacebarlen/2
size	=	SXspacebarsize/2
	Pointsw	8
	pw	0,size,size		;0
	pw	-len*2,size,size		;1
	pw	0,size,-size		;2
	pw	-len*2,size,-size		;3
	pw	0,-size,size		;4
	pw	-len*2,-size,size		;5
	pw	0,-size,-size		;6
	pw	-len*2,-size,-size		;7
	EndPoints


SYspacebar_P
len	=	SYspacebarlen/2
size	=	SYspacebarsize/2
	Pointsxw	4
	pw	size,len,size		;0
	pw	size,len,-size		;2
	pw	size,-len,size		;4
	pw	size,-len,-size		;6
	EndPoints


SZspacebar_P
len	=	SZspacebarlen/2
size	=	SZspacebarsize/2
	Pointsxw	4
	pw	size,size,len		;0
	pw	size,size,-len		;2
	pw	size,-size,len		;4
	pw	size,-size,-len		;6
	EndPoints

solidspacebar_F    	
	Vizis	6
	Viz	3,7,5,127,0,0	;0
	Viz	4,6,2,-127,0,0	;1
	Viz	6,7,3,0,127,0	;2
	Viz	5,4,0,0,-127,0	;3
	Viz	1,0,2,-0,0,127	;4
	Viz	4,5,7,0,0,-127	;5

	faces
	Face4	99,0,127,0,0,3,7,5,1	; right	; 12 - Dk grey
	Face4	99,1,-127,0,0,4,6,2,0	; left	; 12 - Dk grey
	Face4	97,2,0,127,0,6,7,3,2	; down	; 16 - Lt grey
	Face4	97,3,0,-127,0,5,4,0,1	; up	; 16 - Lt grey
	Face4	98,4,-0,0,127,1,0,2,3	; front ; 23 - red
	Face4	98,5,0,0,-127,4,5,7,6	; back	; 23 - red
	Fend
	EndShape

wirespacebar_F
	Vizis	1
	Viz	7,5,1,0,0,-127	;5

	faces
	Face2	spacebarcol,-1,0,0,0,2,3	
	Face2	spacebarcol,-1,0,0,0,1,0	
	Face2	spacebarcol,-1,0,0,0,6,7	
	Face2	spacebarcol,-1,0,0,0,5,4
	Face2	spacebarcol,-1,0,0,0,0,4
	Face2	spacebarcol,-1,0,0,0,2,6
	Face2	spacebarcol,-1,0,0,0,3,7
	Face2	spacebarcol,-1,0,0,0,1,5
	Face2	spacebarcol,-1,0,0,0,0,2
	Face2	spacebarcol,-1,0,0,0,6,4
	Face2	spacebarcol,-1,0,0,0,1,3
	Face2	spacebarcol,-1,0,0,0,7,5
	Fend
	EndShape

	endc
;-----------------------------------------------------------------------
;--Shape file ----- C:\SHED\NSHAPES\colony_0.txt ----
	ifne	DO_HDR

colony_0
	ShapeHdr	colony_0_P,0,colony_0_F,0,0,0,0,2+1,0,100/2,122/2,70/2,142/2,id_0_c,0,<colony_0>
	elseif
colony_0_P
	Pointsb	34
	pbd2	-48,90,19	;0
	pbd2	-30,-90,28	;1
	pbd2	-20,100,40	;2
	pbd2	30,100,40	;3
	pbd2	-70,100,40	;4
	pbd2	-76,100,40	;5
	pbd2	-70,90,40	;6
	pbd2	-70,50,40	;7
	pbd2	-76,50,40	;8
	pbd2	-55,-100,40	;9
	pbd2	55,-111,40	;10
	pbd2	60,-111,40	;11
	pbd2	80,80,45	;12
	pbd2	95,80,45	;13
	pbd2	80,70,45	;14
	pbd2	95,70,45	;15
	pbd2	95,40,45	;16
	pbd2	60,-100,45	;17
	pbd2	91,-100,45	;18
	pbd2	24,122,50	;19
	pbd2	24,120,50	;20
	pbd2	24,80,50	;21
	pbd2	8,-75,50	;22
	pbd2	10,-75,50	;23
	pbd2	52,-75,50	;24
	pbd2	-52,-90,50	;25
	pbd2	-52,-95,50	;26
	pbd2	52,-100,50	;27
	pbd2	10,94,60	;28
	pbd2	10,80,60	;29
	pbd2	20,-60,70	;30
	pbd2	-30,-60,70	;31
	pbd2	-30,-85,70	;32
	pbd2	20,-105,70	;33
	PointsXb	22
	pbd2	-23,15,0	;34
	pbd2	-23,-15,0	;36
	pbd2	23,60,20	;38
	pbd2	33,60,20	;40
	pbd2	60,60,20	;42
	pbd2	80,40,20	;44
	pbd2	-23,35,20	;46
	pbd2	-33,15,20	;48
	pbd2	-33,-15,20	;50
	pbd2	80,-20,20	;52
	pbd2	23,-25,20	;54
	pbd2	-23,-40,20	;56
	pbd2	33,-40,20	;58
	pbd2	60,-40,20	;60
	pbd2	60,80,40	;62
	pbd2	-100,40,40	;64
	pbd2	-100,-20,40	;66
	pbd2	-55,-60,40	;68
	pbd2	60,-60,40	;70
	pbd2	-52,-60,50	;72
	pbd2	-23,15,70	;74
	pbd2	-23,-15,70	;76

	EndPoints
colony_0_F
	Vizis	35
	Viz	74,76,36,-127,0,0	;0
	Viz	35,37,77,127,0,0	;1
	Viz	77,37,36,0,-127,0	;2
	Viz	74,34,35,0,127,0	;3
	Viz	37,35,34,0,0,127	;4
	Viz	36,37,54,0,114,-57	;5
	Viz	36,50,48,114,0,-57	;6
	Viz	36,55,50,85,85,-42	;7
	Viz	35,49,51,-114,0,-57	;8
	Viz	51,54,37,-85,85,-42	;9
	Viz	46,47,35,0,-90,-90	;10
	Viz	48,46,34,104,-52,-52	;11
	Viz	35,47,49,-104,-52,-52	;12
	Viz	57,54,51,0,0,-127	;13
	Viz	58,40,42,0,0,-127	;14
	Viz	40,49,47,0,0,-127	;15
	Viz	59,50,55,0,0,-127	;16
	Viz	39,46,48,0,0,-127	;17
	Viz	61,53,45,0,0,-127	;18
	Viz	47,46,39,0,0,-127	;19
	Viz	57,56,55,0,0,-127	;20
	Viz	71,61,60,0,90,-90	;21
	Viz	66,53,61,73,73,-73	;22
	Viz	64,45,53,90,0,-90	;23
	Viz	62,42,43,0,-90,-90	;24
	Viz	63,43,45,73,-73,-73	;25
	Viz	70,60,52,-73,73,-73	;26
	Viz	67,52,44,-90,0,-90	;27
	Viz	65,44,42,-73,-73,-73	;28
	Viz	71,68,9,0,0,-127	;29
	Viz	72,26,9,-122,0,-36	;30
	Viz	11,10,69,0,0,-127	;31
	Viz	69,10,27,122,0,-36	;32
	Viz	4,7,8,0,0,-127	;39
	Viz	12,13,15,0,0,-127	;45
	BSPInit	colony_0_EBSP
	BSP	28,colony_0_f1,.bsp2
	BSPE	colony_0_f3
.bsp2	BSPE	colony_0_f4

colony_0_f1	Faces
	Face4	16,28,-73,-73,-73,65,44,42,62
	FendQ
colony_0_f3	Faces
	Face4	10,4,0,0,127,37,35,34,36
	Face4	32,0,-127,0,0,74,76,36,34
	Face4	28,1,127,0,0,35,37,77,75
	Face4	30,2,0,-127,0,77,37,36,76
	Face4	34,3,0,127,0,74,34,35,75
	Face4	18,5,0,114,-57,36,37,54,55
	Face4	14,6,114,0,-57,36,50,48,34
	Face3	16,7,85,85,-42,36,55,50
	Face4	18,8,-114,0,-57,35,49,51,37
	Face3	20,9,-85,85,-42,51,54,37
	Face4	14,10,0,-90,-90,46,47,35,34
	Face3	12,11,104,-52,-52,48,46,34
	Face3	16,12,-104,-52,-52,35,47,49
	Face4	10,13,0,0,-127,57,54,51,58
	Face6	21,14,0,0,-127,58,40,42,44,52,60
	Face4	10,15,0,0,-127,40,49,47,38
	Face4	10,16,0,0,-127,59,50,55,56
	Face4	10,17,0,0,-127,39,46,48,41
	Face6	21,18,0,0,-127,61,53,45,43,41,59
	Face4	16,19,0,0,-127,47,46,39,38
	Face4	16,20,0,0,-127,57,56,55,54
	Face4	18,21,0,90,-90,71,61,60,70
	Face4	16,22,73,73,-73,66,53,61,71
	Face4	14,24,0,-90,-90,62,42,43,63
	Face4	12,25,73,-73,-73,63,43,45,64
	Face4	20,26,-73,73,-73,70,60,52,67
	Face3	18,29,0,0,-127,71,68,9
	Face4	20,30,-122,0,-36,72,26,9,68
	Face4	18,31,0,0,-127,11,10,69,70
	Face4	12,32,122,0,-36,69,10,27,73
	Face4	12,33,0,0,-127,4,7,8,5
	Face2	18,-1,0,0,0,25,1
	Face2	16,-1,0,0,0,24,23
	Face2	14,-1,0,0,0,30,33
	Face2	12,-1,0,0,0,32,31
	Face2	18,-1,0,0,0,17,18
	Face2	12,-1,0,0,0,21,20
	Face2	14,-1,0,0,0,6,0
	Face2	14,-1,0,0,0,3,2
	Face2	43,-1,0,0,0,23,22
	Face2	12,-1,0,0,0,28,29
	Face4	14,23,90,0,-90,64,45,53,66
	Face4	18,27,-90,0,-90,67,52,44,65
	FendQ
colony_0_f4	Faces
	Face4	12,34,0,0,-127,12,13,15,14
	Face2	44,-1,0,0,0,20,19
	Face2	12,-1,0,0,0,15,16
	FendQ
colony_0_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\colony_1.txt ----
	ifne	DO_HDR

colony_1
	ShapeHdr	colony_1_P,0,colony_1_F,0,0,0,0,2+1,0,110/2,35/2,70/2,133/2,id_0_c,0,<colony_1>
	elseif
colony_1_P
	Pointsb	28
	pbd2	0,5,50	;0
	pbd2	20,5,50	;1
	pbd2	70,5,50	;2
	pbd2	90,5,50	;3
	pbd2	0,-5,50	;4
	pbd2	20,-5,50	;5
	pbd2	70,-5,50	;6
	pbd2	90,-5,50	;7
	pbd2	40,35,60	;8
	pbd2	50,35,60	;9
	pbd2	30,25,60	;10
	pbd2	60,25,60	;11
	pbd2	0,15,60	;12
	pbd2	30,15,60	;13
	pbd2	60,15,60	;14
	pbd2	80,15,60	;15
	pbd2	0,-15,60	;16
	pbd2	30,-15,60	;17
	pbd2	60,-15,60	;18
	pbd2	80,-15,60	;19
	pbd2	30,-25,60	;20
	pbd2	60,-25,60	;21
	pbd2	40,-35,60	;22
	pbd2	50,-35,60	;23
	pbd2	0,25,70	;24
	pbd2	110,25,70	;25
	pbd2	0,-25,70	;26
	pbd2	110,-25,70	;27

	EndPoints
colony_1_F
	Vizis	8
	Viz	21,23,22,0,0,-127	;2
	Viz	17,5,1,-90,0,-90	;3
	Viz	14,2,6,90,0,-90	;4
	Viz	1,0,12,0,-90,-90	;5
	Viz	17,16,4,0,90,-90	;6
	Viz	3,2,14,0,-90,-90	;7
	Viz	0,3,7,0,0,-127	;8
	Viz	19,18,6,0,90,-90	;9
	BSPInit	colony_1_EBSP
	BSP	0,colony_1_f1,.bsp2
	BSPE	colony_1_f3
.bsp2	BSPE	colony_1_f4

colony_1_f1	Faces
	Face8	45,0,0,0,-127,21,23,22,20,10,8,9,11
	FendQ
colony_1_f3	Faces
	Face2	44,-1,-127,0,0,26,27
	Face2	44,-1,127,0,0,25,24
	FendQ
colony_1_f4	Faces
	Face4	44,1,-90,0,-90,17,5,1,13
	Face4	44,2,90,0,-90,14,2,6,18
	Face4	21,3,0,-90,-90,1,0,12,13
	Face4	25,4,0,90,-90,17,16,4,5
	Face4	21,5,0,-90,-90,3,2,14,15
	Face4	23,6,0,0,-127,0,3,7,4
	Face4	25,7,0,90,-90,19,18,6,7
	FendQ
colony_1_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\colony_3.txt ----
	ifne	DO_HDR

colony3L
	ShapeHdr	colony3L_P,0,colony3L_F,0,0,0,0,3+1,0,10/2,50/2,20/2,125/2,id_0_c,0,<colony3L>
	elseif
colony3L_P
	Pointsb	25
	pbd2	45,-60,-100	;0
	pbd2	35,-40,-70	;1
	pbd2	45,-40,-70	;2
	pbd2	35,-60,-70	;3
	pbd2	45,-60,-70	;4
	pbd2	25,80,-10	;5
	pbd2	25,50,-10	;6
	pbd2	50,50,-10	;7
	pbd2	25,-35,-10	;8
	pbd2	50,-35,-10	;9
	pbd2	25,-65,-10	;10
	pbd2	50,-65,-10	;11
	pbd2	-25,-40,-5	;12
	pbd2	-25,-60,-5	;13
	pbd2	30,-85,-5	;14
	pbd2	45,-85,-5	;15
	pbd2	-25,-40,65	;16
	pbd2	-50,-40,65	;17
	pbd2	-25,-60,65	;18
	pbd2	30,-85,65	;19
	pbd2	25,50,70	;20
	pbd2	50,50,70	;21
	pbd2	25,-35,70	;22
	pbd2	25,-65,70	;23
	pbd2	85,-35,75	;24

	EndPoints
colony3L_F
	Vizis	11
	Viz	13,18,16,127,0,0	;0
	Viz	8,12,16,13,-126,0	;1
	Viz	10,13,12,13,0,-126	;2
	Viz	10,14,19,123,31,0	;3
	Viz	11,15,14,0,31,-123	;4
	Viz	4,3,1,0,0,-127	;5
	Viz	8,1,3,125,0,-21	;7
	Viz	9,2,1,0,-127,-11	;8
	Viz	8,6,7,0,0,-127	;10
	Viz	22,20,6,127,0,0	;11
	Viz	7,6,20,0,-127,0	;12
	BSPInit	colony3L_EBSP
	BSP	0,colony3L_f1,.bsp2
	BSP	1,colony3L_f3,.bsp4
	BSP	2,colony3L_f5,.bsp6
	BSPE	colony3L_f7
.bsp6	BSP	5,colony3L_f8,.bsp9
	BSPE	colony3L_f10
.bsp9	BSPE	colony3L_f11
.bsp4	BSP	10,colony3L_f12,.bsp13
	BSPE	colony3L_f14
.bsp13	BSPE	colony3L_f15
.bsp2	BSPE	colony3L_f16

colony3L_f1	Faces
	Face4	23,0,127,0,0,13,18,16,12
	FendQ
colony3L_f3	Faces
	Face4	21,1,13,-126,0,8,12,16,22
	FendQ
colony3L_f5	Faces
	Face4	25,2,13,0,-126,10,13,12,8
	FendQ
colony3L_f7	Faces
	Face4	14,3,123,31,0,10,14,19,23
	FendQ
colony3L_f8	Faces
	Face4	20,5,0,0,-127,4,3,1,2
	FendQ
colony3L_f10	Faces
	Face4	18,4,0,31,-123,11,15,14,10
	Face4	14,6,125,0,-21,8,1,3,10
	FendQ
colony3L_f11	Faces
	Face2	43,-1,0,0,0,4,0
	FendQ
colony3L_f12	Faces
	Face4	0,10,0,-127,0,7,6,20,21
	FendQ
colony3L_f14	Faces
	Face4	12,7,0,-127,-11,9,2,1,8
	Face4	18,8,0,0,-127,8,6,7,9
	Face4	14,9,127,0,0,22,20,6,8
	FendQ
colony3L_f15	Faces
	Face2	43,-1,0,0,0,6,5
	FendQ
colony3L_f16	Faces
	Face2	21,-1,0,0,0,16,17
	FendQ
colony3L_EBSP
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\colony_3.txt ----
	ifne	DO_HDR

colony3R
	ShapeHdr	colony3R_P,0,colony3R_F,0,0,0,0,3+1,0,85/2,85/2,100/2,125/2,id_0_c,0,<colony3R>
	elseif
colony3R_P
	Pointsb	25
	pbd2	-45,-60,-100	;0
	pbd2	-35,-40,-70	;1
	pbd2	-45,-40,-70	;2
	pbd2	-35,-60,-70	;3
	pbd2	-45,-60,-70	;4
	pbd2	-25,80,-10	;5
	pbd2	-25,50,-10	;6
	pbd2	-50,50,-10	;7
	pbd2	-25,-35,-10	;8
	pbd2	-50,-35,-10	;9
	pbd2	-25,-65,-10	;10
	pbd2	-50,-65,-10	;11
	pbd2	25,-40,-5	;12
	pbd2	25,-60,-5	;13
	pbd2	-30,-85,-5	;14
	pbd2	-45,-85,-5	;15
	pbd2	25,-40,65	;16
	pbd2	50,-40,65	;17
	pbd2	25,-60,65	;18
	pbd2	-30,-85,65	;19
	pbd2	-25,50,70	;20
	pbd2	-50,50,70	;21
	pbd2	-25,-35,70	;22
	pbd2	-25,-65,70	;23
	pbd2	-85,-35,75	;24

	EndPoints
colony3R_F
	Vizis	11
	Viz	16,18,13,-127,0,0	;0
	Viz	16,12,8,-13,-126,0	;1
	Viz	12,13,10,-13,0,-126	;2
	Viz	19,14,10,-123,31,0	;3
	Viz	14,15,11,0,31,-123	;4
	Viz	1,3,4,0,0,-127	;5
	Viz	3,1,8,-125,0,-21	;7
	Viz	1,2,9,0,-127,-11	;8
	Viz	7,6,8,0,0,-127	;10
	Viz	6,20,22,-127,0,0	;11
	Viz	20,6,7,0,-127,0	;12
	BSPInit	colony3R_EBSP
	BSP	0,colony3R_f1,.bsp2
	BSP	1,colony3R_f3,.bsp4
	BSP	2,colony3R_f5,.bsp6
	BSPE	colony3R_f7
.bsp6	BSPE	colony3R_f8
.bsp4	BSPNULL	9,colony3R_f9
	BSP	7,colony3R_f10,.bsp11
	BSPE	colony3R_f12
.bsp11	BSPE	colony3R_f13
.bsp2	BSPE	colony3R_f14

colony3R_f1	Faces
	Face4	23,0,-127,0,0,16,18,13,12
	FendQ
colony3R_f3	Faces
	Face4	21,1,-13,-126,0,16,12,8,22
	FendQ
colony3R_f5	Faces
	Face4	25,2,-13,0,-126,12,13,10,8
	FendQ
colony3R_f7	Faces
	Face4	14,3,-123,31,0,19,14,10,23
	FendQ
colony3R_f8	Faces
	Face4	18,4,0,31,-123,14,15,11,10
	Face4	20,5,0,0,-127,1,3,4,2
	Face4	14,6,-125,0,-21,3,1,8,10
	FendQ
colony3R_f9	Faces
	Face4	14,9,-127,0,0,6,20,22,8
	FendQ
colony3R_f10	Faces
	Face4	12,7,0,-127,-11,1,2,9,8
	FendQ
colony3R_f12	Faces
	Face2	21,-1,0,0,0,16,17
	FendQ
colony3R_f13	Faces
	Face4	18,8,0,0,-127,7,6,8,9
	Face4	0,10,0,-127,0,20,6,7,21
	FendQ
colony3R_f14	Faces
	Face2	43,-1,0,0,0,6,5
	Face2	43,-1,0,0,0,4,0
	FendQ
colony3R_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\s_hou_0.txt ----
	ifne	DO_HDR

r_hou_0	ShapeHdr	s_hou_0_P,0,s_hou_0_F,0,0,0,0,1,0,24,29,25,32,id_2_c,0,<r_hou_0>
s_hou_0	ShapeHdr	s_hou_0_P,0,s_hou_0_F,0,0,0,0,1,0,24,29,25,32,id_0_c,0,<s_hou_0>
b_hou_0	ShapeHdr	s_hou_0_P,0,s_hou_0_F,0,0,0,0,1,0,24,29,25,32,id_3_c,0,<b_hou_0>
	elseif
s_hou_0_P
	Pointsb	4
	pb	0,16,-18	;0
	pb	0,29,-9	;1
	pb	0,-16,0	;2
	pb	0,-14,16	;3
	PointsXb	6
	pb	14,4,-16	;4
	pb	14,-12,-7	;6
	pb	24,4,2	;8
	pb	10,29,9	;10
	pb	20,16,18	;12
	pb	10,2,25	;14

	EndPoints
s_hou_0_F
	Vizis	16
	Viz	2,12,14,-105,71,9	;0
	Viz	1,10,12,-105,-40,-58	;1
	Viz	4,8,6,-107,33,-59	;2
	Viz	0,13,11,105,-40,-58	;3
	Viz	10,11,13,0,-72,104	;4
	Viz	11,10,1,0,-127,0	;5
	Viz	3,15,13,105,71,9	;6
	Viz	12,13,15,0,-57,114	;7
	Viz	3,14,15,0,62,111	;8
	Viz	8,4,0,-81,-87,-45	;9
	Viz	6,8,12,-61,81,76	;10
	Viz	2,0,4,36,60,-106	;11
	Viz	7,9,5,107,33,-59	;12
	Viz	2,13,9,61,81,76	;13
	Viz	7,5,0,-36,60,-106	;14
	Viz	13,0,5,81,-87,-45	;15

s_hou_0_f1	Faces
	Face4	18,0,-105,71,9,2,12,14,3
	Face4	16,1,-105,-40,-58,1,10,12,0
	Face4	14,3,105,-40,-58,0,13,11,1
	Face4	20,6,105,71,9,3,15,13,2
	Face4	14,9,-81,-87,-45,8,4,0,12
	Face4	16,10,-61,81,76,6,8,12,2
	Face4	12,11,36,60,-106,2,0,4,6
	Face4	18,13,61,81,76,2,13,9,7
	Face4	16,14,-36,60,-106,7,5,0,2
	Face4	14,15,81,-87,-45,13,0,5,9
	Face3	43,2,-107,33,-59,4,8,6
	Face4	18,4,0,-72,104,10,11,13,12
	Face3	43,5,0,-127,0,11,10,1
	Face4	16,7,0,-57,114,12,13,15,14
	Face3	43,8,0,62,111,3,14,15
	Face3	43,12,107,33,-59,7,9,5
	Fend
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\colony_2.anm ----
	ifne	DO_HDR

colony_2
	ShapeHdr	colony_2_P,0,colony_2_F,0,0,0,0,1,0,46,30,20,55,id_0_c,0,<colony_2>
	elseif
colony_2_P
	PointsXb	6
	pb	46,10,-20	;0
	pb	46,-10,-20	;2
	pb	46,20,-10	;4
	pb	46,-20,-10	;6
	pb	46,30,-5	;8
	pb	46,-30,-5	;10
	Frames	10
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
.A0A	PointsXb	14
	pb	10,10,-20	;12
	pb	-15,10,-20	;14
	pb	10,-10,-20	;16
	pb	-15,-10,-20	;18
	pb	0,20,-10	;20
	pb	10,20,-10	;22
	pb	0,10,-10	;24
	pb	0,-10,-10	;26
	pb	0,-20,-10	;28
	pb	10,-20,-10	;30
	pb	0,30,-5	;32
	pb	0,-30,-5	;34
	pb	0,30,0	;36
	pb	0,-30,0	;38
	jump	.EB0
.A1A	PointsXb	14
	pb	15,10,-20	;12
	pb	-20,10,-20	;14
	pb	15,-10,-20	;16
	pb	-20,-10,-20	;18
	pb	5,20,-10	;20
	pb	15,20,-10	;22
	pb	5,10,-10	;24
	pb	5,-10,-10	;26
	pb	5,-20,-10	;28
	pb	15,-20,-10	;30
	pb	5,30,-5	;32
	pb	5,-30,-5	;34
	pb	5,30,0	;36
	pb	5,-30,0	;38
	jump	.EB0
.A2A	PointsXb	14
	pb	20,10,-20	;12
	pb	-25,10,-20	;14
	pb	20,-10,-20	;16
	pb	-25,-10,-20	;18
	pb	10,20,-10	;20
	pb	20,20,-10	;22
	pb	10,10,-10	;24
	pb	10,-10,-10	;26
	pb	10,-20,-10	;28
	pb	20,-20,-10	;30
	pb	10,30,-5	;32
	pb	10,-30,-5	;34
	pb	10,30,0	;36
	pb	10,-30,0	;38
	jump	.EB0
.A3A	PointsXb	14
	pb	25,10,-20	;12
	pb	-30,10,-20	;14
	pb	25,-10,-20	;16
	pb	-30,-10,-20	;18
	pb	15,20,-10	;20
	pb	25,20,-10	;22
	pb	15,10,-10	;24
	pb	15,-10,-10	;26
	pb	15,-20,-10	;28
	pb	25,-20,-10	;30
	pb	15,30,-5	;32
	pb	15,-30,-5	;34
	pb	15,30,0	;36
	pb	15,-30,0	;38
	jump	.EB0
.A4A	PointsXb	14
	pb	30,10,-20	;12
	pb	-35,10,-20	;14
	pb	30,-10,-20	;16
	pb	-35,-10,-20	;18
	pb	20,20,-10	;20
	pb	30,20,-10	;22
	pb	20,10,-10	;24
	pb	20,-10,-10	;26
	pb	20,-20,-10	;28
	pb	30,-20,-10	;30
	pb	20,30,-5	;32
	pb	20,-30,-5	;34
	pb	20,30,0	;36
	pb	20,-30,0	;38
	jump	.EB0
.A5A	PointsXb	14
	pb	35,10,-20	;12
	pb	-40,10,-20	;14
	pb	35,-10,-20	;16
	pb	-40,-10,-20	;18
	pb	25,20,-10	;20
	pb	35,20,-10	;22
	pb	25,10,-10	;24
	pb	25,-10,-10	;26
	pb	25,-20,-10	;28
	pb	35,-20,-10	;30
	pb	25,30,-5	;32
	pb	25,-30,-5	;34
	pb	25,30,0	;36
	pb	25,-30,0	;38
	jump	.EB0
.A6A	PointsXb	14
	pb	40,10,-20	;12
	pb	-45,10,-20	;14
	pb	40,-10,-20	;16
	pb	-45,-10,-20	;18
	pb	30,20,-10	;20
	pb	40,20,-10	;22
	pb	30,10,-10	;24
	pb	30,-10,-10	;26
	pb	30,-20,-10	;28
	pb	40,-20,-10	;30
	pb	30,30,-5	;32
	pb	30,-30,-5	;34
	pb	30,30,0	;36
	pb	30,-30,0	;38
	jump	.EB0
.A7A	PointsXb	14
	pb	45,10,-20	;12
	pb	-46,10,-20	;14
	pb	45,-10,-20	;16
	pb	-46,-10,-20	;18
	pb	35,20,-10	;20
	pb	45,20,-10	;22
	pb	35,10,-10	;24
	pb	35,-10,-10	;26
	pb	35,-20,-10	;28
	pb	45,-20,-10	;30
	pb	35,30,-5	;32
	pb	35,-30,-5	;34
	pb	35,30,0	;36
	pb	35,-30,0	;38
	jump	.EB0
.A8A	PointsXb	14
	pb	46,10,-20	;12
	pb	-46,10,-20	;14
	pb	46,-10,-20	;16
	pb	-46,-10,-20	;18
	pb	40,20,-10	;20
	pb	46,20,-10	;22
	pb	40,10,-10	;24
	pb	40,-10,-10	;26
	pb	40,-20,-10	;28
	pb	46,-20,-10	;30
	pb	40,30,-5	;32
	pb	40,-30,-5	;34
	pb	40,30,0	;36
	pb	40,-30,0	;38
	jump	.EB0
.A9A	PointsXb	14
	pb	46,10,-20	;12
	pb	-46,10,-20	;14
	pb	46,-10,-20	;16
	pb	-46,-10,-20	;18
	pb	45,20,-10	;20
	pb	46,20,-10	;22
	pb	45,10,-10	;24
	pb	45,-10,-10	;26
	pb	45,-20,-10	;28
	pb	46,-20,-10	;30
	pb	45,30,-5	;32
	pb	45,-30,-5	;34
	pb	45,30,0	;36
	pb	45,-30,0	;38
.EB0

	EndPoints
colony_2_F
	Vizis	24
	Viz	21,25,23,0,0,-127	;0
	Viz	5,9,33,0,-57,-114	;1
	Viz	31,27,29,0,0,-127	;2
	Viz	29,35,11,0,57,-114	;3
	Viz	5,23,13,0,-90,-90	;4
	Viz	3,17,31,0,90,-90	;5
	Viz	18,14,13,0,0,-127	;6
	Viz	25,13,23,-73,-73,-73	;7
	Viz	31,17,27,-73,73,-73	;8
	Viz	27,17,13,-90,0,-90	;9
	Viz	14,18,3,0,0,-127	;10
	Viz	22,24,20,0,0,-127	;11
	Viz	20,32,8,0,-57,-114	;12
	Viz	28,26,30,0,0,-127	;13
	Viz	6,10,34,0,57,-114	;14
	Viz	0,12,22,0,-90,-90	;15
	Viz	6,30,16,0,90,-90	;16
	Viz	16,12,15,0,0,-127	;17
	Viz	22,12,24,73,-73,-73	;18
	Viz	26,16,30,73,73,-73	;19
	Viz	24,12,16,90,0,-90	;20
	Viz	0,2,19,0,0,-127	;21
	Viz	36,32,20,127,0,0	;22
	Viz	39,35,29,-127,0,0	;23
	BSPInit	colony_2_EBSP
	BSP	0,colony_2_f1,.bsp2
	BSPE	colony_2_f3
.bsp2	BSP	9,colony_2_f4,.bsp5
	BSPE	colony_2_f6
.bsp5	BSP	20,colony_2_f7,.bsp8
	BSPE	colony_2_f9
.bsp8	BSPE	colony_2_f10

colony_2_f1	Faces
	Face3	23,0,0,0,-127,21,25,23
	FendQ
colony_2_f3	Faces
	Face6	21,22,127,0,0,36,32,20,28,34,38
	Face6	27,23,-127,0,0,39,35,29,21,33,37
	Face4	21,1,0,-57,-114,5,9,33,21
	Face4	25,3,0,57,-114,29,35,11,7
	Face4	21,12,0,-57,-114,20,32,8,4
	Face4	25,14,0,57,-114,6,10,34,28
	FendQ
colony_2_f4	Faces
	Face4	18,9,-90,0,-90,27,17,13,25
	FendQ
colony_2_f6	Faces
	Face4	14,4,0,-90,-90,5,23,13,1
	Face4	18,5,0,90,-90,3,17,31,7
	Face4	16,10,0,0,-127,14,18,3,1
	FendQ
colony_2_f7	Faces
	Face4	14,20,90,0,-90,24,12,16,26
	FendQ
colony_2_f9	Faces
	Face4	14,15,0,-90,-90,0,12,22,4
	Face4	18,16,0,90,-90,6,30,16,2
	Face4	16,21,0,0,-127,0,2,19,15
	FendQ
colony_2_f10	Faces
	Face3	23,2,0,0,-127,31,27,29
	Face3	23,11,0,0,-127,22,24,20
	Face3	23,13,0,0,-127,28,26,30
	Face3	16,7,-73,-73,-73,25,13,23
	Face3	20,8,-73,73,-73,31,17,27
	Face3	12,18,73,-73,-73,22,12,24
	Face3	16,19,73,73,-73,26,16,30
	Face4	44,6,0,0,-127,18,14,13,17
	Face4	44,17,0,0,-127,16,12,15,19
	FendQ
colony_2_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\walker_2.anm ----
	ifne	DO_HDR

walker_2
	ShapeHdr	walker_2_P,0,walker_2_F,0,0,0,0,0,0,30,87,47,88,id_0_c,0,<walker_2>
	elseif
walker_2_P
	Frames	12
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
.A0A	Pointsb	8
	pb	20,0,-41	;0
	pb	20,-25,-21	;1
	pb	-20,0,-9	;2
	pb	-20,-30,2	;3
	pb	10,-30,9	;4
	pb	30,-30,9	;5
	pb	-10,-44,29	;6
	pb	-30,-44,29	;7
	PointsXb	10
	pb	15,-45,-20	;8
	pb	25,-45,-20	;10
	pb	10,-60,-20	;12
	pb	10,-70,-20	;14
	pb	-10,-40,0	;16
	pb	-10,-65,0	;18
	pb	-30,-65,0	;20
	pb	-10,-82,2	;22
	pb	-10,-40,10	;24
	pb	10,-70,10	;26
	jump	.EB0
.A1A	Pointsb	8
	pb	20,0,-47	;0
	pb	20,-25,-27	;1
	pb	-20,0,2	;2
	pb	-20,-32,8	;3
	pb	10,-30,3	;4
	pb	30,-30,3	;5
	pb	-10,-50,32	;6
	pb	-30,-50,32	;7
	PointsXb	10
	pb	15,-54,-25	;8
	pb	25,-54,-25	;10
	pb	10,-61,-20	;12
	pb	10,-71,-20	;14
	pb	-10,-41,0	;16
	pb	-10,-66,0	;18
	pb	-30,-66,0	;20
	pb	-10,-83,3	;22
	pb	-10,-41,10	;24
	pb	10,-71,10	;26
	jump	.EB0
.A2A	Pointsb	8
	pb	20,-16,-45	;0
	pb	20,-37,-21	;1
	pb	-20,0,0	;2
	pb	-20,-31,5	;3
	pb	10,-37,9	;4
	pb	30,-37,9	;5
	pb	-10,-51,29	;6
	pb	-30,-51,29	;7
	PointsXb	10
	pb	15,-52,-20	;8
	pb	25,-52,-20	;10
	pb	10,-67,-20	;12
	pb	10,-77,-20	;14
	pb	-10,-47,0	;16
	pb	-10,-72,0	;18
	pb	-30,-72,0	;20
	pb	-10,-87,0	;22
	pb	-10,-47,10	;24
	pb	10,-77,10	;26
	jump	.EB0
.A3A	Pointsb	8
	pb	20,-27,-42	;0
	pb	20,-43,-15	;1
	pb	-20,0,-12	;2
	pb	-20,-30,-2	;3
	pb	10,-38,15	;4
	pb	30,-38,15	;5
	pb	-10,-45,25	;6
	pb	-30,-45,25	;7
	PointsXb	10
	pb	15,-51,-20	;8
	pb	25,-51,-20	;10
	pb	10,-66,-20	;12
	pb	10,-76,-20	;14
	pb	-10,-46,0	;16
	pb	-10,-71,0	;18
	pb	-30,-71,0	;20
	pb	-10,-84,-2	;22
	pb	-10,-46,10	;24
	pb	10,-76,10	;26
	jump	.EB0
.A4A	Pointsb	8
	pb	20,-17,-34	;0
	pb	20,-38,-10	;1
	pb	-20,0,-24	;2
	pb	-20,-28,-9	;3
	pb	10,-38,20	;4
	pb	30,-38,20	;5
	pb	-10,-38,20	;6
	pb	-30,-38,20	;7
	PointsXb	10
	pb	15,-48,-20	;8
	pb	25,-48,-20	;10
	pb	10,-63,-20	;12
	pb	10,-73,-20	;14
	pb	-10,-43,0	;16
	pb	-10,-68,0	;18
	pb	-30,-68,0	;20
	pb	-10,-80,-2	;22
	pb	-10,-43,10	;24
	pb	10,-73,10	;26
	jump	.EB0
.A5A	Pointsb	8
	pb	20,0,-30	;0
	pb	20,-25,-10	;1
	pb	-20,0,-30	;2
	pb	-20,-25,-10	;3
	pb	10,-30,20	;4
	pb	30,-30,20	;5
	pb	-10,-30,20	;6
	pb	-30,-30,20	;7
	PointsXb	10
	pb	15,-37,-16	;8
	pb	25,-37,-16	;10
	pb	10,-52,-20	;12
	pb	10,-62,-20	;14
	pb	-10,-32,0	;16
	pb	-10,-60,0	;18
	pb	-30,-60,0	;20
	pb	-10,-72,0	;22
	pb	-10,-32,10	;24
	pb	10,-62,10	;26
	jump	.EB0
.A6A	Pointsb	8
	pb	20,0,-9	;0
	pb	20,-30,2	;1
	pb	-20,0,-41	;2
	pb	-20,-25,-21	;3
	pb	10,-44,29	;4
	pb	30,-44,29	;5
	pb	-10,-30,9	;6
	pb	-30,-30,9	;7
	PointsXb	10
	pb	15,-45,-20	;8
	pb	25,-45,-20	;10
	pb	10,-60,-20	;12
	pb	10,-70,-20	;14
	pb	-10,-40,0	;16
	pb	-10,-65,0	;18
	pb	-30,-65,0	;20
	pb	-10,-82,2	;22
	pb	-10,-40,10	;24
	pb	10,-70,10	;26
	jump	.EB0
.A7A	Pointsb	8
	pb	20,0,2	;0
	pb	20,-32,8	;1
	pb	-20,0,-47	;2
	pb	-20,-25,-27	;3
	pb	10,-50,32	;4
	pb	30,-50,32	;5
	pb	-10,-30,3	;6
	pb	-30,-30,3	;7
	PointsXb	10
	pb	15,-50,-23	;8
	pb	25,-50,-23	;10
	pb	10,-61,-20	;12
	pb	10,-71,-20	;14
	pb	-10,-41,0	;16
	pb	-10,-66,0	;18
	pb	-30,-66,0	;20
	pb	-10,-83,3	;22
	pb	-10,-41,10	;24
	pb	10,-71,10	;26
	jump	.EB0
.A8A	Pointsb	8
	pb	20,0,0	;0
	pb	20,-31,5	;1
	pb	-20,-16,-45	;2
	pb	-20,-37,-21	;3
	pb	10,-51,29	;4
	pb	30,-51,29	;5
	pb	-10,-37,9	;6
	pb	-30,-37,9	;7
	PointsXb	10
	pb	15,-52,-20	;8
	pb	25,-52,-20	;10
	pb	10,-67,-20	;12
	pb	10,-77,-20	;14
	pb	-10,-47,0	;16
	pb	-10,-72,0	;18
	pb	-30,-72,0	;20
	pb	-10,-87,0	;22
	pb	-10,-47,10	;24
	pb	10,-77,10	;26
	jump	.EB0
.A9A	Pointsb	8
	pb	20,0,-12	;0
	pb	20,-30,-2	;1
	pb	-20,-27,-42	;2
	pb	-20,-43,-15	;3
	pb	10,-45,25	;4
	pb	30,-45,25	;5
	pb	-10,-38,15	;6
	pb	-30,-38,15	;7
	PointsXb	10
	pb	15,-51,-20	;8
	pb	25,-51,-20	;10
	pb	10,-66,-20	;12
	pb	10,-76,-20	;14
	pb	-10,-46,0	;16
	pb	-10,-71,0	;18
	pb	-30,-71,0	;20
	pb	-10,-83,-2	;22
	pb	-10,-46,10	;24
	pb	10,-76,10	;26
	jump	.EB0
.A10A	Pointsb	8
	pb	20,0,-24	;0
	pb	20,-28,-9	;1
	pb	-20,-17,-34	;2
	pb	-20,-38,-10	;3
	pb	10,-38,20	;4
	pb	30,-38,20	;5
	pb	-10,-38,20	;6
	pb	-30,-38,20	;7
	PointsXb	10
	pb	15,-48,-20	;8
	pb	25,-48,-20	;10
	pb	10,-63,-20	;12
	pb	10,-73,-20	;14
	pb	-10,-43,0	;16
	pb	-10,-68,0	;18
	pb	-30,-68,0	;20
	pb	-10,-80,-3	;22
	pb	-10,-43,10	;24
	pb	10,-73,10	;26
	jump	.EB0
.A11A	Pointsb	8
	pb	20,0,-30	;0
	pb	20,-25,-10	;1
	pb	-20,0,-30	;2
	pb	-20,-25,-10	;3
	pb	10,-30,20	;4
	pb	30,-30,20	;5
	pb	-10,-30,20	;6
	pb	-30,-30,20	;7
	PointsXb	10
	pb	15,-35,-12	;8
	pb	25,-35,-12	;10
	pb	10,-55,-20	;12
	pb	10,-65,-20	;14
	pb	-10,-35,0	;16
	pb	-10,-60,0	;18
	pb	-30,-60,0	;20
	pb	-10,-75,0	;22
	pb	-10,-35,10	;24
	pb	10,-65,10	;26
.EB0

	EndPoints
walker_2_F
	Vizis	19
	Viz	0,4,5,0,-109,65	;0
	Viz	4,0,1,114,35,-44	;1
	Viz	1,0,5,-114,35,-44	;2
	Viz	5,4,1,0,125,-21	;3
	Viz	3,2,6,-114,19,-52	;4
	Viz	7,2,3,114,19,-52	;5
	Viz	3,6,7,0,113,-58	;6
	Viz	7,6,2,0,-83,96	;7
	Viz	19,21,10,0,-90,90	;12
	Viz	8,10,21,0,90,-90	;13
	Viz	9,11,20,0,-90,90	;14
	Viz	18,20,11,0,90,-90	;15
	Viz	25,24,27,0,0,127	;18
	Viz	26,27,15,0,127,0	;19
	Viz	14,12,17,-127,0,0	;20
	Viz	27,24,16,127,0,0	;21
	Viz	24,25,17,0,-127,0	;22
	Viz	13,16,17,0,-90,-90	;23
	Viz	12,14,15,0,0,-127	;24
	BSPInit	walker_2_EBSP
	BSP	0,walker_2_f1,.bsp2
	BSP	13,walker_2_f3,.bsp4
	BSP	14,walker_2_f5,.bsp6
	BSPE	walker_2_f7
.bsp6	BSPE	walker_2_f8
.bsp4	BSPE	walker_2_f9
.bsp2	BSPE	walker_2_f10

walker_2_f1	Faces
	Face3	12,0,0,-109,65,0,4,5
	FendQ
walker_2_f3	Faces
	Face4	20,13,0,127,0,26,27,15,14
	FendQ
walker_2_f5	Faces
	Face5	18,14,-127,0,0,14,12,17,25,26
	FendQ
walker_2_f7	Faces
	Face5	12,15,127,0,0,27,24,16,13,15
	Face4	14,10,0,-90,90,9,11,20,18
	Face4	20,11,0,90,-90,18,20,11,9
	Face4	16,12,0,0,127,25,24,27,26
	Face4	16,17,0,-90,-90,13,16,17,12
	Face2	25,-1,0,0,0,6,18
	Face2	25,-1,0,0,0,7,20
	Face4	14,16,0,-127,0,24,25,17,16
	Face4	44,18,0,0,-127,12,14,15,13
	FendQ
walker_2_f8	Faces
	Face4	14,8,0,-90,90,19,21,10,8
	Face2	23,-1,0,0,0,4,19
	Face2	27,-1,0,0,0,5,21
	Face4	20,9,0,90,-90,8,10,21,19
	FendQ
walker_2_f9	Faces
	Face2	44,-1,0,0,0,26,23
	Face2	43,-1,0,0,0,22,27
	FendQ
walker_2_f10	Faces
	Face3	14,1,114,35,-44,4,0,1
	Face3	18,4,-114,19,-52,3,2,6
	Face3	16,3,0,125,-21,5,4,1
	Face3	16,6,0,113,-58,3,6,7
	Face3	20,2,-114,35,-44,1,0,5
	Face3	12,5,114,19,-52,7,2,3
	Face3	14,7,0,-83,96,7,6,2
	FendQ
walker_2_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\volcano.txt ----
	ifne	DO_HDR

Svolcano
	ShapeHdr	volcano_P,0,volcano_F,0,-10,0,0,1,0,30,50,50,56,id_0_c,0,<Svolcano>
volcano
	ShapeHdr	volcano_P,0,volcano_F,0,-10,0,0,2,0,30,50,50,56,id_0_c,0,<volcano>
	elseif
volcano_P
	PointsXb	6
	pb	-50,0,0	;0
	pb	29,-20,0	;2
	pb	20,-50,0	;4
	pb	-10,-50,20	;6
	pb	14,-20,30	;8
	pb	-25,0,50	;10

	EndPoints
volcano_F
	Vizis	6
	Viz	7,4,2,-110,33,55	;0
	Viz	1,11,8,-83,87,41	;1
	Viz	8,9,6,0,40,120	;2
	Viz	9,8,11,0,90,90	;3
	Viz	9,3,5,110,33,55	;4
	Viz	3,9,10,83,87,41	;5

volcano_f1	Faces
	Face4	27,0,-110,33,55,7,4,2,8
	Face4	25,1,-83,87,41,1,11,8,2
	Face4	25,2,0,40,120,8,9,6,7
	Face4	23,3,0,90,90,9,8,11,10
	Face4	23,4,110,33,55,9,3,5,6
	Face4	21,5,83,87,41,3,9,10,0
	Fend
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\b_holl.txt ----
	ifne	DO_HDR

b_holl
	ShapeHdr	b_holl_P,0,b_holl_F,0,0,0,0,3,0,20,20,0,20,id_0_c,0,<b_holl>
	elseif
b_holl_P
	Pointsb	2
	pb	0,20,0	;0
	pb	0,-20,0	;1
	PointsXb	3
	pb	14,14,0	;2
	pb	20,0,0	;4
	pb	14,-14,0	;6

	EndPoints
b_holl_F
	Vizis	1
	Viz	1,7,5,0,0,-127	;0

b_holl_f1	Faces
	Face8	10,0,0,0,-127,1,7,5,3,0,2,4,6
	Fend
	EndShape

	endc

			;--Shape file ----- C:\SHED\NSHAPES\c_miss.txt ----
	ifne	DO_HDR

c_miss
	ShapeHdr	c_miss_P,0,c_miss_F,0,0,0,0,1,0,43,50,55,60,id_0_c,0,<c_miss>
	elseif
c_miss_P
	Pointsb	6
	pb	0,0,-55	;0
	pb	0,-50,-5	;1
	pb	0,17,35	;2
	pb	0,-30,35	;3
	pb	0,40,45	;4
	pb	0,0,55	;5
	PointsXb	7
	pb	-43,25,-5	;6
	pb	10,12,25	;8
	pb	15,3,25	;10
	pb	-5,-15,25	;12
	pb	-26,15,35	;14
	pb	-15,-8,35	;16
	pb	-35,-20,45	;18

	EndPoints
c_miss_F
	Vizis	30
	Viz	10,7,15,-87,91,14	;0
	Viz	15,7,8,33,-122,16	;1
	Viz	5,10,15,-78,96,29	;2
	Viz	15,8,5,42,-115,32	;3
	Viz	7,10,8,72,40,-97	;4
	Viz	14,6,11,87,91,14	;5
	Viz	9,6,14,-33,-122,16	;6
	Viz	14,11,5,78,96,29	;7
	Viz	5,9,14,-42,-115,32	;8
	Viz	9,11,6,-72,40,-97	;9
	Viz	12,1,3,122,31,15	;10
	Viz	3,1,13,-122,31,15	;11
	Viz	5,12,3,122,20,30	;12
	Viz	3,13,5,-122,20,30	;13
	Viz	1,12,13,0,-83,-96	;14
	Viz	5,16,12,19,111,59	;15
	Viz	11,16,5,102,-51,56	;16
	Viz	13,17,5,-19,111,59	;17
	Viz	5,17,10,-102,-51,56	;18
	Viz	5,2,9,91,-67,57	;19
	Viz	8,2,5,-91,-67,57	;20
	Viz	0,16,11,123,20,-22	;21
	Viz	0,12,16,86,91,-22	;22
	Viz	10,17,0,-123,20,-22	;23
	Viz	17,13,0,-86,91,-22	;24
	Viz	0,9,2,37,-119,-23	;25
	Viz	2,8,0,-37,-119,-23	;26
	Viz	0,13,12,0,125,-23	;27
	Viz	0,11,9,109,-61,-23	;28
	Viz	8,10,0,-109,-61,-23	;29
	BSPInit	c_miss_EBSP
	BSP	16,c_miss_f1,.bsp2
	BSP	17,c_miss_f3,.bsp4
	BSPE	c_miss_f5
.bsp4	BSP	11,c_miss_f6,.bsp7
	BSPE	c_miss_f8
.bsp7	BSPE	c_miss_f9
.bsp2	BSP	5,c_miss_f10,.bsp11
	BSPE	c_miss_f12
.bsp11	BSPE	c_miss_f13

c_miss_f1	Faces
	Face3	30,16,102,-51,56,11,16,5
	FendQ
c_miss_f3	Faces
	Face3	34,17,-19,111,59,13,17,5
	FendQ
c_miss_f5	Faces
	Face3	32,18,-102,-51,56,5,17,10
	Face3	30,20,-91,-67,57,8,2,5
	Face3	43,0,-87,91,14,10,7,15
	Face3	43,1,33,-122,16,15,7,8
	Face3	16,2,-78,96,29,5,10,15
	Face3	20,3,42,-115,32,15,8,5
	Face3	43,4,72,40,-97,7,10,8
	Face3	16,23,-123,20,-22,10,17,0
	Face3	14,26,-37,-119,-23,2,8,0
	Face3	10,29,-109,-61,-23,8,10,0
	Face3	14,21,123,20,-22,0,16,11
	Face3	16,22,86,91,-22,0,12,16
	Face3	20,24,-86,91,-22,17,13,0
	Face3	12,25,37,-119,-23,0,9,2
	Face3	10,27,0,125,-23,0,13,12
	Face3	10,28,109,-61,-23,0,11,9
	FendQ
c_miss_f6	Faces
	Face3	43,11,-122,31,15,3,1,13
	FendQ
c_miss_f8	Faces
	Face3	32,15,19,111,59,5,16,12
	Face3	16,12,122,20,30,5,12,3
	Face3	43,14,0,-83,-96,1,12,13
	FendQ
c_miss_f9	Faces
	Face3	20,13,-122,20,30,3,13,5
	Face2	44,-1,0,0,0,19,17
	Face3	43,10,122,31,15,12,1,3
	FendQ
c_miss_f10	Faces
	Face3	43,5,87,91,14,14,6,11
	FendQ
c_miss_f12	Faces
	Face3	20,8,-42,-115,32,5,9,14
	Face3	28,19,91,-67,57,5,2,9
	Face3	43,6,-33,-122,16,9,6,14
	Face2	44,-1,0,0,0,4,2
	Face3	43,9,-72,40,-97,9,11,6
	FendQ
c_miss_f13	Faces
	Face3	16,7,78,96,29,14,11,5
	Face2	44,-1,0,0,0,16,18
	FendQ
c_miss_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\shieldr.txt ----
	ifne	DO_HDR

shieldr
	ShapeHdr	shieldr_P,0,shieldr_F,0,0,0,0,0,0,15,40,15,80,id_0_c,0,<shieldr>
	elseif
shieldr_P
	PointsXb	8
	pb	15,5,-10	;0
	pb	15,-5,-10	;2
	pb	-5,15,2	;4
	pb	-5,-15,5	;6
	pb	5,5,10	;8
	pb	-5,-5,10	;10
	pb	5,40,15	;12
	pb	-5,-40,15	;14

	EndPoints
shieldr_F
	Vizis	18
	Viz	8,9,10,0,0,127	;0
	Viz	6,7,11,0,57,114	;1
	Viz	6,10,3,111,28,55	;2
	Viz	1,9,4,107,-43,53	;3
	Viz	9,8,5,0,-79,99	;4
	Viz	3,10,9,114,0,57	;5
	Viz	2,11,7,-111,28,55	;6
	Viz	0,8,11,-114,0,57	;7
	Viz	5,8,0,-107,-43,53	;8
	Viz	14,15,7,0,-47,118	;9
	Viz	14,6,3,91,-33,82	;10
	Viz	2,7,15,-91,-33,82	;11
	Viz	4,5,12,0,59,113	;12
	Viz	12,5,0,-66,50,96	;13
	Viz	1,4,13,66,50,96	;14
	Viz	3,2,15,0,74,-103	;15
	Viz	13,12,0,0,-74,-103	;16
	Viz	1,0,2,0,0,-127	;17

shieldr_f1	Faces
	Face4	43,0,0,0,127,8,9,10,11
	Face4	10,1,0,57,114,6,7,11,10
	Face3	25,2,111,28,55,6,10,3
	Face3	21,3,107,-43,53,1,9,4
	Face4	10,4,0,-79,99,9,8,5,4
	Face3	27,6,-111,28,55,2,11,7
	Face3	23,8,-107,-43,53,5,8,0
	Face4	7,9,0,-47,118,14,15,7,6
	Face3	14,10,91,-33,82,14,6,3
	Face3	18,11,-91,-33,82,2,7,15
	Face4	7,12,0,59,113,4,5,12,13
	Face3	20,13,-66,50,96,12,5,0
	Face3	16,14,66,50,96,1,4,13
	Face4	23,5,114,0,57,3,10,9,1
	Face4	25,7,-114,0,57,0,8,11,2
	Face4	20,15,0,74,-103,3,2,15,14
	Face4	16,16,0,-74,-103,13,12,0,1
	Face4	18,17,0,0,-127,1,0,2,3
	Fend
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\zaco_b.txt ----
	ifne	DO_HDR

zaco_b
	ShapeHdr	zaco_b_P,0,zaco_b_F,0,0,0,0,0,0,70,53,49,86,id_0_c,0,<zaco_b>
zaco_bp
	ShapeHdr	zaco_b_P,0,zaco_b_F,0,0,0,0,0,playerB_col,70,53,49,86,id_0_c,0,<zaco_b>
	elseif
zaco_b_P
	Pointsb	4
	pb	0,-30,-10	;0
	pb	0,-5,15	;1
	pb	0,11,17	;2
	pb	0,53,25	;3
	PointsXb	6
	pb	-70,-6,-49	;4
	pb	-40,0,-14	;6
	pb	30,14,0	;8
	pb	7,0,0	;10
	pb	25,0,0	;12
	pb	-40,49,8	;14

	EndPoints
zaco_b_F
	Vizis	24
	Viz	10,11,1,0,-120,40	;0
	Viz	1,11,0,114,40,40	;1
	Viz	11,2,3,115,10,54	;2
	Viz	3,0,11,-42,-47,-110	;3
	Viz	10,2,11,0,107,69	;4
	Viz	0,10,1,-114,40,40	;5
	Viz	3,2,10,-115,10,54	;6
	Viz	10,0,3,42,-47,-110	;7
	Viz	14,9,11,20,33,121	;8
	Viz	11,9,14,-20,-33,-121	;9
	Viz	11,6,4,14,122,33	;10
	Viz	4,6,11,-14,-122,-33	;11
	Viz	13,11,9,0,0,127	;12
	Viz	9,6,13,84,30,90	;13
	Viz	13,6,11,0,127,0	;14
	Viz	6,9,11,-42,-69,-98	;15
	Viz	8,10,12,0,0,127	;16
	Viz	12,7,8,-84,30,90	;17
	Viz	10,7,12,0,127,0	;18
	Viz	10,8,7,42,-69,-98	;19
	Viz	10,8,15,-20,33,121	;20
	Viz	15,8,10,20,-33,-121	;21
	Viz	5,7,10,-14,122,33	;22
	Viz	10,7,5,14,-122,-33	;23
	BSPInit	zaco_b_EBSP
	BSP	1,zaco_b_f1,.bsp2
	BSP	5,zaco_b_f3,.bsp4
	BSPE	zaco_b_f5
.bsp4	BSP	16,zaco_b_f6,.bsp7
	BSP	23,zaco_b_f8,.bsp9
	BSPEND
.bsp9	BSPE	zaco_b_f10
.bsp7	BSPE	zaco_b_f11
.bsp2	BSP	9,zaco_b_f12,.bsp13
	BSPEND
.bsp13	BSP	11,zaco_b_f14,.bsp15
	BSPEND
.bsp15	BSPE	zaco_b_f16

zaco_b_f1	Faces
	Face3	16,1,114,40,40,1,11,0
	FendQ
zaco_b_f3	Faces
	Face3	20,5,-114,40,40,0,10,1
	FendQ
zaco_b_f5	Faces
	Face3	44,0,0,-120,40,10,11,1
	Face3	12,3,-42,-47,-110,3,0,11
	Face3	27,4,0,107,69,10,2,11
	Face3	14,7,42,-47,-110,10,0,3
	Face3	23,2,115,10,54,11,2,3
	Face3	25,6,-115,10,54,3,2,10
	FendQ
zaco_b_f6	Faces
	Face3	20,16,0,0,127,8,10,12
	FendQ
zaco_b_f8	Faces
	Face3	43,23,14,-122,-33,10,7,5
	FendQ
zaco_b_f10	Faces
	Face3	16,18,0,127,0,10,7,12
	Face3	45,19,42,-69,-98,10,8,7
	Face3	18,17,-84,30,90,12,7,8
	Face3	23,22,-14,122,33,5,7,10
	FendQ
zaco_b_f11	Faces
	Face3	27,20,-20,33,121,10,8,15
	Face3	43,21,20,-33,-121,15,8,10
	FendQ
zaco_b_f12	Faces
	Face3	43,9,-20,-33,-121,11,9,14
	FendQ
zaco_b_f14	Faces
	Face3	43,11,-14,-122,-33,4,6,11
	FendQ
zaco_b_f16	Faces
	Face3	18,12,0,0,127,13,11,9
	Face3	16,14,0,127,0,13,6,11
	Face3	45,15,-42,-69,-98,6,9,11
	Face3	14,13,84,30,90,9,6,13
	Face3	25,8,20,33,121,14,9,11
	Face3	21,10,14,122,33,11,6,4
	FendQ
zaco_b_EBSP
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\zaco_a.txt ----
	ifne	DO_HDR

zaco_a
	ShapeHdr	zaco_a_P,0,zaco_a_F,0,0,0,0,1,0,36,37,30,58,id_0_c,0,<zaco_a>
zaco_ap
	ShapeHdr	zaco_a_P,0,zaco_a_F,0,0,0,0,1,playerB_col,36,37,30,58,id_0_c,0,<zaco_a>
	elseif
zaco_a_P
	Pointsb	2
	pb	0,-20,10	;0
	pb	0,16,15	;1
	PointsXb	10
	pb	-20,20,-30	;2
	pb	-36,-37,-26	;4
	pb	-16,5,-19	;6
	pb	-28,-4,-18	;8
	pb	-30,-11,-6	;10
	pb	34,-20,-4	;12
	pb	-13,-25,-3	;14
	pb	25,-18,-1	;16
	pb	-10,0,0	;18
	pb	5,-5,5	;20

	EndPoints
zaco_a_F
	Vizis	27
	Viz	10,13,17,46,-45,109	;0
	Viz	18,17,14,-11,16,125	;1
	Viz	17,13,4,4,100,78	;2
	Viz	14,17,4,37,88,83	;3
	Viz	4,13,10,116,-46,-25	;4
	Viz	4,10,8,123,-31,-3	;5
	Viz	8,10,18,67,-98,46	;6
	Viz	18,14,4,-90,0,-90	;7
	Viz	19,16,12,-45,-31,115	;8
	Viz	15,16,19,11,16,125	;9
	Viz	5,12,16,-4,100,78	;10
	Viz	5,16,15,-37,88,83	;11
	Viz	11,12,5,-116,-46,-25	;12
	Viz	9,11,5,-123,-31,-3	;13
	Viz	19,11,9,-67,-98,46	;14
	Viz	9,5,15,90,0,-90	;15
	Viz	18,19,20,0,90,-90	;16
	Viz	0,21,20,0,40,-120	;17
	Viz	1,21,0,103,10,73	;18
	Viz	1,18,21,97,16,81	;19
	Viz	0,20,1,-103,10,73	;20
	Viz	20,19,1,-97,16,81	;21
	Viz	19,18,1,0,-87,-93	;22
	Viz	6,2,18,-121,-5,-37	;23
	Viz	18,2,6,121,5,37	;24
	Viz	19,3,7,121,-5,-37	;25
	Viz	7,3,19,-121,5,37	;26
	BSPInit	zaco_a_EBSP
	BSP	18,zaco_a_f1,.bsp2
	BSP	9,zaco_a_f3,.bsp4
	BSP	14,zaco_a_f5,.bsp6
	BSP	15,zaco_a_f7,.bsp8
	BSPE	zaco_a_f9
.bsp8	BSPE	zaco_a_f10
.bsp6	BSPE	zaco_a_f11
.bsp4	BSPE	zaco_a_f12
.bsp2	BSP	1,zaco_a_f13,.bsp14
	BSPE	zaco_a_f15
.bsp14	BSPE	zaco_a_f16

zaco_a_f1	Faces
	Face3	16,18,103,10,73,1,21,0
	FendQ
zaco_a_f3	Faces
	Face3	20,9,11,16,125,15,16,19
	FendQ
zaco_a_f5	Faces
	Face3	16,14,-67,-98,46,19,11,9
	FendQ
zaco_a_f7	Faces
	Face4	43,15,90,0,-90,9,5,15,19
	FendQ
zaco_a_f9	Faces
	Face3	14,12,-116,-46,-25,11,12,5
	Face3	18,10,-4,100,78,5,12,16
	Face3	30,13,-123,-31,-3,9,11,5
	FendQ
zaco_a_f10	Faces
	Face3	0,23,-121,-5,-37,6,2,18
	Face3	0,24,121,5,37,18,2,6
	Face3	34,11,-37,88,83,5,16,15
	FendQ
zaco_a_f11	Faces
	Face3	0,25,121,-5,-37,19,3,7
	Face3	0,26,-121,5,37,7,3,19
	FendQ
zaco_a_f12	Faces
	Face4	30,16,0,90,-90,18,19,20,21
	Face4	43,8,-45,-31,115,19,16,12,11
	Face3	0,17,0,40,-120,0,21,20
	Face3	32,21,-97,16,81,20,19,1
	Face3	28,22,0,-87,-93,19,18,1
	FendQ
zaco_a_f13	Faces
	Face3	18,1,-11,16,125,18,17,14
	FendQ
zaco_a_f15	Faces
	Face3	16,2,4,100,78,17,13,4
	Face3	12,4,116,-46,-25,4,13,10
	Face3	32,3,37,88,83,14,17,4
	Face3	28,5,123,-31,-3,4,10,8
	Face3	14,6,67,-98,46,8,10,18
	Face4	43,7,-90,0,-90,18,14,4,8
	FendQ
zaco_a_f16	Faces
	Face4	43,0,46,-45,109,10,13,17,18
	Face3	30,19,97,16,81,1,18,21
	Face3	20,20,-103,10,73,0,20,1
	FendQ
zaco_a_EBSP
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\ray_0.anm ----
	ifne	DO_HDR

ray_0
	ShapeHdr	ray_0_P,0,ray_0_F,0,0,0,0,0,0,50,25,120,120,id_0_c,0,<ray_0>
ray_blue
	ShapeHdr	ray_0_P,0,ray_0_F,0,0,0,0,0,0,50,25,120,120,id_1_c,0,<ray_blue>
ray_0p
	ShapeHdr	ray_0_P,0,ray_0_F,0,0,0,0,0,playerb_col,50,25,120,120,id_0_c,0,<ray_0>
ray_bluep
	ShapeHdr	ray_0_P,0,ray_0_F,0,0,0,0,0,playerb_col,50,25,120,120,id_1_c,0,<ray_blue>
	elseif
ray_0_P
	Pointsb	4
	pb	0,0,-20	;0
	pb	0,5,0	;1
	pb	0,-5,25	;2
	pb	0,0,40	;3
	PointsXb	1
	pb	-10,0,20	;4
	Frames	12
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
.A0A	Pointsb	6
	pb	0,0,-120	;6
	pb	0,-5,-40	;7
	pb	-25,0,-30	;8
	pb	25,0,-30	;9
	pb	-32,0,20	;10
	pb	32,0,20	;11
	PointsXb	2
	pb	-5,0,-40	;12
	pb	-43,25,-10	;14
	jump	.EB0
.A1A	Pointsb	6
	pb	0,1,-120	;6
	pb	0,-7,-39	;7
	pb	-25,4,-30	;8
	pb	25,4,-30	;9
	pb	-32,-6,20	;10
	pb	31,-6,20	;11
	PointsXb	2
	pb	-5,-2,-40	;12
	pb	-47,17,-10	;14
	jump	.EB0
.A2A	Pointsb	6
	pb	0,2,-120	;6
	pb	0,-8,-39	;7
	pb	-23,8,-30	;8
	pb	23,8,-30	;9
	pb	-30,-11,20	;10
	pb	30,-11,20	;11
	PointsXb	2
	pb	-5,-3,-40	;12
	pb	-49,9,-10	;14
	jump	.EB0
.A3A	Pointsb	6
	pb	0,3,-119	;6
	pb	0,-10,-38	;7
	pb	-22,12,-30	;8
	pb	22,12,-30	;9
	pb	-28,-16,20	;10
	pb	28,-16,20	;11
	PointsXb	2
	pb	-5,-5,-39	;12
	pb	-50,0,-10	;14
	jump	.EB0
.A4A	Pointsb	6
	pb	0,2,-120	;6
	pb	0,-8,-39	;7
	pb	-23,8,-30	;8
	pb	23,8,-30	;9
	pb	-30,-11,20	;10
	pb	30,-11,20	;11
	PointsXb	2
	pb	-5,-3,-40	;12
	pb	-49,-9,-10	;14
	jump	.EB0
.A5A	Pointsb	6
	pb	0,1,-120	;6
	pb	0,-7,-39	;7
	pb	-25,4,-30	;8
	pb	25,4,-30	;9
	pb	-32,-6,20	;10
	pb	31,-6,20	;11
	PointsXb	2
	pb	-5,-2,-40	;12
	pb	-47,-17,-10	;14
	jump	.EB0
.A6A	Pointsb	6
	pb	0,0,-120	;6
	pb	0,-5,-40	;7
	pb	-25,0,-30	;8
	pb	25,0,-30	;9
	pb	-32,0,20	;10
	pb	32,0,20	;11
	PointsXb	2
	pb	-5,0,-40	;12
	pb	-43,-25,-10	;14
	jump	.EB0
.A7A	Pointsb	6
	pb	0,-1,-120	;6
	pb	0,-3,-40	;7
	pb	-25,-4,-30	;8
	pb	25,-4,-30	;9
	pb	-32,5,20	;10
	pb	31,5,20	;11
	PointsXb	2
	pb	-5,2,-40	;12
	pb	-47,-17,-10	;14
	jump	.EB0
.A8A	Pointsb	6
	pb	0,-2,-120	;6
	pb	0,-1,-41	;7
	pb	-23,-8,-30	;8
	pb	23,-8,-30	;9
	pb	-30,11,20	;10
	pb	30,11,20	;11
	PointsXb	2
	pb	-5,3,-40	;12
	pb	-49,-9,-10	;14
	jump	.EB0
.A9A	Pointsb	6
	pb	0,-3,-119	;6
	pb	0,0,-41	;7
	pb	-22,-12,-30	;8
	pb	22,-13,-30	;9
	pb	-28,16,20	;10
	pb	28,16,20	;11
	PointsXb	2
	pb	-5,5,-39	;12
	pb	-50,0,-10	;14
	jump	.EB0
.A10A	Pointsb	6
	pb	0,-2,-120	;6
	pb	0,-1,-41	;7
	pb	-23,-8,-30	;8
	pb	23,-8,-30	;9
	pb	-30,11,20	;10
	pb	30,11,20	;11
	PointsXb	2
	pb	-5,3,-40	;12
	pb	-49,9,-10	;14
	jump	.EB0
.A11A	Pointsb	6
	pb	0,-1,-120	;6
	pb	0,-3,-40	;7
	pb	-25,-4,-30	;8
	pb	25,-4,-30	;9
	pb	-32,5,20	;10
	pb	31,5,20	;11
	PointsXb	2
	pb	-5,2,-40	;12
	pb	-47,17,-10	;14
.EB0

	EndPoints
ray_0_F
	Vizis	30
	Viz	1,5,0,-88,-88,-22	;0
	Viz	0,4,1,88,-88,-22	;1
	Viz	6,12,13,0,-126,-13	;2
	Viz	6,13,7,-89,90,3	;3
	Viz	7,12,6,89,90,3	;4
	Viz	13,12,0,0,-123,32	;5
	Viz	7,13,0,-90,90,0	;6
	Viz	0,12,7,90,90,0	;7
	Viz	9,15,5,-28,118,37	;8
	Viz	5,15,9,28,-118,-37	;9
	Viz	0,5,9,-59,-111,-15	;10
	Viz	9,5,0,59,111,15	;11
	Viz	15,11,5,-63,71,84	;12
	Viz	5,11,15,63,-71,-84	;13
	Viz	11,3,5,-80,90,40	;14
	Viz	5,3,11,80,-90,-40	;15
	Viz	4,14,8,26,119,35	;16
	Viz	8,14,4,-26,-119,-35	;17
	Viz	8,4,0,56,-113,-14	;18
	Viz	0,4,8,-56,113,14	;19
	Viz	4,10,14,63,71,84	;20
	Viz	14,10,4,-63,-71,-84	;21
	Viz	4,3,10,80,90,40	;22
	Viz	10,3,4,-80,-90,-40	;23
	Viz	3,5,1,-31,-122,15	;24
	Viz	0,5,2,-51,115,-13	;25
	Viz	2,4,0,51,115,-13	;26
	Viz	1,4,3,31,-122,15	;27
	Viz	2,5,3,-68,102,34	;28
	Viz	3,4,2,68,102,34	;29
	BSPInit	ray_0_EBSP
	BSP	3,ray_0_f1,.bsp2
	BSP	20,ray_0_f3,.bsp4
	BSPE	ray_0_f5
.bsp4	BSPE	ray_0_f6
.bsp2	BSP	1,ray_0_f7,.bsp8
	BSP	9,ray_0_f9,.bsp10
	BSPEND
.bsp10	BSP	14,ray_0_f11,.bsp12
	BSPE	ray_0_f13
.bsp12	BSP	15,ray_0_f14,.bsp15
	BSPEND
.bsp15	BSPE	ray_0_f16
.bsp8	BSP	0,ray_0_f17,.bsp18
	BSPE	ray_0_f19
.bsp18	BSPE	ray_0_f20

ray_0_f1	Faces
	Face3	25,3,-89,90,3,6,13,7
	FendQ
ray_0_f3	Faces
	Face3	25,20,63,71,84,4,10,14
	FendQ
ray_0_f5	Faces
	Face3	27,16,26,119,35,4,14,8
	Face3	21,17,-26,-119,-35,8,14,4
	FendQ
ray_0_f6	Faces
	Face3	27,22,80,90,40,4,3,10
	Face3	21,23,-80,-90,-40,10,3,4
	Face3	21,21,-63,-71,-84,14,10,4
	FendQ
ray_0_f7	Faces
	Face3	21,1,88,-88,-22,0,4,1
	FendQ
ray_0_f9	Faces
	Face3	21,9,28,-118,-37,5,15,9
	FendQ
ray_0_f11	Faces
	Face3	27,14,-80,90,40,11,3,5
	FendQ
ray_0_f13	Faces
	Face3	25,25,-51,115,-13,0,5,2
	Face3	25,11,59,111,15,9,5,0
	Face3	21,10,-59,-111,-15,0,5,9
	FendQ
ray_0_f14	Faces
	Face3	21,15,80,-90,-40,5,3,11
	FendQ
ray_0_f16	Faces
	Face3	27,28,-68,102,34,2,5,3
	Face3	25,12,-63,71,84,15,11,5
	Face3	21,13,63,-71,-84,5,11,15
	Face3	25,24,-31,-122,15,3,5,1
	Face3	27,8,-28,118,37,9,15,5
	Face3	25,29,68,102,34,3,4,2
	FendQ
ray_0_f17	Faces
	Face3	23,0,-88,-88,-22,1,5,0
	FendQ
ray_0_f19	Faces
	Face3	25,19,-56,113,14,0,4,8
	Face3	23,26,51,115,-13,2,4,0
	Face3	21,18,56,-113,-14,8,4,0
	Face3	23,27,31,-122,15,1,4,3
	FendQ
ray_0_f20	Faces
	Face3	21,2,0,-126,-13,6,12,13
	Face3	23,4,89,90,3,7,12,6
	Face3	21,5,0,-123,32,13,12,0
	Face3	27,6,-90,90,0,7,13,0
	Face3	25,7,90,90,0,0,12,7
	FendQ
ray_0_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\ray_1.anm ----
	ifne	DO_HDR

ray_1	ShapeHdr	ray_1_P,0,ray_1_F,0,0,0,0,0,0,110,23,102,111,id_0_c,0,<ray_1>
ray_bred	ShapeHdr	ray_1_P,0,ray_1_F,0,0,0,0,0,0,110,23,102,111,id_1_c,0,<ray_bred>
ray_bredp	ShapeHdr	ray_1_P,0,ray_1_F,0,0,0,0,0,playerB_col,110,23,102,111,id_1_c,0,<ray_bred>
	elseif
ray_1_P
	Pointsb	6
	pb	0,0,-102	;0
	pb	0,0,-50	;1
	pb	0,-5,-10	;2
	pb	0,0,30	;3
	pb	0,3,60	;4
	pb	0,-7,60	;5
	PointsXb	5
	pb	-5,0,-10	;6
	pb	-10,0,60	;8
	pb	3,0,88	;10
	pb	7,-1,95	;12
	pb	-7,0,102	;14
	Frames	16
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A12A
	jumptab	.A13A
	jumptab	.A14A
	jumptab	.A15A
.A0A	Pointsb	4
	pb	-10,-1,-2	;16
	pb	10,-1,-2	;17
	pb	79,8,27	;18
	pb	-79,8,28	;19
	PointsXb	4
	pb	107,-23,-10	;20
	pb	-60,-3,8	;22
	pb	49,8,50	;24
	pb	20,0,70	;26
	jump	.EB0
.A1A	Pointsb	4
	pb	-10,0,-2	;16
	pb	10,0,-2	;17
	pb	79,12,27	;18
	pb	-79,12,28	;19
	PointsXb	4
	pb	108,-17,-10	;20
	pb	-60,0,8	;22
	pb	50,5,50	;24
	pb	20,-2,70	;26
	jump	.EB0
.A2A	Pointsb	4
	pb	-10,1,-2	;16
	pb	10,1,-2	;17
	pb	78,17,27	;18
	pb	-78,17,28	;19
	PointsXb	4
	pb	109,-11,-10	;20
	pb	-60,3,8	;22
	pb	50,3,50	;24
	pb	20,-3,70	;26
	jump	.EB0
.A3A	Pointsb	4
	pb	-10,2,-2	;16
	pb	10,2,-2	;17
	pb	79,12,27	;18
	pb	-79,12,28	;19
	PointsXb	4
	pb	110,-6,-10	;20
	pb	-60,6,8	;22
	pb	50,0,50	;24
	pb	19,-5,70	;26
	jump	.EB0
.A4A	Pointsb	4
	pb	-10,3,-2	;16
	pb	9,3,-2	;17
	pb	79,8,27	;18
	pb	-79,8,28	;19
	PointsXb	4
	pb	110,0,-10	;20
	pb	-59,9,8	;22
	pb	50,-3,50	;24
	pb	19,-7,70	;26
	jump	.EB0
.A5A	Pointsb	4
	pb	-9,3,-2	;16
	pb	9,3,-2	;17
	pb	80,4,27	;18
	pb	-80,4,28	;19
	PointsXb	4
	pb	110,6,-10	;20
	pb	-59,12,8	;22
	pb	50,-5,50	;24
	pb	19,-5,70	;26
	jump	.EB0
.A6A	Pointsb	4
	pb	-10,3,-2	;16
	pb	9,3,-2	;17
	pb	80,0,27	;18
	pb	-80,0,28	;19
	PointsXb	4
	pb	109,11,-10	;20
	pb	-59,9,8	;22
	pb	49,-8,50	;24
	pb	20,-3,70	;26
	jump	.EB0
.A7A	Pointsb	4
	pb	-10,2,-2	;16
	pb	10,2,-2	;17
	pb	80,-4,27	;18
	pb	-80,-4,28	;19
	PointsXb	4
	pb	108,17,-10	;20
	pb	-60,6,8	;22
	pb	49,-10,50	;24
	pb	20,-2,70	;26
	jump	.EB0
.A8A	Pointsb	4
	pb	-10,1,-2	;16
	pb	10,1,-2	;17
	pb	79,-8,27	;18
	pb	-79,-8,28	;19
	PointsXb	4
	pb	107,23,-10	;20
	pb	-60,3,8	;22
	pb	49,-8,50	;24
	pb	20,0,70	;26
	jump	.EB0
.A9A	Pointsb	4
	pb	-10,0,-2	;16
	pb	10,0,-2	;17
	pb	79,-13,27	;18
	pb	-79,-13,28	;19
	PointsXb	4
	pb	108,17,-10	;20
	pb	-60,0,8	;22
	pb	50,-5,50	;24
	pb	20,2,70	;26
	jump	.EB0
.A10A	Pointsb	4
	pb	-10,-1,-2	;16
	pb	10,-1,-2	;17
	pb	78,-17,27	;18
	pb	-78,-17,28	;19
	PointsXb	4
	pb	109,11,-10	;20
	pb	-60,-3,8	;22
	pb	50,-3,50	;24
	pb	20,3,70	;26
	jump	.EB0
.A11A	Pointsb	4
	pb	-10,-2,-2	;16
	pb	10,-2,-2	;17
	pb	79,-13,27	;18
	pb	-79,-13,28	;19
	PointsXb	4
	pb	110,6,-10	;20
	pb	-60,-6,8	;22
	pb	50,0,50	;24
	pb	19,5,70	;26
	jump	.EB0
.A12A	Pointsb	4
	pb	-10,-3,-2	;16
	pb	10,-3,-2	;17
	pb	79,-8,27	;18
	pb	-79,-8,28	;19
	PointsXb	4
	pb	110,0,-10	;20
	pb	-59,-9,8	;22
	pb	50,3,50	;24
	pb	19,7,70	;26
	jump	.EB0
.A13A	Pointsb	4
	pb	-9,-3,-2	;16
	pb	10,-3,-2	;17
	pb	80,-4,27	;18
	pb	-80,-4,28	;19
	PointsXb	4
	pb	110,-6,-10	;20
	pb	-59,-12,8	;22
	pb	50,5,50	;24
	pb	19,5,70	;26
	jump	.EB0
.A14A	Pointsb	4
	pb	-10,-3,-2	;16
	pb	10,-3,-2	;17
	pb	80,0,27	;18
	pb	-80,0,28	;19
	PointsXb	4
	pb	109,-11,-10	;20
	pb	-59,-9,8	;22
	pb	49,8,50	;24
	pb	20,3,70	;26
	jump	.EB0
.A15A	Pointsb	4
	pb	-10,-2,-2	;16
	pb	10,-2,-2	;17
	pb	80,4,27	;18
	pb	-80,4,28	;19
	PointsXb	4
	pb	108,-17,-10	;20
	pb	-60,-6,8	;22
	pb	49,10,50	;24
	pb	20,2,70	;26
.EB0

	EndPoints
ray_1_F
	Vizis	48
	Viz	6,7,1,0,-127,0	;1
	Viz	2,1,7,-89,89,-11	;2
	Viz	6,1,2,89,89,-11	;3
	Viz	3,7,6,0,-127,0	;4
	Viz	7,3,2,-89,89,11	;5
	Viz	2,3,6,89,89,11	;6
	Viz	8,25,3,24,125,-8	;7
	Viz	3,25,8,-24,-125,8	;8
	Viz	22,19,21,-16,103,72	;9
	Viz	21,19,22,16,-103,-72	;10
	Viz	25,22,19,-28,-118,-38	;11
	Viz	19,22,25,28,118,38	;12
	Viz	22,3,25,6,122,34	;13
	Viz	25,3,22,-6,-122,-34	;14
	Viz	3,22,16,-6,127,2	;15
	Viz	16,22,3,6,-127,-2	;16
	Viz	8,27,25,20,124,-20	;17
	Viz	25,27,8,-20,-124,20	;18
	Viz	27,8,11,0,127,0	;19
	Viz	11,8,27,0,-127,0	;20
	Viz	20,18,23,15,102,74	;21
	Viz	23,18,20,-15,-102,-74	;22
	Viz	18,23,24,29,-117,-38	;23
	Viz	24,23,18,-29,117,38	;24
	Viz	24,3,23,-6,122,34	;25
	Viz	23,3,24,6,-122,-34	;26
	Viz	3,24,9,-24,125,-8	;27
	Viz	9,24,3,24,-125,8	;28
	Viz	24,26,9,-20,124,-20	;29
	Viz	9,26,24,20,-124,20	;30
	Viz	10,9,26,0,127,0	;31
	Viz	26,9,10,0,-127,0	;32
	Viz	11,13,14,56,-113,-16	;33
	Viz	14,13,11,-56,113,16	;34
	Viz	15,12,10,-56,-113,-16	;35
	Viz	10,12,15,56,113,16	;36
	Viz	9,3,4,-36,-121,-12	;37
	Viz	4,3,8,36,-121,-12	;38
	Viz	17,23,3,6,127,2	;39
	Viz	4,10,9,-36,-121,9	;40
	Viz	8,11,4,36,-121,9	;41
	Viz	4,11,10,0,-126,14	;42
	Viz	5,3,9,-72,102,-24	;43
	Viz	8,3,5,72,102,-24	;44
	Viz	3,23,17,-6,-127,-2	;45
	Viz	9,10,5,-72,103,18	;46
	Viz	5,11,8,72,103,18	;47
	Viz	10,11,5,0,123,31	;48
	BSPInit	ray_1_EBSP
	BSP	4,ray_1_f1,.bsp2
	BSP	8,ray_1_f3,.bsp4
	BSPE	ray_1_f5
.bsp4	BSP	10,ray_1_f6,.bsp7
	BSPE	ray_1_f8
.bsp7	BSP	11,ray_1_f9,.bsp10
	BSPE	ray_1_f11
.bsp10	BSPE	ray_1_f12
.bsp2	BSP	5,ray_1_f13,.bsp14
	BSP	22,ray_1_f15,.bsp16
	BSPE	ray_1_f17
.bsp16	BSP	23,ray_1_f18,.bsp19
	BSPE	ray_1_f20
.bsp19	BSPE	ray_1_f21
.bsp14	BSP	18,ray_1_f22,.bsp23
	BSPEND
.bsp23	BSP	30,ray_1_f24,.bsp25
	BSPEND
.bsp25	BSP	32,ray_1_f26,.bsp27
	BSPEND
.bsp27	BSP	34,ray_1_f28,.bsp29
	BSPEND
.bsp29	BSPE	ray_1_f30

ray_1_f1	Faces
	Face3	25,4,-89,89,11,7,3,2
	FendQ
ray_1_f3	Faces
	Face3	28,8,-16,103,72,22,19,21
	FendQ
ray_1_f5	Faces
	Face2	23,-1,0,0,0,1,0
	FendQ
ray_1_f6	Faces
	Face3	12,10,-28,-118,-38,25,22,19
	FendQ
ray_1_f8	Faces
	Face3	12,9,16,-103,-72,21,19,22
	FendQ
ray_1_f9	Faces
	Face3	28,11,28,118,38,19,22,25
	FendQ
ray_1_f11	Faces
	Face3	28,14,-6,127,2,3,22,16
	Face3	12,15,6,-127,-2,16,22,3
	FendQ
ray_1_f12	Faces
	Face3	28,6,24,125,-8,8,25,3
	Face3	28,12,6,122,34,22,3,25
	Face3	30,16,20,124,-20,8,27,25
	Face3	12,7,-24,-125,8,3,25,8
	Face3	12,13,-6,-122,-34,25,3,22
	Face3	14,17,-20,-124,20,25,27,8
	FendQ
ray_1_f13	Faces
	Face3	27,5,89,89,11,2,3,6
	FendQ
ray_1_f15	Faces
	Face3	12,22,29,-117,-38,18,23,24
	FendQ
ray_1_f17	Faces
	Face3	28,20,15,102,74,20,18,23
	Face3	12,21,-15,-102,-74,23,18,20
	FendQ
ray_1_f18	Faces
	Face3	28,23,-29,117,38,24,23,18
	FendQ
ray_1_f20	Faces
	Face3	28,38,6,127,2,17,23,3
	Face3	12,44,-6,-127,-2,3,23,17
	FendQ
ray_1_f21	Faces
	Face3	28,24,-6,122,34,24,3,23
	Face3	28,26,-24,125,-8,3,24,9
	Face3	30,28,-20,124,-20,24,26,9
	Face3	12,25,6,-122,-34,23,3,24
	Face3	12,27,24,-125,8,9,24,3
	Face3	14,29,20,-124,20,9,26,24
	FendQ
ray_1_f22	Faces
	Face3	30,18,0,127,0,27,8,11
	FendQ
ray_1_f24	Faces
	Face3	30,30,0,127,0,10,9,26
	FendQ
ray_1_f26	Faces
	Face3	44,32,56,-113,-16,11,13,14
	FendQ
ray_1_f28	Faces
	Face3	44,34,-56,-113,-16,15,12,10
	FendQ
ray_1_f30	Faces
	Face3	44,33,-56,113,16,14,13,11
	Face3	44,35,56,113,16,10,12,15
	Face3	14,36,-36,-121,-12,9,3,4
	Face3	14,37,36,-121,-12,4,3,8
	Face3	21,42,-72,102,-24,5,3,9
	Face3	23,43,72,102,-24,8,3,5
	Face3	25,45,-72,103,18,9,10,5
	Face3	25,46,72,103,18,5,11,8
	Face3	14,39,-36,-121,9,4,10,9
	Face3	14,40,36,-121,9,8,11,4
	Face3	16,41,0,-126,14,4,11,10
	Face3	27,47,0,123,31,10,11,5
	Face3	14,0,0,-127,0,6,7,1
	Face3	23,1,-89,89,-11,2,1,7
	Face3	25,2,89,89,-11,6,1,2
	Face3	12,3,0,-127,0,3,7,6
	Face3	14,19,0,-127,0,11,8,27
	Face3	14,31,0,-127,0,26,9,10
	FendQ
ray_1_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\clisla_l.txt ----
	ifne	DO_HDR

clisla_l
	ShapeHdr	clisla_l_P,0,clisla_l_F,0,0,0,0,2,0,47,51,15,71,id_0_c,0,<clisla_l>
	elseif
clisla_l_P
	Pointsb	9
	pb	-38,0,-15	;0
	pb	46,0,-15	;1
	pb	-47,-9,-15	;2
	pb	-5,-51,-15	;3
	pb	-47,-51,-15	;4
	pb	-17,0,15	;5
	pb	25,0,15	;6
	pb	-37,-19,15	;7
	pb	-15,-41,15	;8

	EndPoints
clisla_l_F
	Vizis	6
	Viz	6,5,7,0,0,127	;0
	Viz	6,8,3,-82,80,54	;1
	Viz	0,2,7,81,-81,54	;2
	Viz	4,7,2,120,0,40	;3
	Viz	3,8,4,0,120,40	;4
	Viz	4,8,7,64,64,89	;5

clisla_l_f1	Faces
	Face4	30,0,0,0,127,6,5,7,8
	Face4	32,1,-82,80,54,6,8,3,1
	Face4	28,2,81,-81,54,0,2,7,5
	Face3	30,3,120,0,40,4,7,2
	Face3	34,4,0,120,40,3,8,4
	Face3	32,5,64,64,89,4,8,7
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\CLISLA_M.TXT ----
	ifne	DO_HDR

CLISLA_M
	ShapeHdr	CLISLA_M_P,0,CLISLA_M_F,0,0,0,0,0,0,30,75,30,78,id_0_c,0,<CLISLA_M>
	elseif
CLISLA_M_P
	Pointsb	1
	pb	0,-75,0	;0
	PointsXb	6
	pb	15,-30,-30	;1
	pb	-10,75,-20	;3
	pb	20,75,0	;5
	pb	30,-30,0	;7
	pb	10,75,20	;9
	pb	-15,-30,30	;11

	EndPoints
CLISLA_M_F
	Vizis	12
	Viz	9,10,11,0,-12,126	;0
	Viz	9,12,7,-113,-11,57	;1
	Viz	6,8,11,113,-11,57	;2
	Viz	0,11,8,98,65,49	;3
	Viz	7,12,0,-98,65,49	;4
	Viz	0,12,11,0,70,106	;5
	Viz	1,2,3,0,-12,-126	;6
	Viz	5,7,1,-113,-11,-57	;7
	Viz	3,2,8,113,-11,-57	;8
	Viz	8,2,0,98,65,-49	;9
	Viz	0,1,7,-98,65,-49	;10
	Viz	2,1,0,0,70,-106	;11

CLISLA_M_f1	Faces
	Face4	28,0,0,-12,126,9,10,11,12
	Face4	30,1,-113,-11,57,9,12,7,5
	Face4	30,2,113,-11,57,6,8,11,10
	Face3	32,3,98,65,49,0,11,8
	Face3	28,4,-98,65,49,7,12,0
	Face3	30,5,0,70,106,0,12,11
	Face4	30,6,0,-12,-126,1,2,3,4
	Face4	28,7,-113,-11,-57,5,7,1,4
	Face4	32,8,113,-11,-57,3,2,8,6
	Face3	34,9,98,65,-49,8,2,0
	Face3	30,10,-98,65,-49,0,1,7
	Face3	32,11,0,70,-106,2,1,0
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\clisla_s.txt ----
	ifne	DO_HDR

clisla_s
	ShapeHdr	clisla_s_P,0,clisla_s_F,0,0,0,0,0,0,25,40,20,40,id_0_c,0,<clisla_s>
	elseif
clisla_s_P
	Pointsb	8
	pb	-10,0,-20	;0
	pb	10,-5,-20	;1
	pb	5,40,0	;2
	pb	25,0,0	;3
	pb	-25,-5,0	;4
	pb	-5,-40,0	;5
	pb	-10,0,20	;6
	pb	10,-5,20	;7

	EndPoints
clisla_s_F
	Vizis	12
	Viz	7,6,5,14,58,112	;0
	Viz	7,5,3,-93,69,52	;1
	Viz	4,5,6,87,50,78	;2
	Viz	2,6,7,-13,-53,115	;3
	Viz	3,2,7,-89,-45,78	;4
	Viz	6,2,4,95,-63,55	;5
	Viz	5,0,1,14,58,-112	;6
	Viz	3,5,1,-93,69,-52	;7
	Viz	0,5,4,87,50,-78	;8
	Viz	1,0,2,-13,-53,-115	;9
	Viz	1,2,3,-89,-45,-78	;10
	Viz	4,2,0,95,-63,-55	;11

clisla_s_f1	Faces
	Face3	32,0,14,58,112,7,6,5
	Face3	34,1,-93,69,52,7,5,3
	Face3	30,2,87,50,78,4,5,6
	Face3	30,3,-13,-53,115,2,6,7
	Face3	32,4,-89,-45,78,3,2,7
	Face3	28,5,95,-63,55,6,2,4
	Face3	30,6,14,58,-112,5,0,1
	Face3	32,7,-93,69,-52,3,5,1
	Face3	28,8,87,50,-78,0,5,4
	Face3	28,9,-13,-53,-115,1,0,2
	Face3	30,10,-89,-45,-78,1,2,3
	Face3	30,11,95,-63,-55,4,2,0
	Fend
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\car_0.txt ----
	ifne	DO_HDR

car_0	ShapeHdr	car_0_P,0,car_0_F,0,0,0,0,1,0,30,12,50,58,id_0_c,0,<car_0>
car_10    ShapeHdr    car_0_P,0,car_0_F,0,0,0,0,0,0,30,12,50,58,id_0_c,0,<car_10>
car_10p    ShapeHdr    car_0_P,0,car_0_F,0,0,0,0,0,playerB_col,30,12,50,58,id_0_c,0,<car_10>
	elseif
car_0_P
	Pointsb	3
	pb	0,-6,-50	;0
	pb	0,3,50	;1
	pb	0,0,50	;2
	PointsXb	14
	pb	12,6,-50	;3
	pb	24,6,-50	;5
	pb	12,0,-50	;7
	pb	-24,0,-50	;9
	pb	-30,3,-44	;11
	pb	12,10,-38	;13
	pb	24,10,-38	;15
	pb	-30,5,-38	;17
	pb	-30,0,-38	;19
	pb	-12,-6,-38	;21
	pb	-24,-6,-38	;23
	pb	6,-12,-38	;25
	pb	30,3,50	;27
	pb	24,0,50	;29

	EndPoints
car_0_F
	Vizis	34
	Viz	1,3,4,0,-127,4	;0
	Viz	1,27,15,0,-127,10	;1
	Viz	13,3,1,120,-40,-13	;2
	Viz	1,4,14,-120,-40,-13	;3
	Viz	14,16,28,0,-127,10	;4
	Viz	25,26,0,0,114,-57	;5
	Viz	0,26,21,73,73,-73	;6
	Viz	22,25,0,-73,73,-73	;7
	Viz	22,0,7,-52,104,-52	;8
	Viz	8,0,21,52,104,-52	;9
	Viz	22,7,10,0,114,-57	;10
	Viz	24,10,12,-85,85,-42	;11
	Viz	18,12,5,-79,-95,-32	;12
	Viz	15,5,3,0,-120,-40	;13
	Viz	10,7,3,0,0,-127	;14
	Viz	5,12,10,-90,0,-90	;15
	Viz	12,18,27,-127,0,0	;16
	Viz	23,9,8,0,114,-57	;17
	Viz	19,11,9,85,85,-42	;18
	Viz	6,4,8,0,0,-127	;19
	Viz	9,11,6,90,0,-90	;20
	Viz	16,6,11,79,-95,-32	;21
	Viz	14,4,6,0,-120,-40	;22
	Viz	19,28,17,127,0,0	;23
	Viz	8,4,3,0,0,-127	;24
	Viz	21,26,2,89,89,18	;25
	Viz	2,25,22,-89,89,18	;26
	Viz	20,27,29,-57,114,4	;27
	Viz	23,30,28,57,113,8	;28
	Viz	26,25,2,0,126,17	;29
	Viz	23,21,2,0,127,9	;30
	Viz	29,2,22,0,127,9	;31
	Viz	27,18,15,-81,-98,2	;32
	Viz	16,17,28,81,-98,2	;33
	BSPInit	car_0_EBSP
	BSP	30,car_0_f1,.bsp2
	BSPE	car_0_f3
.bsp2	BSP	6,car_0_f4,.bsp5
	BSP	31,car_0_f6,.bsp7
	BSPEND
.bsp7	BSPE	car_0_f8
.bsp5	BSPE	car_0_f9

car_0_f1	Faces
	Face4	16,30,0,127,9,23,21,2,30
	FendQ
car_0_f3	Faces
	Face3	44,2,120,-40,-13,13,3,1
	Face3	44,3,-120,-40,-13,1,4,14
	Face3	45,0,0,-127,4,1,3,4
	Face4	18,10,0,114,-57,22,7,10,24
	Face4	18,17,0,114,-57,23,9,8,21
	Face4	18,27,-57,114,4,20,27,29,24
	Face4	12,1,0,-127,10,1,27,15,13
	Face4	12,4,0,-127,10,14,16,28,1
	Face4	20,11,-85,85,-42,24,10,12,20
	Face4	16,12,-79,-95,-32,18,12,5,15
	Face4	14,13,0,-120,-40,15,5,3,13
	Face4	101,14,0,0,-127,10,7,3,5		; 101
	Face3	10,15,-90,0,-90,5,12,10
	Face4	23,16,-127,0,0,12,18,27,20
	Face4	16,18,85,85,-42,19,11,9,23
	Face4	101,19,0,0,-127,6,4,8,9			; 101
	Face3	10,20,90,0,-90,9,11,6
	Face4	12,21,79,-95,-32,16,6,11,17
	Face4	14,22,0,-120,-40,14,4,6,16
	Face4	21,23,127,0,0,19,28,17,11
	Face5	10,24,0,0,-127,8,4,3,7,0
	Face4	14,28,57,113,8,23,30,28,19
	Face3	14,32,-81,-98,2,27,18,15
	Face3	11,33,81,-98,2,16,17,28
	FendQ
car_0_f4	Faces
	Face3	30,6,73,73,-73,0,26,21
	FendQ
car_0_f6	Faces
	Face4	16,31,0,127,9,29,2,22,24
	FendQ
car_0_f8	Faces
	Face3	34,7,-73,73,-73,22,25,0
	Face3	28,25,89,89,18,21,26,2
	Face3	32,26,-89,89,18,2,25,22
	Face3	30,29,0,126,17,26,25,2
	Face3	20,8,-52,104,-52,22,0,7
	FendQ
car_0_f9	Faces
	Face3	32,5,0,114,-57,25,26,0
	Face3	16,9,52,104,-52,8,0,21
	FendQ
car_0_EBSP
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\CAR_1.TXT ----
	ifne	DO_HDR

CAR_1
	ShapeHdr	CAR_1_P,0,CAR_1_F,0,0,0,0,1,0,30,25,50,57,id_0_c,0,<CAR_1>
	elseif
CAR_1_P
	PointsXb	17
	pb	10,20,-50	;0
	pb	-20,20,-50	;2
	pb	-30,20,5	;4
	pb	-10,10,5	;6
	pb	-20,10,5	;8
	pb	-10,-20,5	;10
	pb	10,-25,5	;12
	pb	15,5,10	;14
	pb	-15,-15,10	;16
	pb	15,-15,20	;18
	pb	10,-20,25	;20
	pb	15,5,40	;22
	pb	15,-5,40	;24
	pb	-10,10,45	;26
	pb	10,-10,45	;28
	pb	-10,20,50	;30
	pb	-20,20,50	;32

	EndPoints
CAR_1_F
	Vizis	27
	Viz	25,19,21,102,68,34	;0
	Viz	25,29,26,90,0,90	;1
	Viz	6,15,23,90,-90,0	;2
	Viz	15,6,10,90,0,-90	;3
	Viz	16,10,21,90,90,0	;4
	Viz	25,23,15,127,0,0	;5
	Viz	28,20,18,-102,68,34	;6
	Viz	22,27,28,-90,0,90	;7
	Viz	27,22,14,-90,-90,0	;8
	Viz	17,11,7,-90,0,-90	;9
	Viz	18,20,11,-90,90,0	;10
	Viz	18,17,14,-127,0,0	;11
	Viz	7,11,10,0,0,-127	;12
	Viz	26,27,7,0,-127,0	;13
	Viz	10,11,20,0,127,0	;14
	Viz	6,8,2,0,125,-23	;15
	Viz	2,8,4,89,89,-16	;16
	Viz	30,32,8,0,124,28	;17
	Viz	4,8,32,89,89,20	;18
	Viz	6,1,30,-127,0,0	;19
	Viz	4,32,30,0,-127,0	;20
	Viz	0,3,9,0,125,-23	;21
	Viz	5,9,3,-89,89,-16	;22
	Viz	7,9,33,0,124,28	;23
	Viz	33,9,5,-89,89,20	;24
	Viz	3,0,31,0,-127,0	;25
	Viz	31,0,7,127,0,0	;26
	BSPInit	CAR_1_EBSP
	BSP	2,CAR_1_f1,.bsp2
	BSP	4,CAR_1_f3,.bsp4
	BSP	8,CAR_1_f5,.bsp6
	BSPE	CAR_1_f7
.bsp6	BSPE	CAR_1_f8
.bsp4	BSPE	CAR_1_f9
.bsp2	BSPE	CAR_1_f10

CAR_1_f1	Faces
	Face4	14,2,90,-90,0,6,15,23,26
	FendQ
CAR_1_f3	Faces
	Face4	14,4,90,90,0,16,10,21,19
	FendQ
CAR_1_f5	Faces
	Face4	16,8,-90,-90,0,27,22,14,7
	FendQ
CAR_1_f7	Faces
	Face4	18,10,-90,90,0,18,20,11,17
	Face4	16,14,0,127,0,10,11,20,21
	Face2	43,-1,0,0,0,12,11
	Face4	20,9,-90,0,-90,17,11,7,14
	Face4	18,12,0,0,-127,7,11,10,6
	Face4	28,0,102,68,34,25,19,21,29
	Face4	12,1,90,0,90,25,29,26,23
	Face4	16,3,90,0,-90,15,6,10,16
	Face5	30,5,127,0,0,25,23,15,16,19
	Face4	32,6,-102,68,34,28,20,18,24
	Face4	14,7,-90,0,90,22,27,28,24
	Face5	34,11,-127,0,0,18,17,14,22,24
	Face4	12,13,0,-127,0,26,27,7,6
	FendQ
CAR_1_f8	Faces
	Face4	18,21,0,125,-23,0,3,9,7
	Face3	25,22,-89,89,-16,5,9,3
	Face4	16,23,0,124,28,7,9,33,31
	Face3	23,24,-89,89,20,33,9,5
	Face5	43,25,0,-127,0,3,0,31,33,5
	Face3	12,26,127,0,0,31,0,7
	FendQ
CAR_1_f9	Faces
	Face2	43,-1,0,0,0,10,13
	FendQ
CAR_1_f10	Faces
	Face4	18,15,0,125,-23,6,8,2,1
	Face3	23,16,89,89,-16,2,8,4
	Face4	16,17,0,124,28,30,32,8,6
	Face3	21,18,89,89,20,4,8,32
	Face3	12,19,-127,0,0,6,1,30
	Face5	43,20,0,-127,0,4,32,30,1,2
	FendQ
CAR_1_EBSP
	EndShape

	endc



;--Shape file ----- C:\SHED\NSHAPES\mine_2.txt ----
	ifne	DO_HDR

mine_2
	ShapeHdr	mine_2_P,0,mine_2_F,0,0,0,0,1,0,30,40,30,40,id_0_c,0,<mine_2>
	elseif
mine_2_P
	Pointsb	8
	pb	0,-14,-30	;0
	pb	0,-14,-20	;1
	pb	0,0,-6	;2
	pb	0,40,0	;3
	pb	0,-34,0	;4
	pb	0,0,6	;5
	pb	0,-14,20	;6
	pb	0,-14,30	;7
	PointsXb	3
	pb	-6,0,0	;8
	pb	-20,-14,0	;10
	pb	-30,-14,0	;12

	EndPoints
mine_2_F
	Vizis	12
	Viz	1,10,8,73,-73,-73	;0
	Viz	2,9,11,-73,-73,-73	;1
	Viz	3,2,8,89,-13,-89	;2
	Viz	9,2,3,-89,-13,-89	;3
	Viz	10,1,4,73,73,-73	;4
	Viz	4,6,10,73,73,73	;5
	Viz	4,1,11,-73,73,-73	;6
	Viz	11,6,4,-73,73,73	;7
	Viz	5,8,10,73,-73,73	;8
	Viz	6,11,9,-73,-73,73	;9
	Viz	8,5,3,89,-13,89	;10
	Viz	3,5,9,-89,-13,89	;11
	BSPInit	mine_2_EBSP
	BSP	4,mine_2_f1,.bsp2
	BSP	5,mine_2_f3,.bsp4
	BSP	6,mine_2_f5,.bsp6
	BSPE	mine_2_f7
.bsp6	BSPE	mine_2_f8
.bsp4	BSPE	mine_2_f9
.bsp2	BSPE	mine_2_f10

mine_2_f1	Faces
	Face3	14,4,73,73,-73,10,1,4
	FendQ
mine_2_f3	Faces
	Face3	16,5,73,73,73,4,6,10
	FendQ
mine_2_f5	Faces
	Face3	16,6,-73,73,-73,4,1,11
	FendQ
mine_2_f7	Faces
	Face4	21,0,73,-73,-73,1,10,8,2
	Face4	23,1,-73,-73,-73,2,9,11,1
	Face3	12,2,89,-13,-89,3,2,8
	Face3	14,3,-89,-13,-89,9,2,3
	Face4	23,8,73,-73,73,5,8,10,6
	Face4	25,9,-73,-73,73,6,11,9,5
	Face3	14,10,89,-13,89,8,5,3
	Face3	16,11,-89,-13,89,3,5,9
	Face3	18,7,-73,73,73,11,6,4
	FendQ
mine_2_f8	Faces
	Face2	43,-1,0,0,0,13,11
	FendQ
mine_2_f9	Faces
	Face2	43,-1,0,0,0,7,6
	FendQ
mine_2_f10	Faces
	Face2	43,-1,0,0,0,1,0
	Face2	43,-1,0,0,0,10,12
	FendQ
mine_2_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\SHAPES\round_0.txt ----
	ifne	DO_HDR

round0p
	ShapeHdr	round0p_P,0,round0p_F,0,0,0,0,2,0,10,30,55,59,id_0_c,0,<round0p>
	elseif
round0p_P
	Pointsb	4
	pb	0,20,-55	;0
	pb	0,20,-35	;1
	pb	0,0,-15	;2
	pb	0,-30,15	;3
	PointsXb	3
	pb	-5,25,-50	;4
	pb	10,30,-35	;6
	pb	-7,-23,-5	;8

	EndPoints
round0p_F
	Vizis	8
	Viz	3,2,8,101,-54,54	;0
	Viz	9,2,3,-101,-54,54	;1
	Viz	0,4,5,0,-90,-90	;3
	Viz	6,7,1,0,0,127	;4
	Viz	5,4,7,0,-120,-40	;5
	Viz	1,7,4,90,90,0	;6
	Viz	0,5,6,-90,90,0	;7
	Viz	9,8,2,0,51,-116	;8

round0p_f1	Faces
	Face3	32,3,0,0,127,6,7,1
	Face4	30,5,90,90,0,1,7,4,0
	Face4	32,6,-90,90,0,0,5,6,1
	Face3	18,7,0,51,-116,9,8,2
	Face3	16,0,101,-54,54,3,2,8
	Face3	18,1,-101,-54,54,9,2,3
	Face2	16,-1,0,0,0,1,2
	Face3	42,2,0,-90,-90,0,4,5
	Face4	28,4,0,-120,-40,5,4,7,6
	Fend
	EndShape

	endc
;--Shape file ----- C:\SHED\NSHAPES\gate_2.txt ----
	ifne	DO_HDR

gate_2
	ShapeHdr	gate_2_P,0,gate_2_F,0,0,0,0,1,0,26,30,7,30,id_0_c,0,<gate_2>
	elseif
gate_2_P
	Pointsb	4
	pb	0,-25,-7	;0
	pb	0,25,-2	;1
	pb	0,-30,-2	;2
	pb	0,30,3	;3
	PointsXb	10
	pb	-22,13,-7	;4
	pb	-26,15,-2	;6
	pb	-15,14,-2	;8
	pb	-20,6,-2	;10
	pb	22,-13,-2	;12
	pb	5,-20,-2	;14
	pb	-5,20,3	;16
	pb	20,-6,3	;18
	pb	15,-14,3	;20
	pb	26,-15,3	;22

	EndPoints
gate_2_F
	Vizis	18
	Viz	12,22,20,11,120,-39	;0
	Viz	12,20,18,73,-46,-93	;1
	Viz	18,22,12,-97,-64,-52	;2
	Viz	0,2,15,104,52,-52	;3
	Viz	0,15,14,0,-90,-90	;4
	Viz	14,2,0,-104,52,-52	;5
	Viz	21,23,13,-11,120,-39	;6
	Viz	19,21,13,-73,-46,-93	;7
	Viz	13,23,19,97,-64,-52	;8
	Viz	9,7,5,11,-120,-39	;9
	Viz	11,9,5,73,46,-93	;10
	Viz	5,7,11,-97,64,-52	;11
	Viz	16,3,1,104,-52,-52	;12
	Viz	17,16,1,0,90,-90	;13
	Viz	1,3,17,-104,-52,-52	;14
	Viz	4,6,8,-11,-120,-39	;15
	Viz	4,8,10,-73,46,-93	;16
	Viz	10,6,4,97,64,-52	;17

gate_2_f1	Faces
	Face3	52,1,73,-46,-93,12,20,18
	Face3	52,4,0,-90,-90,0,15,14
	Face3	52,7,-73,-46,-93,19,21,13
	Face3	52,10,73,46,-93,11,9,5
	Face3	52,13,0,90,-90,17,16,1
	Face3	52,16,-73,46,-93,4,8,10
	Face3	52,0,11,120,-39,12,22,20
	Face3	52,2,-97,-64,-52,18,22,12
	Face3	52,3,104,52,-52,0,2,15
	Face3	52,5,-104,52,-52,14,2,0
	Face3	52,6,-11,120,-39,21,23,13
	Face3	52,8,97,-64,-52,13,23,19
	Face3	52,9,11,-120,-39,9,7,5
	Face3	52,11,-97,64,-52,5,7,11
	Face3	52,12,104,-52,-52,16,3,1
	Face3	52,14,-104,-52,-52,1,3,17
	Face3	52,15,-11,-120,-39,4,6,8
	Face3	52,17,97,64,-52,10,6,4
	Fend
	EndShape

	endc

;--Shape file ----- C:\SHED\NSHAPES\s_fish.anm ----
	ifne	DO_HDR

s_fish
	ShapeHdr	s_fish_P,0,s_fish_F,0,0,0,0,0,0,10,15,41,45,id_0_c,0,<s_fish>
	elseif
s_fish_P
	Pointsb	1
	pb	0,-5,20	;0
	PointsXb	1
	pb	-5,5,0	;1
	Frames	8
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
.A0A	Pointsb	3
	pb	-3,5,-40	;3
	pb	-3,-15,-40	;4
	pb	0,-5,-30	;5
	jump	.EB0
.A1A	Pointsb	3
	pb	0,5,-40	;3
	pb	0,-15,-40	;4
	pb	3,-5,-30	;5
	jump	.EB0
.A2A	Pointsb	3
	pb	3,5,-41	;3
	pb	3,-15,-41	;4
	pb	5,-5,-30	;5
	jump	.EB0
.A3A	Pointsb	3
	pb	5,5,-40	;3
	pb	5,-15,-40	;4
	pb	3,-5,-30	;5
	jump	.EB0
.A4A	Pointsb	3
	pb	3,5,-40	;3
	pb	3,-15,-40	;4
	pb	0,-5,-30	;5
	jump	.EB0
.A5A	Pointsb	3
	pb	-3,5,-40	;3
	pb	-3,-15,-40	;4
	pb	-3,-5,-30	;5
	jump	.EB0
.A6A	Pointsb	3
	pb	-9,5,-41	;3
	pb	-9,-15,-41	;4
	pb	-5,-5,-30	;5
	jump	.EB0
.A7A	Pointsb	3
	pb	-10,5,-38	;3
	pb	-10,-15,-38	;4
	pb	-3,-5,-30	;5
.EB0

	EndPoints
s_fish_F
	Vizis	6
	Viz	5,4,3,-122,0,-36	;0
	Viz	3,4,5,122,0,36	;1
	Viz	2,5,1,0,-120,-40	;2
	Viz	1,0,2,0,-114,57	;3
	Viz	2,0,5,-114,57,0	;4
	Viz	5,0,1,114,57,0	;5

s_fish_f1	Faces
	Face3	32,1,122,0,36,3,4,5
	Face3	30,5,114,57,0,5,0,1
	Face3	14,2,0,-120,-40,2,5,1
	Face3	34,0,-122,0,-36,5,4,3
	Face3	12,3,0,-114,57,1,0,2
	Face3	32,4,-114,57,0,2,0,5
	Fend
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\ika.anm ----
	ifne	DO_HDR

ika
	ShapeHdr	ika_P,0,ika_F,0,0,0,0,0,0,46,61,100,100,id_0_c,0,<ika>
ikap
	ShapeHdr	ika_P,0,ika_F,0,0,0,0,0,playerB_col,46,61,100,100,id_0_c,0,<ika>
	elseif
ika_P
	Pointsb	5
	pb	0,10,0	;0
	pb	0,-10,0	;1
	pb	0,20,20	;2
	pb	0,-20,20	;3
	pb	0,0,100	;4
	PointsXb	3
	pb	-10,0,0	;5
	pb	-20,0,20	;7
	pb	-10,0,49	;9
	Frames	23
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
	jumptab	.A10A
	jumptab	.A11A
	jumptab	.A12A
	jumptab	.A13A
	jumptab	.A14A
	jumptab	.A15A
	jumptab	.A16A
	jumptab	.A17A
	jumptab	.A18A
	jumptab	.A19A
	jumptab	.A20A
	jumptab	.A21A
	jumptab	.A22A
.A0A	Pointsb	5
	pb	-10,0,-80	;11
	pb	10,0,-80	;12
	pb	0,-10,-80	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,8,40	;22
	jump	.EB0
.A1A	Pointsb	5
	pb	-10,0,-79	;11
	pb	10,0,-79	;12
	pb	0,-10,-79	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-11,8,-39	;16
	pb	-18,1,-39	;18
	pb	-5,-17,-39	;20
	pb	-25,4,40	;22
	jump	.EB0
.A2A	Pointsb	5
	pb	-10,0,-74	;11
	pb	10,0,-74	;12
	pb	0,-10,-74	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-16,13,-37	;16
	pb	-23,6,-37	;18
	pb	-5,-24,-37	;20
	pb	-25,0,40	;22
	jump	.EB0
.A3A	Pointsb	5
	pb	-11,1,-69	;11
	pb	11,1,-69	;12
	pb	0,-11,-69	;13
	pb	-13,-7,70	;14
	pb	13,-8,70	;15
	PointsXb	4
	pb	-21,18,-35	;16
	pb	-28,11,-35	;18
	pb	-5,-30,-35	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A4A	Pointsb	5
	pb	-11,1,-61	;11
	pb	11,1,-61	;12
	pb	0,-11,-61	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-25,22,-31	;16
	pb	-32,15,-31	;18
	pb	-5,-36,-31	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A5A	Pointsb	5
	pb	-11,1,-51	;11
	pb	11,1,-51	;12
	pb	0,-11,-51	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-28,25,-26	;16
	pb	-35,18,-26	;18
	pb	-5,-41,-26	;20
	pb	-23,-11,40	;22
	jump	.EB0
.A6A	Pointsb	5
	pb	-11,1,-39	;11
	pb	11,1,-39	;12
	pb	0,-11,-39	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-31,28,-20	;16
	pb	-38,21,-20	;18
	pb	-5,-45,-20	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A7A	Pointsb	5
	pb	-16,6,-39	;11
	pb	15,5,-40	;12
	pb	0,-18,-39	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-33,30,-14	;16
	pb	-40,23,-14	;18
	pb	-5,-48,-14	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A8A	Pointsb	5
	pb	-19,9,-38	;11
	pb	19,9,-38	;12
	pb	0,-23,-38	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-34,31,-7	;16
	pb	-41,24,-7	;18
	pb	-5,-49,-7	;20
	pb	-25,0,40	;22
	jump	.EB0
.A9A	Pointsb	5
	pb	-24,14,-35	;11
	pb	24,14,-35	;12
	pb	0,-30,-35	;13
	pb	-13,7,70	;14
	pb	13,7,70	;15
	PointsXb	4
	pb	-35,32,0	;16
	pb	-42,25,0	;18
	pb	-5,-50,0	;20
	pb	-25,4,40	;22
	jump	.EB0
.A10A	Pointsb	5
	pb	-28,18,-45	;11
	pb	28,18,-45	;12
	pb	0,-35,-45	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-34,31,-7	;16
	pb	-41,24,-7	;18
	pb	-5,-49,-7	;20
	pb	-23,8,40	;22
	jump	.EB0
.A11A	Pointsb	5
	pb	-33,23,-53	;11
	pb	32,22,-54	;12
	pb	0,-42,-53	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-33,30,-14	;16
	pb	-40,23,-14	;18
	pb	-5,-48,-14	;20
	pb	-23,11,40	;22
	jump	.EB0
.A12A	Pointsb	5
	pb	-35,25,-59	;11
	pb	35,25,-59	;12
	pb	0,-45,-59	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-31,28,-20	;16
	pb	-38,21,-20	;18
	pb	-5,-45,-20	;20
	pb	-23,8,40	;22
	jump	.EB0
.A13A	Pointsb	5
	pb	-37,27,-64	;11
	pb	37,27,-64	;12
	pb	0,-48,-64	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-28,25,-26	;16
	pb	-35,18,-26	;18
	pb	-5,-41,-26	;20
	pb	-25,4,40	;22
	jump	.EB0
.A14A	Pointsb	5
	pb	-46,36,-61	;11
	pb	46,36,-61	;12
	pb	0,-61,-61	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-25,22,-31	;16
	pb	-32,15,-31	;18
	pb	-5,-36,-31	;20
	pb	-25,0,40	;22
	jump	.EB0
.A15A	Pointsb	5
	pb	-45,35,-60	;11
	pb	45,35,-60	;12
	pb	0,-60,-60	;13
	pb	-13,-7,70	;14
	pb	13,-8,70	;15
	PointsXb	4
	pb	-21,18,-35	;16
	pb	-28,11,-35	;18
	pb	-5,-30,-35	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A16A	Pointsb	5
	pb	-44,34,-58	;11
	pb	44,34,-58	;12
	pb	0,-58,-58	;13
	pb	-14,-5,70	;14
	pb	14,-5,70	;15
	PointsXb	4
	pb	-16,13,-37	;16
	pb	-23,6,-37	;18
	pb	-5,-24,-37	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A17A	Pointsb	5
	pb	-42,32,-53	;11
	pb	42,32,-53	;12
	pb	0,-55,-53	;13
	pb	-15,-3,70	;14
	pb	15,-3,70	;15
	PointsXb	4
	pb	-11,8,-39	;16
	pb	-18,1,-39	;18
	pb	-5,-17,-39	;20
	pb	-23,-11,40	;22
	jump	.EB0
.A18A	Pointsb	5
	pb	-32,22,-66	;11
	pb	32,22,-66	;12
	pb	0,-41,-66	;13
	pb	-15,0,70	;14
	pb	15,0,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,-8,40	;22
	jump	.EB0
.A19A	Pointsb	5
	pb	-24,14,-75	;11
	pb	24,14,-75	;12
	pb	0,-30,-75	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,-4,40	;22
	jump	.EB0
.A20A	Pointsb	5
	pb	-20,10,-77	;11
	pb	20,10,-77	;12
	pb	0,-24,-77	;13
	pb	-14,5,70	;14
	pb	14,5,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,0,40	;22
	jump	.EB0
.A21A	Pointsb	5
	pb	-15,5,-79	;11
	pb	15,5,-79	;12
	pb	0,-17,-79	;13
	pb	-13,7,70	;14
	pb	13,7,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-25,4,40	;22
	jump	.EB0
.A22A	Pointsb	5
	pb	-10,0,-80	;11
	pb	10,0,-80	;12
	pb	0,-10,-80	;13
	pb	-15,3,70	;14
	pb	15,3,70	;15
	PointsXb	4
	pb	-6,4,-40	;16
	pb	-14,-4,-40	;18
	pb	-5,-10,-40	;20
	pb	-23,11,40	;22
.EB0

	EndPoints
ika_F
	Vizis	33
	Viz	8,10,23,78,-97,-27	;0
	Viz	23,10,8,-78,97,27	;1
	Viz	10,15,23,59,-112,14	;2
	Viz	23,15,10,-59,112,-14	;3
	Viz	4,10,15,0,127,0	;4
	Viz	15,10,4,0,-127,0	;5
	Viz	22,9,7,-78,-97,-27	;6
	Viz	7,9,22,78,97,27	;7
	Viz	22,14,9,-59,-112,14	;8
	Viz	9,14,22,59,112,-14	;9
	Viz	14,9,4,0,127,0	;10
	Viz	4,9,14,0,-127,0	;11
	Viz	17,19,12,-90,-90,0	;12
	Viz	12,19,17,90,90,0	;13
	Viz	6,19,17,-90,-90,0	;14
	Viz	17,19,6,90,90,0	;15
	Viz	11,18,16,90,-90,0	;16
	Viz	16,18,11,-90,90,0	;17
	Viz	16,18,5,90,-90,0	;18
	Viz	5,18,16,-90,90,0	;19
	Viz	13,20,21,0,-127,0	;20
	Viz	21,20,13,0,127,0	;21
	Viz	21,20,1,0,-127,0	;22
	Viz	1,20,21,0,127,0	;23
	Viz	1,5,0,0,0,-127	;24
	Viz	8,2,4,-88,-88,22	;25
	Viz	2,8,6,-85,-85,-42	;26
	Viz	4,2,7,88,-88,22	;27
	Viz	0,5,7,85,-85,-42	;28
	Viz	4,3,8,-88,88,22	;29
	Viz	1,6,8,-85,85,-42	;30
	Viz	7,3,4,88,88,22	;31
	Viz	3,7,5,85,85,-42	;32
	BSPInit	ika_EBSP
	BSP	0,ika_f1,.bsp2
	BSPEND
.bsp2	BSP	1,ika_f3,.bsp4
	BSP	6,ika_f5,.bsp6
	BSPEND
.bsp6	BSP	7,ika_f7,.bsp8
	BSP	24,ika_f9,.bsp10
	BSPE	ika_f11
.bsp10	BSPE	ika_f12
.bsp8	BSP	10,ika_f13,.bsp14
	BSPEND
.bsp14	BSP	11,ika_f15,.bsp16
	BSPE	ika_f17
.bsp16	BSPE	ika_f18
.bsp4	BSP	4,ika_f19,.bsp20
	BSPEND
.bsp20	BSP	5,ika_f21,.bsp22
	BSPE	ika_f23
.bsp22	BSPE	ika_f24

ika_f1	Faces
	Face3	44,0,78,-97,-27,8,10,23
	FendQ
ika_f3	Faces
	Face3	18,1,-78,97,27,23,10,8
	FendQ
ika_f5	Faces
	Face3	44,6,-78,-97,-27,22,9,7
	FendQ
ika_f7	Faces
	Face3	16,7,78,97,27,7,9,22
	FendQ
ika_f9	Faces
	Face4	45,24,0,0,-127,1,5,0,6
	FendQ
ika_f11	Faces
	Face3	16,25,-88,-88,22,8,2,4
	Face4	14,26,-85,-85,-42,2,8,6,0
	Face3	14,27,88,-88,22,4,2,7
	Face4	12,28,85,-85,-42,0,5,7,2
	FendQ
ika_f12	Faces
	Face3	44,13,90,90,0,12,19,17
	Face3	44,15,90,90,0,17,19,6
	Face3	44,17,-90,90,0,16,18,11
	Face3	44,19,-90,90,0,5,18,16
	Face3	44,20,0,-127,0,13,20,21
	Face3	44,22,0,-127,0,21,20,1
	Face3	14,12,-90,-90,0,17,19,12
	Face3	14,14,-90,-90,0,6,19,17
	Face3	12,16,90,-90,0,11,18,16
	Face3	12,18,90,-90,0,16,18,5
	Face3	18,21,0,127,0,21,20,13
	Face3	18,23,0,127,0,1,20,21
	FendQ
ika_f13	Faces
	Face3	16,10,0,127,0,14,9,4
	FendQ
ika_f15	Faces
	Face3	44,11,0,-127,0,4,9,14
	FendQ
ika_f17	Faces
	Face3	16,31,88,88,22,7,3,4
	Face4	14,32,85,85,-42,3,7,5,1
	FendQ
ika_f18	Faces
	Face3	44,8,-59,-112,14,22,14,9
	Face3	16,9,59,112,-14,9,14,22
	FendQ
ika_f19	Faces
	Face3	18,4,0,127,0,4,10,15
	FendQ
ika_f21	Faces
	Face3	44,5,0,-127,0,15,10,4
	FendQ
ika_f23	Faces
	Face3	20,29,-88,88,22,4,3,8
	Face4	18,30,-85,85,-42,1,6,8,3
	FendQ
ika_f24	Faces
	Face3	44,2,59,-112,14,10,15,23
	Face3	18,3,-59,112,-14,23,15,10
	FendQ
ika_EBSP
	EndShape

	endc




;--Shape file ----- C:\SHED\SHAPES5\LINE_2.TXT ----
	ifne	DO_HDR

line_2
	ShapeHdr	line_2_P,0,line_2_F,0,0,0,0,0,0,54,0,89,100,id_0_c,0,<line_2>
	elseif
line_2_P
	datahdr
	Pointsb	7
	pb	46,0,-89	;0
	pb	54,0,-84	;1
	pb	-22,0,-1	;2
	pb	-12,0,10	;3
	pb	-3,0,15	;4
	pb	12,0,19	;5
	pb	-50,0,86	;6

	EndPoints
line_2_F
	Vizis	2
	Viz	6,2,5,0,127,0	;0
	Viz	3,0,1,0,127,0	;1

line_2_f1	Faces
	Face3	18,0,0,127,0,6,2,5
	Face4	18,1,0,127,0,3,0,1,4
	Fend
	EndShape

	endc


 ;--Shape file ----- C:\SHED\NSHAPES\pipe_8.anm ----
	ifne	DO_HDR

pipe_8
	ShapeHdr	pipe_8_P,0,pipe_8_F,0,0,0,0,3,0,130/8,120/8,615/8,640/8,id_0_c,0,<pipe_8>
	elseif
pipe8pb	MACRO
	pb	\1/8,\2/8,\3/8
	ENDM
pipe_8_P
	PointsXb	6
	pipe8pb	-130,60,-600	;0
	pipe8pb	130,-60,-600	;2
	pipe8pb	130,60,200	;4
	pipe8pb	130,-60,200	;6
	pipe8pb	130,120,600	;8
	pipe8pb	130,-120,600	;10
	Frames	10
	jumptab	.A0A
	jumptab	.A1A
	jumptab	.A2A
	jumptab	.A3A
	jumptab	.A4A
	jumptab	.A5A
	jumptab	.A6A
	jumptab	.A7A
	jumptab	.A8A
	jumptab	.A9A
.A0A	PointsXb	10
	pipe8pb	0,120,600	;12
	pipe8pb	0,50,600	;14
	pipe8pb	30,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	30,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	0,-50,600	;24
	pipe8pb	0,-120,600	;26
	pipe8pb	0,120,615	;28
	pipe8pb	0,-120,615	;30
	jump	.EB0
.A1A	PointsXb	10
	pipe8pb	10,120,600	;12
	pipe8pb	10,50,600	;14
	pipe8pb	40,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	40,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	10,-50,600	;24
	pipe8pb	10,-120,600	;26
	pipe8pb	10,120,615	;28
	pipe8pb	10,-120,615	;30
	jump	.EB0
.A2A	PointsXb	10
	pipe8pb	20,120,600	;12
	pipe8pb	20,50,600	;14
	pipe8pb	50,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	50,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	20,-50,600	;24
	pipe8pb	20,-120,600	;26
	pipe8pb	20,120,615	;28
	pipe8pb	20,-120,615	;30
	jump	.EB0
.A3A	PointsXb	10
	pipe8pb	30,120,600	;12
	pipe8pb	30,50,600	;14
	pipe8pb	60,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	60,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	30,-50,600	;24
	pipe8pb	30,-120,600	;26
	pipe8pb	30,120,615	;28
	pipe8pb	30,-120,615	;30
	jump	.EB0
.A4A	PointsXb	10
	pipe8pb	50,120,600	;12
	pipe8pb	50,50,600	;14
	pipe8pb	80,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	80,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	50,-50,600	;24
	pipe8pb	50,-120,600	;26
	pipe8pb	50,120,615	;28
	pipe8pb	50,-120,615	;30
	jump	.EB0
.A5A	PointsXb	10
	pipe8pb	70,120,600	;12
	pipe8pb	70,50,600	;14
	pipe8pb	100,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	100,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	70,-50,600	;24
	pipe8pb	70,-120,600	;26
	pipe8pb	70,120,615	;28
	pipe8pb	70,-120,615	;30
	jump	.EB0
.A6A	PointsXb	10
	pipe8pb	90,120,600	;12
	pipe8pb	90,50,600	;14
	pipe8pb	120,20,600	;16
	pipe8pb	130,20,600	;18
	pipe8pb	120,-20,600	;20
	pipe8pb	130,-20,600	;22
	pipe8pb	90,-50,600	;24
	pipe8pb	90,-120,600	;26
	pipe8pb	90,120,615	;28
	pipe8pb	90,-120,615	;30
	jump	.EB0
.A7A	PointsXb	10
	pipe8pb	110,120,600	;12
	pipe8pb	110,50,600	;14
	pipe8pb	130,30,600	;16
	pipe8pb	130,30,600	;18
	pipe8pb	130,-30,600	;20
	pipe8pb	130,-30,600	;22
	pipe8pb	110,-50,600	;24
	pipe8pb	110,-120,600	;26
	pipe8pb	110,120,615	;28
	pipe8pb	110,-120,615	;30
	jump	.EB0
.A8A	PointsXb	10
	pipe8pb	120,120,600	;12
	pipe8pb	120,50,600	;14
	pipe8pb	130,40,600	;16
	pipe8pb	130,40,600	;18
	pipe8pb	130,-40,600	;20
	pipe8pb	130,-40,600	;22
	pipe8pb	120,-50,600	;24
	pipe8pb	120,-120,600	;26
	pipe8pb	120,120,615	;28
	pipe8pb	120,-120,615	;30
	jump	.EB0
.A9A	PointsXb	10
	pipe8pb	130,120,600	;12
	pipe8pb	130,50,600	;14
	pipe8pb	130,30,600	;16
	pipe8pb	130,30,600	;18
	pipe8pb	130,-30,600	;20
	pipe8pb	130,-30,600	;22
	pipe8pb	130,-50,600	;24
	pipe8pb	130,-120,600	;26
	pipe8pb	130,120,615	;28
	pipe8pb	130,-120,615	;30
.EB0

	EndPoints
pipe_8_F
	Vizis	18
	Viz	27,13,29,-127,0,0	;0
	Viz	17,15,25,0,0,-127	;1
	Viz	23,19,17,0,0,-127	;2
	Viz	23,21,25,0,0,-127	;3
	Viz	9,13,15,0,0,-127	;4
	Viz	30,28,12,127,0,0	;5
	Viz	20,24,14,0,0,-127	;6
	Viz	20,16,18,0,0,-127	;7
	Viz	18,16,14,0,0,-127	;8
	Viz	10,26,24,0,0,-127	;9
	Viz	5,4,8,0,126,19	;10
	Viz	0,1,4,0,127,0	;11
	Viz	11,10,6,0,-126,19	;12
	Viz	9,11,7,-127,0,0	;13
	Viz	4,6,10,127,0,0	;14
	Viz	7,6,2,0,-127,0	;15
	Viz	5,7,3,-127,0,0	;16
	Viz	1,2,6,127,0,0	;17
	BSPInit	pipe_8_EBSP
	BSP	3,pipe_8_f1,.bsp2
	BSPEND
.bsp2	BSP	4,pipe_8_f3,.bsp4
	BSPEND
.bsp4	BSP	8,pipe_8_f5,.bsp6
	BSPEND
.bsp6	BSP	9,pipe_8_f7,.bsp8
	BSPEND
.bsp8	BSP	1,pipe_8_f9,.bsp10
	BSPEND
.bsp10	BSP	2,pipe_8_f11,.bsp12
	BSPEND
.bsp12	BSP	6,pipe_8_f13,.bsp14
	BSPEND
.bsp14	BSP	7,pipe_8_f15,.bsp16
	BSPEND
.bsp16	BSPE	pipe_8_f17

pipe_8_f1	Faces
	Face5	32,3,0,0,-127,23,21,25,27,11
	FendQ
pipe_8_f3	Faces
	Face5	32,4,0,0,-127,9,13,15,17,19
	FendQ
pipe_8_f5	Faces
	Face5	30,8,0,0,-127,18,16,14,12,8
	FendQ
pipe_8_f7	Faces
	Face5	30,9,0,0,-127,10,26,24,20,22
	FendQ
pipe_8_f9	Faces
	Face4	18,1,0,0,-127,17,15,25,21
	FendQ
pipe_8_f11	Faces
	Face4	18,2,0,0,-127,23,19,17,21
	FendQ
pipe_8_f13	Faces
	Face4	16,6,0,0,-127,20,24,14,16
	FendQ
pipe_8_f15	Faces
	Face4	16,7,0,0,-127,20,16,18,22
	FendQ
pipe_8_f17	Faces
	Face4	14,13,-127,0,0,9,11,7,5
	Face4	14,14,127,0,0,4,6,10,8
	Face4	14,16,-127,0,0,5,7,3,0
	Face4	14,17,127,0,0,1,2,6,4
	Face4	20,0,-127,0,0,27,13,29,31
	Face4	12,5,127,0,0,30,28,12,26
	Face4	16,10,0,126,19,5,4,8,9
	Face4	16,11,0,127,0,0,1,4,5
	Face4	12,12,0,-126,19,11,10,6,7
	Face4	12,15,0,-127,0,7,6,2,3
	FendQ
pipe_8_EBSP
	EndShape

	endc


;--Shape file ----- C:\SHED\NSHAPES\pipe_8_0.txt ----
	ifne	DO_HDR

pipe_8_0
	ShapeHdr	pipe_8_0_P,0,pipe_8_0_F,0,0,0,0,3,0,130,60,250,288,id_0_c,0,<pipe_8_0>
	elseif
pipe_8_0_P
	PointsXb	4
	pipe8pb	-130,60,-250	;0
	pipe8pb	130,-60,-250	;2
	pipe8pb	130,60,250	;4
	pipe8pb	130,-60,250	;6

	EndPoints
pipe_8_0_F
	Vizis	4
	Viz	1,2,6,127,0,0	;0
	Viz	5,7,3,-127,0,0	;1
	Viz	7,6,2,0,-127,0	;2
	Viz	0,1,4,0,127,0	;3

pipe_8_0_f1	Faces
	Face4	23,0,127,0,0,1,2,6,4
	Face4	23,1,-127,0,0,5,7,3,0
	Face4	21,2,0,-127,0,7,6,2,3
	Face4	25,3,0,127,0,0,1,4,5
	Fend
	EndShape

	endc


;--Shape file ----- C:\CATPAW.OBJ ----
	ifne	DO_HDR

CATPAW
	ShapeHdr	CATPAW_P,0,CATPAW_F,0,0,0,0,0,playerB_col,96,14,102,105,id_0_c,0,<CATPAW>
	elseif
CATPAW_P
	Pointsb	93
	pb	-16,4,29	;0
	pb	-13,4,29	;1
	pb	-10,8,18	;2
	pb	8,-8,18	;3
	pb	0,-8,18	;4
	pb	0,-11,11	;5
	pb	4,-11,11	;6
	pb	-16,-5,29	;7
	pb	-10,-8,18	;8
	pb	-12,-5,29	;9
	pb	-16,4,29	;10
	pb	-5,-11,11	;11
	pb	-36,-6,15	;12
	pb	-36,4,15	;13
	pb	-48,3,-8	;14
	pb	-48,-6,-8	;15
	pb	-47,3,-39	;16
	pb	-46,-5,-39	;17
	pb	48,-2,-36	;18
	pb	48,5,-36	;19
	pb	47,6,-5	;20
	pb	47,-3,-5	;21
	pb	35,5,18	;22
	pb	35,-4,18	;23
	pb	-12,-11,6	;24
	pb	-17,-12,0	;25
	pb	-13,11,6	;26
	pb	-17,11,0	;27
	pb	12,5,29	;28
	pb	11,12,7	;29
	pb	16,12,0	;30
	pb	16,-11,0	;31
	pb	11,-11,7	;32
	pb	12,-5,29	;33
	pb	17,-9,-37	;34
	pb	-21,1,-102	;35
	pb	-21,-1,-102	;36
	pb	-15,-10,-38	;37
	pb	26,3,-102	;38
	pb	26,0,-102	;39
	pb	-16,10,-38	;40
	pb	17,11,-37	;41
	pb	3,11,11	;42
	pb	8,8,18	;43
	pb	-5,11,11	;44
	pb	-14,13,-1	;45
	pb	-10,13,4	;46
	pb	-4,13,8	;47
	pb	2,13,8	;48
	pb	9,13,5	;49
	pb	13,13,-1	;50
	pb	0,11,11	;51
	pb	-13,12,-37	;52
	pb	14,13,-37	;53
	pb	3,-14,8	;54
	pb	-4,-14,8	;55
	pb	-10,-14,4	;56
	pb	9,-14,4	;57
	pb	-14,-14,-1	;58
	pb	13,-13,-1	;59
	pb	15,-11,-37	;60
	pb	1,-11,-38	;61
	pb	-12,-12,-38	;62
	pb	0,12,-37	;63
	pb	9,5,29	;64
	pb	9,-5,29	;65
	pb	0,8,18	;66
	pb	-1,4,29	;67
	pb	-1,-5,29	;68
	pb	12,1,29	;69
	pb	12,-1,29	;70
	pb	13,-1,58	;71
	pb	13,1,58	;72
	pb	17,-1,27	;73
	pb	17,1,27	;74
	pb	-16,1,29	;75
	pb	-17,0,57	;76
	pb	-17,-2,57	;77
	pb	-16,-2,29	;78
	pb	-18,0,27	;79
	pb	-18,-2,27	;80
	pb	47,2,-5	;81
	pb	38,2,11	;82
	pb	95,2,9	;83
	pb	95,2,-1	;84
	pb	38,0,11	;85
	pb	47,0,-5	;86
	pb	-48,0,-8	;87
	pb	-96,-2,-7	;88
	pb	-96,-2,3	;89
	pb	-40,0,8	;90
	pb	-40,-2,8	;91
	pb	-48,-2,-8	;92

	EndPoints
CATPAW_F
	Vizis	98
	Viz	10,1,2,0,-119,43	;0
	Viz	3,4,5,0,117,50	;1
	Viz	7,8,9,0,123,33	;2
	Viz	1,10,7,0,0,127	;3
	Viz	4,8,11,0,117,50	;4
	Viz	12,13,14,113,0,59	;5
	Viz	15,14,16,127,0,-4	;6
	Viz	18,19,20,-127,0,4	;7
	Viz	21,20,22,-113,0,59	;8
	Viz	11,8,7,-85,-92,21	;9
	Viz	24,7,12,15,123,29	;10
	Viz	24,12,25,14,122,32	;11
	Viz	25,12,15,28,123,14	;12
	Viz	10,26,13,23,-120,34	;13
	Viz	13,26,27,29,-122,20	;14
	Viz	13,27,14,35,-122,13	;15
	Viz	28,22,29,-18,-120,37	;16
	Viz	29,22,30,-27,-123,19	;17
	Viz	21,23,31,-33,122,12	;18
	Viz	31,23,32,-27,123,19	;19
	Viz	23,33,32,-21,121,32	;20
	Viz	32,33,3,0,123,33	;21
	Viz	18,21,31,-31,123,-3	;22
	Viz	16,35,36,117,0,-48	;23
	Viz	17,37,25,20,125,-8	;24
	Viz	38,19,18,-120,0,-40	;25
	Viz	40,16,14,28,-124,-1	;26
	Viz	19,41,30,-24,-125,-3	;27
	Viz	42,43,28,51,115,-13	;28
	Viz	26,10,2,17,-121,35	;29
	Viz	20,30,22,-27,-123,19	;30
	Viz	45,27,26,58,-106,39	;31
	Viz	46,26,44,35,-108,56	;32
	Viz	48,42,29,-19,-107,65	;33
	Viz	49,29,30,-35,-120,25	;34
	Viz	42,48,51,0,-106,70	;35
	Viz	51,48,47,0,-106,70	;36
	Viz	51,47,44,0,-106,70	;37
	Viz	27,45,52,72,-105,-5	;38
	Viz	41,53,50,-70,-106,2	;39
	Viz	47,48,49,0,-127,0	;40
	Viz	46,49,50,0,-127,0	;41
	Viz	54,55,56,0,127,0	;42
	Viz	57,56,58,0,127,0	;43
	Viz	60,59,61,-1,127,-7	;44
	Viz	61,59,58,-5,127,-8	;45
	Viz	61,58,62,-10,126,-6	;46
	Viz	53,63,50,9,-127,-0	;47
	Viz	50,63,45,0,-127,-4	;48
	Viz	63,52,45,0,-127,-4	;49
	Viz	28,64,65,0,0,127	;50
	Viz	51,44,2,0,-117,50	;51
	Viz	42,51,66,0,-117,50	;52
	Viz	65,3,33,0,123,33	;53
	Viz	28,43,64,0,-123,33	;54
	Viz	64,67,68,0,0,127	;55
	Viz	59,31,32,-57,106,41	;56
	Viz	57,32,6,-40,98,71	;57
	Viz	55,11,24,52,90,73	;58
	Viz	56,24,25,63,87,67	;59
	Viz	6,5,54,0,90,90	;60
	Viz	54,5,55,0,90,90	;61
	Viz	37,62,58,70,105,-9	;62
	Viz	31,59,60,-71,105,-2	;63
	Viz	11,55,5,0,90,90	;64
	Viz	67,1,9,0,0,127	;65
	Viz	67,66,2,0,-119,43	;66
	Viz	64,43,66,0,-123,33	;67
	Viz	65,68,4,0,123,33	;68
	Viz	68,9,8,0,123,33	;69
	Viz	40,35,16,27,-123,-15	;70
	Viz	36,37,17,20,124,-16	;71
	Viz	18,34,39,-28,123,-13	;72
	Viz	41,19,38,-24,-124,-12	;73
	Viz	22,28,33,-55,0,115	;74
	Viz	10,13,12,73,0,104	;75
	Viz	69,70,71,127,0,4	;76
	Viz	71,73,74,-126,0,16	;77
	Viz	75,76,77,-127,0,5	;78
	Viz	77,76,79,127,0,4	;79
	Viz	81,82,83,0,-127,0	;80
	Viz	85,86,84,-5,127,3	;81
	Viz	87,88,89,5,-127,0	;82
	Viz	91,89,88,0,127,0	;83
	Viz	69,72,74,0,-127,0	;84
	Viz	71,70,73,0,127,0	;85
	Viz	75,79,76,58,-113,2	;86
	Viz	77,80,78,0,127,0	;87
	Viz	86,81,84,-11,0,-127	;88
	Viz	82,85,83,-4,0,127	;89
	Viz	92,88,87,3,0,-127	;90
	Viz	90,89,91,11,0,126	;91
	Viz	34,41,38,126,0,-17	;92
	Viz	36,35,40,-127,0,-10	;93
	Viz	53,60,61,-9,-0,-127	;94
	Viz	63,61,62,0,-5,-127	;95
	Viz	41,34,60,0,0,-127	;96
	Viz	62,37,40,0,0,-127	;97
	BSPInit	CATPAW_EBSP
	BSP	94,CATPAW_f1,.bsp2
	BSP	5,CATPAW_f3,.bsp4
	BSP	8,CATPAW_f5,.bsp6
	BSP	65,CATPAW_f7,.bsp8
	BSP	57,CATPAW_f9,.bsp10
	BSP	33,CATPAW_f11,.bsp12
	BSPE	CATPAW_f13
.bsp12	BSPE	CATPAW_f14
.bsp10	BSPE	CATPAW_f15
.bsp8	BSPE	CATPAW_f16
.bsp6	BSPE	CATPAW_f17
.bsp4	BSPE	CATPAW_f18
.bsp2	BSP	92,CATPAW_f19,.bsp20
	BSPE	CATPAW_f21
.bsp20	BSPE	CATPAW_f22

CATPAW_f1	Faces
	Face4	44,94,-9,-0,-127,53,60,61,63
	FendQ
CATPAW_f3	Faces
	Face4	2,5,113,0,59,12,13,14,15
	FendQ
CATPAW_f5	Faces
	Face4	2,8,-113,0,59,21,20,22,23
	FendQ
CATPAW_f7	Faces
	Face4	3,65,0,0,127,67,1,9,68
	FendQ
CATPAW_f9	Faces
	Face4	3,57,-40,98,71,57,32,6,54
	FendQ
CATPAW_f11	Faces
	Face4	2,33,-19,-107,65,48,42,29,49
	FendQ
CATPAW_f13	Faces
	Face4	2,9,-85,-92,21,11,8,7,24
	Face4	2,31,58,-106,39,45,27,26,46
	Face4	2,32,35,-108,56,46,26,44,47
	Face3	2,35,0,-106,70,42,48,51
	Face3	2,36,0,-106,70,51,48,47
	Face3	2,37,0,-106,70,51,47,44
	Face4	2,38,72,-105,-5,27,45,52,40
	Face4	2,39,-70,-106,2,41,53,50,30
	Face4	3,56,-57,106,41,59,31,32,57
	Face4	3,58,52,90,73,55,11,24,56
	Face4	3,59,63,87,67,56,24,25,58
	Face3	3,60,0,90,90,6,5,54
	Face3	3,61,0,90,90,54,5,55
	Face4	3,62,70,105,-9,37,62,58,25
	Face4	3,63,-71,105,-2,31,59,60,34
	Face3	3,64,0,90,90,11,55,5
	Face3	2,46,-10,126,-6,61,58,62
	Face4	44,97,0,0,-127,62,37,40,52
	Face3	2,0,0,-119,43,10,1,2
	Face4	2,1,0,117,50,3,4,5,6
	Face3	2,2,0,123,33,7,8,9
	Face4	2,3,0,0,127,1,10,7,9
	Face4	2,4,0,117,50,4,8,11,5
	Face4	2,6,127,0,-4,15,14,16,17
	Face4	2,7,-127,0,4,18,19,20,21
	Face3	2,10,15,123,29,24,7,12
	Face3	2,11,14,122,32,24,12,25
	Face3	2,12,28,123,14,25,12,15
	Face3	2,13,23,-120,34,10,26,13
	Face3	2,14,29,-122,20,13,26,27
	Face3	2,15,35,-122,13,13,27,14
	Face3	2,17,-27,-123,19,29,22,30
	Face4	2,22,-31,123,-3,18,21,31,34
	Face4	2,24,20,125,-8,17,37,25,15
	Face4	2,26,28,-124,-1,40,16,14,27
	Face4	2,27,-24,-125,-3,19,41,30,20
	Face4	2,29,17,-121,35,26,10,2,44
	Face3	2,30,-27,-123,19,20,30,22
	Face4	2,34,-35,-120,25,49,29,30,50
	Face4	2,40,0,-127,0,47,48,49,46
	Face4	2,41,0,-127,0,46,49,50,45
	Face4	2,42,0,127,0,54,55,56,57
	Face4	2,43,0,127,0,57,56,58,59
	Face3	2,44,-1,127,-7,60,59,61
	Face3	2,45,-5,127,-8,61,59,58
	Face3	2,47,9,-127,-0,53,63,50
	Face3	2,48,0,-127,-4,50,63,45
	Face3	2,49,0,-127,-4,63,52,45
	Face4	2,51,0,-117,50,51,44,2,66
	Face4	2,52,0,-117,50,42,51,66,43
	Face4	3,69,0,123,33,68,9,8,4
	Face4	5,75,73,0,104,10,13,12,7
	Face4	44,95,0,-5,-127,63,61,62,52
	FendQ
CATPAW_f14	Faces
	Face4	2,28,51,115,-13,42,43,28,29
	Face3	2,16,-18,-120,37,28,22,29
	Face3	2,54,0,-123,33,28,43,64
	Face4	3,66,0,-119,43,67,66,2,1
	Face4	3,67,0,-123,33,64,43,66,67
	FendQ
CATPAW_f15	Faces
	Face3	2,18,-33,122,12,21,23,31
	Face3	2,19,-27,123,19,31,23,32
	Face3	2,20,-21,121,32,23,33,32
	Face4	2,21,0,123,33,32,33,3,6
	Face4	2,50,0,0,127,28,64,65,33
	Face3	2,53,0,123,33,65,3,33
	Face4	3,55,0,0,127,64,67,68,65
	Face4	3,68,0,123,33,65,68,4,3
	Face4	5,74,-55,0,115,22,28,33,23
	FendQ
CATPAW_f16	Faces
	Face4	5,76,127,0,4,69,70,71,72
	Face4	5,78,-127,0,5,75,76,77,78
	Face4	5,77,-126,0,16,71,73,74,72
	Face4	5,79,127,0,4,77,76,79,80
	Face3	5,84,0,-127,0,69,72,74
	Face3	5,85,0,127,0,71,70,73
	Face3	5,86,58,-113,2,75,79,76
	Face3	5,87,0,127,0,77,80,78
	FendQ
CATPAW_f17	Faces
	Face4	5,80,0,-127,0,81,82,83,84
	Face4	5,81,-5,127,3,85,86,84,83
	Face3	5,88,-11,0,-127,86,81,84
	Face3	5,89,-4,0,127,82,85,83
	FendQ
CATPAW_f18	Faces
	Face4	5,82,5,-127,0,87,88,89,90
	Face4	5,83,0,127,0,91,89,88,92
	Face3	5,90,3,0,-127,92,88,87
	Face3	5,91,11,0,126,90,89,91
	FendQ
CATPAW_f19	Faces
	Face4	5,92,126,0,-17,34,41,38,39
	FendQ
CATPAW_f21	Faces
	Face4	2,25,-120,0,-40,38,19,18,39
	Face3	5,72,-28,123,-13,18,34,39
	Face3	5,73,-24,-124,-12,41,19,38
	FendQ
CATPAW_f22	Faces
	Face4	44,96,0,0,-127,41,34,60,53
	Face4	5,93,-127,0,-10,36,35,40,37
	Face4	2,23,117,0,-48,16,35,36,17
	Face3	5,70,27,-123,-15,40,35,16
	Face3	5,71,20,124,-16,36,37,17
	FendQ
CATPAW_EBSP
	EndShape

	endc

;--Shape file ----- C:\SKYB.OBJ ----
	ifne	DO_HDR

SKYB
	ShapeHdr	SKYB_P,0,SKYB_F,0,0,0,0,0,playerB_col,93,46,45,96,id_0_c,0,<SKYB>
	elseif
SKYB_P
	Pointsb	90
	pb	33,6,24	;0
	pb	33,5,-14	;1
	pb	22,4,-28	;2
	pb	22,7,39	;3
	pb	8,4,-34	;4
	pb	8,7,44	;5
	pb	-35,4,-14	;6
	pb	-35,6,24	;7
	pb	-25,6,38	;8
	pb	-24,4,-29	;9
	pb	-10,7,44	;10
	pb	-10,3,-35	;11
	pb	-10,-5,-22	;12
	pb	-10,-9,-15	;13
	pb	-13,-46,-19	;14
	pb	-14,-11,4	;15
	pb	12,-11,5	;16
	pb	13,-46,-19	;17
	pb	16,-9,-11	;18
	pb	16,-4,-20	;19
	pb	8,-5,-21	;20
	pb	11,-46,-19	;21
	pb	8,-9,-14	;22
	pb	10,-11,5	;23
	pb	91,23,0	;24
	pb	90,22,-6	;25
	pb	45,28,7	;26
	pb	46,25,-15	;27
	pb	45,24,7	;28
	pb	-93,22,1	;29
	pb	-48,27,7	;30
	pb	-92,21,-5	;31
	pb	-48,24,-15	;32
	pb	-48,24,7	;33
	pb	-15,-11,5	;34
	pb	-17,-9,-12	;35
	pb	-14,-46,-19	;36
	pb	-18,-4,-21	;37
	pb	-17,5,13	;38
	pb	-10,4,-21	;39
	pb	16,-9,-11	;40
	pb	8,11,45	;41
	pb	-10,11,45	;42
	pb	8,4,-21	;43
	pb	7,10,14	;44
	pb	14,6,13	;45
	pb	-10,10,13	;46
	pb	-39,5,4	;47
	pb	29,0,23	;48
	pb	7,6,17	;49
	pb	33,6,24	;50
	pb	36,5,5	;51
	pb	-32,0,22	;52
	pb	-23,-1,-26	;53
	pb	-22,-9,-4	;54
	pb	-33,0,-13	;55
	pb	-25,-8,5	;56
	pb	-37,1,5	;57
	pb	-23,-8,15	;58
	pb	-33,1,23	;59
	pb	-18,-8,22	;60
	pb	-23,2,36	;61
	pb	-10,-7,25	;62
	pb	-10,2,41	;63
	pb	8,2,41	;64
	pb	8,-7,26	;65
	pb	15,-7,23	;66
	pb	21,2,36	;67
	pb	20,-8,15	;68
	pb	31,2,23	;69
	pb	22,-8,5	;70
	pb	34,1,5	;71
	pb	21,-10,-4	;72
	pb	31,0,-12	;73
	pb	21,0,-26	;74
	pb	-10,8,-38	;75
	pb	8,8,-37	;76
	pb	8,-3,-30	;77
	pb	-10,-4,-31	;78
	pb	-8,-15,-14	;79
	pb	-10,-1,-31	;80
	pb	-10,-12,5	;81
	pb	8,-1,-30	;82
	pb	7,-15,-13	;83
	pb	7,-12,6	;84
	pb	-8,-19,0	;85
	pb	5,-18,1	;86
	pb	-10,6,17	;87
	pb	-48,25,9	;88
	pb	45,26,9	;89

	EndPoints
SKYB_F
	Vizis	107
	Viz	50,1,2,7,-127,-3	;0
	Viz	3,2,4,-2,-127,-6	;1
	Viz	6,7,8,-9,-126,-7	;2
	Viz	9,8,10,7,-127,-4	;3
	Viz	12,13,14,-127,10,-6	;4
	Viz	14,13,15,-124,13,25	;5
	Viz	16,17,18,-123,16,29	;6
	Viz	18,17,19,-127,9,-5	;7
	Viz	20,21,22,127,10,-5	;8
	Viz	22,21,23,126,12,12	;9
	Viz	24,25,26,-10,-125,-22	;10
	Viz	26,25,27,-12,-125,-17	;11
	Viz	24,28,25,-0,125,21	;12
	Viz	25,28,27,7,127,-6	;13
	Viz	29,30,31,11,-125,-23	;14
	Viz	31,30,32,12,-125,-17	;15
	Viz	29,31,33,-3,125,21	;16
	Viz	33,31,32,-9,127,0	;17
	Viz	34,35,36,126,13,13	;18
	Viz	36,35,37,126,12,8	;19
	Viz	38,33,32,66,108,0	;20
	Viz	19,40,22,-23,109,-61	;21
	Viz	10,5,41,0,31,123	;22
	Viz	15,34,36,-81,54,81	;23
	Viz	37,12,13,21,109,-62	;24
	Viz	23,21,17,0,72,105	;25
	Viz	43,44,26,57,-112,-21	;26
	Viz	45,43,27,-62,111,-4	;27
	Viz	39,32,30,-57,-113,-15	;28
	Viz	7,6,47,-2,-127,-7	;29
	Viz	45,48,43,-56,-113,-17	;30
	Viz	49,48,45,-22,-119,38	;31
	Viz	1,50,51,-21,-125,-3	;32
	Viz	38,39,52,47,-117,-13	;33
	Viz	21,20,19,-16,5,-126	;34
	Viz	14,36,37,0,6,-127	;35
	Viz	53,35,54,58,107,-36	;36
	Viz	55,54,56,73,103,-13	;37
	Viz	57,56,58,76,101,15	;38
	Viz	59,58,60,59,104,42	;39
	Viz	61,60,62,13,105,70	;40
	Viz	64,65,66,-27,106,64	;41
	Viz	67,66,68,-55,105,47	;42
	Viz	69,68,70,-78,99,16	;43
	Viz	71,70,72,-76,101,14	;44
	Viz	73,72,40,-56,100,-55	;45
	Viz	75,76,4,-6,76,-101	;46
	Viz	11,4,77,-10,63,-110	;47
	Viz	13,12,79,117,43,-25	;48
	Viz	79,12,80,120,37,-17	;49
	Viz	79,80,78,126,0,15	;50
	Viz	78,80,11,127,0,0	;51
	Viz	62,60,81,-4,123,31	;52
	Viz	81,60,58,25,123,18	;53
	Viz	81,58,56,33,123,7	;54
	Viz	56,54,81,33,123,3	;55
	Viz	81,54,35,21,125,-13	;56
	Viz	81,35,13,8,125,-19	;57
	Viz	4,82,77,-127,0,0	;58
	Viz	77,82,83,-127,0,7	;59
	Viz	65,84,66,-13,123,30	;60
	Viz	66,84,68,-19,123,27	;61
	Viz	68,84,70,-33,122,7	;62
	Viz	70,84,72,-34,120,23	;63
	Viz	72,84,40,-3,125,-20	;64
	Viz	40,84,22,-7,125,-18	;65
	Viz	22,83,20,-124,23,-13	;66
	Viz	20,83,82,-125,19,-9	;67
	Viz	10,42,75,127,0,0	;68
	Viz	42,41,76,0,-127,-5	;69
	Viz	85,81,13,123,32,-5	;70
	Viz	9,53,55,92,58,-66	;71
	Viz	22,84,86,-120,40,0	;72
	Viz	83,86,85,-11,124,-25	;73
	Viz	77,83,79,-5,104,-73	;74
	Viz	6,55,57,110,60,-21	;75
	Viz	87,88,33,60,100,50	;76
	Viz	7,59,61,90,51,73	;77
	Viz	47,57,59,114,51,25	;78
	Viz	8,61,63,38,69,100	;79
	Viz	50,3,67,-89,59,69	;80
	Viz	44,49,89,19,-75,101	;81
	Viz	51,50,69,-110,60,21	;82
	Viz	2,1,73,-89,62,-66	;83
	Viz	49,45,28,-55,62,96	;84
	Viz	46,30,88,-25,-88,88	;85
	Viz	1,51,71,-112,56,-18	;86
	Viz	3,5,64,-37,62,104	;87
	Viz	41,5,4,-127,0,0	;88
	Viz	33,88,29,3,114,57	;89
	Viz	89,24,26,-23,-88,88	;90
	Viz	28,24,89,-12,89,89	;91
	Viz	19,74,40,-15,110,-61	;92
	Viz	35,53,37,6,111,-61	;93
	Viz	88,30,29,22,-88,88	;94
	Viz	64,63,62,0,111,62	;95
	Viz	65,62,81,2,123,31	;96
	Viz	86,84,81,6,80,98	;97
	Viz	64,5,10,0,65,109	;98
	Viz	12,37,80,21,115,-51	;99
	Viz	80,37,53,19,115,-50	;100
	Viz	80,53,9,39,68,-100	;101
	Viz	20,82,19,-21,115,-51	;102
	Viz	19,82,74,-25,112,-54	;103
	Viz	74,82,2,-37,62,-105	;104
	Viz	2,82,4,-40,75,-94	;105
	Viz	11,80,9,42,85,-85	;106
	BSPInit	SKYB_EBSP
	BSP	1,SKYB_f1,.bsp2
	BSP	51,SKYB_f3,.bsp4
	BSP	58,SKYB_f5,.bsp6
	BSP	97,SKYB_f7,.bsp8
	BSPE	SKYB_f9
.bsp8	BSPE	SKYB_f10
.bsp6	BSPE	SKYB_f11
.bsp4	BSPE	SKYB_f12
.bsp2	BSP	68,SKYB_f13,.bsp14
	BSP	88,SKYB_f15,.bsp16
	BSPE	SKYB_f17
.bsp16	BSPE	SKYB_f18
.bsp14	BSPE	SKYB_f19

SKYB_f1	Faces
	Face4	0,1,-2,-127,-6,3,2,4,5
	FendQ
SKYB_f3	Faces
	Face3	8,51,127,0,0,78,80,11
	FendQ
SKYB_f5	Faces
	Face3	8,58,-127,0,0,4,82,77
	FendQ
SKYB_f7	Faces
	Face4	5,97,6,80,98,86,84,81,85
	FendQ
SKYB_f9	Faces
	Face3	8,50,126,0,15,79,80,78
	Face4	8,47,-10,63,-110,11,4,77,78
	Face3	8,49,120,37,-17,79,12,80
	Face3	8,59,-127,0,7,77,82,83
	Face3	8,66,-124,23,-13,22,83,20
	Face3	8,67,-125,19,-9,20,83,82
	Face4	8,72,-120,40,0,22,84,86,83
	Face4	8,73,-11,124,-25,83,86,85,79
	Face4	8,74,-5,104,-73,77,83,79,78
	Face3	8,48,117,43,-25,13,12,79
	Face4	8,70,123,32,-5,85,81,13,79
	FendQ
SKYB_f10	Faces
	Face4	5,95,0,111,62,64,63,62,65
	Face4	5,96,2,123,31,65,62,81,84
	Face4	5,98,0,65,109,64,5,10,63
	FendQ
SKYB_f11	Faces
	Face4	0,0,7,-127,-3,50,1,2,3
	Face3	0,6,-123,16,29,16,17,18
	Face3	0,7,-127,9,-5,18,17,19
	Face3	0,9,126,12,12,22,21,23
	Face4	0,21,-23,109,-61,19,40,22,20
	Face4	0,25,0,72,105,23,21,17,16
	Face3	0,30,-56,-113,-17,45,48,43
	Face3	0,31,-22,-119,38,49,48,45
	Face4	0,34,-16,5,-126,21,20,19,17
	Face4	8,41,-27,106,64,64,65,66,67
	Face4	8,42,-55,105,47,67,66,68,69
	Face4	8,43,-78,99,16,69,68,70,71
	Face4	8,44,-76,101,14,71,70,72,73
	Face4	8,45,-56,100,-55,73,72,40,74
	Face3	8,60,-13,123,30,65,84,66
	Face3	8,61,-19,123,27,66,84,68
	Face3	8,62,-33,122,7,68,84,70
	Face3	8,63,-34,120,23,70,84,72
	Face3	8,64,-3,125,-20,72,84,40
	Face3	8,65,-7,125,-18,40,84,22
	Face4	8,83,-89,62,-66,2,1,73,74
	Face4	8,86,-112,56,-18,1,51,71,73
	Face3	8,92,-15,110,-61,19,74,40
	Face3	44,102,-21,115,-51,20,82,19
	Face3	44,103,-25,112,-54,19,82,74
	Face3	44,104,-37,62,-105,74,82,2
	Face3	44,105,-40,75,-94,2,82,4
	Face3	0,8,127,10,-5,20,21,22
	Face3	0,32,-21,-125,-3,1,50,51
	Face4	8,80,-89,59,69,50,3,67,69
	Face4	8,82,-110,60,21,51,50,69,71
	Face4	8,87,-37,62,104,3,5,64,67
	FendQ
SKYB_f12	Faces
	Face4	0,2,-9,-126,-7,6,7,8,9
	Face3	0,5,-124,13,25,14,13,15
	Face3	0,18,126,13,13,34,35,36
	Face3	0,19,126,12,8,36,35,37
	Face4	0,23,-81,54,81,15,34,36,14
	Face4	0,24,21,109,-62,37,12,13,35
	Face3	0,33,47,-117,-13,38,39,52
	Face4	0,35,0,6,-127,14,36,37,12
	Face4	8,36,58,107,-36,53,35,54,55
	Face4	8,37,73,103,-13,55,54,56,57
	Face4	8,38,76,101,15,57,56,58,59
	Face4	8,39,59,104,42,59,58,60,61
	Face4	8,40,13,105,70,61,60,62,63
	Face3	8,52,-4,123,31,62,60,81
	Face3	8,53,25,123,18,81,60,58
	Face3	8,54,33,123,7,81,58,56
	Face3	8,55,33,123,3,56,54,81
	Face3	8,56,21,125,-13,81,54,35
	Face3	8,57,8,125,-19,81,35,13
	Face4	8,71,92,58,-66,9,53,55,6
	Face4	8,75,110,60,-21,6,55,57,47
	Face3	8,93,6,111,-61,35,53,37
	Face3	44,99,21,115,-51,12,37,80
	Face3	44,100,19,115,-50,80,37,53
	Face3	44,101,39,68,-100,80,53,9
	Face3	44,106,42,85,-85,11,80,9
	Face4	0,3,7,-127,-4,9,8,10,11
	Face3	0,4,-127,10,-6,12,13,14
	Face3	0,29,-2,-127,-7,7,6,47
	Face4	8,77,90,51,73,7,59,61,8
	Face4	8,78,114,51,25,47,57,59,7
	Face4	8,79,38,69,100,8,61,63,10
	FendQ
SKYB_f13	Faces
	Face4	8,68,127,0,0,10,42,75,11
	FendQ
SKYB_f15	Faces
	Face4	8,88,-127,0,0,41,5,4,76
	FendQ
SKYB_f17	Faces
	Face4	0,22,0,31,123,10,5,41,42
	Face4	8,46,-6,76,-101,75,76,4,11
	Face4	8,69,0,-127,-5,42,41,76,75
	FendQ
SKYB_f18	Faces
	Face3	0,12,-0,125,21,24,28,25
	Face3	0,13,7,127,-6,25,28,27
	Face4	0,27,-62,111,-4,45,43,27,28
	Face4	8,84,-55,62,96,49,45,28,89
	Face3	8,91,-12,89,89,28,24,89
	Face3	0,10,-10,-125,-22,24,25,26
	Face3	0,11,-12,-125,-17,26,25,27
	Face4	0,26,57,-112,-21,43,44,26,27
	Face4	8,81,19,-75,101,44,49,89,26
	Face3	8,90,-23,-88,88,89,24,26
	FendQ
SKYB_f19	Faces
	Face3	0,16,-3,125,21,29,31,33
	Face3	0,17,-9,127,0,33,31,32
	Face4	0,20,66,108,0,38,33,32,39
	Face4	8,76,60,100,50,87,88,33,38
	Face3	8,89,3,114,57,33,88,29
	Face3	0,14,11,-125,-23,29,30,31
	Face3	0,15,12,-125,-17,31,30,32
	Face4	0,28,-57,-113,-15,39,32,30,46
	Face4	8,85,-25,-88,88,46,30,88,87
	Face3	8,94,22,-88,88,88,30,29
	FendQ
SKYB_EBSP
	EndShape

	endc

;--Shape file ----- C:\BULLFROG.OBJ ----
	ifne	DO_HDR

BULLFROG
	ShapeHdr	BULLFROG_P,0,BULLFROG_F,0,0,0,0,0,playerB_col,150,66,121,153,id_0_c,0,<BULLFROG>
	elseif
BULLFROG_P
	Pointsw	28
	pwd2	44,-10,-17	;0
	pwd2	30,-16,-17	;1
	pwd2	14,-13,-24	;2
	pwd2	52,3,-24	;3
	pwd2	-44,-10,-17	;4
	pwd2	-52,3,-24	;5
	pwd2	-14,-13,-24	;6
	pwd2	-30,-16,-17	;7
	pwd2	11,21,-25	;8
	pwd2	52,10,-24	;9
	pwd2	-11,21,-25	;10
	pwd2	-52,10,-24	;11
	pwd2	150,18,6	;12
	pwd2	150,18,24	;13
	pwd2	100,9,6	;14
	pwd2	100,11,43	;15
	pwd2	52,7,43	;16
	pwd2	-14,-13,26	;17
	pwd2	-8,-19,26	;18
	pwd2	0,6,121	;19
	pwd2	8,-19,26	;20
	pwd2	14,-13,26	;21
	pwd2	-81,3,-19	;22
	pwd2	-52,7,43	;23
	pwd2	-100,9,6	;24
	pwd2	-100,11,43	;25
	pwd2	-150,18,25	;26
	pwd2	100,13,6	;27
	PointsXw	1
	pwd2	81,10,-19	;28
	Pointsw	2
	pwd2	-100,13,6	;30
	pwd2	-150,18,7	;31
	PointsXw	1
	pwd2	52,3,26	;32
	Pointsw	3
	pwd2	81,3,-19	;34
	pwd2	-7,15,59	;35
	pwd2	8,15,59	;36
	PointsXw	2
	pwd2	8,-27,-60	;37
	pwd2	-8,-27,-11	;39
	Pointsw	11
	pwd2	30,-16,8	;41
	pwd2	14,-13,26	;42
	pwd2	44,-10,8	;43
	pwd2	44,-10,-17	;44
	pwd2	-14,-13,26	;45
	pwd2	-30,-16,8	;46
	pwd2	-44,-10,8	;47
	pwd2	80,66,-83	;48
	pwd2	82,-56,-82	;49
	pwd2	-81,66,-82	;50
	pwd2	-82,-56,-81	;51

	EndPoints
BULLFROG_F
	Vizis	71
	Viz	44,1,2,-31,71,-100	;0
	Viz	4,5,6,31,72,-100	;1
	Viz	8,9,3,-3,0,-127	;2
	Viz	10,6,5,2,4,-127	;3
	Viz	12,13,14,-22,125,0	;4
	Viz	14,13,15,-20,125,7	;5
	Viz	14,15,16,-11,126,7	;6
	Viz	17,18,19,87,87,30	;7
	Viz	19,18,20,0,123,32	;8
	Viz	19,20,21,-87,87,30	;9
	Viz	22,23,24,18,125,16	;10
	Viz	24,23,25,11,126,7	;11
	Viz	24,25,26,20,125,7	;12
	Viz	12,27,13,13,-126,0	;13
	Viz	13,27,15,15,-126,7	;14
	Viz	15,27,16,11,-126,7	;15
	Viz	16,27,28,17,-126,-2	;16
	Viz	29,30,23,-17,-126,-2	;17
	Viz	23,30,25,-11,-126,7	;18
	Viz	25,30,26,-15,-126,7	;19
	Viz	26,30,31,-13,-126,0	;20
	Viz	19,21,16,-47,114,30	;21
	Viz	16,21,32,-48,114,27	;22
	Viz	19,23,17,47,114,30	;23
	Viz	17,23,33,48,114,27	;24
	Viz	28,27,14,-101,0,-77	;25
	Viz	35,36,8,0,-127,9	;26
	Viz	23,11,5,127,0,0	;27
	Viz	23,35,10,26,-124,10	;28
	Viz	16,32,3,-127,0,0	;29
	Viz	29,22,24,101,0,-77	;30
	Viz	16,9,8,-33,-123,5	;31
	Viz	34,14,16,-18,125,16	;32
	Viz	27,12,14,0,0,-127	;33
	Viz	16,36,19,-30,-122,22	;34
	Viz	23,19,35,29,-122,21	;35
	Viz	36,35,19,0,-126,18	;36
	Viz	31,24,26,22,125,0	;37
	Viz	30,24,31,3,0,-127	;38
	Viz	17,6,18,90,90,0	;39
	Viz	21,20,2,-90,90,0	;40
	Viz	2,37,38,0,-118,-46	;41
	Viz	39,38,37,0,127,0	;42
	Viz	3,9,28,-22,0,-125	;43
	Viz	1,41,42,23,125,0	;44
	Viz	32,43,44,-108,67,0	;45
	Viz	41,1,44,-50,117,0	;46
	Viz	42,41,43,-45,104,57	;47
	Viz	7,6,45,-23,125,0	;48
	Viz	33,5,4,108,67,0	;49
	Viz	46,47,4,50,117,0	;50
	Viz	45,33,47,44,105,56	;51
	Viz	5,22,29,22,0,-125	;52
	Viz	6,38,39,117,50,0	;53
	Viz	40,37,2,-117,50,0	;54
	Viz	9,48,28,-14,95,-83	;55
	Viz	28,48,16,-101,-59,50	;56
	Viz	9,16,48,112,-59,3	;57
	Viz	16,49,34,-103,53,52	;58
	Viz	3,49,16,112,60,4	;59
	Viz	49,3,34,-15,-92,-86	;60
	Viz	11,29,50,14,94,-84	;61
	Viz	29,23,50,102,-57,50	;62
	Viz	11,50,23,-112,-61,3	;63
	Viz	23,22,51,103,53,52	;64
	Viz	5,23,51,-112,60,4	;65
	Viz	51,22,5,15,-91,-87	;66
	Viz	18,6,39,119,43,9	;67
	Viz	2,20,40,-119,43,9	;68
	Viz	39,40,20,0,124,27	;69
	Viz	10,8,2,0,4,-127	;70
	BSPInit	BULLFROG_EBSP
	BSP	65,BULLFROG_f1,.bsp2
	BSP	64,BULLFROG_f3,.bsp4
	BSPE	BULLFROG_f5
.bsp4	BSPE	BULLFROG_f6
.bsp2	BSP	59,BULLFROG_f7,.bsp8
	BSP	58,BULLFROG_f9,.bsp10
	BSPE	BULLFROG_f11
.bsp10	BSPE	BULLFROG_f12
.bsp8	BSPE	BULLFROG_f13

BULLFROG_f1	Faces
	Face3	3,65,-112,60,4,5,23,51
	FendQ
BULLFROG_f3	Faces
	Face3	3,64,103,53,52,23,22,51
	FendQ
BULLFROG_f5	Faces
	Face4	0,27,127,0,0,23,11,5,33
	Face4	3,52,22,0,-125,5,22,29,11
	Face3	3,61,14,94,-84,11,29,50
	Face3	3,66,15,-91,-87,51,22,5
	Face3	3,62,102,-57,50,29,23,50
	Face3	3,63,-112,-61,3,11,50,23
	FendQ
BULLFROG_f6	Faces
	Face4	0,30,101,0,-77,29,22,24,30
	Face3	0,38,3,0,-127,30,24,31
	Face3	0,11,11,126,7,24,23,25
	Face3	0,18,-11,-126,7,23,30,25
	Face3	0,10,18,125,16,22,23,24
	Face3	0,12,20,125,7,24,25,26
	Face3	0,17,-17,-126,-2,29,30,23
	Face3	0,19,-15,-126,7,25,30,26
	Face3	0,20,-13,-126,0,26,30,31
	Face3	0,37,22,125,0,31,24,26
	FendQ
BULLFROG_f7	Faces
	Face3	3,59,112,60,4,3,49,16
	FendQ
BULLFROG_f9	Faces
	Face3	3,58,-103,53,52,16,49,34
	FendQ
BULLFROG_f11	Faces
	Face4	0,29,-127,0,0,16,32,3,9
	Face4	3,43,-22,0,-125,3,9,28,34
	Face3	3,55,-14,95,-83,9,48,28
	Face3	3,60,-15,-92,-86,49,3,34
	Face3	3,56,-101,-59,50,28,48,16
	Face3	3,57,112,-59,3,9,16,48
	FendQ
BULLFROG_f12	Faces
	Face4	0,25,-101,0,-77,28,27,14,34
	Face3	0,33,0,0,-127,27,12,14
	Face3	0,6,-11,126,7,14,15,16
	Face3	0,15,11,-126,7,15,27,16
	Face3	0,4,-22,125,0,12,13,14
	Face3	0,5,-20,125,7,14,13,15
	Face3	0,13,13,-126,0,12,27,13
	Face3	0,14,15,-126,7,13,27,15
	Face3	0,16,17,-126,-2,16,27,28
	Face3	0,32,-18,125,16,34,14,16
	FendQ
BULLFROG_f13	Faces
	Face4	0,0,-31,71,-100,44,1,2,3
	Face4	0,1,31,72,-100,4,5,6,7
	Face4	0,2,-3,0,-127,8,9,3,2
	Face4	0,3,2,4,-127,10,6,5,11
	Face3	0,7,87,87,30,17,18,19
	Face3	0,9,-87,87,30,19,20,21
	Face3	0,21,-47,114,30,19,21,16
	Face3	0,22,-48,114,27,16,21,32
	Face3	0,23,47,114,30,19,23,17
	Face3	0,24,48,114,27,17,23,33
	Face3	3,39,90,90,0,17,6,18
	Face3	3,40,-90,90,0,21,20,2
	Face4	3,41,0,-118,-46,2,37,38,6
	Face4	3,44,23,125,0,1,41,42,2
	Face4	3,47,-45,104,57,42,41,43,32
	Face4	3,48,-23,125,0,7,6,45,46
	Face4	3,51,44,105,56,45,33,47,46
	Face3	3,53,117,50,0,6,38,39
	Face3	3,54,-117,50,0,40,37,2
	Face3	5,67,119,43,9,18,6,39
	Face3	5,68,-119,43,9,2,20,40
	Face4	44,70,0,4,-127,10,8,2,6
	Face3	0,8,0,123,32,19,18,20
	Face4	0,26,0,-127,9,35,36,8,10
	Face4	0,28,26,-124,10,23,35,10,11
	Face4	0,31,-33,-123,5,16,9,8,36
	Face3	0,34,-30,-122,22,16,36,19
	Face3	0,35,29,-122,21,23,19,35
	Face3	0,36,0,-126,18,36,35,19
	Face4	3,42,0,127,0,39,38,37,40
	Face4	3,45,-108,67,0,32,43,44,3
	Face4	3,46,-50,117,0,41,1,44,43
	Face4	3,49,108,67,0,33,5,4,47
	Face4	3,50,50,117,0,46,47,4,7
	Face4	5,69,0,124,27,39,40,20,18
	FendQ
BULLFROG_EBSP
	EndShape

	endc


;--Shape file ----- C:\MORW.OBJ ----
	ifne	DO_HDR

MORW
	ShapeHdr	MORW_P,0,MORW_F,0,0,0,0,0,playerB_col,69,29,87,87,id_0_c,0,<MORW>
	elseif
MORW_P
	Pointsb	58
	pb	69,2,-1	;0
	pb	69,1,-29	;1
	pb	67,2,2	;2
	pb	67,2,32	;3
	pb	66,4,32	;4
	pb	66,1,32	;5
	pb	66,5,-1	;6
	pb	66,4,-29	;7
	pb	65,3,2	;8
	pb	65,0,2	;9
	pb	66,-1,-1	;10
	pb	66,-2,-29	;11
	pb	64,2,2	;12
	pb	64,2,32	;13
	pb	63,2,-1	;14
	pb	63,1,-29	;15
	pb	55,1,-12	;16
	pb	33,1,-14	;17
	pb	33,-1,-14	;18
	pb	28,1,11	;19
	pb	24,1,-18	;20
	pb	24,-3,-18	;21
	pb	10,6,-7	;22
	pb	10,-7,-7	;23
	pb	6,-13,-1	;24
	pb	0,29,2	;25
	pb	0,5,31	;26
	pb	1,5,-41	;27
	pb	0,3,87	;28
	pb	0,-6,42	;29
	pb	0,-13,23	;30
	pb	1,-24,-7	;31
	pb	1,-28,-20	;32
	pb	-3,-13,-2	;33
	pb	-7,6,-8	;34
	pb	-7,-7,-8	;35
	pb	-21,1,-19	;36
	pb	-21,-3,-19	;37
	pb	-27,1,10	;38
	pb	-30,1,-15	;39
	pb	-30,-1,-14	;40
	pb	-52,1,-12	;41
	pb	-60,2,-4	;42
	pb	-61,1,-31	;43
	pb	-63,2,0	;44
	pb	-63,2,29	;45
	pb	-63,5,-4	;46
	pb	-64,4,29	;47
	pb	-64,3,0	;48
	pb	-64,1,30	;49
	pb	-64,0,0	;50
	pb	-63,-1,-4	;51
	pb	-64,4,-31	;52
	pb	-64,-2,-31	;53
	pb	-66,2,0	;54
	pb	-66,2,29	;55
	pb	-66,2,-4	;56
	pb	-67,1,-31	;57

	EndPoints
MORW_F
	Vizis	71
	Viz	28,29,19,-53,113,23	;0
	Viz	19,29,23,-42,119,11	;1
	Viz	19,23,18,-37,120,17	;2
	Viz	19,22,26,-25,-124,10	;3
	Viz	34,38,26,24,-124,8	;4
	Viz	28,38,29,56,112,22	;5
	Viz	29,38,35,41,120,8	;6
	Viz	40,35,38,35,121,15	;7
	Viz	28,19,26,-21,-125,4	;8
	Viz	28,26,38,22,-125,4	;9
	Viz	22,20,21,78,0,-100	;10
	Viz	34,35,37,-78,0,-100	;11
	Viz	10,9,12,112,56,-19	;12
	Viz	14,12,8,87,-87,29	;13
	Viz	6,8,2,-46,-91,76	;14
	Viz	0,2,9,-81,81,54	;15
	Viz	42,44,50,-94,47,71	;16
	Viz	51,50,54,90,90,0	;17
	Viz	56,54,48,57,-114,0	;18
	Viz	46,48,44,-79,-79,60	;19
	Viz	31,32,23,-111,59,18	;20
	Viz	24,23,29,-114,51,24	;21
	Viz	32,31,33,116,49,15	;22
	Viz	35,33,30,111,61,13	;23
	Viz	19,16,17,0,-127,0	;24
	Viz	17,16,15,0,-127,0	;25
	Viz	27,25,22,-108,-59,-30	;26
	Viz	22,25,26,-117,-38,32	;27
	Viz	19,18,16,-10,126,12	;28
	Viz	16,18,15,-11,126,5	;29
	Viz	27,34,25,114,-47,-29	;30
	Viz	25,34,26,122,-27,23	;31
	Viz	38,39,41,0,-127,0	;32
	Viz	41,39,43,0,-127,0	;33
	Viz	38,41,40,10,126,12	;34
	Viz	40,41,43,11,126,5	;35
	Viz	6,0,1,-90,-90,-3	;36
	Viz	15,14,6,90,-90,-3	;37
	Viz	11,15,7,0,0,-127	;38
	Viz	10,11,1,-90,90,3	;39
	Viz	50,44,45,-114,57,0	;40
	Viz	44,48,47,-90,-90,-3	;41
	Viz	47,48,54,57,-114,-4	;42
	Viz	43,42,51,-90,90,0	;43
	Viz	46,52,57,90,-90,0	;44
	Viz	43,52,46,-90,-90,-7	;45
	Viz	53,57,52,0,0,-127	;46
	Viz	49,55,54,57,114,0	;47
	Viz	9,5,13,57,113,6	;48
	Viz	12,13,4,90,-90,0	;49
	Viz	4,3,2,-114,-57,0	;50
	Viz	51,56,57,90,90,7	;51
	Viz	5,9,2,-90,90,0	;52
	Viz	15,11,10,90,90,3	;53
	Viz	17,15,18,57,0,-114	;54
	Viz	32,35,23,-6,-65,-109	;55
	Viz	39,40,43,-53,52,-103	;56
	Viz	27,22,34,0,127,4	;57
	Viz	5,3,4,0,0,127	;58
	Viz	49,45,47,-68,-34,102	;59
	Viz	18,23,21,-30,123,-6	;60
	Viz	20,22,19,-39,-121,-5	;61
	Viz	36,38,34,37,-121,-8	;62
	Viz	37,35,40,31,123,-6	;63
	Viz	20,17,18,-52,0,-116	;64
	Viz	36,37,40,62,0,-111	;65
	Viz	19,17,20,0,-127,0	;66
	Viz	38,36,39,0,-127,0	;67
	Viz	24,30,31,-107,63,27	;68
	Viz	31,30,33,116,49,14	;69
	Viz	35,34,22,-7,0,-127	;70
	BSPInit	MORW_EBSP
	BSP	8,MORW_f1,.bsp2
	BSP	9,MORW_f3,.bsp4
	BSPE	MORW_f5
.bsp4	BSP	34,MORW_f6,.bsp7
	BSP	35,MORW_f8,.bsp9
	BSPE	MORW_f10
.bsp9	BSPE	MORW_f11
.bsp7	BSPE	MORW_f12
.bsp2	BSP	28,MORW_f13,.bsp14
	BSP	27,MORW_f15,.bsp16
	BSPE	MORW_f17
.bsp16	BSPE	MORW_f18
.bsp14	BSP	29,MORW_f19,.bsp20
	BSPE	MORW_f21
.bsp20	BSPE	MORW_f22

MORW_f1	Faces
	Face3	0,8,-21,-125,4,28,19,26
	FendQ
MORW_f3	Faces
	Face3	0,9,22,-125,4,28,26,38
	FendQ
MORW_f5	Faces
	Face3	7,57,0,127,4,27,22,34
	Face3	0,0,-53,113,23,28,29,19
	Face3	0,1,-42,119,11,19,29,23
	Face3	0,2,-37,120,17,19,23,18
	Face3	0,5,56,112,22,28,38,29
	Face3	0,6,41,120,8,29,38,35
	Face3	0,7,35,121,15,40,35,38
	Face4	0,10,78,0,-100,22,20,21,23
	Face4	0,11,-78,0,-100,34,35,37,36
	Face4	7,20,-111,59,18,31,32,23,24
	Face4	7,21,-114,51,24,24,23,29,30
	Face4	7,22,116,49,15,32,31,33,35
	Face4	7,23,111,61,13,35,33,30,29
	Face3	7,55,-6,-65,-109,32,35,23
	Face3	7,60,-30,123,-6,18,23,21
	Face3	7,63,31,123,-6,37,35,40
	Face4	7,64,-52,0,-116,20,17,18,21
	Face4	7,65,62,0,-111,36,37,40,39
	Face3	7,66,0,-127,0,19,17,20
	Face3	7,67,0,-127,0,38,36,39
	Face3	5,68,-107,63,27,24,30,31
	Face3	5,69,116,49,14,31,30,33
	Face4	44,70,-7,0,-127,35,34,22,23
	Face3	7,61,-39,-121,-5,20,22,19
	Face3	7,62,37,-121,-8,36,38,34
	FendQ
MORW_f6	Faces
	Face3	7,34,10,126,12,38,41,40
	FendQ
MORW_f8	Faces
	Face3	7,35,11,126,5,40,41,43
	FendQ
MORW_f10	Faces
	Face3	0,4,24,-124,8,34,38,26
	Face3	7,32,0,-127,0,38,39,41
	Face3	7,33,0,-127,0,41,39,43
	Face4	7,45,-90,-90,-7,43,52,46,42
	Face4	7,19,-79,-79,60,46,48,44,42
	Face4	7,18,57,-114,0,56,54,48,46
	Face4	7,44,90,-90,0,46,52,57,56
	Face3	7,56,-53,52,-103,39,40,43
	FendQ
MORW_f11	Faces
	Face4	7,46,0,0,-127,53,57,52,43
	FendQ
MORW_f12	Faces
	Face4	7,16,-94,47,71,42,44,50,51
	Face4	7,17,90,90,0,51,50,54,56
	Face4	7,43,-90,90,0,43,42,51,53
	Face4	7,51,90,90,7,51,56,57,53
	Face4	7,40,-114,57,0,50,44,45,49
	Face4	7,41,-90,-90,-3,44,48,47,45
	Face4	7,42,57,-114,-4,47,48,54,55
	Face4	7,47,57,114,0,49,55,54,50
	Face4	7,59,-68,-34,102,49,45,47,55
	FendQ
MORW_f13	Faces
	Face3	7,28,-10,126,12,19,18,16
	FendQ
MORW_f15	Faces
	Face3	7,27,-117,-38,32,22,25,26
	FendQ
MORW_f17	Faces
	Face3	7,26,-108,-59,-30,27,25,22
	Face3	7,30,114,-47,-29,27,34,25
	Face3	7,31,122,-27,23,25,34,26
	FendQ
MORW_f18	Faces
	Face4	7,37,90,-90,-3,15,14,6,7
	Face3	0,3,-25,-124,10,19,22,26
	Face4	7,13,87,-87,29,14,12,8,6
	Face3	7,24,0,-127,0,19,16,17
	Face3	7,25,0,-127,0,17,16,15
	Face3	7,54,57,0,-114,17,15,18
	Face4	7,36,-90,-90,-3,6,0,1,7
	Face4	7,38,0,0,-127,11,15,7,1
	FendQ
MORW_f19	Faces
	Face3	7,29,-11,126,5,16,18,15
	FendQ
MORW_f21	Faces
	Face4	7,14,-46,-91,76,6,8,2,0
	FendQ
MORW_f22	Faces
	Face4	7,15,-81,81,54,0,2,9,10
	Face4	7,12,112,56,-19,10,9,12,14
	Face4	7,39,-90,90,3,10,11,1,0
	Face4	7,48,57,113,6,9,5,13,12
	Face4	7,49,90,-90,0,12,13,4,8
	Face4	7,50,-114,-57,0,4,3,2,8
	Face4	7,52,-90,90,0,5,9,2,3
	Face4	7,53,90,90,3,15,11,10,14
	Face4	7,58,0,0,127,5,3,4,13
	FendQ
MORW_EBSP
	EndShape

	endc




;--Shape file ----- C:\BLACKRO.OBJ ----
	ifne	DO_HDR

BLACKRO
	ShapeHdr	BLACKRO_P,0,BLACKRO_F,0,0,0,0,0,playerB_col,125,97,144,160,id_0_c,0,<BLACKRO>
	elseif
BLACKRO_P
	Pointsw	7
	pwd2	-10,23,-36	;0
	pwd2	-5,40,-40	;1
	pwd2	5,39,-41	;2
	pwd2	10,23,-36	;3
	pwd2	-6,25,-4	;4
	pwd2	-9,24,-31	;5
	pwd2	-111,97,-63	;6
	PointsXw	1
	pwd2	-8,23,-8	;7
	Pointsw	60
	pwd2	112,95,-64	;9
	pwd2	7,24,-4	;10
	pwd2	9,24,-32	;11
	pwd2	-125,-26,58	;12
	pwd2	-23,-10,-1	;13
	pwd2	-35,0,17	;14
	pwd2	-20,-8,-25	;15
	pwd2	0,81,-65	;16
	pwd2	3,-25,-44	;17
	pwd2	0,-28,-6	;18
	pwd2	-1,-76,-86	;19
	pwd2	-4,-25,-44	;20
	pwd2	125,-28,57	;21
	pwd2	35,-1,17	;22
	pwd2	23,-11,-1	;23
	pwd2	20,-9,-25	;24
	pwd2	-23,9,0	;25
	pwd2	-21,-23,-26	;26
	pwd2	-23,-3,44	;27
	pwd2	-3,-2,91	;28
	pwd2	-3,0,91	;29
	pwd2	-23,4,45	;30
	pwd2	23,-3,44	;31
	pwd2	23,3,45	;32
	pwd2	4,0,91	;33
	pwd2	4,-2,91	;34
	pwd2	20,-23,-26	;35
	pwd2	23,9,0	;36
	pwd2	-21,-17,-43	;37
	pwd2	-10,19,19	;38
	pwd2	0,26,20	;39
	pwd2	0,32,-3	;40
	pwd2	20,-18,-43	;41
	pwd2	10,18,19	;42
	pwd2	1,1,144	;43
	pwd2	-9,7,11	;44
	pwd2	-6,-10,10	;45
	pwd2	10,7,11	;46
	pwd2	6,-10,10	;47
	pwd2	-21,-25,-43	;48
	pwd2	-11,-24,-58	;49
	pwd2	-11,-23,-33	;50
	pwd2	-11,-8,-32	;51
	pwd2	-11,-17,-58	;52
	pwd2	10,-23,-33	;53
	pwd2	10,-24,-58	;54
	pwd2	20,-25,-44	;55
	pwd2	10,-8,-32	;56
	pwd2	10,-17,-58	;57
	pwd2	6,-10,10	;58
	pwd2	10,8,11	;59
	pwd2	7,-9,49	;60
	pwd2	4,-20,9	;61
	pwd2	-9,8,11	;62
	pwd2	-6,-10,10	;63
	pwd2	-4,-20,9	;64
	pwd2	-6,-9,49	;65
	pwd2	-10,23,-36	;66
	pwd2	0,-11,75	;67
	pwd2	0,-20,33	;68

	EndPoints
BLACKRO_F
	Vizis	90
	Viz	66,1,2,15,25,-124	;0
	Viz	4,5,6,-76,-101,-12	;1
	Viz	7,6,5,74,103,-1	;2
	Viz	8,9,10,-83,87,42	;3
	Viz	10,9,11,73,-104,-5	;4
	Viz	8,11,9,-72,105,-1	;5
	Viz	12,13,14,-59,76,82	;6
	Viz	14,15,12,50,-110,-39	;7
	Viz	1,16,2,17,64,-108	;8
	Viz	7,4,6,83,62,73	;9
	Viz	17,18,19,-126,17,9	;10
	Viz	19,18,20,125,17,12	;11
	Viz	21,22,23,59,76,82	;12
	Viz	22,21,24,-50,-110,-39	;13
	Viz	15,25,13,-126,1,16	;14
	Viz	27,28,29,117,0,50	;15
	Viz	31,32,33,-117,8,48	;16
	Viz	24,35,23,126,1,16	;17
	Viz	30,14,27,116,7,51	;18
	Viz	37,12,15,56,-103,-48	;19
	Viz	38,39,40,73,-101,26	;20
	Viz	12,26,13,-49,102,57	;21
	Viz	32,31,22,-116,8,51	;22
	Viz	41,24,21,-58,-101,-51	;23
	Viz	21,23,35,49,103,55	;24
	Viz	40,39,42,-79,-96,25	;25
	Viz	39,43,42,-80,-97,19	;26
	Viz	38,43,39,73,-102,21	;27
	Viz	13,44,45,-68,-18,-106	;28
	Viz	23,46,36,82,-5,-97	;29
	Viz	13,25,44,-79,-5,-99	;30
	Viz	23,47,46,67,-22,-106	;31
	Viz	29,44,30,0,-127,11	;32
	Viz	30,44,25,-7,-126,14	;33
	Viz	13,45,27,13,125,19	;34
	Viz	27,45,28,25,124,13	;35
	Viz	23,31,47,-7,125,22	;36
	Viz	47,31,34,-25,124,13	;37
	Viz	26,48,49,-34,122,14	;38
	Viz	15,26,50,-73,12,104	;39
	Viz	48,37,52,106,0,-70	;40
	Viz	50,49,52,-127,0,0	;41
	Viz	37,15,51,40,-109,-52	;42
	Viz	35,53,54,4,127,5	;43
	Viz	24,56,53,73,7,104	;44
	Viz	55,54,57,-103,0,-74	;45
	Viz	53,56,57,127,0,0	;46
	Viz	41,57,56,-64,-104,-36	;47
	Viz	58,59,60,-124,27,-2	;48
	Viz	62,63,64,-101,-13,76	;49
	Viz	58,17,20,0,-122,-34	;50
	Viz	3,59,62,0,121,-39	;51
	Viz	18,61,64,0,112,60	;52
	Viz	59,3,42,-127,0,0	;53
	Viz	48,12,37,88,0,-91	;54
	Viz	62,65,38,126,14,4	;55
	Viz	63,20,64,124,25,2	;56
	Viz	12,48,26,-16,125,15	;57
	Viz	27,14,13,65,108,17	;58
	Viz	58,61,17,-125,25,0	;59
	Viz	14,25,15,106,-51,-48	;60
	Viz	30,25,14,64,-109,12	;61
	Viz	32,46,33,-8,-126,12	;62
	Viz	40,42,3,-97,-81,7	;63
	Viz	55,41,21,-88,-13,-91	;64
	Viz	21,35,55,17,125,14	;65
	Viz	31,23,22,-62,109,19	;66
	Viz	2,40,3,-117,-44,23	;67
	Viz	32,36,46,5,-126,17	;68
	Viz	22,24,36,-107,-48,-48	;69
	Viz	32,22,36,-68,-106,14	;70
	Viz	59,42,60,-127,6,7	;71
	Viz	62,38,66,127,11,-1	;72
	Viz	66,40,1,118,-40,25	;73
	Viz	66,38,40,95,-84,6	;74
	Viz	17,61,18,-111,62,4	;75
	Viz	20,18,64,108,66,6	;76
	Viz	43,65,67,95,82,16	;77
	Viz	42,43,60,-127,5,8	;78
	Viz	65,43,38,126,7,10	;79
	Viz	60,43,67,-84,94,15	;80
	Viz	17,19,20,0,-81,-98	;81
	Viz	2,16,40,-122,-27,21	;82
	Viz	40,16,1,122,-29,23	;83
	Viz	68,60,67,-92,85,18	;84
	Viz	68,67,65,99,78,17	;85
	Viz	68,61,60,-95,83,16	;86
	Viz	64,68,65,99,78,16	;87
	Viz	64,61,68,0,127,0	;88
	Viz	59,58,63,0,-7,-127	;89
	BSPInit	BLACKRO_EBSP
	BSP	78,BLACKRO_f1,.bsp2
	BSP	57,BLACKRO_f3,.bsp4
	BSP	26,BLACKRO_f5,.bsp6
	BSPE	BLACKRO_f7
.bsp6	BSPE	BLACKRO_f8
.bsp4	BSP	11,BLACKRO_f9,.bsp10
	BSPE	BLACKRO_f11
.bsp10	BSPE	BLACKRO_f12
.bsp2	BSP	68,BLACKRO_f13,.bsp14
	BSPE	BLACKRO_f15
.bsp14	BSPE	BLACKRO_f16

BLACKRO_f1	Faces
	Face3	5,78,-127,5,8,42,43,60
	FendQ
BLACKRO_f3	Faces
	Face3	5,57,-16,125,15,12,48,26
	FendQ
BLACKRO_f5	Faces
	Face3	6,26,-80,-97,19,39,43,42
	FendQ
BLACKRO_f7	Faces
	Face4	5,46,127,0,0,53,56,57,54
	Face4	0,0,15,25,-124,66,1,2,3
	Face3	0,1,-76,-101,-12,4,5,6
	Face3	0,2,74,103,-1,7,6,5
	Face3	0,6,-59,76,82,12,13,14
	Face3	0,7,50,-110,-39,14,15,12
	Face3	0,9,83,62,73,7,4,6
	Face4	6,14,-126,1,16,15,25,13,26
	Face4	6,15,117,0,50,27,28,29,30
	Face3	6,18,116,7,51,30,14,27
	Face3	6,19,56,-103,-48,37,12,15
	Face3	6,20,73,-101,26,38,39,40
	Face3	6,21,-49,102,57,12,26,13
	Face3	6,25,-79,-96,25,40,39,42
	Face3	6,27,73,-102,21,38,43,39
	Face3	5,28,-68,-18,-106,13,44,45
	Face3	5,30,-79,-5,-99,13,25,44
	Face3	5,32,0,-127,11,29,44,30
	Face3	5,33,-7,-126,14,30,44,25
	Face3	5,34,13,125,19,13,45,27
	Face3	5,35,25,124,13,27,45,28
	Face4	5,38,-34,122,14,26,48,49,50
	Face4	5,39,-73,12,104,15,26,50,51
	Face4	5,40,106,0,-70,48,37,52,49
	Face4	5,41,-127,0,0,50,49,52,51
	Face4	5,42,40,-109,-52,37,15,51,52
	Face4	5,49,-101,-13,76,62,63,64,65
	Face4	5,50,0,-122,-34,58,17,20,63
	Face4	5,51,0,121,-39,3,59,62,66
	Face3	5,54,88,0,-91,48,12,37
	Face3	5,55,126,14,4,62,65,38
	Face3	5,56,124,25,2,63,20,64
	Face3	5,58,65,108,17,27,14,13
	Face3	5,60,106,-51,-48,14,25,15
	Face3	5,61,64,-109,12,30,25,14
	Face3	5,63,-97,-81,7,40,42,3
	Face3	5,72,127,11,-1,62,38,66
	Face3	5,73,118,-40,25,66,40,1
	Face3	5,74,95,-84,6,66,38,40
	Face3	5,77,95,82,16,43,65,67
	Face3	5,79,126,7,10,65,43,38
	Face4	42,89,0,-7,-127,59,58,63,62
	Face4	5,48,-124,27,-2,58,59,60,61
	Face3	5,53,-127,0,0,59,3,42
	Face3	5,71,-127,6,7,59,42,60
	Face3	5,80,-84,94,15,60,43,67
	FendQ
BLACKRO_f8	Faces
	Face3	5,67,-117,-44,23,2,40,3
	Face3	0,8,17,64,-108,1,16,2
	Face3	5,82,-122,-27,21,2,16,40
	Face3	5,83,122,-29,23,40,16,1
	FendQ
BLACKRO_f9	Faces
	Face3	0,11,125,17,12,19,18,20
	FendQ
BLACKRO_f11	Faces
	Face3	5,59,-125,25,0,58,61,17
	Face3	5,75,-111,62,4,17,61,18
	Face3	7,86,-95,83,16,68,61,60
	Face3	0,10,-126,17,9,17,18,19
	Face3	5,81,0,-81,-98,17,19,20
	FendQ
BLACKRO_f12	Faces
	Face3	5,52,0,112,60,18,61,64
	Face3	7,88,0,127,0,64,61,68
	Face3	5,76,108,66,6,20,18,64
	Face3	7,84,-92,85,18,68,60,67
	Face3	7,85,99,78,17,68,67,65
	Face3	7,87,99,78,16,64,68,65
	FendQ
BLACKRO_f13	Faces
	Face3	5,68,5,-126,17,32,36,46
	FendQ
BLACKRO_f15	Faces
	Face3	0,12,59,76,82,21,22,23
	Face3	0,13,-50,-110,-39,22,21,24
	Face4	6,17,126,1,16,24,35,23,36
	Face3	6,22,-116,8,51,32,31,22
	Face3	6,23,-58,-101,-51,41,24,21
	Face3	6,24,49,103,55,21,23,35
	Face3	5,29,82,-5,-97,23,46,36
	Face3	5,31,67,-22,-106,23,47,46
	Face3	5,36,-7,125,22,23,31,47
	Face3	5,37,-25,124,13,47,31,34
	Face4	5,43,4,127,5,35,53,54,55
	Face4	5,44,73,7,104,24,56,53,35
	Face4	5,45,-103,0,-74,55,54,57,41
	Face4	5,47,-64,-104,-36,41,57,56,24
	Face3	5,66,-62,109,19,31,23,22
	Face3	5,69,-107,-48,-48,22,24,36
	Face3	5,70,-68,-106,14,32,22,36
	Face3	5,64,-88,-13,-91,55,41,21
	Face3	5,65,17,125,14,21,35,55
	FendQ
BLACKRO_f16	Faces
	Face3	0,3,-83,87,42,8,9,10
	Face3	0,5,-72,105,-1,8,11,9
	Face3	5,62,-8,-126,12,32,46,33
	Face4	6,16,-117,8,48,31,32,33,34
	Face3	0,4,73,-104,-5,10,9,11
	FendQ
BLACKRO_EBSP
	EndShape

	endc

;--Shape file ----- C:\BLACKRO.OBJ ----
	ifne	DO_HDR
BLACKROSE
	ShapeHdr	BLACKRO_P2,0,BLACKRO_F,0,0,0,0,1,0,125,97,144,160,id_0_c,0,<BLACKROSE>
	elseif
BLACKRO_P2
	Pointsw	7
	pw	-10,23,-36	;0
	pw	-5,40,-40	;1
	pw	5,39,-41	;2
	pw	10,23,-36	;3
	pw	-6,25,-4	;4
	pw	-9,24,-31	;5
	pw	-111,97,-63	;6
	PointsXw	1
	pw	-8,23,-8	;7
	Pointsw	60
	pw	112,95,-64	;9
	pw	7,24,-4	;10
	pw	9,24,-32	;11
	pw	-125,-26,58	;12
	pw	-23,-10,-1	;13
	pw	-35,0,17	;14
	pw	-20,-8,-25	;15
	pw	0,81,-65	;16
	pw	3,-25,-44	;17
	pw	0,-28,-6	;18
	pw	-1,-76,-86	;19
	pw	-4,-25,-44	;20
	pw	125,-28,57	;21
	pw	35,-1,17	;22
	pw	23,-11,-1	;23
	pw	20,-9,-25	;24
	pw	-23,9,0	;25
	pw	-21,-23,-26	;26
	pw	-23,-3,44	;27
	pw	-3,-2,91	;28
	pw	-3,0,91	;29
	pw	-23,4,45	;30
	pw	23,-3,44	;31
	pw	23,3,45	;32
	pw	4,0,91	;33
	pw	4,-2,91	;34
	pw	20,-23,-26	;35
	pw	23,9,0	;36
	pw	-21,-17,-43	;37
	pw	-10,19,19	;38
	pw	0,26,20	;39
	pw	0,32,-3	;40
	pw	20,-18,-43	;41
	pw	10,18,19	;42
	pw	1,1,144	;43
	pw	-9,7,11	;44
	pw	-6,-10,10	;45
	pw	10,7,11	;46
	pw	6,-10,10	;47
	pw	-21,-25,-43	;48
	pw	-11,-24,-58	;49
	pw	-11,-23,-33	;50
	pw	-11,-8,-32	;51
	pw	-11,-17,-58	;52
	pw	10,-23,-33	;53
	pw	10,-24,-58	;54
	pw	20,-25,-44	;55
	pw	10,-8,-32	;56
	pw	10,-17,-58	;57
	pw	6,-10,10	;58
	pw	10,8,11	;59
	pw	7,-9,49	;60
	pw	4,-20,9	;61
	pw	-9,8,11	;62
	pw	-6,-10,10	;63
	pw	-4,-20,9	;64
	pw	-6,-9,49	;65
	pw	-10,23,-36	;66
	pw	0,-11,75	;67
	pw	0,-20,33	;68

	EndPoints

	endc

;--Shape file ----- C:\3DG1\EX_SPL~1.OBJ ----
	ifne	DO_HDR

t_ex_1
	ShapeHdr	t_ex_1_P,0,t_ex_1_F,0,0,0,0,0,0,33,14,1,36,id_0_c,0,<t_ex_1>
	elseif
t_ex_1_P
	Pointsb	29
	pb	0,0,0	;0
	pb	-2,-14,1	;1
	pb	5,14,1	;2
	pb	16,-14,1	;3
	pb	13,-12,1	;4
	pb	0,-9,1	;5
	pb	9,-9,1	;6
	pb	22,13,1	;7
	pb	11,-2,1	;8
	pb	3,-2,1	;9
	pb	5,2,1	;10
	pb	13,2,1	;11
	pb	15,9,1	;12
	pb	3,9,1	;13
	pb	33,14,1	;14
	pb	-2,-14,-1	;15
	pb	5,14,-1	;16
	pb	16,-14,-1	;17
	pb	13,-12,-1	;18
	pb	0,-9,-1	;19
	pb	9,-9,-1	;20
	pb	22,13,-1	;21
	pb	11,-2,-1	;22
	pb	3,-2,-1	;23
	pb	5,2,-1	;24
	pb	13,2,-1	;25
	pb	15,9,-1	;26
	pb	3,9,-1	;27
	pb	33,14,-1	;28

	EndPoints
t_ex_1_F
	Vizis	1
	Viz	5,3,4,0,-79,99	;21

t_ex_1_f1	Faces
	Face2	40,-1,0,0,0,3,4
	Face2	40,-1,0,0,0,6,5
	Face2	40,-1,0,0,0,8,6
	Face2	40,-1,0,0,0,7,4
	Face2	40,-1,0,0,0,10,9
	Face2	40,-1,0,0,0,8,9
	Face2	40,-1,0,0,0,12,11
	Face2	40,-1,0,0,0,11,10
	Face2	40,-1,0,0,0,2,13
	Face2	40,-1,0,0,0,13,12
	Face2	40,-1,0,0,0,14,2
	Face2	40,-1,0,0,0,7,14
	Face2	40,-1,0,0,0,3,1
	Face2	40,-1,0,0,0,1,5
	Face2	40,-1,0,0,0,17,18
	Face2	40,-1,0,0,0,20,19
	Face2	40,-1,0,0,0,22,20
	Face2	40,-1,0,0,0,21,18
	Face2	40,-1,0,0,0,24,23
	Face2	40,-1,0,0,0,22,23
	Face2	40,-1,0,0,0,26,25
	Face2	40,-1,0,0,0,25,24
	Face2	40,-1,0,0,0,16,27
	Face2	40,-1,0,0,0,27,26
	Face2	40,-1,0,0,0,28,16
	Face2	40,-1,0,0,0,21,28
	Face2	40,-1,0,0,0,17,15
	Face2	40,-1,0,0,0,15,19
	Face2	40,-1,0,0,0,16,2
	Face2	40,-1,0,0,0,14,28
	Face2	40,-1,0,0,0,10,24
	Face2	40,-1,0,0,0,23,9
	Face2	40,-1,0,0,0,1,15
	Face2	40,-1,0,0,0,17,3
	Face2	40,-1,0,0,0,19,5
	Face2	40,-1,0,0,0,27,13
	Face2	40,-1,0,0,0,11,25
	Face2	40,-1,0,0,0,12,26
	Face2	40,-1,0,0,0,20,6
	Face2	40,-1,0,0,0,8,22
	Face2	40,-1,0,0,0,7,21
	Face2	40,-1,0,0,0,4,18
	Fend
	EndShape

	endc

;--Shape file ----- C:\3DG1\EX_SPL~2.OBJ ----
	ifne	DO_HDR

t_ex_2
	ShapeHdr	t_ex_2_P,0,t_ex_2_F,0,0,0,0,0,0,25,14,1,29,id_0_c,0,<t_ex_2>
	elseif
t_ex_2_P
	Pointsb	37
	pb	0,0,0	;0
	pb	-10,13,1	;1
	pb	-16,13,1	;2
	pb	-4,-13,1	;3
	pb	-10,-13,1	;4
	pb	-5,14,1	;5
	pb	-21,14,1	;6
	pb	-2,-14,1	;7
	pb	-12,-14,1	;8
	pb	-3,13,1	;9
	pb	2,13,1	;10
	pb	-20,-13,1	;11
	pb	-14,-13,1	;12
	pb	5,14,1	;13
	pb	-25,-14,1	;14
	pb	-12,-1,1	;15
	pb	-7,-1,1	;16
	pb	-8,4,1	;17
	pb	-11,-7,1	;18
	pb	-10,13,-1	;19
	pb	-16,13,-1	;20
	pb	-4,-13,-1	;21
	pb	-10,-13,-1	;22
	pb	-5,14,-1	;23
	pb	-21,14,-1	;24
	pb	-2,-14,-1	;25
	pb	-12,-14,-1	;26
	pb	-3,13,-1	;27
	pb	2,13,-1	;28
	pb	-20,-13,-1	;29
	pb	-14,-13,-1	;30
	pb	5,14,-1	;31
	pb	-25,-14,-1	;32
	pb	-12,-1,-1	;33
	pb	-7,-1,-1	;34
	pb	-8,4,-1	;35
	pb	-11,-7,-1	;36

	EndPoints
t_ex_2_F
	Vizis	1
	Viz	5,3,4,0,-79,99	;21

t_ex_2_f1	Faces
	Face2	40,-1,0,0,0,5,6
	Face2	40,-1,0,0,0,1,5
	Face2	40,-1,0,0,0,6,2
	Face2	40,-1,0,0,0,8,7
	Face2	40,-1,0,0,0,4,8
	Face2	40,-1,0,0,0,7,3
	Face2	40,-1,0,0,0,10,13
	Face2	40,-1,0,0,0,11,14
	Face2	40,-1,0,0,0,13,5
	Face2	40,-1,0,0,0,5,9
	Face2	40,-1,0,0,0,14,8
	Face2	40,-1,0,0,0,8,12
	Face2	40,-1,0,0,0,2,15
	Face2	40,-1,0,0,0,3,16
	Face2	40,-1,0,0,0,9,17
	Face2	40,-1,0,0,0,16,10
	Face2	40,-1,0,0,0,17,1
	Face2	40,-1,0,0,0,15,11
	Face2	40,-1,0,0,0,18,4
	Face2	40,-1,0,0,0,23,24
	Face2	40,-1,0,0,0,19,23
	Face2	40,-1,0,0,0,24,20
	Face2	40,-1,0,0,0,26,25
	Face2	40,-1,0,0,0,22,26
	Face2	40,-1,0,0,0,25,21
	Face2	40,-1,0,0,0,28,31
	Face2	40,-1,0,0,0,29,32
	Face2	40,-1,0,0,0,31,23
	Face2	40,-1,0,0,0,23,27
	Face2	40,-1,0,0,0,32,26
	Face2	40,-1,0,0,0,26,30
	Face2	40,-1,0,0,0,20,33
	Face2	40,-1,0,0,0,21,34
	Face2	40,-1,0,0,0,27,35
	Face2	40,-1,0,0,0,34,28
	Face2	40,-1,0,0,0,35,19
	Face2	40,-1,0,0,0,33,29
	Face2	40,-1,0,0,0,36,22
	Face2	40,-1,0,0,0,31,13
	Face2	40,-1,0,0,0,15,33
	Face2	40,-1,0,0,0,12,18
	Face2	40,-1,0,0,0,32,14
	Face2	40,-1,0,0,0,23,5
	Face2	40,-1,0,0,0,7,25
	Face2	40,-1,0,0,0,26,8
	Face2	40,-1,0,0,0,6,24
	Face2	40,-1,0,0,0,16,34
	Face2	40,-1,0,0,0,35,17
	Face2	40,-1,0,0,0,30,36
	Face2	40,-1,0,0,0,22,4
	Face2	40,-1,0,0,0,11,29
	Face2	40,-1,0,0,0,18,36
	Face2	40,-1,0,0,0,12,30
	Face2	40,-1,0,0,0,28,10
	Face2	40,-1,0,0,0,3,21
	Face2	40,-1,0,0,0,27,9
	Face2	40,-1,0,0,0,19,1
	Face2	40,-1,0,0,0,2,20
	Fend
	EndShape

	endc




