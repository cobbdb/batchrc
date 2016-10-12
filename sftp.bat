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

if [%2] == [] (
    set cmd=
) else (
    set cmd=-cmd=%2
)

set profile_bscp=%term_path%\%1.bscp
set profile_tlp=%term_path%\%1.tlp
echo.
if exist "%profile_bscp%" (
    echo Connecting with profile %1.bscp ...
    echo.
    sftpc -profile="%profile_bscp%" %cmd%
    goto:eof
) else (
    if exist "%profile_tlp%" (
        echo Connecting with profile %1.tlp ...
        echo.
        sftpc -profile="%profile_tlp%" %cmd%
        goto:eof
    ) else (
        echo Connecting to %1 ...
        echo.
        sftpc %*
        goto:eof
    )
)
