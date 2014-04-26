@echo off

if [%1]==[] (
    echo Missing name of repository. Use /? for help.
    goto:eof
)
if "%1" == "/?" (
    Clone one of your GitHub repos.
    echo gitclone ^<repo name without .git^>
    goto:eof
)

call config
git clone git@github.com:%gh_username%/%1.git
