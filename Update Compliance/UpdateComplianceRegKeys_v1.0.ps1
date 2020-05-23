
<#.
.SYNOPSIS
    Sets the Telemetry Keys for Log Analytics Update Compliance
.DESCRIPTION
    There are 2 registry keys that are required in addition to the Intune standard OMA-URI setting.
    This deploys the registry key to the Device in the Local Machine Section.
.NOTES
    File Name:  UpdateComplianceRegKeys_v1.0.ps1
    Author:     Imran Qureshi, End User Engineer
    Department: My Department
    Version:    1.0
    Date:       5/5/2020
#>

#Script name
$ScriptName = "UpdateComplianceRegKeys_v1.0"
#Logfile path
$ScriptLog = "$env:WINDIR\Logs\$ScriptName.log"
#Registry Path
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
#1st Key Name and Value
$Name = "AllowTelemetry"
$value = "2"
#2nd Key Name and Value
$Name2 = "MaxTelemetryAllowed"
$value2 = "2"

$Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")

#LogFile Function
Function LogWrite
{
    Param ([string]$logstring)
    Add-Content $ScriptLog -value $logstring
}

#Checks the path exists
IF(!(Test-Path $registryPath))
{
New-Item -Path $registryPath -Force | Out-Null
}

#Adds the AllowTelemetry Regkey
New-ItemProperty -Path $registryPath -Name $name -Value $value `
-PropertyType DWORD -Force | Out-Null
LogWrite $Stamp, $registryPath, $Name, 'Key applied successfully'

#Adds the MaxTelemetryAllowed Regkey (This key already exists in the Image with value 1 so also needs to be set to 2)
New-ItemProperty -Path $registryPath -Name $name2 -Value $value2 `
-PropertyType DWORD -Force | Out-Null
LogWrite $Stamp, $registryPath, $Name2, 'Key applied successfully'

