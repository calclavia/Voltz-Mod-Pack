@echo off
echo Promotion Type?

set /p CurrentBuild=<buildnumberS.txt
set /a BUILD_NUMBER=%CurrentBuild%+1
echo %BUILD_NUMBER% >buildnumber.txt

set FILE_NAME=UniversalElectricity_FTB_ModPack
set FILE_NAME_S=UniversalElectricity_FTB_ModPack_Server_%BUILD_NUMBER%.zip

echo Starting to build the mod pack

::ZIP-UP
echo Starting to Zip up Server
cd Server\
"7za.exe" a "..\builds\%FILE_NAME_S%" "*"
cd ..\

echo Done building %FILE_NAME_S%

pause