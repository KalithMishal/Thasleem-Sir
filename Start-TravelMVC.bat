@echo off
REM Double-click this file to run TravelMVC (compile, deploy, Tomcat) — uses CMD only.
REM Same as Run-TravelMVC-CMD.bat. Keep the window OPEN while you use the site.
title TravelMVC — Tomcat (do not close while testing)
cd /d "%~dp0"
echo.
echo  TravelMVC — starting Tomcat from this folder:
echo  %~dp0
echo.
call "%~dp0Run-TravelMVC-CMD.bat"
echo.
pause
