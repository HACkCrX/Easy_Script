@echo off 
color 3
title Discover Alive Hosts 
echo "_____________________"
echo Discover Hosts Script
echo "_____________________"
Timeout /T 2 /NoBreak>nul
cls
color 2
echo [*] Sending Discover Packet
Timeout /T 3 /NoBreak>nul
cls
set /A c=0
:repeat
set /A c+=1
set dis=ping -a -n 1 -w 500 192.168.1.%c%
%dis% >%temp%\dis.txt
type %temp%\dis.txt | FIND /i "Reply" >nul
if %errorlevel% equ 0 ( 
color A

echo [+] Alive 192.168.1.%c%                    

) 

if %c% LSS 254 goto :repeat 



echo [*] Press Enter To Exit From Script 
pause >nul

echo [*] Cleaning Temporary File
Timeout /T 3 /NoBreak>nul
del %temp%\dis.txt >nul 
echo [+] Cleaning
Timeout /T 3 /NoBreak>nul

echo [*] Exit From Script 
Timeout /T 2 /NoBreak>nul



