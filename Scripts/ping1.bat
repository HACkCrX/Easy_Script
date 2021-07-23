@echo off

color 2

set /P ip="#> "

ping -n 5 %ip%
pause
