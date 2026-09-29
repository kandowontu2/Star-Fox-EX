trainingmap	initlevel	training,mstarwipe_circle
	setvar.n	prttraining,1			;no messages
;-------------------------------------------------------------------------------
	mapwait	500
	start_65816
	lda	bgmspeed
	beq	.nochange333
	cmp	#1
	beq	.slow333
	cmp	#2
	beq	.fast333
.slow333
	startbgm	$f4
	bra	.nochange333
.fast333
	startbgm	$f5
.nochange333
	end_65816
;		mapwait	1000
;*************************      MSG TEST   *****************************
;	mapwait	3000
;
;freddytest	=	1
;	REPT	87
;
;;	start_65816
;;	lda	#-1
;;	sta	friends_meter
;;	end_65816
;;
;	run	"%tmapmsg%t",freddytest
;	mapwait	1000
;freddytest	=	freddytest+1
;
;	ENDR
;
	start_65816
	jmp_keyup	left,.nostart1
	end_65816
	mapwait	1000
	mapmsg	1
	mapwait	1000
	mapmsg	2
	mapwait	1000
	mapmsg	3
	mapwait	1000
	mapmsg	4
	mapwait	1000
	mapmsg	5
	mapwait	1000
	mapmsg	6
	mapwait	1000
	mapmsg	7
	mapwait	1000
	mapmsg	8
	mapwait	1000
	mapmsg	9
	mapwait	1000
	mapmsg	10
	mapwait	1000
	mapmsg	11
	mapwait	1000
	mapmsg	12
	mapwait	1000
	mapmsg	13
	mapwait	1000
	mapmsg	14
	mapwait	1000
	mapmsg	15
	mapwait	1000
	mapmsg	16
	mapwait	1000
	mapmsg	17
	mapwait	1000
	mapmsg	18
	mapwait	1000
	mapmsg	19
	mapwait	1000
	mapmsg	20
	mapwait	1000
	mapmsg	21
	mapwait	1000
	mapmsg	22
	mapwait	1000
	mapmsg	23
	mapwait	1000
	mapmsg	24
	mapwait	1000
	mapmsg	25
	mapwait	1000
	mapmsg	26
	mapwait	1000
	mapmsg	27
	mapwait	1000
	mapmsg	28
	mapwait	1000
	mapmsg	29
	mapwait	1000
	mapmsg	30
	mapwait	1000
	mapmsg	31
	mapwait	1000
	mapmsg	32
	mapwait	1000
	mapmsg	33
	mapwait	1000
	mapmsg	34
	mapwait	1000
	mapmsg	35
	mapwait	1000
	mapmsg	36
	mapwait	1000
	mapmsg	37
	mapwait	1000
	mapmsg	38
	mapwait	1000
	mapmsg	39
	mapwait	1000
	mapmsg	40
	mapwait	1000
	mapmsg	41
	mapwait	1000
	mapmsg	42
	mapwait	1000
	mapmsg	43
	mapwait	1000
	mapmsg	44
	mapwait	1000
	mapmsg	45
	mapwait	1000
	mapmsg	46
	mapwait	1000
	mapmsg	47
	mapwait	1000
	mapmsg	48
	mapwait	1000
	mapmsg	49
	mapwait	1000
	mapmsg	50
	mapwait	1000
	mapmsg	51
	mapwait	1000
	mapmsg	52
	mapwait	1000
	mapmsg	53
	mapwait	1000
	mapmsg	54
	mapwait	1000
	mapmsg	55
	mapwait	1000
	mapmsg	56
	mapwait	1000
	mapmsg	57
	mapwait	1000
	mapmsg	58
	mapwait	1000
	mapmsg	59
	mapwait	1000
	mapmsg	60
	mapwait	1000
	mapmsg	61
	mapwait	1000
	mapmsg	62
	mapwait	1000
	mapmsg	63
	mapwait	1000
	mapmsg	64
	mapwait	1000
	mapmsg	65
	mapwait	1000
	mapmsg	66
	mapwait	1000
	mapmsg	67
	mapwait	1000
	mapmsg	68
	mapwait	1000
	mapmsg	69
	mapwait	1000
	mapmsg	70
	mapwait	1000
	mapmsg	71
	mapwait	1000
	mapmsg	72
	mapwait	1000
	mapmsg	73
	mapwait	1000
	mapmsg	74
	mapwait	1000
	mapmsg	75
	mapwait	1000
	mapmsg	76
	mapwait	1000
	mapmsg	77
	mapwait	1000
	mapmsg	78
	mapwait	1000
	mapmsg	79
	mapwait	1000
	mapmsg	80
	mapwait	1000
	mapmsg	81
	mapwait	1000
	mapmsg	82
	mapwait	1000
	mapmsg	83
	mapwait	1000
	mapmsg	84
	mapwait	1000
	mapmsg	85
	mapwait	1000
	mapmsg	86
	mapwait	1000
	mapmsg	87
	mapwait	1000
	mapmsg	88
	mapwait	1000
	mapmsg	89
	mapwait	1000
	mapmsg	90
	mapwait	1000
	mapmsg	91
	mapwait	1000
	mapmsg	92
	mapwait	1000
	mapmsg	93
	mapwait	1000
	mapmsg	94
	mapwait	1000
	mapmsg	95
	mapwait	1000
	mapmsg	96
	mapwait	1000
	mapmsg	97
	mapwait	1000
	mapmsg	98
	mapwait	1000
	mapmsg	99
	mapwait	1000
	mapmsg	100
	mapwait	1000
	mapmsg	101
	mapwait	1000
	mapmsg	102
	mapwait	1000
	mapmsg	103
	mapwait	1000
	mapmsg	104
	mapwait	1000
	mapmsg	105
	mapwait	1000
	mapmsg	106
	mapwait	1000
	mapmsg	107
	mapwait	1000
	mapmsg	108
	mapwait	1000
	mapmsg	109
	mapwait	1000
	mapmsg	110
	mapwait	1000
	mapmsg	111
	mapwait	1000
	mapmsg	112
	mapwait	1000
	mapmsg	113
	mapwait	1000
	mapmsg	114
	mapwait	1000
	mapmsg	115
	mapwait	1000
	mapmsg	116
	mapwait	1000
	mapmsg	117
	mapwait	1000
	mapmsg	118
	mapwait	1000
	mapmsg	119
	mapwait	1000
	mapmsg	120
	mapwait	1000
	mapmsg	121
	mapwait	1000
	mapmsg	122
	mapwait	1000
	mapmsg	123
	mapwait	1000
	mapmsg	124
	mapwait	1000
	mapmsg	125
	mapwait	1000
	mapmsg	126
	mapwait	1000
	mapmsg	127
	mapwait	1000
	mapmsg	128
	mapwait	1000
	mapmsg	129
	mapwait	1000
	mapmsg	130
	mapwait	1000
	mapmsg	131
	mapwait	1000
	mapmsg	132
	mapwait	1000
	mapmsg	133
	mapwait	1000
	mapmsg	134
	mapwait	1000
	mapmsg	135
	mapwait	1000
	mapmsg	136
	mapwait	1000
	mapmsg	137
	mapwait	1000
	mapmsg	138
	mapwait	1000
	mapmsg	139
	mapwait	1000
	mapmsg	140
	mapwait	1000
	mapmsg	141
	mapwait	1000
	mapmsg	142
	mapwait	1000
	mapmsg	143
	mapwait	1000
	mapmsg	144
	mapwait	1000
	mapmsg	145
	mapwait	1000
	mapmsg	146
	mapwait	1000
	mapmsg	147
	mapwait	1000
	mapmsg	148
	mapwait	1000
	mapmsg	149
	mapwait	1000
	mapmsg	150
	mapwait	1000
	mapmsg	151
	mapwait	1000
	mapmsg	152
	mapwait	1000
	mapmsg	153
	mapwait	1000
	mapmsg	154
	mapwait	1000
	mapmsg	155
	mapwait	1000
	mapmsg	156
	mapwait	1000
	mapmsg	157
	mapwait	1000
	mapmsg	158
	mapwait	1000
	mapmsg	159
	mapwait	1000
	mapmsg	160
	mapwait	1000
	mapmsg	161
	mapwait	1000
	mapmsg	162
	mapwait	1000
	mapmsg	163
	mapwait	1000
	mapmsg	164
	mapwait	1000
	mapmsg	165
	mapwait	1000
	mapmsg	166
	mapwait	1000
	mapmsg	167
	mapwait	1000
	mapmsg	168
	mapwait	1000
	mapmsg	169
	mapwait	1000
	mapmsg	170
	mapwait	1000
	mapmsg	171
	mapwait	1000
	mapmsg	172
	mapwait	1000
	mapmsg	173
	mapwait	1000
	mapmsg	174
	mapwait	1000
	mapmsg	175
	mapwait	1000
	mapmsg	176
	mapwait	1000
	mapmsg	177
	mapwait	1000
	mapgoto	.dones
.nostart1
	end_65816
.dones
	start_65816
	jmp_keyup	RIGHT,.nostart2	
	end_65816
	IFEQ	0
	mapwait	1000
	mapmsg	177
	mapwait	1000
	mapmsg	178
	mapwait	1000
	mapmsg	179
	mapwait	1000
	mapmsg	180
	mapwait	1000
	mapmsg	181
	mapwait	1000
	mapmsg	182
	mapwait	1000
	mapmsg	183
	mapwait	1000
	mapmsg	184
	mapwait	1000
	mapmsg	185
	mapwait	1000
	mapmsg	186
	mapwait	1000
	mapmsg	187
	mapwait	1000
	mapmsg	188
	mapwait	1000
	mapmsg	189
	mapwait	1000
	mapmsg	190
	mapwait	1000
	mapmsg	191
	mapwait	1000
	mapmsg	192
	mapwait	1000
	mapmsg	193
	mapwait	1000
	mapmsg	194
	mapwait	1000
	mapmsg	195
	mapwait	1000
	mapmsg	196
	mapwait	1000
	mapmsg	197
	mapwait	1000
	mapmsg	198
	mapwait	1000
	mapmsg	199
	mapwait	1000
	mapmsg	200
	mapwait	1000
	mapmsg	201
	mapwait	1000
	mapmsg	202
	mapwait	1000
	mapmsg	203
	mapwait	1000
	mapmsg	204
	mapwait	1000
	mapmsg	205
	mapwait	1000
	mapmsg	206
	mapwait	1000
	mapmsg	207
	mapwait	1000
	mapmsg	208
	mapwait	1000
	mapmsg	209
	mapwait	1000
	mapmsg	210
	mapwait	1000
	mapmsg	211
	mapwait	1000
	mapmsg	212
	mapwait	1000
	mapmsg	213
	mapwait	1000
	mapmsg	214
	mapwait	1000
	mapmsg	215
	mapwait	1000
	mapmsg	216
	mapwait	1000
	mapmsg	217
	mapwait	1000
	mapmsg	218
	mapwait	1000
	mapmsg	219
	mapwait	1000
	mapmsg	220
	mapwait	1000
	mapmsg	221
	mapwait	1000
	mapmsg	222
	mapwait	1000
	mapmsg	223
	mapwait	1000
	mapmsg	224
	mapwait	1000
	mapmsg	225
	mapwait	1000
	mapmsg	226
	mapwait	1000
	mapmsg	227
	mapwait	1000
	mapmsg	228
	mapwait	1000
	mapmsg	229
	mapwait	1000
	mapmsg	230
	mapwait	1000
	mapmsg	231
	mapwait	1000
	mapmsg	232
	mapwait	1000
	mapmsg	233
	mapwait	1000
	mapmsg	234
	mapwait	1000
	mapmsg	235
	mapwait	1000
	mapmsg	236
	mapwait	1000
	mapmsg	237
	mapwait	1000
	mapmsg	238
	mapwait	1000
	mapmsg	239
	mapwait	1000
	mapmsg	240
	mapwait	1000
	mapmsg	241
	mapwait	1000
	mapmsg	242
	mapwait	1000
	mapmsg	243
	mapwait	1000
	mapmsg	244
	mapwait	1000
	mapmsg	245
	mapwait	1000
	mapmsg	246
	mapwait	1000
	mapmsg	247
	mapwait	1000
	mapmsg	248
	mapwait	1000
	mapmsg	249
	mapwait	1000
	mapmsg	250
	mapwait	1000
	mapmsg	251
	mapwait	1000
	mapmsg	252
	mapmsg2	1
	mapwait	1000	
	mapmsg2	2
	mapwait	1000	
	mapmsg2	3
	mapwait	1000	
	mapmsg2	4
	mapwait	1000	
	mapmsg2	5
	mapwait	1000	
	mapmsg2	6
	mapwait	1000	
	mapmsg2	7
	mapwait	1000	
	mapmsg2	8
	mapwait	1000	
	mapmsg2	9
	mapwait	1000	
	mapmsg2	10
	mapwait	1000	
	mapmsg2	11
	mapwait	1000	
	mapmsg2	12
	mapwait	1000	
	mapmsg2	13
	mapwait	1000	
	mapmsg2	14
	mapwait	1000	
	mapmsg2	15
	mapwait	1000	
	mapmsg2	16
	mapwait	1000	
	mapmsg2	17
	mapwait	1000	
	mapmsg2	18
	mapwait	1000	
	mapmsg2	19
	mapwait	1000	
	mapmsg2	20
	mapwait	1000	
	mapmsg2	21
	mapwait	1000	
	mapmsg2	22
	mapwait	1000	
	mapmsg2	23
	mapwait	1000	
	mapmsg2	24
	mapwait	1000	
	mapmsg2	25
	mapwait	1000	
	mapmsg2	26
	mapwait	1000	
	mapmsg2	27
	mapwait	1000	
	mapmsg2	28
	mapwait	1000	
	mapmsg2	29
	mapwait	1000	
	mapmsg2	30
	mapwait	1000	
	mapmsg2	31
	mapwait	1000	
	mapmsg2	32
	mapwait	1000	
	mapmsg2	33
	mapwait	1000	
	mapmsg2	34
	mapwait	1000	
	mapmsg2	35
	mapwait	1000	
	mapmsg2	36
	mapwait	1000	
	mapmsg2	37
	mapwait	1000	
	mapmsg2	38
	mapwait	1000	
	mapmsg2	39
	mapwait	1000	
	mapmsg2	40
	mapwait	1000	
	mapmsg2	41
	mapwait	1000	
	mapmsg2	42
	mapwait	1000	
	mapmsg2	43
	mapwait	1000	
	mapmsg2	44
	mapwait	1000	
	mapmsg2	45
	mapwait	1000	
	mapmsg2	46
	mapwait	1000	
	mapmsg2	47
	mapwait	1000	
	mapmsg2	48
	mapwait	1000	
	mapmsg2	49
	mapwait	1000	
	mapmsg2	50
	mapwait	1000	
	mapmsg2	51
	mapwait	1000	
	mapmsg2	52
	mapwait	1000	
	mapmsg2	53
	mapwait	1000	
	mapmsg2	54
	mapwait	1000	
	mapmsg2	55
	mapwait	1000	
	mapmsg2	56
	mapwait	1000	
	mapmsg2	57
	mapwait	1000	
	mapmsg2	58
	mapwait	1000	
	mapmsg2	59
	mapwait	1000	
	mapmsg2	60
	mapwait	1000
	mapmsg2	61
	mapwait	1000	
	mapmsg2	62
	mapwait	1000	
	mapmsg2	63
	mapwait	1000	
	mapmsg2	64
	mapwait	1000	
	mapmsg2	65
	mapwait	1000	
	mapmsg2	66
	mapwait	1000	
	mapmsg2	67
	mapwait	1000	
	mapmsg2	68
	mapwait	1000	
	mapmsg2	69
	mapwait	1000	
	mapmsg2	70
	mapwait	1000	
	mapmsg2	71
	mapwait	1000	
	ENDC
	mapgoto	.et0
.nostart2	
	jmp_keyup	B,.startitup
	end_65816
	mapwait	1000
	mapmsgx2	72
	mapwait	1000
	mapmsgx2	73
	mapwait	1000
	mapmsgx2	74
	mapwait	1000
	mapmsgx2	75
	mapwait	1000
	mapmsgx2	76
	mapwait	1000
	mapmsgx2	77
	mapwait	1000
	mapmsgx2	78
	mapwait	1000
	mapmsgx2	79
	mapwait	1000
	mapmsgx2	80
	mapwait	1000
	mapmsgx2	81
	mapwait	1000
	mapmsgx2	82
	mapwait	1000
	mapmsgx2	83
	mapwait	1000
	mapmsg2	84
	mapwait	1000
	mapmsgx2	85
	mapwait	1000
	mapmsgx2	86
	mapwait	1000
	mapmsgx2	87
	mapwait	1000
	mapmsgx2	88
	mapwait	1000
	mapmsgx2	89
	mapwait	1000
	mapmsgx2	90
	mapwait	1000
	mapmsgx2	91
	mapwait	1000
	mapmsgx2	92
	mapwait	1000
	mapmsgx2	93
	mapwait	1000
	mapmsgx2	94
	mapwait	1000
	mapmsgx2	95
	mapwait	1000
	mapmsgx2	96
	mapwait	1000
	mapmsgx2	97
	mapwait	1000
	mapmsgx2	98
	mapwait	1000
	mapmsgx2	99
	mapwait	1000
	mapmsgx2	100
	mapwait	1000
	mapmsgx2	101
	mapwait	1000
	mapmsgx2	102
	mapwait	1000
	mapmsgx2	103
	mapwait	1000
	mapmsgx2	104
	mapwait	1000
	mapmsgx2	105
	mapwait	1000
	mapmsgx2	106
	mapgoto	.et0
.startitup
	end_65816
.et0
;	mapwait	4000
;;	mapgoto	.et0
;***********************************************************************
	mapwait	1000
	mapmsgx2	72
;	mapwait	1000

	pathobj	0000,0000,0000,3000,zaco_5,trn_ck,10,10
	mapobj	0000,1200,0500,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-500,5000,big_meteor,big_meteor_istrat
;------
;	mapobj	0000,000,0000,3000,item_6,item6_istrat
;------
	mapobj	0000,1200,0250,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-350,5000,big_meteor,big_meteor_istrat
	mapobj	0000,1200,0400,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-200,5000,big_meteor,big_meteor_istrat
	mapobj	0000,1000,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1000,0000,5000,asteroid2,break_meteort_istrat

;	mapwait	1000
	mapmsgx2	73
	mapwait	1000


;	skillfly_init
;	skillfly_set 0000,-100,5000,70
	pathobj	0000,0000,-100,5000,trainingring,trn_ring,10,10          ; 1st ring
	mapobj	0000,1200,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1200,0000,5000,asteroid2,break_meteort_istrat
	mapobj	0000,000,0000,3000,item_7,item7_istrat
;	skillfly_set 0200,-150,5000,70
	pathobj	0000,0200,-150,5000,trainingring,trn_ring2,10,10         ; 2nd ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set 0000,-200,5000,70
	mapmsgx2	74
	mapobj	0000,000,0000,3000,item_4,item4_istrat
	pathobj	0000,0000,-200,5000,trainingring,trn_ring,10,10          ; 3rd ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set -200,-150,5000,70
	pathobj	0000,-200,-150,5000,trainingring,trn_ring2,10,10         ; 4th ring
	mapobj	0000,1000,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1000,0000,5000,asteroid2,break_meteort_istrat
	mapmsgx2	106

;	skillfly_set 0000,-100,5000,70
	pathobj	0000,0000,-100,5000,trainingring,trn_ring,10,10          ; 5th ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-200,5000,big_meteor,big_meteor_istrat
;	skillfly_set 200,-200,5000,70
	pathobj	0000,0200,-100,5000,trainingring,trn_ring2,10,10         ; 6th ring
	mapobj	0000,1200,0000,5000,asteroid1,break_meteort_istrat
	mapobj	1200,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set -330,-100,5000,70
	mapmsgx2	75

	pathobj	0000,-130,-100,5000,trainingring,trn_ring,10,10          ; 7th ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set 00,-100,5000,70
	pathobj	1000,000,-100,5000,trainingring,trn_ring2,10,10          ; 8th ring
	mapobj	0800,0000,-100,5000,item_5,item5_istrat
;	skillfly_set 00,-100,5000,70
	pathobj	1000,0000,-100,5000,trainingring,trn_ring,10,10          ; 9th ring
;	skillfly_set 0100,-100,5000,70
	pathobj	1000,0100,-100,5000,trainingring,trn_ring2,10,10         ; 10th ring
;	skillfly_set -200,-300,5000,70
	pathobj	0800,-150,-150,5000,trainingring,trn_ring,10,10          ; 11th ring
;	skillfly_set -100,-100,5000,70
	pathobj	0800,-100,-100,5000,trainingring,trn_ring2,10,10         ; 12th ring
;	skillfly_set 0000,-300,5000,70
	pathobj	0800,0000,-150,5000,trainingring,trn_ring,10,10          ; 13th ring
;	skillfly_set 0100,0000,5000,70
	pathobj	2000,0100,0000,5000,trainingring,trn_ring2,10,10         ; 14th ring
	mapobj	0300,-200,0000,5000,big_meteor,break_meteort_istrat
;	skillfly_set 0000,-100,5000,70
	pathobj	8000,0000,-100,5000,trainingring,trn_ring,10,10          ; 15th ring
;	eguchifly_goto .et
	mapmsgx2	76
	mapwait	1000
	mapwait	2000
	mapmsgx2	77
	mapwait	1000
	mapwait	2000
	mapmsgx2	78


;	pathobj	0000,0000,-570,-100,friendship_4,hentai_fal,10,10
;	pathobj	0000,100,-470,-100,friendship_4,hentai_fro,10,10
;	pathobj	1000,-100,-470,-100,friendship_4,hentai_rab,10,10

;	mapmsg	123
	mapobj	0000,-200,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	2000,0200,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-140,5000,pilon,groundpilon_ISTRAT
	mapobj	2000,0000,-210,5000,pilon,groundpilon_ISTRAT


	mapmsgx2	138
	
	pathobj	0000,0000,0000,3000,zaco_5,trn_ck,10,10
	mapobj	0000,1200,0500,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-500,5000,big_meteor,big_meteor_istrat
;------
;	mapobj	0000,000,0000,3000,item_6,item6_istrat
;------
	mapobj	0000,1200,0250,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-350,5000,big_meteor,big_meteor_istrat
	mapobj	0000,1200,0400,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-200,5000,big_meteor,big_meteor_istrat
	mapobj	0000,1000,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1000,0000,5000,asteroid2,break_meteort_istrat
.et
;	skillfly_init
;	skillfly_set 0000,-100,5000,70
	pathobj	0000,0000,-100,5000,trainingring,trn_ring,10,10          ; 1st ring
	mapobj	0000,1200,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1200,0000,5000,asteroid2,break_meteort_istrat
	mapobj	0000,000,0000,3000,item_7,item7_istrat
;	skillfly_set 0200,-150,5000,70
	mapmsgx2	139
	
	pathobj	0000,0200,-150,5000,trainingring,trn_ring2,10,10         ; 2nd ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set 0000,-200,5000,70
	mapobj	0000,000,0000,3000,item_4,item4_istrat
	pathobj	0000,0000,-200,5000,trainingring,trn_ring,10,10          ; 3rd ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set -200,-150,5000,70
	pathobj	0000,-200,-150,5000,trainingring,trn_ring2,10,10         ; 4th ring


	
	mapobj	0000,1000,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1000,0000,5000,asteroid2,break_meteort_istrat
;	skillfly_set 0000,-100,5000,70
	pathobj	0000,0000,-100,5000,trainingring,trn_ring,10,10          ; 5th ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-200,5000,big_meteor,big_meteor_istrat
;	skillfly_set 200,-200,5000,70
	pathobj	0000,0200,-100,5000,trainingring,trn_ring2,10,10         ; 6th ring
	mapobj	0000,1200,0000,5000,asteroid1,break_meteort_istrat
	mapobj	1200,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set -330,-100,5000,70
	mapmsgx2	140
	

	pathobj	0000,-130,-100,5000,trainingring,trn_ring,10,10          ; 7th ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set 00,-100,5000,70
	pathobj	1000,000,-100,5000,trainingring,trn_ring2,10,10          ; 8th ring
	mapobj	0800,0000,-100,5000,item_5,item5_istrat
;	skillfly_set 00,-100,5000,70
	pathobj	1000,0000,-100,5000,trainingring,trn_ring,10,10          ; 9th ring
;	skillfly_set 0100,-100,5000,70
	pathobj	1000,0100,-100,5000,trainingring,trn_ring2,10,10         ; 10th ring
;	skillfly_set -200,-300,5000,70
	pathobj	0800,-150,-150,5000,trainingring,trn_ring,10,10          ; 11th ring
;	skillfly_set -100,-100,5000,70
	pathobj	0800,-100,-100,5000,trainingring,trn_ring2,10,10         ; 12th ring
;	skillfly_set 0000,-300,5000,70
	pathobj	0800,0000,-150,5000,trainingring,trn_ring,10,10          ; 13th ring
;	skillfly_set 0100,0000,5000,70
	mapmsgx2	141
	pathobj	2000,0100,0000,5000,trainingring,trn_ring2,10,10         ; 14th ring
	mapobj	0300,-200,0000,5000,big_meteor,break_meteort_istrat
;	skillfly_set 0000,-100,5000,70
	pathobj	8000,0000,-100,5000,trainingring,trn_ring,10,10          ; 15th ring
	eguchifly_goto .et

;	pathobj	0000,0000,-570,-100,friendship_4,hentai_fal,10,10
;	pathobj	0000,100,-470,-100,friendship_4,hentai_fro,10,10
;	pathobj	1000,-100,-470,-100,friendship_4,hentai_rab,10,10

;	mapmsg	123
.etlop2
	mapobj	0000,1200,0050,5000,big_meteor,big_meteor_istrat
	mapobj	4200,-1200,-100,5000,big_meteor,big_meteor_istrat
	mapobj	0000,1200,0100,5000,asteroid2,break_meteort_istrat
	mapobj	4200,-1200,-150,5000,asteroid2,break_meteort_istrat

	maploop	.etlop2,4


	mapmsgx2	79
	
	mapobj	0000,-200,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	6000,0200,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-140,5000,pilon,groundpilon_ISTRAT
	mapobj	8000,0000,-210,5000,pilon,groundpilon_ISTRAT


.et2
;	skillfly_init
;	skillfly_set 0000,-100,5000,70
	pathobj	0000,0000,-100,5000,trainingring,trn_ring,10,10          ; 1st ring
	mapobj	0000,1200,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1200,0000,5000,asteroid2,break_meteort_istrat
	mapobj	0000,000,0000,3000,item_7,item7_istrat
;	skillfly_set 0200,-150,5000,70
;	mapmsgx2	139
	
	pathobj	0000,0200,-150,5000,trainingring,trn_ring2,10,10         ; 2nd ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set 0000,-200,5000,70
	mapobj	0000,000,0000,3000,item_4,item4_istrat
	pathobj	0000,0000,-200,5000,trainingring,trn_ring,10,10          ; 3rd ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set -200,-150,5000,70
	pathobj	0000,-200,-150,5000,trainingring,trn_ring2,10,10         ; 4th ring


	
	mapobj	0000,1000,0000,5000,asteroid2,break_meteort_istrat
	mapobj	2000,-1000,0000,5000,asteroid2,break_meteort_istrat
;	skillfly_set 0000,-100,5000,70
	pathobj	0000,0000,-100,5000,trainingring,trn_ring,10,10          ; 5th ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,-200,5000,big_meteor,big_meteor_istrat
;	skillfly_set 200,-200,5000,70
	pathobj	0000,0200,-100,5000,trainingring,trn_ring2,10,10         ; 6th ring
	mapobj	0000,1200,0000,5000,asteroid1,break_meteort_istrat
	mapobj	1200,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set -330,-100,5000,70
;	mapmsgx2	140
	

	pathobj	0000,-130,-100,5000,trainingring,trn_ring,10,10          ; 7th ring
	mapobj	0000,1200,0000,5000,big_meteor,big_meteor_istrat
	mapobj	2000,-1200,0000,5000,big_meteor,big_meteor_istrat
;	skillfly_set 00,-100,5000,70
	pathobj	1000,000,-100,5000,trainingring,trn_ring2,10,10          ; 8th ring
	mapobj	0800,0000,-100,5000,item_5,item5_istrat
;	skillfly_set 00,-100,5000,70
	pathobj	1000,0000,-100,5000,trainingring,trn_ring,10,10          ; 9th ring
;	skillfly_set 0100,-100,5000,70
	pathobj	1000,0100,-100,5000,trainingring,trn_ring2,10,10         ; 10th ring
;	skillfly_set -200,-300,5000,70
	pathobj	0800,-150,-150,5000,trainingring,trn_ring,10,10          ; 11th ring
;	skillfly_set -100,-100,5000,70
	pathobj	0800,-100,-100,5000,trainingring,trn_ring2,10,10         ; 12th ring
;	skillfly_set 0000,-300,5000,70
	pathobj	0800,0000,-150,5000,trainingring,trn_ring,10,10          ; 13th ring
;	skillfly_set 0100,0000,5000,70
;	mapmsgx2	141
	pathobj	2000,0100,0000,5000,trainingring,trn_ring2,10,10         ; 14th ring
	mapobj	0300,-200,0000,5000,big_meteor,break_meteort_istrat
;	skillfly_set 0000,-100,5000,70
	pathobj	8000,0000,-100,5000,trainingring,trn_ring,10,10          ; 15th ring
	eguchifly_goto .et2

;	pathobj	0000,0000,-570,-100,friendship_4,hentai_fal,10,10
;	pathobj	0000,100,-470,-100,friendship_4,hentai_fro,10,10
;	pathobj	1000,-100,-470,-100,friendship_4,hentai_rab,10,10

;	mapmsg	123
.etlop22
	mapobj	0000,1200,0050,5000,big_meteor,big_meteor_istrat
	mapobj	4200,-1200,-100,5000,big_meteor,big_meteor_istrat
	mapobj	0000,1200,0100,5000,asteroid2,break_meteort_istrat
	mapobj	4200,-1200,-150,5000,asteroid2,break_meteort_istrat

	maploop	.etlop22,4


;	mapmsgx2	79
	
	mapobj	0000,-200,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	6000,0200,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-70,5000,pilon,groundpilon_ISTRAT
	mapobj	0000,0000,-140,5000,pilon,groundpilon_ISTRAT
	mapobj	8000,0000,-210,5000,pilon,groundpilon_ISTRAT




	mapgoto	.et2



