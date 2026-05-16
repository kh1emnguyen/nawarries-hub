@echo off
cd /d "%~dp0"
echo === nawarries-hub push ===
if exist ".git" rmdir /s /q ".git"
git init & git branch -M main
git remote add origin https://github.com/kh1emnguyen/nawarries-hub.git
git config user.email "khiemnguyen166553@gmail.com"
git config user.name "kh1emnguyen"
git add -A
git commit -m "Restore hub + add Order App card"
git push -u origin main --force
echo.
echo THEN: github.com/kh1emnguyen/nawarries-hub/settings/pages
echo   Source: GitHub Actions ^(NOT "Deploy from branch"^) → Save
pause
