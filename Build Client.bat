@echo off
echo Promotion Type?

set /p CurrentBuild=<buildnumber.txt
set /a BUILD_NUMBER=%CurrentBuild%+1
echo %BUILD_NUMBER% >buildnumber.txt

set FILE_NAME=UniversalElectricity_FTB_ModPack

echo Starting to build the mod pack

::ZIP-UP
echo Starting to Zip up Client
cd Client\
"7za.exe" a "..\builds\%FILE_NAME%_%BUILD_NUMBER%" "*"
cd ..\

echo Done building %FILE_NAME%

pause