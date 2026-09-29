@echo off
set path=%path%;c:\bin
set sasmheap=14400

del SFES*.sfc
del *.bps
cd sfes

@echo on

make clean
make hardware=0 newface=1 > ..\build.log
copy sfes.sfc ..\sfes.sfc

make clean

pause
exit