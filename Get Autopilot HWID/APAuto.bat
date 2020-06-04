

curl -O "https://raw.githubusercontent.com/1iquk/Intune/master/Get%%20Autopilot%%20HWID/Get-WindowsAutoPilotInfo.ps1"
curl -O "https://raw.githubusercontent.com/1iquk/Intune/master/Get%%20Autopilot%%20HWID/GetAutopilot_HWID.bat"

CALL GetAutopilot_HWID.bat

REM TIMEOUT 7

Del Get-WindowsAutoPilotInfo.ps1
Del GetAutopilot_HWID.bat
Del APAuto.bat