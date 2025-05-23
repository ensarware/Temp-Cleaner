@echo off
color 0A
echo ======================================
echo     ONLY DELETE USER TEMP FOLDER
echo           by Ensar Ware
echo ======================================
echo.

echo Cleaning User Temp...
del /s /q %temp%\*.*

echo.
echo Done!
pause
