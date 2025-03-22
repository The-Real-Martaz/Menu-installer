@echo off
:menu
color a
cls

echo ================================
echo 1 - Install your shit
echo 2 - Install your other shit
echo 3 - Exit
echo ================================
set /p input="Enter your choice : "

if /i "%input%"=="1" goto installshit
if /i "%input%"=="2" goto installothershit
if /i "%input%"=="3" exit	

echo Invalid choice! Please enter 1, 2, or 3.
pause
goto menu

:installshit
echo Installing "your exe"...
powershell -Command "iwr 'your link' -OutFile '%USERPROFILE%\Downloads\MonkeModManager.exe'; Start-Process '%USERPROFILE%\Downloads\name of link' -Args '/S' -Wait"
echo Installation complete!
pause
goto menu

:installothershit
echo Installing "your exe" (DLL)...
powershell -Command "iwr 'your link' -OutFile '%USERPROFILE%\Downloads\name of link'"
echo downloaded successfully!
pause
goto menu

