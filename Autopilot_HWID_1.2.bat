@ECHO ON
:: Autopilot_HWID_1.2 Imran Qureshi, 15/04/2020
:: This script starts required services then runs Get-WindowsAutoPilotInfo.ps1 v2.1 The 2 files need to be in the root of the USB Drive to run successfully
:: It can be run from OOBE via USB or the Windows C: Drive. The csv file will be created if it doesn't exist. Each device's HW Hash will be added to the same csv file.
:: Please change the Group Tag to your own Tag or use Find/Replace All in a text editor later.

:: Start Windows Management Service
net start WManSvc
:: Start Windows Remote Management Service
net start WinRM

:: Start PowerShell script and automatically save to file Autopilotdevices.csv in the same folder. 
:: Set your own GroupTag in the command or remove GroupTag if required
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command %~d0\Get-WindowsAutoPilotInfo.ps1 -ComputerName $env:computername -GroupTag KIOSK -OutputFile %~d0\AutopilotDevices.csv -append
