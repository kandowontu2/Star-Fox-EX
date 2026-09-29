pausetxt	TXT	4,<PAUSED>
pausetxtshad	TXT	9,<PAUSED>
totalscoretxt	TXT	14,<TOTAL SCORE>
scoretxt	TXT	14,<SCORE>
slashtxt	TXT	14,</>
percenttxt	TXT	14,<PERCENTAGE>
bonustxt	TXT	14,<BONUS 1 CREDIT>
percenttxt2	TXT	14,<%>
perfecttxt	TXT	14,<PERFECT//>
teamtxt	TXT	14,<SHIELD OF TEAMMATES>
frogtxt	TXT	14,<SLIPPY>
bunnytxt	TXT	14,<PEPPY>
cocktxt	TXT	14,<FALCO>
deadtxt	TXT	14,<IS DOWN>
stagetxt	TXT	14,<STAGE>
cesmintxt	TXT	2,<m>
cessectxt	TXT	2,<s>
scoretxt2	TXT	2,<score>

;-------------------------------------------------------------------

helpsnd	=	0
downsnd	=	1
othersnd	=	2

message	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum,") {english} %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	14,<{english}>
msgnum	=	msgnum+1
	ENDM


messageyellow	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	4,<{english}>
msgnum	=	msgnum+1
	ENDM

messageblue	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	8,<{english}>
msgnum	=	msgnum+1
	ENDM

messagered	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	3,<{english}>
msgnum	=	msgnum+1
	ENDM
;-------------------------------------------------------------------

msgnum	=	1

	fopen	msgs.txt

	include	gamemsgs.inc

	fclose	!
	
messages	include	msgs.txt




