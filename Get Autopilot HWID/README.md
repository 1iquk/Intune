# Get Autopilot HWID
### Autopilot_HWID_1.5 - Imran Qureshi, 23/05/2020
**_Tested on Windows 10 Pro 1909_**

## Description

This batch file automatically runs the Get-WindowsAutoPilotInfo.ps1 script and appends the Hardware Hash ID into the csv file.
Run from any folder on Windows desktop or from the OOBE by pressing Shift+F10. (some laptops Shift+FN+F10)


### Instructions

1. Download the batch and PowerShell files to the same folder

    You can use DownGit to download just the above files. Paste in the URL of this page into the link box:
    https://minhaskamal.github.io/DownGit

2. Edit the GroupTag in the batch file
3. Right click the batch file > Run as Administrator (On OOBE open CMD and run the batch file directly from the command line)

### Features

* Starts Windows Management Service (required)
* Runs from Desktop and OOBE
* Runs from any folder path (including spaces)
* Automatically creates AutopilotDevices.csv file and appends additional devices to the same file
* Adds GroupTag to assign to a Group in Intune automatically when uploaded

