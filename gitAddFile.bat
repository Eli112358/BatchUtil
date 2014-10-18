@echo off
if "%~1"=="" goto help
if "%~1"=="/?" goto help
if not exist %1 goto fail
echo Adding file...
git add %1
echo Committing...
git commit -m "Added file %1"
echo Publishing...
git push
echo Complete.
exit /b
:fail
echo File not found.
:help
echo usage: %~dp0 path\to\file.ext
exit /b
