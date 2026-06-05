<#
.SYNOPSIS
    This PowerShell script enables the Windows security policy "Microsoft network server: Digitally sign communications (always)" by configuring the SMB server to require digitally signed communications.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-04
    Last Modified   : 2026-06-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000120
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-SO-000120/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-SO-000120.ps1
#>

# Requires administrative privileges

# Enable "Microsoft network server: Digitally sign communications (always)"
Set-SmbServerConfiguration -RequireSecuritySignature $true -Force

# Verify the setting
Get-SmbServerConfiguration | Select-Object RequireSecuritySignature
