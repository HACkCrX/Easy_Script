@echo off
color 3
title Ping Yahoo.com
:Loop
ping yahoo.com -n 1 | find "Reply" 

::|| find "Request"

goto :Loop