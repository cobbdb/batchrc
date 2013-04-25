@echo off
setlocal EnableDelayedExpansion

echo.
echo Starting to minify...

:: Pick an output file name.
if not "%1"=="" (
    set fname=%1
) else (
    set fname=final
)
echo ^> Output filename is %fname%.
echo.

:: Ensure directory is clean.
echo ^> Cleaning up any existing minify files...
del mini_temp.*
del %fname%.min.*
echo ^> ... done.
echo.

:: Combine all js and css files into temp files.
echo ^> Combining all JS and CSS files...
for /r %%d in (.) do (
    type %%d\*.js >> mini_temp.js
    type %%d\*.css >> mini_temp.css
)
echo ^> ... done.
echo.

:: Minify js temp file.
:: @see http://crockford.com/javascript/jsmin
echo ^> Minifying JavaScript...
C:\batchrc\progs\jsmin\jsmin < mini_temp.js > %fname%.min.js
echo ^> ... done.
echo.

:: Minify css temp file.
:: @see http://www.dotnetperls.com/minify-css
echo ^> Minifying CSS...
C:\batchrc\progs\csstidy-1.3-exe\csstidy mini_temp.css --template=highest %fname%.min.css
echo ^> ... done.
echo.

:: Cleanup temp files.
del /q mini_temp.*

echo.
echo ... minification complete^^!
echo.
