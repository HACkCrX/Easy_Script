@echo off
color b

echo +++++++++++++++++++++++++++++++++++++++++++
echo. 	Monitoring Conections Script
echo +++++++++++++++++++++++++++++++++++++++++++

Timeout /T 5 /NoBreak>nul
color 4

:Loop
color 4
if exist conectionsnet.txt (

	del conections.txt

	)  




netstat -n > conectionsnet.txt

type conections.txt
echo Hit Enter To Continue
pause>nul
cls
color b
echo [*] Monitoring Conections Please Wait.....

Timeout /T 80 /NoBreak>nul

goto :Loop


