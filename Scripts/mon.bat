@echo off
color b 
for /L %%X in (1,1,2) do (
echo [*] Monitoring Every -^> 7 Sec Please Wait.....  
netstat -b >> connections.txt & Timeout /T 7 /NoBreak>nul
cls
echo %%X  

)

 
type connections.txt
pause
del connections.txt