@echo off
call config

if [%1]==[] (
    echo Missing destination. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    SFTP using the Bitvice SFTP Client.
    echo sftp profileName^|user@host.com
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
