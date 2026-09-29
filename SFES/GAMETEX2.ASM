;-------------------------------------------------------------------

helpsnd	=	0
downsnd	=	1
othersnd	=	2

message2	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum2,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	14,<{english}>
msgnum2	=	msgnum2+1
	ENDM

message2yellow	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum2,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	4,<{english}>
msgnum2	=	msgnum2+1
	ENDM

message2blue	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum2,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	8,<{english}>
msgnum2	=	msgnum2+1
	ENDM

message2red	MACRO	[person,english,sound]
	printf	"%tDW%t",*&WM,"%t; (",msgnum2,") {english} ** %n"
	DB	friend_{person}

	IFEQ	NARG-3
	db	othersnd
	ELSEIF
	DB	{sound}snd
	ENDC

	TXT	3,<{english}>
msgnum2	=	msgnum2+1
	ENDM

;-------------------------------------------------------------------

msgnum2	=	1

	fopen	msgs2.txt

	include	gamemsg2.inc

	fclose	!

messages2	include	msgs2.txt




