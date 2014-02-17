@echo off

if [%1]==[] (
    set branch=master
) else (
    set branch=%1
)

git fetch
git reset --hard origin/%branch%
