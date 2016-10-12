@echo off
call config

if [%1]==[] (
    echo Missing destination. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    echo Usage: ssh profileName^|user@host.com
    echo.
    echo SSH using the Bitvice SSH Client.
    goto:eof
)

:: http://www.bitvise.com/tunnelier#sexec
set profile=%term_path%\%1.bscp
echo.
if exist "%profile%" (
    echo Connecting with profile %1.bscp ...
    echo.
    stermc -profile="%profile%"
    goto:eof
) else (
    set profile=%term_path%\%1.tlp
    if exist "%profile%" (
        echo Connecting with profile %1.tlp ...
        echo.
        stermc -profile="%profile%"
        goto:eof
    ) else (
        echo Connecting to %1 ...
        echo.
        stermc %1
        goto:eof
    )
)
