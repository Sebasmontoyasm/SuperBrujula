@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\hypersonic\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\server\hsql-sample-database\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\ingres\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\ingres\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\postgresql\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\postgresql\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\openoffice\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\openoffice\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache-tomcat\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache-tomcat\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\resin\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\resin\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\jetty\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\jetty\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\subversion\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\lucene\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\lucene\scripts\ctl.bat START)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\third_application\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\third_application\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\third_application\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\lucene\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\subversion\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\subversion\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\jetty\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\jetty\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\hypersonic\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\resin\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\resin\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache-tomcat\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\openoffice\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\openoffice\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\apache\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\ingres\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\ingres\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\mysql\scripts\ctl.bat STOP)
if exist S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\postgresql\scripts\ctl.bat (start /MIN /B S:\Universidad\Practica\Super de Alimentos\SuperBrujula3\ServerApp\postgresql\scripts\ctl.bat STOP)

:end

