@echo off
color 2

echo [*] PLease Wait collect Info ......
Timeout /T 2 /NoBreak>nul
echo. > C:\log.txt
echo log file >> C:\log.txt
echo User: %username% >> C:\log.txt
date /t >> C:\log.txt
time /t >> C:\log.txt
echo. >> C:\log.txt
echo Process Run By %username% >> C:\log.txt
echo. >> C:\log.txt
qprocess >> C:\log.txt
echo. >> C:\log.txt
echo Scripts\Network Activities >> C:\log.txt
netstat -s >> C:\log.txt
echo. >> C:\log.txt
echo  Displays addresses and port numbers in numerical form >>C:\log.txt
netstat -n >> C:\log.txt
Timeout /T 4 /NoBreak>nul
echo [*] Call html Log ..
Timeout /T 3 /NoBreak>nul
call explorer file:///C:\log.html
exit


