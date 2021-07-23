@echo off 

color 3

echo :::::::::::::::::::::::::::::::::::::

echo ex: http://cimaclub.com
echo.
set /p Website="Website [~]: "

echo.



echo [1] Open With Firefox 
echo [2] Open With Chrome
echo.
:sh

set /p ch="[~]: "

if %ch%==1 (

 
start "" "C:\Program Files\Mozilla Firefox\firefox.exe"  http://googleweblight.com/i?u=%Website%


) else if %ch%==2 (



start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://googleweblight.com/i?u=%Website%


) else (

goto :sh



)
