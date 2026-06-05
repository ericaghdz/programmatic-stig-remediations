<#
.SYNOPSIS
    This PowerShell script configures User Account Control (UAC) to automatically deny elevation requests from standard users, preventing credential prompts and unauthorized privilege escalation attempts.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-04
    Last Modified   : 2026-06-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000255
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-SO-000255/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-SO-000255.ps1
#>

# Configure:
# User Account Control: Behavior of the elevation prompt for standard users
# Setting: Automatically deny elevation requests

$RegistryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$ValueName = "ConsentPromptBehaviorUser"
$ValueData = 0

# Set the policy value
Set-ItemProperty -Path $RegistryPath -Name $ValueName -Value $ValueData -Type DWord

# Verify the setting
Get-ItemProperty -Path $RegistryPath -Name $ValueName | Select-Object $ValueName
