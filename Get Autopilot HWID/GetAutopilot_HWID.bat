@ECHO ON
GOTO :---
Title/Author: Autopilot_HWID_1.5 Imran Qureshi, 23/05/2020
Desc: This script starts required services then runs the Get-WindowsAutoPilotInfo.ps1 v2.1 script
It can be run from OOBE via USB or anywhere on the Windows desktop. 
The csv file will be created if it doesn't exist. Each device's HW Hash will be added to the same csv file.
Change the Group Tag to your own Tag or use Find/Replace All in a text editor later.
:---

:: Start Windows Management Service
net start WManSvc

:: On some occasions WManSvc service does not start in time before script, adding 5 sec timeout
Timeout 5

pushd "%~dp0"

:: Start PowerShell script and automatically save to file Autopilotdevices.csv in the same folder
PowerShell -NoProfile -ExecutionPolicy Bypass -Command .\Get-WindowsAutoPilotInfo.ps1 -GroupTag KIOSK -OutputFile AutopilotDevices.csv -Append

popd

