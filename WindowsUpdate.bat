@echo off

rem Schedule the script to run daily at 10pm
schtasks /create /tn "Windows Updates" /tr "cmd /c %~dp0\WindowsUpdates.bat" /sc DAILY /st 22:00

rem Check for updates and install them
wuauclt /detectnow /updatenow

rem Check if a reboot is required after updates are installed
wmic os get lastbootuptime | findstr "." >nul
if %errorlevel% equ 0 (
    echo A reboot is required. The system will now reboot.
    shutdown /r
)
