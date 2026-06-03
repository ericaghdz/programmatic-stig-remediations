<#
.SYNOPSIS
    This PowerShell script enables advanced audit policy subcategories to override legacy audit policy categories and then verifies the configuration.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-03
    Last Modified   : 2026-06-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000030
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-SO-000030/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-SO-000030.ps1 
#>

# Enables advanced audit policy subcategories to override legacy categories
New-ItemProperty `
    -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" `
    -Name "SCENoApplyLegacyAuditPolicy" `
    -PropertyType DWord `
    -Value 1 `
    -Force

# Verifies configuration
Get-ItemProperty `
    -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" `
    -Name "SCENoApplyLegacyAuditPolicy"
