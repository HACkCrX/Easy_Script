@echo off
color 3
title Netstat 
:st 
echo   [  1  ] Displays all connections and listening ports
echo   [  2  ] Displays the executable involved in creating each connection
echo   [  3  ] Displays Ethernet statistics. This may be combined
echo   [  4  ] Displays addresses and port numbers in numerical form
echo   [  5  ] Displays the owning process ID associated with each connection
echo   [  6  ] Displays the routing table
echo   [  7  ] Displays the current connection offload state
echo   [  8  ] Exit 
echo.
:shell 
set /P stat="%username%@Shell #>"
if "%stat%"=="" (
goto :shell
)
if %stat%==1 (
cls 
netstat -a  
echo Press Enter To Continue..
pause>nul
cls
goto :st
) else if %stat% == 2 (
cls 
netstat -b 
echo Press Enter To Continue..
pause>nul
cls
goto :st 

) else if %stat%==3 (

cls  
netstat -s 
echo Press Enter To Continue..
pause>nul
cls
goto :st

) else if %stat% == 4 (

cls  
netstat -n  
echo Press Enter To Continue..
pause>nul
cls
goto :st

) else if %stat% == 5 (
cls  
netstat -r 
echo Press Enter To Continue..
pause>nul
cls
goto :st


) else if %stat% == 7 (
cls
netstat -t 
echo Press Enter To Continue..
pause>nul
cls
goto :st

) else if %stat%==8 (
exit
) else (

echo [!] invalid option
goto :st


)
 



