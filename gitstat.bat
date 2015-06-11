@echo off

if [%1]==[] (
    set branch=master
) else (
    set branch=%1
)

git diff origin/%branch% --name-only
