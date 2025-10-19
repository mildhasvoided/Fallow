@echo off

:main
timeout /t 1 >nul
echo ====================
timeout /t 1 >nul
echo       Fallow
timeout /t 1 >nul
echo ====================
timeout /t 2 >nul
goto select

:select
echo What would you like?
echo.
echo 1. Install game
echo 2. modding help
echo 3. Exit
echo.
set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" goto install
if "%choice%"=="2" goto help
if "%choice%"=="3" goto exit
echo Invalid choice. Please try again.
echo.
pause
goto select

:help
cls
echo pick one
echo 1. bepinex guide
echo 2. modlist
echo 3. go to repo
echo 4. Never mind
echo.
set /p helpchoice=Enter your choice (1-4): 
if "%helpchoice%"=="1" goto guide
if "%helpchoice%"=="2" goto modlist
if "%helpchoice%"=="3" goto repo
if "%helpchoice%"=="4" goto main
goto help

:modlist
cls
start "" "https://github.com/mildhasvoided/Fallow/tree/main/Mods/endorsed%20(community)"
timeout /t 1 >nul
goto exit


:guide
start  "https://github.com/mildhasvoided/Fallow/blob/main/Mods/README.md"
goto exit



:install
cls
echo ====================
timeout /t 1 >nul
echo        Fallow
timeout /t 1 >nul
echo ====================
start "" "https://example.com"
timeout /t 1 >nul
powershell -Command "Expand-Archive -Path 'Fallow.zip' -DestinationPath 'Fallow' -Force"
timeout /t 2 >nul
start "" "Fallow"
timeout /t 3 >nul
goto exit




:exit
cls
echo.
echo lay to rest
echo.
echo Press any key to exit...
pause >nul
exit
