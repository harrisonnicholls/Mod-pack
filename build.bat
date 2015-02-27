@echo off
title Modpack Builder
cls
echo Enter which side are you building:
echo 1) Client
echo 2) Server
echo 3) Cancel
set /p side=Side: 
if "%side%" == "1" goto build_client
if "%side%" == "2" goto build_server
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

