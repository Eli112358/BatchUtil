@echo off
if "%~1"=="" goto help
if "%~1"=="/?" goto help
:top
call %~dp0\notify.bat
timeout /t %1 >nul
goto top
:help
echo usage: %0 <seconds>
exit /b
