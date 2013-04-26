@echo off

:: Print help instead of running.
if "%1"=="/?" (
    echo Usage: touch [/?] filename
    echo.
    echo Creates an empty file with the given name and extension.
    goto:eof
)

:: http://ss64.com/nt/syntax-args.html
echo. > %1
