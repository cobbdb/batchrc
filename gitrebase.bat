@echo off

if [%1]==[] (
    set branch=master
) else (
    set branch=%1
)

echo Fetch and rebase onto origin/%branch%
echo.
git fetch
git rebase -i origin/%branch%
