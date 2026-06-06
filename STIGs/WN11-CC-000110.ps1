<#
.SYNOPSIS
    This PowerShell script enables the policy that disables printing over HTTP/HTTPS by configuring the corresponding Group Policy registry setting.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-06
    Last Modified   : 2026-06-06
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000110
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000110/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-CC-000110.ps1 
#>

New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers' -Force | Out-Null

Set-ItemProperty `
    -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers' `
    -Name 'DisableHTTPPrinting' `
    -Type DWord `
    -Value 1
