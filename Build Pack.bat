@echo off
echo Promotion Type?

set /p CurrentBuild=<buildnumber.txt
set /a BUILD_NUMBER=%CurrentBuild%
echo %BUILD_NUMBER% >buildnumber.txt

set FILE_NAME=UniversalElectricity_FTB_ModPack_%BUILD_NUMBER%.zip

set FILE_NAME_S=UniversalElectricity_FTB_ModPack_Server_%BUILD_NUMBER%.zip

echo Starting to build the mod pack Client

::ZIP-UP
echo Starting to Zip up Client

cd Client\
"..\7za.exe" a "..\builds\%FILE_NAME%" "*"
cd ..\

echo Done building %FILE_NAME%

echo Starting to build the mod pack Server

::ZIP-UP
echo Starting to Zip up Server

cd Server\
"..\7za.exe" a "..\builds\%FILE_NAME_S%" "*"
cd ..\

echo Done building %FILE_NAME_S%

pause