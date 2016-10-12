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
set profile_bscp=%term_path%\%1.bscp
set profile_tlp=%term_path%\%1.tlp
echo.
if exist "%profile_bscp%" (
    echo Connecting with profile %1.bscp ...
    echo.
    stermc -profile="%profile_bscp%"
    goto:eof
) else (
    if exist "%profile_tlp%" (
        echo Connecting with profile %1.tlp ...
        echo.
        stermc -profile="%profile_tlp%"
        goto:eof
    ) else (
        echo Connecting to %1 ...
        echo.
        stermc %1
        goto:eof
    )
)
