<#
.SYNOPSIS
    This PowerShell script disables Windows Search indexing of encrypted files by configuring the corresponding Local Group Policy registry setting.

.NOTES
    Author          : Eric Aguilar-Hernandez
    LinkedIn        : linkedin.com/in/ericaghdz/
    GitHub          : github.com/ericaghdz
    Date Created    : 2026-06-03
    Last Modified   : 2026-06-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000305
    Documentation   : https://stigaview.com/products/win11/v2r7/WN11-CC-000305/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN11-CC-000305.ps1 
#>

# Disable "Allow indexing of encrypted files"
# Local Group Policy Path:
# Computer Configuration > Administrative Templates > Windows Components > Search > Allow indexing of encrypted files

$RegistryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
$ValueName = "AllowIndexingEncryptedStoresOrItems"

# Create the registry key if it does not exist
if (-not (Test-Path $RegistryPath)) {
    New-Item -Path $RegistryPath -Force | Out-Null
}

# Set the policy to Disabled (DWORD = 0)
New-ItemProperty `
    -Path $RegistryPath `
    -Name $ValueName `
    -PropertyType DWord `
    -Value 0 `
    -Force | Out-Null

Write-Host "'Allow indexing of encrypted files' has been set to Disabled."
