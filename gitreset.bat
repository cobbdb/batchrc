@echo off

if [%1]==[] (
    set branch=master
) else (
    set branch=%1
)

echo Fetch and reset to origin/%branch%
echo.
git fetch
git reset --hard origin/%branch%
