@echo off
:: http://ss64.com/nt/syntax-args.html

if exist %~1/* (
    rd /s /q %~1
) else (
    del %*
)
