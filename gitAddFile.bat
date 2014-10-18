@echo off
setlocal
if "%~1"=="" goto help
if "%~1"=="/?" goto help
if not exist %1 goto fail
set message="Added file %~1"
if "%~2"=="" goto add
if "%~3"=="" goto add
if "%~2"=="-m" set message="%~3"
:add
echo Adding file...
git add %1
echo Committing...
git commit -m %message%
echo Publishing...
git push
echo Complete.
exit /b
:fail
echo File not found.
:help
echo usage: %0 path\to\file.ext
exit /b
