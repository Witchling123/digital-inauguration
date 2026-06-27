@echo off
cd /d "%~dp0"
echo ===========================================================
echo   Behaviour Change Conclave - Digital Inauguration
echo   Serving this folder over http so the YouTube video works.
echo   (YouTube blocks embeds opened directly as a file -> error 153)
echo   Keep this window OPEN during the event. Close it to stop.
echo ===========================================================
echo.
where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000/index.html
  python -m http.server 8000
  goto :eof
)
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000/index.html
  py -m http.server 8000
  goto :eof
)
echo Python was not found on this machine.
echo.
echo BEST ALTERNATIVE (no server, no internet needed):
echo   1) Download the inauguration video as an .mp4 into this folder.
echo   2) In index.html set:  LOCAL_VIDEO_SRC : "yourfile.mp4",
echo   3) Then just open index.html directly.
echo.
pause
