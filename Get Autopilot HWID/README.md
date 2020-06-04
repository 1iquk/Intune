# Get Autopilot HWID
### GetAutopilot_HWID_1.0 - Imran Qureshi, 23/05/2020
**_Tested on Windows 10 Pro x64 1909_**

## Description

This batch file automatically runs the Get-WindowsAutoPilotInfo.ps1 script and appends the Hardware Hash ID into the csv file.
Run from any folder on Windows desktop or from the OOBE by pressing Shift+F10. (some laptops Shift+FN+F10)


### Instructions

1. Download the batch and PowerShell file to the same folder
2. Edit the GroupTag in the batch file or use Find/Replace All (Ctrl+H) in any text editor later to replace the word KIOSK with your GroupTag
3. Right click the batch file > Run as Administrator (On OOBE open CMD and run the batch file directly from the command line)

### Features

* Starts Windows Management Service (required)
* Runs from Desktop and OOBE (Windows USB Drive or any other USB Drive)
* Runs from any folder path (including spaces)
* Automatically creates AutopilotDevices.csv file and appends additional devices to the same file
* Adds GroupTag to assign to a Group in Intune automatically when uploaded

