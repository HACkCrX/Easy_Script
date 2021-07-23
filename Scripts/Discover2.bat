@echo off 
color 3
title Discover Alive Hosts 
echo "__________________________"
echo   Discover Hosts Script
echo "__________________________"
Timeout /T 2 /NoBreak>nul
cls
echo [*] Sending Discover Packet Please Wait.
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
for /L %%x in (1,1,254) do (
	
	ping -n 1 192.168.1.%%x | find "bytes=32" > NUL
    IF NOT ERRORLEVEL 1 (set state=Alive )  ELSE (set state=DOWN )
    color 3
	
    echo 192.168.1.%%x  !state!   >>state.txt


)

cls
color 3
set s=type state.txt
echo --------     ------
echo  Hosts	     State
echo.
%s%
echo.
echo [*] Press Enter To Exit From Script 
pause >nul
del state.txt > nul 
echo [*] Cleaning temp Files
Timeout /T 2 /NoBreak>nul
echo [!] Exit 
Timeout /T 1 /NoBreak>nul

