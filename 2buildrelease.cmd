@echo off

@call version.cmd

echo Building full release of SFEX %VER%...

mkdir ".\releases\Star Fox EX %VER%\"
mkdir ".\releases\Star Fox EX %VER%\SFEX %VER% USA Patches\"
mkdir ".\releases\Star Fox EX %VER%\SFEX %VER% PAL Patches\"
mkdir ".\releases\Star Fox EX %VER%\SFEX %VER% Japan Patches\"
mkdir ".\releases\Star Fox EX %VER%\Optional Add-on Patches\"
mkdir ".\built-roms\Star Fox EX %VER%\"

dosbox-x bldsg.bat

echo Making USA rev 0 patches...
flips --create --bps-delta ".\baseroms\Star Fox (USA).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% USA Patches\SFEX (USA) %VER%.bps"

echo Making USA rev 1 patches...
flips --create --bps-delta ".\baseroms\Star Fox (USA) (Rev 1).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% USA Patches\SFEX (USA) (Rev 1) %VER%.bps"

echo Making USA rev 2 patches...
flips --create --bps-delta ".\baseroms\Star Fox (USA) (Rev 2).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% USA Patches\SFEX (USA) (Rev 2) %VER%.bps"

echo Making JP rev 0 patches...
flips --create --bps-delta ".\baseroms\Star Fox (Japan).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% Japan Patches\SFEX (Japan) %VER%.bps"

echo Making JP rev 1 patches...
flips --create --bps-delta ".\baseroms\Star Fox (Japan) (Rev 1).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% Japan Patches\SFEX (Japan) (Rev 1) %VER%.bps"

echo Making PAL rev 0 patches...
flips --create --bps-delta ".\baseroms\Starwing (Europe).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% PAL Patches\SFEX (PAL) %VER%.bps"

echo Making PAL rev 1 patches...
flips --create --bps-delta ".\baseroms\Starwing (Europe) (Rev 1).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% PAL Patches\SFEX (PAL) (Rev 1) %VER%.bps"

echo Making PAL-G patches...
flips --create --bps-delta ".\baseroms\Starwing (Germany).sfc" sfes.sfc ".\releases\Star Fox EX %VER%\SFEX %VER% PAL Patches\SFEX (Germany) %VER%.bps"

echo Making Classic Mugshots patch...
flips --create --bps-delta "sfes.sfc" "sfes_alt.sfc" ".\releases\Star Fox EX %VER%\Optional Add-on Patches\SFEX %VER% Classic Mugshots.bps"

ren sfes.sfc "Star Fox EX %VER%.sfc"

copy "Star Fox EX %VER%.sfc" ".\built-roms\Star Fox EX %VER%\Star Fox EX %VER%.sfc"

copy "sfes_alt.sfc" ".\built-roms\Star Fox EX %VER%\Star Fox EX %VER% Classic Mugshots.sfc"

del *.sfc

rem copy .\release-data\*.* ".\releases\Star Fox EX %VER%\"
rem copy ".\release-data\Cover, Box Art, Labels, and Branding\*.*" ".\releases\Star Fox EX %VER%\Cover, Box Art, Labels, and Branding"
xcopy .\release-data\ ".\releases\Star Fox EX %VER%\" /s /e

7za a -y -r -mx=9 ".\releases\Star Fox EX %VER%.7z" ".\releases\Star Fox EX %VER%\*.*"

rmdir /s /q ".\releases\Star Fox EX %VER%"

echo All done!

pause