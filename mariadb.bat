@echo off
:: Mengecek apakah script dijalankan sebagai administrator
NET SESSION >NUL 2>&1
IF %ERRORLEVEL% EQU 0 (
    goto :start
) else (
    echo Membutuhkan izin administrator. Mohon tunggu...
    echo.
    echo Silakan jalankan skrip ini lagi dengan hak administrator.
    pause
    exit /b
)

:start
echo Silakan pilih tindakan yang ingin Anda lakukan:
echo 1. Berhenti MariaDB
echo 2. Mulai MariaDB
set /p choice=Masukkan pilihan (1/2): 

if %choice%==1 (
    net stop MariaDB
) else if %choice%==2 (
    net start MariaDB
) else (
    echo Pilihan tidak valid.
    pause
    exit /b
)

pause
