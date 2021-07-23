@echo off
color a
title Shell 

echo [*] Welcome %username%



Timeout /T 5 /NoBreak>nul
cls
if not  exist "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.lnk" (
goto :runatst
)  else (

goto :int

)


:runatst
echo [*] Add Script At Startup
Timeout /T 2 /NoBreak>nul 
powershell "$s=(New-object -COM WScript.shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\%~n0.lnk');$s.TargetPath='%~f0';$s.Save()">nul
echo [+] Done
Timeout /T 2 /NoBreak>nul 

:int
cls 
echo [--] Startup Script [--]
echo [--] $$$$$$$$$$$$$$ [--]
echo.
ECHO [01] Start Firefox 
echo [02] Start Chrome
echo [03] Google
Echo [04] Start Cmd 
echo [05] Start Powershell
echo [06] Clean Temp
echo [07] TaskKill
echo [08] Ping  
echo [09] Clear Cache
echo [10] Exit 
echo.
:SH
set /P ch="Shell ->  "

if "%ch%"==""  goto :SH
if %ch%==1 (
cls
start "" "C:\Program Files\Mozilla Firefox\firefox.exe" 

goto :int
)
if %ch%==2 (
start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
cls
goto :int
)
if %ch%==3 (
explorer http://www.google.com
goto :int
)
if %ch%==4 (
start
goto :int 
)
if %ch%==5 (
start Powershell
goto :int
)
if %ch%==6 (
echo [*] Deleting Unwanted Temproray Files...
cd C:\Users\%username%\AppData\Local\Temp
del *.* /Q

:: *.tmp 
Timeout /T 2 /NoBreak>nul
echo [ + ] Temp Is Clean
Timeout /T 2 /NoBreak>nul
goto :int
)
if %ch%==7 (
goto :kill 
)
if %ch%==8 (

goto :pingg
	)

if %ch%==9 (
goto :clc
)
if %ch%==10 (
echo [*] Exit From Script
Timeout /T 2 /NoBreak>nul
exit 
) else (

goto :SH


)
  


:clc
echo [*] Clearing Cache
Timeout /T 2 /NoBreak>nul
ipconfig /flushdns >nul
echo [+] Ok 
Timeout /T 2 /NoBreak>nul
goto :int


:pingg
cls
color 12
echo use : help to show options 
echo.
Timeout /T 2 /NoBreak>nul
:L
set /P pi="Ping@$hell -> " 
if "%pi%"=="" GOTO :L
if "%pi%"=="help" (
echo ping :  
echo     Options             Description
echo	    -t                  Ping the specified host until stopped
echo     -a                  Resolve addresses to hostnames
echo     -n count            Number of echo requests to send
echo     -t ttl              Time To Live
echo     -4 		        Force using IPv4s
echo     -6                  Force using IPv6

goto :L

) else (
call cmd /C  %pi%
echo [*] Hit Enter To -^> Continue
pause>nul
goto :int
)


:kill
cls
tasklist 
set /P kil="Enter Pid Of Proces To Kill : "

taskkill  /PID %kil% >nul
if %errorlevel%==0 (
	cls
	echo [+] SUCCESS: Sent Termination Signal To The Process With PID %kil% .
	Timeout /T 2 /NoBreak>nul




) else (
cls 
echo [!] ERROR: The Process %kil% Not Found. 
Timeout /T 2 /NoBreak>nul
cls
echo Try Again
Timeout /T 1 /NoBreak>nul
cls
goto :Kill


)
