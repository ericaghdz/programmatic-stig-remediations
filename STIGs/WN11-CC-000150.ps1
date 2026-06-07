<#
.SYNOPSIS
    This PowerShell script enables password authentication when a plugged-in computer resumes from sleep, preventing unauthorized access after wake-up.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-06
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000150
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000150/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-CC-000150.ps1 
#>

New-Item `
    -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51' `
    -Force | Out-Null

Set-ItemProperty `
    -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51' `
    -Name 'ACSettingIndex' `
    -Type DWord `
    -Value 1
