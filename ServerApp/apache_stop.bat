@echo off
cd /D %~dp0
cmd.exe /C start "" /MIN call "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\killprocess.bat" "httpd.exe"
if not exist apache\logs\httpd.pid GOTO exit
del apache\logs\httpd.pid

:exit
