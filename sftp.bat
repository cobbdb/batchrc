@echo off

if [%1]==[] (
    echo Missing destination. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    echo sftp profileName^|user@host.com
    goto:eof
)

:: http://www.bitvise.com/tunnelier#sftpc
set profile=F:\Documents\SSHProfiles\%1.bscp
if exist %path% (
    sftpc -profile=%profile%
    goto:eof
) else (
    sftpc %1
    goto:eof
)
