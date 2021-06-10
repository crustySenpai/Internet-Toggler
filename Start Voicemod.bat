//Script made by crustySenpai

@echo off
cls
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
ECHO Disable Internet Temporary...
netsh interface set interface "Ethernet" disable
ECHO Internet Successfully Disabled!
ECHO.
ECHO Starting Voicemod...
start "" "C:\Program Files\Voicemod Desktop\VoicemodDesktop.exe"
@ping -n 10 localhost> nul
ECHO.
ECHO Voicemod Successfully Started!
@ping -n 1 localhost> nul
ECHO.
ECHO ReEnable Internet...
netsh interface set interface "Ethernet" enable
ECHO Internet Successfully Enabled!
ECHO.
ECHO Done!
pause
close