@echo off

:main
cls
powershell -Command "Start-Sleep -Milliseconds 1"
echo ====================
powershell -Command "Start-Sleep -Milliseconds 1"
echo       Fallow
powershell -Command "Start-Sleep -Milliseconds 1"
echo ====================

powershell -Command "Start-Sleep -Milliseconds 6"
goto select

:select
echo What would you like?
echo.
echo 1. Install game
echo 2. modding help
echo 3. Exit
echo.
choice /c 123 /n /m "Enter your choice (1-3): "
if errorlevel 3 goto exit
if errorlevel 2 goto help
if errorlevel 1 goto install

:help
cls
echo pick one
echo 1. bepinex guide
echo 2. modlist
echo 3. go to repo
echo 4. Never mind
echo.
choice /c 1234 /n /m "Enter your choice (1-4): "
if errorlevel 4 goto main
if errorlevel 3 goto repo
if errorlevel 2 goto modlist
if errorlevel 1 goto guide

:modlist
cls
start "" "https://github.com/mildhasvoided/Fallow/tree/main/Mods"
timeout /t 1 >nul
goto help

:guide
start "" "https://github.com/mildhasvoided/Fallow/tree/main/Mods#1"
goto help

:repo
start "" "https://github.com/mildhasvoided/Fallow"
goto main

:install
cls
echo ====================
timeout /t 1 >nul
echo        Fallow
timeout /t 1 >nul
echo ====================
start "" "https://example.com"
timeout /t 1 >nul
powershell -Command "Expand-Archive -Path 'C:\Downloads\Fallow.zip' -DestinationPath 'C:\Downloads\Fallow' -Force"
timeout /t 2 >nul
start "" "C:\Downloads\Fallow"
timeout /t 3 >nul
goto exit




:exit
cls
echo.
echo lay to rest
echo.
timeout /t 2 >nul
exit
