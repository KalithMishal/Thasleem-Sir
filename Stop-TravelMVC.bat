@echo off
REM Stops the Tomcat that lives next to TravelMVC (same parent folder).
set "TOMCAT_BIN=%~dp0..\apache-tomcat-9.0.98\bin"
if not exist "%TOMCAT_BIN%\shutdown.bat" (
  echo Tomcat not found. Expected:
  echo   %TOMCAT_BIN%
  pause
  exit /b 1
)
cd /d "%TOMCAT_BIN%"
call shutdown.bat
echo Stop command sent. Wait a few seconds before starting again.
timeout /t 3 >nul
