@echo off
chcp 65001 > nul
echo ========================================================
echo   Git Push: STOU 91351 Farm Promotion Exam Tutor
echo ========================================================
echo.
git add .
set /p commit_msg="Enter commit message (Press Enter for default): "
if "%commit_msg%"=="" set commit_msg="Update STOU 91351 Farm Promotion Web App, PDFs and 750 Quizzes"
git commit -m "%commit_msg%"
echo.
echo Pushing to GitHub...
git push origin main
echo.
echo Done!
pause
