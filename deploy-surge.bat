@echo off
echo ========================================================
echo   RIAI Website — Deploying to Surge.sh
echo ========================================================
echo.
cd /d "C:\Users\ntbha\.gemini\antigravity\scratch\ria-scheme-navigator"
echo Deploying folder: %CD%
echo.
npx surge . ria-scheme-navigator.surge.sh
echo.
echo ========================================================
echo Deployment process finished!
echo ========================================================
pause
