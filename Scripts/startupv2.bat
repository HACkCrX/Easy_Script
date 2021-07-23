
@echo off



title Startup Script

call Scripts\colorrand.exe

:loop
cls

echo {==============================}
echo             Startup
echo {==============================}
echo.
echo.


echo [01] Chrome 
echo [02] Firefox
echo [03] Egybest
echo [04] Instagram
echo [05] Facebook
echo [06] Youtube [firefox]
echo [07] Youtube [chrome]
echo [08] Ping 
echo [09] Youtube list songs
echo [10] Yasmine elkhateib
echo [11] Ping yahoo
echo [12] Paint
echo [13] Instagram Mobile
echo [14] Chrom Private Tap
echo [15] Yasmine elkhateib Social Accounts
echo [16] Porn
echo [17] Google Translate


echo.
echo.
set /p ch="[~]:-> " 


if "%ch%"=="" (

goto :loop


)

if %ch%==1 (
cls
echo [*] Wating For Close.....

call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

goto :loop
) 

if %ch%==2 (


call "C:\Program Files\Mozilla Firefox\firefox.exe"
goto :loop

)


if %ch%==3 (
cls
echo [*] Wating For Close.....
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://esco.egybest.pw/

goto :loop


)


if %ch%==4 (
cls
echo [*] Wating For Close.....
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.instagram.com/

goto :loop



) 


if %ch%==5 (
cls
echo [*] Wating For Close.....

call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.facebook.com/
goto :loop

)



if %ch%==6 (

call "C:\Program Files\Mozilla Firefox\firefox.exe" https://www.youtube.com/
goto :loop

)

if %ch%==7 (
cls
echo [*] Wating For Close.....
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.youtube.com/

goto :loop
)


if %ch%==8 (


start cmd /K Scripts\test_internet.bat
goto :loop


)

if %ch%==9 (

cls
echo [*] Wating For Close.....
 
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.youtube.com/watch?v=gdx7gN1UyX0&list=RDgdx7gN1UyX0&start_radio=1&t=0
goto :loop
)



if %ch%==10 (
cls
echo [*] Wating For Close.....

call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.instagram.com/yasmine.el.khateib/
goto :loop


)

if %ch%==11 (

start cmd /K Scripts\server_ping.bat

goto :loop

)

if %ch%==12 (
cls
start cmd /K Scripts\Paint.bat


goto :loop
) 

if %ch%==13 (
cls
echo [*] Wating For Close.....

call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" chrome-extension://odlpjhnipdekfkdkadoecooboghijleh/app/index.html

goto :loop

) 

if %ch%== 14 (

start cmd /C Scripts\PrivateTap.exe
goto :loop

)

if %ch%==15 (

start cmd /C Scripts\yasmine_elkhateib.exe
goto :loop
)

if %ch%==16 (

start cmd /K Scripts\porno.exe
goto :loop

) 

if %ch%==17 (
cls 
echo [*] Wating For Close.....
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://translate.google.com.eg/?hl=ar#view=home&op=translate&sl=en&tl=ar&text=%3D
goto :loop

) else (


goto :loop
)