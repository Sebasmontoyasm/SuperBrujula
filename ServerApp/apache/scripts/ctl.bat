@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\killprocess.bat" "httpd.exe"

if not exist "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\logs\httpd.pid" GOTO finish
del "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
