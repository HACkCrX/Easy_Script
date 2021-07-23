@echo off

call Scripts\colorrand.exe

echo [*] Wating For Paint Close....

set /A c=0
:repeat
set /A c+=1
mspaint 

if %c% LSS 30 goto :repeat 








