@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop


"S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\bin\mysqld" --defaults-file="S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\bin\my.ini" --standalone
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\killprocess.bat" "mysqld.exe"

if not exist "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\data\%computername%.pid" goto finish
echo Delete %computername%.pid ...
del "S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\data\%computername%.pid"
goto finish


:error
echo MySQL could not be started

:finish
exit
