@echo off
color 0A
cls
echo ======================================
echo          WELCOME TO TEMPDELETER
echo            by Ensar Ware
echo ======================================
echo.

setlocal enabledelayedexpansion

rem Prefetch temizliği
echo Cleaning Prefetch...
for %%f in (C:\Windows\Prefetch\*) do (
    echo Deleting file: %%~nxf
    del "%%f" >nul 2>&1
    ping -n 2 127.0.0.1 >nul
)

rem Windows Temp temizliği
echo.
echo Cleaning Windows Temp...
for %%f in (C:\Windows\Temp\*) do (
    echo Deleting file: %%~nxf
    del "%%f" >nul 2>&1
    ping -n 2 127.0.0.1 >nul
)

rem Kullanıcı Temp temizliği
echo.
echo Cleaning User Temp...
for %%f in (%temp%\*) do (
    echo Deleting file: %%~nxf
    del "%%f" >nul 2>&1
    ping -n 2 127.0.0.1 >nul
)

echo.
echo All done! Thanks for using TempDeleter.
pause
