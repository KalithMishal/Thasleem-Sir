# Run TravelMVC with the Tomcat 9 folder next to this project (e:\Thasleem sir\apache-tomcat-9.0.98).
# HTTP port is 8081 (see README) if 8080 is busy on your PC.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$proj = $PSScriptRoot
$tomcat = Join-Path $root 'apache-tomcat-9.0.98'
if (-not (Test-Path $tomcat)) {
  Write-Error "Tomcat not found at: $tomcat`nDownload Tomcat 9 zip, extract so the folder is next to TravelMVC."
}
$servlet = Join-Path $tomcat 'lib\servlet-api.jar'
$classes = Join-Path $proj 'WebContent\WEB-INF\classes'
$deploy = Join-Path $tomcat 'webapps\TravelMVC'
New-Item -ItemType Directory -Force -Path $classes | Out-Null
$javaFiles = Get-ChildItem -Path (Join-Path $proj 'src') -Filter *.java -Recurse | ForEach-Object { $_.FullName }
Write-Host 'Compiling...'
& javac --release 11 -encoding UTF-8 -d $classes -cp $servlet @($javaFiles)
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host 'Deploying...'
if (Test-Path $deploy) { Remove-Item $deploy -Recurse -Force }
Copy-Item -Path (Join-Path $proj 'WebContent') -Destination $deploy -Recurse
$bin = Join-Path $tomcat 'bin'
Write-Host 'Stopping any previous Tomcat using this install (see conf\server.xml for ports)...'
Push-Location $bin
try {
  # Run shutdown inside cmd so Java "NOTE: Picked up JDK..." on stderr does not stop this script
  # (PowerShell treats native stderr as error when $ErrorActionPreference = 'Stop').
  cmd /c "shutdown.bat >nul 2>&1"
} finally {
  Pop-Location
}
Start-Sleep -Seconds 4

$serverXmlPath = Join-Path $tomcat 'conf\server.xml'
$httpPort = '8888'
if (Test-Path $serverXmlPath) {
  $xml = Get-Content $serverXmlPath -Raw
  if ($xml -match 'Connector port="(\d+)" protocol="HTTP/1\.1"') {
    $httpPort = $Matches[1]
  }
}

Write-Host "Starting Tomcat...`nOpen: http://localhost:$httpPort/TravelMVC/home`n(Press Ctrl+C to stop)`n"
Set-Location $bin
& .\catalina.bat run
