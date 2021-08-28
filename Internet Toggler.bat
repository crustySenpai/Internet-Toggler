@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:start
echo.
echo    ///////////////////////////////
echo   //  crustySenpai's Internet  //
echo  //          Toggler          //
echo ///////////////////////////////
goto echo

:echo
echo.
echo Choose an Option:
echo.
echo 1 = Disable Internet Connection
echo 2 = Enable Internet Connection
echo.
goto select

:select
set /p c=Select your Option: 
if "%c%"=="1" goto disable
if "%c%"=="2" goto enable
if "%c%" GTR "2" goto select
if "%c%" LSS "1" goto select

:disable
cls
echo.
echo Disable Internet...
netsh interface set interface "Ethernet" disable
cls
echo.
echo Internet Successfully Disabled
goto echo

:enable
cls
echo.
echo Enable Internet...
netsh interface set interface "Ethernet" enable
cls
echo.
echo Internet Successfully Enabled
goto echo

:end
exit