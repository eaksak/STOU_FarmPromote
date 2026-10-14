@echo off
chcp 65001 > nul
echo ========================================================
echo   Git Push: STOU 91351 Farm Promotion Exam Tutor
echo ========================================================
echo.

:: 1. Check if git remote origin is configured
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo [!] ยังไม่ได้เชื่อมต่อกับ GitHub Remote (origin)
    echo.
    echo คำแนะนำ: หากยังไม่ได้สร้าง Repository บน GitHub ให้ไปที่
    echo https://github.com/new เพื่อสร้าง Repository ใหม่ก่อน
    echo.
    set /p "remote_url=กรุณากรอก GitHub URL (เช่น https://github.com/eaksak/STOU_FarmPromote.git): "
    if not "%remote_url%"=="" (
        git remote add origin %remote_url%
        echo [OK] เพิ่ม Remote origin เรียบร้อยแล้ว!
    ) else (
        echo [!] ยกเลิกการ Push เนื่องจากยังไม่มี Remote URL
        pause
        exit /b 1
    )
    echo.
)

:: 2. Stage all changes
git add .

:: 3. Commit with custom or default message (proper quotes handling)
set "commit_msg=Update STOU 91351 Farm Promotion Web App, PDFs and 750 Quizzes"
set /p "user_msg=Enter commit message (Press Enter for default): "
if not "%user_msg%"=="" set "commit_msg=%user_msg%"

git commit -m "%commit_msg%"

:: 4. Push to remote
echo.
echo Pushing to GitHub (origin main)...
git push -u origin main
if errorlevel 1 (
    echo.
    echo [!] เกิดข้อผิดพลาดในการ Push กรุณาตรวจสอบ:
    echo 1. ท่านได้สร้าง Repository บน GitHub แล้วหรือไม่
    echo 2. URL ถูกต้องหรือไม่
    echo 3. สิทธิ์การเข้าถึง GitHub (Login / Personal Access Token)
) else (
    echo.
    echo ========================================================
    echo   [SUCCESS] Push ขึ้น GitHub เรียบร้อยแล้ว!
    echo ========================================================
)

echo.
pause
