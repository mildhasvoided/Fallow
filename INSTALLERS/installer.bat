@echo off

:main
timeout /t 2 >nul
echo ====================
timeout /t 2 >nul
echo       Fallow
timeout /t 2 >nul
echo ====================
timeout /t 6 >nul
goto select

:select
echo What would you like?
echo.
echo 1. Install game
echo 2. modding help
echo 3. clone repo
echo 4. Exit
echo.
set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" goto install
if "%choice%"=="2" goto help
if "%choice%"=="3" goto repo
if "%choice%"=="4" exit
goto select

:repo
start  "https://github.com/mildhasvoided/Fallow"
timeout /t 3 >nul
goto exit
:help
cls
echo pick one
echo 1. bepinex guide
echo 2. modlist
echo 3. go to repo
echo 4. Never mind
set /p choice=Enter your choice (1-4)
if 
if "%choice%"=="1" goto guide
if "%choice%"=="2" goto modlist
if "%choice%"=="3" goto repo
if "%choice%"=="4" goto main

:modlist
cls
start  "https://github.com/mildhasvoided/Fallow/tree/main/Mods/endorsed%20(community)"
timeout /t 6 >nul
goto exit


:guide
start  "https://github.com/mildhasvoided/Fallow/blob/main/Mods/README.md"
goto exit



:install
cls
echo ====================
timeout /t 2 >nul
echo        Fallow
timeout /t 2 >nul
echo ====================
start "" "https://"
timeout /t 2 >nul
powershell -Command "Expand-Archive -Path 'Fallow.zip' -DestinationPath 'Fallow' -Force"
timeout /t 4 >nul
start "" "Fallow"
timeout /t 10 >nul
goto exit




:exit
cls
timeout /t 3 >nul
echo lay to rest
timeout /t 2 >nul
exit
