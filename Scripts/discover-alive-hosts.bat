@echo off
color 2
title Discover  
echo ___________________________________
echo Discover Alive Hosts Script
echo ___________________________________
Timeout /T 2 /NoBreak>nul
cls 

echo [+] Send Discover Packet
echo.
Timeout /T 2 /NoBreak>nul
set /A c=0
:repeat
set /A c+=1
echo 192.168.1.%c%

ping -n 1 -w  500 192.168.1.%c% | FIND /i "Reply">>hosts-alive.txt
if %c% LSS 254 goto :repeat 
cls

echo [+] Hosts Alive
echo.
echo.
type hosts-alive.txt

echo.

pause

