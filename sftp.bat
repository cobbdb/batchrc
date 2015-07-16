@echo off
call config

if [%1]==[] (
    echo Missing destination. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    echo Usage: sftp profileName^|user@host.com
    echo.
    echo SFTP using the Bitvice SFTP Client.
    goto:eof
)

:: http://www.bitvise.com/tunnelier#sftpc
set profile=%term_path%\%1.bscp
if exist %profile% (
    sftpc -profile=%profile%
    goto:eof
) else (
    sftpc %1
    goto:eof
)
