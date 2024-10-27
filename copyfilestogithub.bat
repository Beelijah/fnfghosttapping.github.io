@echo off
title git helper by egg
cls
echo have you copied all files to this directory? "%cd%"
echo ---------------------------------------------------
pause
cls
echo what did you do for this update?
echo ---------------------------------------------------
set /P updatereason=
cls
echo okay then, hold onto your hats!
timeout 2 /NOBREAK > nul
cls
git add .
git commit -m "%updatereason%"
git push -u origin main
echo --------------------------------------------------------------------------------------
echo finished.
echo press any key to exit...
pause > nul
exit