@echo off

:: Print help instead of running.
if "%1"=="/?" (
    echo Usage: filecount [/?]
    echo.
    echo Displays a tally of all files in the current directory. Includes hidden files.
    goto:eof
)

:: http://social.technet.microsoft.com/wiki/contents/articles/9173.counting-the-number-of-files-in-a-directory-command-line-style.aspx
dir /s /b /a-d %1 | find /v /c "::"
