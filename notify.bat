@echo off
setlocal
for /f "tokens=3,* delims=.=" %%I in (notify.properties) do set "%%I=%%J"
if "%Wav_File%"=="" goto fail
if not exist %Wav_File% goto fail
swavplayer %Wav_File% /exit
exit /b
:fail
echo File not found.
exit /b
