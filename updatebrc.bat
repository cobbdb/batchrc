@echo off

pushd "%~dp0"
cd /d %BRC_PATH%
call gitreset
popd
