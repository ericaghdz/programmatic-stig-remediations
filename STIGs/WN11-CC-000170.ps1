<#
.SYNOPSIS
    This PowerShell script enables enterprise account sign-in for supported Microsoft Store apps instead of requiring Microsoft accounts.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-06
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000170
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000170/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-CC-000170.ps1 
#>

New-Item `
    -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' `
    -Force | Out-Null

Set-ItemProperty `
    -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' `
    -Name 'MSAOptional' `
    -Type DWord `
    -Value 1
