@echo off

if [%1]==[] (
    echo Missing destination. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    echo ssh profileName^|user@host.com
    goto:eof
)

:: http://www.bitvise.com/tunnelier#sexec
set profile=F:\Documents\SSHProfiles\%1.bscp
if exist %path% (
    stermc -profile=%profile%
) else (
    stermc %1
)
