@echo off
title Modpack Builder
cls
echo Enter what do you want to do:
echo 1) Build Client
echo 2) Build Server
echo 3) Clean
echo 4) Cancel
set /p action=Action: 
if "%action%" == "1" goto build_client
if "%action%" == "2" goto build_server
if "%action%" == "3" goto clean
exit

:build_server
IF NOT EXIST build MKDIR build
IF NOT EXIST build\server MKDIR build\server
XCOPY /s common build\server
XCOPY /s server build\server
pause
exit

:build_client
IF NOT EXIST build MKDIR build
IF NOT EXIST build\client MKDIR build\client
XCOPY /s common build\client
XCOPY /s client build\client
pause
exit

:clean
rmdir /s /q build
pause
exit
