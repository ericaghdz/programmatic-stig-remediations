<#
.SYNOPSIS
    This PowerShell script enables the policy that prevents downloading printer driver packages over HTTP by configuring the corresponding registry setting.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-06
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000100
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000100/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-CC-000100.ps1 
#>

New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers' -Force | Out-Null

Set-ItemProperty `
    -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers' `
    -Name 'DisableWebPnPDownload' `
    -Type DWord `
    -Value 1
