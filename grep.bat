@echo off

:: Print help instead of running.
if "%1" == "/?" (
    echo Usage: grep "<string>" ^<filename pattern^>
    echo Ex: grep "setTimeout" *.js
    echo.
    echo Search this and all sub directories for files that match the filename
    echo pattern and contain the search string.
    goto:eof
)

:: http://www.computerhope.com/findstr.htm
:: http://ss64.com/nt/color.html
:: http://ss64.com/nt/findstr.html
echo Searching...
echo.
findstr /s /a:e /n /o /r /c:%1 %2
