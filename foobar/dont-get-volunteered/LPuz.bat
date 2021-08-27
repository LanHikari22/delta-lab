@echo off
@REG QUERY "HKCU\CONSOLE" /v virtualTerminalLevel | Find "0x1" >nul 2>&1
if %ERRORLEVEL%==1 (
  echo "setting the HKCU\Console\VirtualTerminalLevel registry to 1 to enable console colors"
  REG ADD HKCU\CONSOLE /f /v VirtualTerminalLevel /t REG_DWORD /d 1 >nul 2>&1
  echo "Please restart your terminal or this bat file to apply effects!"
  pause
  start "Spawned Window" "%~f0"
  exit
)

call :ExtractEmbeddedBinary "LPuz.jar"
if %ERRORLEVEL% NEQ 0 ( 
  echo "error: failed to extract game" 
  exit /b 1
)

java -jar LPuz.jar
pause
exit /b 0

:: (extract_path: str) -> void
:ExtractEmbeddedBinary
  setlocal

  set MBEGIN=-1
  for /f "useback tokens=1 delims=: " %%a in (`findstr /B /N /C:"-----BEGIN CERTIFICATE-----" "%~f0"`) do (
    set /a MBEGIN=%%a-1
  )

  if "%MBEGIN%"=="-1" (
    endlocal && exit /b -1
  )

  :: delete previous output files
  if exist "%~1.tmp" del "%~1.tmp"
  if exist "%~1" del "%~1"

  :: extract binary encoded file
  for /f "useback skip=%MBEGIN% tokens=* delims=" %%a in ("%~f0") do (
    echo %%a >> "%~1.tmp"
  )

  :: decode binary file
  certutil -decode "%~1.tmp" "%~1" >nul 2>&1
  del "%~1.tmp"

  endlocal && exit /b 0

