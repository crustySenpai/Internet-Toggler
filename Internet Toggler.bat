//Script made by crustySenpai

@echo off
cls
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:start
echo.
echo      ///////////////////////////////
echo     //                           //
echo    //  crustySenpai's Internet  //
echo   //          Toggler          //
echo  //                           //
echo ///////////////////////////////
echo.
echo Choose an Option:
echo.
echo 1 = Disable Internet Connection
echo 2 = Enable Internet Connection
echo.
set /p c=Select your Option: 
if "%c%" GTR "2" goto wrong
if "%c%"=="1" goto disable
if "%c%"=="2" goto enable
echo.
goto start
:disable
netsh interface set interface "Ethernet" disable
echo Internet Successfully Disabled
goto end
:enable
netsh interface set interface "Ethernet" enable
echo Internet Successfully Enabled
goto end
:wrong
echo Wrong Input!
set /p c=Select your Option: 
if "%c%" GTR "2" goto wrong
if "%c%"=="1" goto disable
if "%c%"=="2" goto enable
:end
pause
exit