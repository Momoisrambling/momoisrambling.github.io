@echo off
echo [1/4] Pulling latest changes from GitHub...
git pull origin main --no-edit

echo [2/4] Adding all changes...
git add .

echo [3/4] Committing changes...
set "msg=Update site %date% %time%"
git commit -m "%msg%"

echo [4/4] Pushing to GitHub...
git push

echo.
echo ==========================================
echo   Done! Your site is updating...
echo ==========================================
pause