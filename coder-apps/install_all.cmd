@echo off
if =%1-==-- echo "Usage: install_all.cmd [coderbase]" & exit /b

set base=%1

REM Create base folder
IF NOT EXIST %base%   (
   mkdir %base%
)

echo "Copying base files...."
xcopy ..\common-base\*.* %base% /E

echo "Installing common files"
call install_common.cmd %base%

echo "Preparing dependent libraries"
 cd %base%
 npm install