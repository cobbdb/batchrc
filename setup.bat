@echo off

if not "%1" == "/f" (
    :: Check if path contains batchrc already.
    echo."%path%" | findstr /c:"batchrc">nul && (
        echo ERROR: Batchrc was already setup! Please remove batchrc from your machine path variable before running again.
        echo Use /f to ignore this error message.
        goto:eof
    )
    if not "%BRC_PATH%" == "" (
        echo ERR: Batchrc was already setup! Please remove BRC_PATH environment variable before running again.
        echo Use /f to ignore this error message.
        goto:eof
    )
)

:: Grab the directory where this script is.
set brc_path=%~dp0

:: Updates system path variable with BRC path.
set clone=%PATH%
setx path /m ""
set PATH=%clone%;%brc_path%
setx path /m "%clone%;%brc_path%

:: Create machine variable with BRC path for later reference.
setx BRC_PATH %brc_path% /m
