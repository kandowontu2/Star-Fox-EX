@echo off
REM **************************************************************************
REM Backup SFES, date file name and put into \ZIPS
REM **************************************************************************

setlocal enabledelayedexpansion

REM Format the date
set "date=%DATE%"
REM replace slash with dash
set "date=!date:/=-!"
REM cut off day of the week
set "date=%date:~4%"

REM check if already backed up
if exist ZIPS\SFES-%date%*.* (
goto alreadybackedup
) else (
goto optaddext
)

:alreadybackedup
echo You have already backed up today, Again? (Y / N)
    set /p "bakagain="
    if /i "%bakagain%" neq "y" goto exit
	if /i "%bakagain%" equ "y" goto optaddext

:optaddext
REM Ask to add filename note
echo Do you want to add a note? (Y / N)
set /p "ask="

if /i "%ask%" equ "y" (
goto makeextension
)

REM Handling my own stupidity, because I keep typing the note into the y/n prompt smh
if /i "%ask%" equ "n" (
goto skipextension 
) else (
REM Ask for extension again until I realize why it's not working
goto optaddext 
)

:makeextension
REM Ask for filename note
echo Enter note:
set /p "fext="
goto setfnameext

REM set filename accordingly
:setfnameext
set "fname=ZIPS\SFES-%date%-%fext%.7z"
goto makezip

:skipextension
set "fname=ZIPS\SFES-%date%.7z"
goto makezip

REM Create archive
:makezip
7za a -y -r -mx=9 "%fname%" SFES\*

REM Check if the backup was successful
IF EXIST "%fname%" (
    echo Backup successful.
) ELSE (
    echo Backup failed.
)

pause

:exit
endlocal
