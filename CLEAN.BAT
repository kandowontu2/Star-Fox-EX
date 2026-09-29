@echo off
set path=%path%;c:\bin
set sasmheap=14400

del SFES*.sfc
del *.bps
cd sfes

@echo on

make distclean

pause
exit