@echo off
call config

if [%1] == [] (
    echo Missing destination. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    echo Usage: sftp profileName^|user@host.com ["server commands"]
    echo.
    echo SFTP using the Bitvice SFTP Client.
    goto:eof
)

:: http://www.bitvise.com/tunnelier#sftpc
set profile=%term_path%\%1.bscp
if [%2] == [] (
    set cmd=-profile="%profile%"
) else (
    set cmd=-profile="%profile%" -cmd=%2
)

if exist %profile% (
    sftpc %cmd%
    goto:eof
) else (
    sftpc %*
    goto:eof
)
