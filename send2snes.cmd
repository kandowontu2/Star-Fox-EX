@echo off
echo UPLOADING TO SNES, DO NOT CLOSE THIS WINDOW
usb2snes-cli.exe --upload SFES.SFC --path ./SFES.SFC
usb2snes-cli.exe --boot ./SFES.SFC