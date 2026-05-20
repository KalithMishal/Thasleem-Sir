@echo off
REM Pure CMD — no PowerShell, no Eclipse. Needs JDK on PATH + Tomcat 9 next to TravelMVC.
setlocal EnableDelayedExpansion
cd /d "%~dp0"

set "TOMCAT=%~dp0..\apache-tomcat-9.0.98"
if not exist "%TOMCAT%\lib\servlet-api.jar" (
  echo.
  echo ERROR: Tomcat 9 not found at:
  echo   %TOMCAT%
  echo Unzip Apache Tomcat 9 so the folder sits NEXT TO TravelMVC, for example:
  echo   E:\Thasleem sir\TravelMVC\
  echo   E:\Thasleem sir\apache-tomcat-9.0.98\
  echo.
  pause
  exit /b 1
)

where javac >nul 2>&1
if errorlevel 1 (
  echo ERROR: javac not found. Install JDK and add JDK\bin to PATH, then try again.
  pause
  exit /b 1
)

set "SERVLET_JAR=%TOMCAT%\lib\servlet-api.jar"
set "CLASSES=%~dp0WebContent\WEB-INF\classes"
set "DEPLOY=%TOMCAT%\webapps\TravelMVC"

if not exist "%~dp0src\" (
  echo ERROR: src folder not found.
  pause
  exit /b 1
)

mkdir "%CLASSES%" 2>nul

echo.
echo [1/4] Compiling Java...
set "JFILES="
for /r "%~dp0src" %%f in (*.java) do set JFILES=!JFILES! "%%f"
javac --release 17 -encoding UTF-8 -d "%CLASSES%" -cp "%SERVLET_JAR%" !JFILES!
if errorlevel 1 (
  echo COMPILATION FAILED.
  pause
  exit /b 1
)

echo [2/4] Copying WebContent to Tomcat webapps...
if exist "%DEPLOY%" rd /s /q "%DEPLOY%"
xcopy /e /i /y /q "%~dp0WebContent\*" "%DEPLOY%\"

echo [3/4] Stopping any old Tomcat on this install...
call "%TOMCAT%\bin\shutdown.bat" >nul 2>&1
timeout /t 4 /nobreak >nul

echo [4/4] Starting Tomcat...
echo.
echo  ============================================================
echo   Keep this window OPEN while you test the website.
echo   In your browser open:
echo     http://127.0.0.1:8888/TravelMVC/home
echo   (Port 8888 is in Tomcat conf\server.xml - change URL if you changed the port)
echo  ============================================================
echo.
echo Servlet lines ^(like [TravelMVC] HomeServlet...^) appear in THIS window after deploy and on each page hit.
echo Opening your default browser in 3 seconds...
start "TravelMVC-browser" cmd /c "timeout /t 3 /nobreak >nul && start http://127.0.0.1:8888/TravelMVC/home"
echo.
cd /d "%TOMCAT%\bin"
call catalina.bat run
echo.
pause
endlocal
