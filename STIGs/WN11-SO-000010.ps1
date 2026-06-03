<#
.SYNOPSIS
    This PowerShell script disables the built-in Windows Guest account and verifies that the account is disabled by displaying its current enabled status.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-03
    Last Modified   : 2026-06-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000010
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-SO-000010/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-SO-000010.ps1 
#>

# Disables built-in Guest account
Disable-LocalUser -Name "Guest"

# Retrieves Guest account's current status and displays for verification
Get-LocalUser -Name "Guest" | Select-Object Name, Enabled
