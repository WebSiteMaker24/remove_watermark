@echo off
echo === Masquage watermark Windows (registre + refresh UI) ===

:: Masque l'affichage version / watermark
reg add "HKCU\Control Panel\Desktop" /v PaintDesktopVersion /t REG_DWORD /d 0 /f

:: Redémarre Explorer pour appliquer
taskkill /F /IM explorer.exe >nul 2>&1
start explorer.exe

echo.
echo Termine. Si le texte est encore la, redemarre Windows.
pause
