@echo off
cd /D "%~dp0"
start /B elecap.exe --pin --width 230 --height 160 --title "Replay Buffer Controller" --url "file:///%~dp0controller.html"