
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpcQQGGAE+/Fb4I5/jHyuuUu3IuV/A2aJvnyqaBJ9wa6UrqSZ8r6Vdp1e8jP1t5bgKnZww1vWdNuFvWYpLP5kHoSUfp
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpcQQGGAE+/Fb4I5/jHyuuUu3IuV/A2aJvn/7WdOd8g6VftZYJj02Jf+A==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
﻿


@echo off


:: Out Side Script admin
cls

rem check for admin privalige  
::#####################################################################
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo[!] Requesting Administrative Privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

cls

)


cmd /c  Scripts\colorrand.exe  rem Random Color Script Py 

Timeout /T 1 /NoBreak>nul
cls


:Start
cls
:banner
title Easy Script

:: shell:startup 
rem banner
echo   [--] CodedBy Ahmed Balaha $$$$$$$ [--]
echo   [--]      Use help For Option     [--]
rem echo.
echo   [01] Network Settings
echo   [02] Firewall Settings
echo   [03] System Settings
echo   [04] System Activety 
echo   [05] Download Tools 
echo   [06] Encrypt Files
echo   [07] TaskKill
echo   [08] Generate Random Password
echo   [09] Change Password
echo   [10] Startup Script
echo   [11] Windows Command
echo   [12] Add Script At Startup
echo   [13] Change Script Color 
echo   [14] Monitoring Conections
echo   [15] Show Public Ip Address
echo   [16] Folder Locker
echo   [17] Test Internet Conections
echo   [18] Speed Test
echo   [19] Fast Ping
echo   [20] Url Proxy
echo   [21] Create Bootble Usb
echo   [22] Cleaning junk Files
echo.

:choices
set /P ch="%username%@Shell [~]:"  
if "%ch%" =="" goto :choices
if "%ch%"==" " goto :choices
if "%ch%"=="help" goto :funchelp
if "%ch%"=="options" goto :Start
if  %ch%== 1 (
Goto :Network_Settings
) else if %ch%== 2 (
goto :AdvFirewall
) else if %ch% == 3 (
goto :system_Settings
) else if %ch%== 4 (
goto :System_Activety

) else if %ch%== 5 (
goto :Download_tools

) else if %ch% == 6 (
goto :Encryption
 

) else if %ch% == 7 (
goto :TaskKilll
) else if %ch% == 8 (
goto :pass

) else if %ch%== 9 (
goto :chang

) else if %ch%==10 (

goto :startups
) else if %ch%==11 (
goto :Windows_Command

) else if %ch%==12 (

goto :setupstartup

) else if %ch%==13 (

goto :chcolor

) else if %ch%==14 (


goto :MC


) else if %ch%==15 (


goto :publicip 

) else if %ch%==16 (


goto :Locker


) else if %ch%==17 (


goto :Testint


) else if %ch%==18 (


goto :speed_test



) else if %ch%==19 (


goto :fastping

) else if %ch%==20 (

goto :proxy



) else if %ch%==21 (

goto Create_Bootble_Usb
) else if %ch%==22 (

goto CleanV1
) else (



goto :command 
)



::use commmand cmd in script
:command
title Command Mode


echo [*] exec
echo.
cmd /c "%ch%"


goto :choices



:funchelp
cls 
echo you can type cmd command in -^> Shell
echo ex:
echo dir ifconfig netsh  ....
echo.
echo _________            _________________________
echo Command              Description
echo _______________________________________________
echo.
echo cmd                  goto to cmd command prompt 
echo exit                 exit from cmd command prompt
echo options              to show script options
echo.
echo [*] Hit Enter To Continue
pause>nul
cls
goto :Start
rem goto :choices



rem Network_Settings
rem ######################################################
:Network_Settings
title Network Settings
cls
color 3
echo  [01] Flushdns
echo  [02] Netsh Shell 
echo  [03] Show Ip 
echo  [04] Netstat 
echo  [05] TraceRoute
echo  [06] Create hotspot
echo  [07] ping 
echo  [08] Set Static Arp 
echo  [09] Use All Ip Address
echo  [10] Discover Alive Hosts
echo  [11] Show Wifi Password  
echo  [12] Back
echo.
:shn
set /P netch= "%username%@Shell [~]:"
if "%netch%"=="" goto :shn
if %netch% == 1 (
goto :flushdns
) else if %netch% == 2 (
goto :netshell

) else if %netch%== 3 (

goto :Show_ip
) else if %netch% == 4 (
goto :lNetstat

) else if %netch% == 5 (
cls
goto :trace
) else if %netch% == 6 (
goto :Create_hotspot
) else if %netch%== 7 (
goto :pingg
) else if %netch% == 8 (
goto :Arp_static
) else if %netch%== 9 (
goto :confilct
) else if %netch% == 10 (
goto :DiscoverH

) else if %netch% == 11 (
cls 
goto :showpass

) else if %netch% == 12 (
cls 
goto :Start
) else (

goto :shn
)





:flushdns
cls
ipconfig /flushdns
goto :Network_Settings
rem #######################
:netshell
cls
call Scripts\netshell.bat
goto :Network_Settings



rem #######################


:Show_ip
cls
ipconfig 
echo [*] Press Enter To Continue...
pause>nul
goto Network_Settings


rem #######################


:lNetstat
cls
call Scripts\netst.bat
goto :Network_Settings


rem ########################


:trace
color 12
echo use : help to show options 
:sh98
set /P input="Trace@$hell -> "
if "%input%"=="--help" (
tracert /?
goto :sh98
) else (
start cmd /k  %input%
echo [ * ] Hit Enter To -^> Continue
pause>nul
goto :Network_Settings
)





rem ########################

rem ########################
:pingg
cls
call Scripts\ping1.bat
goto :Network_Settings
rem ########################
:Arp_static
cls 
color 9 
echo "________________________________"
echo       Static Arp Entry
echo "________________________________"
:shell1
Set /P name=Enter Name Of Wireless Connection [~]: 
if "%name%"==""  goto :shell1
echo "[*] Name ==>"  %name%  
Timeout /T 2 /NoBreak>nul
cls
:rou
Set /P rouip=Enter Router Ip Address [~]:  
if "%rouip%"=="" goto :rou 
echo "[*] Router Ip ==>"  %rouip% 
Timeout /T 2 /NoBreak>nul
cls
:Mac
set /P mac=Enter Mac Of Router [~]:  
if "%mac%"=="" goto :Mac
echo "[*] Mac ==>"  %mac%  
Timeout /T 2 /NoBreak>nul
cls
echo [*] Run Netsh
netsh -c interface ipv4 add neighbors “%name%” “%rouip%” “%mac%” 
Timeout /T 2 /NoBreak>nul
echo [*] ok  
Timeout /T 2 /NoBreak>nul
cls
goto :Network_Settings
rem ################################################
:confilct
cls
color 4 
set /P int=Enter Name Of UR Interfcae [~]: 
for /L %%A IN (2,1,254) do (
netsh interface ipv4 add address "%int%" 192.168.1.%%A 255.255.255.0
echo [*] Use ipconfig To Show All Ip Address
Timeout /T 2 /NoBreak>nul
goto :Network_Settings




:DiscoverH
cls 
color 4
echo [1] Discover Alive Host V1   [very Slow] 
echo [2] Discover Alive Host V2   [Slow] -^> Reliable
echo [3] Discover Alive Host V3   [Fast] -^> Unreliable
echo.
:shd
set /P discover="%username%@Shell [~]:"
if "%discover%"=="" goto :shd
if %discover% ==1 (
start Scripts\discover_hosts.bat
goto :Network_Settings
) else if %discover% == 2 (
call Scripts\Discover2.bat
goto Network_Settings
) else if %discover%==3 (
start Scripts\discover-alive-hosts.bat
goto :Network_Settings

) else (

goto :shd
)



:showpass
 netsh wlan show profile
 Timeout /T 4 /NoBreak>nul
 set /p wifi_name=Enter Wifi Name [~]: 
 netsh wlan show profile %wifi%_name key=clear
 echo [*] Hit Enter To -^> Continue
 pause>nul
GOTO :Network_Settings



rem ##################################################################################### Network end 

:AdvFirewall
@echo off
rem Run As Admin 
:: Out Side Script

::........................................
color 2
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo [*] Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
rem .........................................


rem banner.....
rem .................................
color 2

title AdvFirewall
:st
cls
color 2

if exist C:\Windows\System32\adv.exe (

goto :Sta
	) else (

goto :cp  


	)

:cp
copy Scripts\AdvFirewall.exe C:\Windows\System32\adv.exe >nul
echo [!] Run adv In Cmd To Start AdvFirewall Script
Timeout /T 6 /NoBreak>nul 

cls 
:Sta
title AdvFirewall
cls
echo [--] ---------------- [--]
echo [--] Firewall Script  [--]
echo [--] ---------------- [--]




echo -----------------------------------------
echo.
color 2
echo [1] Open Port 
echo [2] Firewall Settings 
echo [3] Query Firewall Rules 
echo [4] Allow Or Block Ping 
echo [5] Delete a Port
echo [6] Enable a Program
echo [7] Enable or disable Remote Desktop Connection
echo [8] Export and import firewall settings
echo [9] Quit
echo.
:adsh
Set /P ops="%username%@AdvShell [~]:  "
if "%ops%"=="" goto :adsh
if %ops%==1  (
	goto :firewall 

)
if %ops%==2 (    
	goto :run
)
if %ops%==3 (
	goto :log
)
if %ops%==4 (
	goto :Pingg 
)
if %ops%==5 (
	goto :dell
)
if %ops%==6 (
	goto :aloprog
)
if %ops%==7 (
	goto :remote

)
if %ops%==8 (
	goto :config

)
if %ops%==9 (
	goto :exitt

) else (
goto :adsh

)

rem .................................................................

:firewall
cls
color 3
:rule
color 3
SET /P rule=Enter Rule Name [~]: 
if "%rule%"==""  color 4 && echo [-] Invalid Input && Timeout /T 1 /NoBreak>nul && cls  && goto :rule
:port
cls
color 2
set /P op=Enter Port Number [~]:
if "%op%"==""   color 4 && echo [-] Invalid Input && Timeout /T 1 /NoBreak>nul && cls  && goto :port
goto :check
:check
echo %op%| findstr /r "^[1-9][0-9]*$">nul
if %errorlevel% equ 0 (
    goto :proto

) else (
color 4
echo [!] Error Port Must Be a Number (0-65535) 

Timeout /T 3 /NoBreak>nul
goto :port


)
:proto
color 6 
set /P proto="Does This Rule Apply To (tcp OR udp) [~]: 
if "%proto%"==""  color 4 && echo [-] Invalid Input && Timeout /T 1 /NoBreak>nul && cls  && goto :proto

if "%proto%"=="tcp"  (
goto :con 
) else if "%proto%"=="udp" (
goto :con

)
) else (
color 4
echo [!] invalid && Timeout /T 2 /NoBreak>nul && cls && goto :proto


)

:con
color 3
echo (in or out)
SEt /P dir=Dir [~]:
if "%dir%"=="in" (
goto :nex


	) else if "%dir%"=="out" (
	goto :nex

	) else (
	color 4 
	echo [!] invlid  && Timeout /T 2 /NoBreak>nul && cls && goto :con
	)

:nex
cls 
color 3
ECHO [1] Domain 
echo [2] Private
echo [3] Public
echo [4] All 
echo.
:sh1
set /P prof="%username%@AdvShell [~]:  "
if "%prof%"=="" goto :sh1
goto :chnum
:chnum
echo %prof%| findstr /r "^[1-9][0-9]*$">nul
if %errorlevel% equ 0 (
    goto :N
) else (
goto :sh1

)
:N
cls 
color 2
color 4 
Timeout /T 1 /NoBreak>nul
color 2
echo [*] Set Rule Name %rule%
Timeout /T 1 /NoBreak>nul
echo [*] Set Port %op%
Timeout /T 1 /NoBreak>nul
echo [*] Set Protocol %proto%
Timeout /T 1 /NoBreak>nul
echo [*] Dir %dir%
Timeout /T 1 /NoBreak>nul
echo [+] Run
Timeout /T 1 /NoBreak>nul

goto :profil 


:profil
if %prof%==1  ( 
echo [*] Profile Domain 
Timeout /T 2 /NoBreak>nul 
) else if %prof%==2 (
echo [*] Profile Private && Timeout /T 2 /NoBreak>nul

) else if %prof%==3 (

echo [*] Profile Public && Timeout /T 2 /NoBreak>nul


) else if %prof%==4 (

echo [*] Profile All   && Timeout /T 2 /NoBreak>nul


)

 

if %prof%==1 (
netsh advfirewall firewall add rule name="%rule% " dir=%dir% action=allow protocol=%proto% localport=%op% profile=Domain  >nul 
)
if %prof%==2 (
netsh advfirewall firewall add rule name="%rule% " dir=%dir% action=allow protocol=%proto% localport=%op% profile=Private  >nul 
) 
if %prof%==3 (
netsh advfirewall firewall add rule name="%rule% " dir=%dir% action=allow protocol=%proto% localport=%op% profile=Public  >nul 
)
if %prof%==4 (
netsh advfirewall firewall add rule name="%rule% " dir=%dir% action=allow protocol=%proto% localport=%op%  >nul 
)
Timeout /T 1 /NoBreak>nul
echo [OK]
Timeout /T 2 /NoBreak>nul
goto :st 

:run
color 3
cls 
color 9
echo [1] Enable Firewall
echo [2] Disable Firewall
echo [3] Show Firewall Status
echo [4] Use Recommended Setting
echo [5] Reset Windows Firewall 
echo [6] Back

echo.
echo.
:sh2
set /P en="%username%@AdvShell [~]:  "
if "%en%"=="" goto :sh2
goto :runcheck
:runcheck
echo %en%| findstr /r "^[1-9][0-9]*$">nul
if %errorlevel% equ 0 (
    goto :enrun

) else (

goto :sh2


)
:enrun
if %en%==1 (
cls
echo [*] Run Command Netsh

netsh Advfirewall set allprofiles state on >nul 
color 2

echo [+] Firewall Is On
Timeout /T 2 /NoBreak>nul

goto :AdvFirewall
)
if %en%==2 (
cls 
color c 
echo [!] Warning Windows Firewall Can Help Prevent Hacker Or Malicious Software Form Gaining Access To Computer Through The Internet Or A Network 
Timeout /T 4 /NoBreak>nul
cls 
color 2 
:Y 
echo [*] Run Command Netsh
netsh Advfirewall set allprofiles state off >nul 
color 2
Timeout /T 3 /NoBreak>nul
echo Ok
echo [+] Firewall Is Of
Timeout /T 2 /NoBreak>nul
goto :run
)
if %en%==3  (
goto :end
) 

if %en%==4 (
goto :duf

	)

if %en%==5 (
	goto :res 
	)
if %en%==6 (
goto :st


	) else (

echo [!] Invalid
Timeout /T 2 /NoBreak>nul
goto :run

	)

:duf
cls
echo [*] Enable Firewall
Timeout /T 2 /NoBreak>nul
netsh Advfirewall set allprofiles state on  >nul 
Echo [*] Block Inbound 
Timeout /T 2 /NoBreak>nul
netsh advfirewall set domainprofile firewallpolicy blockinboundalways,allowoutbound 
echo Ok 
Timeout /T 2 /NoBreak>nul
goto :st 
:end 
cls 
color 2
Netsh Advfirewall show allprofiles >> %temp%\status.txt
type %temp%\status.txt | find "ON" >nul
if %errorlevel%==1 (
	goto :jh
	) else (
	goto :firon 
	)
:jh
color c 
echo [!] Firewall Of You Under Risk Recommended Enable Firewall [y/n]
set /P s=""
if  %s%==y (
goto :EnableFire
) else (
goto :run

:firon
echo [+] Firewall On 
Timeout /T 3 /NoBreak>nul
del  %temp%\status.txt
goto :st 



)


:res
cls 
color 2 
echo [*] Run Netsh
Timeout /T 1 /NoBreak>nul 
netsh advfirewall reset >nul
echo [+] Ok 
Timeout /T 2 /NoBreak>nul 
goto :st





:EnableFire
cls
netsh Advfirewall set allprofiles state on  >nul 
color 2
echo [*] Run Netsh 
Timeout /T 1 /NoBreak>nul 
echo [+] Firewall Is On
Timeout /T 2 /NoBreak>nul
goto :st
 


:Pingg
cls 
color 2 
echo [1] Allow Ping 
echo [2] Block Ping 
echo [3] Back
echo.
:sh3
set /P pi="%username%@AdvShell [~]:  "
if "%pi%"=="" goto :sh3
if %pi%==1 (
goto :allowping
)

if %pi%==2 ( 
goto :blockping

)

if %pi%==3 (
goto :st 

) else (

goto :sh3

)  

:allowping
cls 
color 2
echo [*] Run Netsh
Timeout /T 2 /NoBreak>nul
echo [*] Ok 
Timeout /T 2 /NoBreak>nul
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow >NUL
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow >NUL 
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=allow >NUL
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=allow >NUL 
goto :st 




:blockping
cls 
echo [*] Run Netsh
Timeout /T 2 /NoBreak>nul	
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=block >NUL 
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=block >NUL 
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=block >NUL 
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=block >NUL 
goto :st 


:dell
color 3
cls
set /P port="Port Number [~]: "
goto :chk 
:chk 
echo %port%| findstr /r "^[1-9][0-9]*$">nul
if %errorlevel% equ 0 (
    goto :Dl

) else (
color 4
echo [!] Error Port Must Be a Number (0-65535) 
Timeout /T 3 /NoBreak>nul
goto :dell


)
:Dl
netsh advfirewall firewall delete rule name=all protocol=tcp localport=%port% >nul 
color 2
echo [*] Delete Rule 
Timeout /T 2 /NoBreak>nul 
echo [*]  Ok 
goto :st 

:aloprog
cls
set /P Runame=" Enter Rule Name [~]: "
:di
color 3
Set /P Di="Dir (in or out) [~]: "
if "%Di%"==""  color 4 && echo [-] Invalid  Input && Timeout /T 1 /NoBreak>nul && cls  && goto :di 
:ac
color 3
set /P action="Action : (allow : block )"
if "%action%"==""  color 4 && echo [-] Invalid  Input && Timeout /T 1 /NoBreak>nul && cls  && goto :ac 
set /P Prog="Enter Path OF Program : "
color 2
echo [*] Set Rule Name %Runame%
Timeout /T 2 /NoBreak>nul
echo [*] Set Dir %Di%
Timeout /T 2 /NoBreak>nul
echo [*] Set Action %action%
Timeout /T 2 /NoBreak>nul
echo [*] Set Path %Prog%
Timeout /T 2 /NoBreak>nul
netsh advfirewall firewall add rule name="%Runame%" dir=%Di% action=%action% program="%Prog%" > nul 
echo Ok 
Timeout /T 2 /NoBreak>nul
goto :st



:remote
cls 
color 3
echo [1] Enable 
echo [2] Disable 
echo.
echo.
:sh4
set /P CHR="%username%@AdvShell [~]:  "
if "%CHR%"==""  goto :sh4


if %CHR%==1 (
goto :enremote
)  else if %CHR%==2 (
goto :desremote
) else (

goto :sh4
)

:enremote
echo enable 
pause 
cls
color 2
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes >nul
echo [*] Enable Remote Desktop Connection
Timeout /T 2 /NoBreak>nul
echo [+] ok 
Timeout /T 1 /NoBreak>nul
goto :st 

:desremote
cls 
netsh advfirewall firewall set rule group="remote desktop" new enable=No >nul
echo [*] Disable Remote Desktop Connection
Timeout /T 2 /NoBreak>nul 
echo [+] Ok 
Timeout /T 2 /NoBreak>nul 
goto :st


:config
cls
echo [1] Export 
echo [2] import 
:sh5
set /P H="%username%@AdvShell [~]:  "
if "%H%"=="" goto :sh5
if %h%==1 (
	goto :exp
)

if %H%==2 ( 
	goto :importt
	) else (


goto :sh5
	)



:exp
cls 
  
set name=C:\FirwConfig.wfw
netsh advfirewall export "%name%" >nul
color 2 
echo [*] Export Firewall Config
Timeout /T 2 /NoBreak>nul
echo [+] File Save %name%
Timeout /T 3 /NoBreak>nul 
goto :st 



:importt
cls
Set /P im= Enter File Path [~]: 
color 2 
netsh advfirewall import "%im%" >nul 
echo [*] import %im% 
Timeout /T 3 /NoBreak>nul 
echo [*] Ok 
Timeout /T 2 /NoBreak>nul 
goto :st 



:exitt
cls 
echo [ ! ] See you later. Bye
Timeout /T 2 /NoBreak>nul
exit 



:log
cls
color 2
echo [*] Run Netsh 
Timeout /T 2 /NoBreak>nul
netsh advfirewall firewall show rule name=all >> C:\Firewall.log.txt
echo [*] Saving Output To File 
Timeout /T 3 /NoBreak>nul
echo [*] File Save As C:\Firewall.log.txt
Timeout /T 2 /NoBreak>nul
echo [*] Reading File 
Timeout /T 3 /NoBreak>nul
type C:\Firewall.log.txt
color 3
echo [*] Press Enter To Continue...
pause >nul
cls
color 2
echo [*] Copy Log File To Desktop
Timeout /T 2 /NoBreak>nul
copy  C:\Firewall.log.txt  C:\Users\%username%\Desktop\Firewall.log.txt  /Y
Timeout /T 2 /NoBreak>nul
echo [*] Cleaning Processing
Timeout /T 4 /NoBreak>nul
echo. > C:\Firewall.log.txt
echo [+] Done
Timeout /T 2 /NoBreak>nul
goto :st
rem ################################################################################## :AdvFirewall end 

:system_Settings
cls
start cmd /k Scripts\system_tool.exe
goto :Start

rem #################################


rem System_Activety 
rem ###################################################
:System_Activety
cls 
echo [1] Login System Activety
echo [2] Monitoring Connection
echo [3] System Info
echo.
:sh6
set /P actsys="%username%@Shell [~]: "
if "%actsys%"=="" GOTO :sh6
if not exist C:\log.html (
	 goto :cps

	) else (
		goto :continue
		) 	

:continue
if %actsys%==1 (
	start Scripts\log_ac.bat
	goto :System_Activety

	) else if %actsys%==2 (
	goto :monitoring


	) else if %actsys%==3 (
	goto :Sysinfo 

	) else (

	goto :sh6
	)


:cps
copy Scripts\log.html C:\>nul
goto :Continue
	






:monitoring
start cmd /k Scripts\mon.bat
goto :System_Activety
############################################




:Sysinfo
echo pleass wait....
systeminfo > sys.txt
Timeout /T 2 /NoBreak>nul 
echo Done 
type sys.txt
echo [ ! ] Hit Enter To -^> Continue
pause>nul
goto :Start






:Create_Bootble_Usb
cls 

if exist C:\Windows\System32\diskpart.txt goto :run
if not exist C:\Windows\System32\diskpart.txt  goto :createone
:createone
copy nul C:\Windows\System32\diskpart.txt 
:run
echo >diskpart.txt LIST DISK
diskpart /s diskpart.txt
:one
set /P disk=Enter The Disk Number :
if "%disk%"=="" (
goto :one
)
echo. >> diskpart.txt Select disk %disk%
diskpart /s diskpart.txt
echo _______________________________
echo disk -^>%Disk%

pause
echo. >> diskpart.txt clean & echo. >> diskpart.txt create partition primary & echo. >> diskpart.txt format fs=ntfs quick & echo. >> diskpart.txt active  &  clean 
diskpart /s diskpart.txt
echo [*] Your Usb Is Now Bootble
Timeout /T 2 /NoBreak>nul 
echo [*] When you finish preparing your custom image, save it to the root of the USB flash drive
echo Hit [Enter] To Continue...
pause>nul
exit 





rem echo [1] List Partitions
rem echo [2] Format Partition
rem echo [3] Create Bootoble Usb
rem :sh7
rem set /P dich="Select Option > "
rem if "%dich%"=="" goto sh7
rem if %dich%==1  
rem goto :list_par
rem 




:Download_tools
cls
echo.
echo ---------------------------------------
echo.
echo [1] Download Direct Url 
echo [2] Download Youtube Video
echo [3] Download Youtube Playlist
echo. 
echo ---------------------------------------

echo.
:sh9
set /P dow="%username%@Shell [~]: "
if "%dow%"=="" goto :sh9
if %dow%== 1 (
goto :dowurl
) else if %dow%==2 (
goto :Dowvids
) else if %dow% ==3 (
goto :dowplist
) else (

goto :sh9
)

:dowurl
cls
set /P url= "Enter Direct Url [~]: "
prog\wget.exe %url%
echo Enter -^> To Continue
pause>nul
goto :Download_tools

:Dowvids
cls
set /P vid="Enter Video Url [~]: "
prog\youtube-dl.exe  %vid% 
echo Enter -^> To Continue
pause>nul
goto :Start

:dowplist
cls
echo [1] Youtube-dl
echo [2] Youtube-pafy
echo.
:sh10
set /P yo="%username%@Shell [~]: "

if "%yo%"=="" goto :sh10
if %yo%==1 (

goto :youtube-dl
	) else if %yo%==2 (

goto :youtube-pafy
	) else (

goto :sh10
	)

:youtube-dl
cls
set  /P youtube="Enter Playlist Url [~]: " 
prog\youtube-dl.exe --playlist-reverse  %youtube%
echo Enter -^> To Continue 
pause>nul

:youtube-pafy
cls
set  /P pafy="Enter Playlist Url [~]: " 
start cmd /k Scripts\YoutubePafy.exe -p %pafy%
echo Enter -^> To Continue
pause>nul
goto :Start






:Encryption
cls
echo [*] Openssl For Encryption And Decryption ####### 
echo.
echo [1] Encrypt 
echo [2] Decrypt 
echo.
:sh11
set /P encr="%username%@Shell [~]: "
if "%encr%"=="" goto :sh11
if %encr%==1 (
goto :enc
) else if %encr%==2 (
goto :dec
) else (

goto :sh11
)


:enc
color 2
cls 
set /P a="Enter File Name [~]: "
if "%a%"=="" goto :enc
prog\openssl.exe aes-256-cbc -a -salt -in %a% -out encrypted-file.txt.enc
if %errorlevel%==0 (
Timeout /T 3 /NoBreak>nul

echo [~] Encryption aes-256
Timeout /T 2 /NoBreak>nul

echo [+] File Encrypted
Timeout /T 2 /NoBreak>nul
del %a%
cls
goto :Start
)
color 4
cls
echo [!] Bad Password Failed To Encrypt File
Timeout /T 4 /NoBreak>nul

goto :enc
:dec
cls
set /P h="Enter Encryption File Name [~]: "
if "%h%"=="" goto :dec
prog\openssl.exe aes-256-cbc -d -a -in %h% -out decrypted-file.txt
if %errorlevel%==0 (
Timeout /T 3 /NoBreak>nul

echo [+] File Decrypted
Timeout /T 2 /NoBreak>nul
cls
goto :Start

)
color 4
cls
echo [!] Bad Password Failed To Decrypt File
Timeout /T 4 /NoBreak>nul
goto :enc

rem ################################################
:Create_hotspot
:Wifi
cls
set /P WI="enter ssid  : "
set /P key="enter key : "
netsh wlan set hostednetwork mode=allow ssid=%WI% key=%key%
netsh wlan start hostednetwork
echo [*] Service Started
Timeout /T 2 /NoBreak>nul

goto :Network_Settings





rem ...........................................................................................................
rem Activety_Tools.............................................................................................
:Activety_Tools
cls 
echo [1] Login System Activety
echo [2] which programs initiate connections 
echo.
choice /C 12 

if "%errorlevel%"=="" goto Activety_Tools
if %errorlevel%==1 goto :sysactivety
if %errorlevel%==2 start cmd /k  montroing.bat && cls && goto :Start
:sysactivety
cls
color 
echo PLease Wait collect Info ......
Timeout /T 2 /NoBreak>nul
echo. > log.txt
echo log file >> log.txt
echo User: %username% >> log.txt
date /t >> log.txt
time /t >> log.txt
echo. >> log.txt
echo Process Run By %username% >> log.txt
echo. >> log.txt
qprocess >> log.txt
echo. >> log.txt
echo Network Activities >> log.txt
netstat -s >> log.txt
echo.
echo  Displays addresses and port numbers in numerical form >> log.txt

netstat -n >> log.txt

Timeout /T 2 /NoBreak>nul
echo Done 
call explorer file:///log.html
GOTO :Activety_Tools

:Bookmarks
cls
echo ___________________
echo Welcome In Bookmark 
echo ___________________
echo.
color 1B
title Bookmark

echo [01] google.com
echo [02] facebook.com
echo [03] youtube.com
echo [04] cisco.com
echo [05] github.com
echo [06] sectools.org
echo [07] instagram.com
echo [08] twitter.com
echo [09] learn-barmaga
echo [10] udemy.com
echo [11] exploit-db.com
echo [12] thehackernews.com
echo [13] cvedetails.com
echo [14] Back 
rem ########################################################
rem ########################################################
echo.

:fr
set /P book="%username%@Shell [~]:"
if "%book%"=="" goto :fr
if %book%==1 (
goto :one
) else if %book%==2 (
goto :two


) else if %book%==3 (
goto :three

) else if %book%==4 (
goto :four

) else if %book%==5 (

goto :five

) else if %book%==6 (
goto :six

) else if %book%==7 (

goto :seven

) else if %book%==8 (
goto :eight

) else if %book%==9 (

goto :nine

) else if %book%==10 (
goto :ten 

) else if %book%==11 (
goto :exploit-db

) else if %book%==12 (
goto :thehackernews

) else if %book%==13 (

goto :cvedetails



) else if %book%==14 (
cls
goto :Start

) else (
goto :Start


)
rem fi 
::<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




::>>>>>>>>>>>>>>>>>>>>>>>>>>>
:one 
explorer http://www.google.com
goto :Bookmarks
:two
explorer http://www.facebook.com
goto :Bookmarks
:three 
explorer http://www.youtube.com
goto :Bookmarks
:four
explorer http://www.cisco.com
goto :Bookmarks
:five 
explorer http://www.github.com
goto :Bookmarks
:six
explorer http://www.sectools.org
goto :Bookmarks
:seven
explorer http://www.instagram.com
goto :Bookmarks
:eight
explorer http://www.twitter.com
goto :Bookmarks
:nine
explorer http://www.learn-barmaga
goto :Bookmarks
:ten
explorer http://www.udemy.com
goto :Bookmarks

:exploit-db

explorer http://www.exploit-db.com
goto :Bookmarks




:thehackernews
explorer http://thehackernews.com

goto :Bookmarks

rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$




:cvedetails
explorer https://www.cvedetails.com/

goto :Bookmarks


rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$



rem ###########################################

:TaskKilll
cls
echo __________________________
tasklist
set /P c= "Enter Pid $> "   
taskkill /f /pid %c%

echo [ ! ] Press Enter To Continue..
pause>nul
goto :Start


:pass
cls
color a
Timeout /T 1 /NoBreak>nul
echo ****************************************
echo -^>   Random -^> Passwords Script
echo ****************************************

echo [*] Generate Random Password List Please Wait..
set /A c=0
:whilee1
echo %random%%random% >>passwordlist.txt
set /A c+=1
if %c% LSS 8000 goto :whilee1
echo [ + ] Done
set path=%cd% 
echo File Save %path% -^> passwordlist.txt
echo Enter -^> To Continue
pause>nul 
goto :Start


:chang
cls
set /P newpass="Enter New Password [~]: "
net user %USERNAME% %newpass%
echo [+] Password Changed
Timeout /T 2 /NoBreak>nul
goto :Start

:startups
if not  exist "C:\Users\MITM\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.lnk" (
goto :runatst
)  else (

goto :int

)


:runatst
start Scripts\startup.bat
goto :Start


:int
cls
echo [--] Startup Script [--]
echo [--] $$$$$$$$$$$$$$ [--]
color 4
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
set /P ch="Shell [~]:  "

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
del *.tmp 
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
echo [ * ] Exit From Script
Timeout /T 2 /NoBreak>nul
exit 
) else (

goto :SH

)
  


:clc
echo [ * ] Clearing Cache
Timeout /T 2 /NoBreak>nul
ipconfig /flushdns >nul
echo [ + ] -^> Ok 
Timeout /T 2 /NoBreak>nul
goto :int


:pingg
cls 
color 12
echo use : help to show options 
Timeout /T 2 /NoBreak>nul
:L
set /P pi="Ping@$hell [~]: " 
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
start cmd /k  %pi%
echo [ * ] Hit Enter To -^> Continue
pause>nul
goto :int
)


:kill
cls
tasklist 
set /P kil="Enter Pid Of Proces To Kill [~]: "

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

:Windows_Command
cls 
color a
echo _________________________
echo [--] Windows Command [--]

echo  Command            Descrption
echo _____________________________________________________
echo.
echo  echo               print on screen
echo  start              start a program
echo  set                environment variable
echo  ipconfig           Show ip Address 
echo  type               Displays the contents of a text file 
echo  mkdir              create Dirctory 
echo  copy               copy Files
echo  xcopy              copy Files 
echo  ren                rename a File 
echo  rem                Comment 
echo  help               Displays help 
echo  find               Searches for a text string
echo  dir                Displays a list of files
echo  cmd                start new cmd 
echo  diskpart           manage harddisk
echo  TASKLIST           Displays all currently running tasks
echo  TASKKILL           Kill or stop a running process
echo  cd                 Change dir 
echo  cls                clear screen
echo  call               calls a batch file from another one 
echo  color              change console color 
echo  runas              start a program as another user 
echo  sort               sort the screen output   
echo  title              set title for prompt      
echo  ver                display operating system version 
echo  getmac             display MAC address 
echo  netsh              configure/control/display network components 
echo  systeminfo         displays computer-specific properties and configurations 
echo  rmdir / rd         Delete Dirctory
echo  for                for loop 
echo  gpupdate           update group policies 
echo  prompt             change command prompt 
echo.
echo [ ! ] Press Enter To Continue 
pause>nul 
cls
goto :Start  

:scan
cls

echo Option Not Available
pause

cls
goto :Start


	)
:setupstartup
cls 

if not  exist "C:\Users\MITM\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\EASY_S~1.lnk" (

	Goto :Create_Startup 

	) else (
	cls 
	echo [!] Script Already Add To Startup
	Timeout /T 3 /NoBreak>nul 
	cls 
	goto :Start

	)




:Create_Startup
cls 
echo [*] Add Script At Startup 
powershell "$s=(New-object -COM WScript.shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\%~n0.lnk');$s.TargetPath='%~f0';$s.Save()">nul
Timeout /T 2 /NoBreak>nul 
echo [+] -^> Ok

cls 
goto :Start

rem ######################################################



:chcolor
cls
echo __________________________                            
echo [ 01 ] Black  -^> code 0
echo [ 02 ] Blue   -^> code 1
echo [ 03 ] Green  -^> code 2
echo [ 04 ] Aqua   -^> code 3
echo [ 05 ] Purple -^> code 4
echo [ 06 ] Yellow -^> code 5
echo [ 07 ] White  -^> code 6 
echo __________________________
echo !!!!!!!!!!!!!!!!!!!!!!!!!!
echo [ Color Light ! ]
echo __________________________
echo [ 08 ] Light Blue   -^> 9
echo [ 09 ] Light Green  -^> A 
echo [ 10 ] Light Red    -^> C
echo [ 11 ] Light Yellow -^> E 
echo [ 12 ] Blue_Green   -^> 12 
echo.

:colorhsell
set /P color="[~]: "
if "%color%"=="" goto :colorhsell
cmd /c color  %color%
echo [!] Hit Enter To -^> Continue
pause>nul
cls 
goto :Start

::#################################################

:MC

start cmd /k   Scripts\moncon.bat
cls 
goto :Start


:publicip 
cls
COLOR b
echo ::::::::::::::::::::::::::::::::::::::::::::::::
echo.           Connecting To Opendns.....
echo ::::::::::::::::::::::::::::::::::::::::::::::::

Timeout /T 5 /NoBreak>nul 

for /f "tokens=1* delims=: " %%A in (
  'nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"'
) Do set ExtIP=%%B
echo.
Echo [~] External IP  : %ExtIP%

echo.
::nslookup myip.opendns.com. resolver1.opendns.com
echo Hit Enter To Continue
pause>nul
cls
goto :Start

:: ------------------------------------------------------

:Locker



cls
start cmd /K Scripts\Locker.exe

goto :Start



:Testint
cls

color 2


color 3

echo [*] Checking Internet Connection.....

Timeout /T 3 /NoBreak>nul


ping www.google.com -n 1 >nul

if errorlevel 1 (

	cls
	color 4
	echo [-] Not Connected To Internet
    echo.
		echo Hit Enter To Continue

		pause>nul

			cls
  			goto :Start




) 


	cls
	color 2
		echo [+] Connected To Internet
        echo.
		echo Hit Enter To Continue
		
		pause>nul

		cls
			Goto :Start




:speed_test

cls
echo Opening wwww.speedtest.net...


Timeout /T 2 /NoBreak>nul 


explorer http://www.speedtest.net

cls
goto :Start




:Clean_Sys

cls
echo [!] Option Not Available Hit Enter To Continue

pause>nul

goto :Start

echo [1] Clean V1 
echo [2] Clean V2 
echo.

:inpshell
set /p input="[~]: "

if %input%==1 (

	goto :CleanV1


	) else if %input%==2 (


	goto :CleanV2


	) else (


goto :inpshell

	)



:CleanV1


:: Out Side Script


:: *********START CODE************

cls

echo [*] Cleaning Recent.....

del /s /f /q %userprofile%\Recent\*.*

echo [*] Cleaning C:\Windows\Prefetch\*.*.....

del /s /f /q C:\Windows\Prefetch\*.*


echo [*] Cleaning C:\Windows\Temp\*.*

del /s /f /q C:\Windows\Temp\*.*

echo [*] Cleaning appdata\local\temp\*.*

del /s /f /q %USERPROFILE%\appdata\local\temp\*.*

echo [+] Cleaning of junk files is finished!
Timeout /T 2 /NoBreak>nul 


goto :Start

::*********END CODE************




:fastping


cls

start cmd /K Scripts\fast_ping.bat


goto :Start


:proxy

cls
start cmd /K Scripts\proxy.bat
goto :Start


