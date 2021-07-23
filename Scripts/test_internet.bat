@echo off


call Scripts\colorrand.exe

:loop
ping www.google.com -n 1 >nul

if errorlevel 1 (


	echo [-] Server Google Request Time Out...




) 


	
		echo [+] Server Google Replay Connection is Up 
		
		

goto :loop





