<#	
	---------------------------------------------------------------------------
	 PowerShell Profile
	=========================================================================== 	
	 Filename: 'profile.ps1'
	 Version: 1.0.2
	 Author: A.D.121
	 Link: 
	===========================================================================
     PowerShell Profile Script
    ===========================================================================
	.DESCRIPTION
		PowerShell Profile. AllUsers/AllHosts
	---------------------------------------------------------------------------
#>

##########################
####### BEGIN FILE #######
##########################

#region Modules Import

function Get-PriorityModules
{
    Import-Module "C:\PowerShell\Modules\posh-git\posh-git.psd1"
	Import-Module "C:\PowerShell\Modules\oh-my-posh\oh-my-posh.psd1"
	Import-Module "C:\PowerShell\Modules\Environment\Environment.psd1"
}
Get-PriorityModules

#endregion

#region Global Functions

function ...
{
	param(
		[Parameter(Mandatory = $true
		Position = 0
		HelpMessage = "Enter a path...")]
		[String]$Path
	)

	Set-Location $Path

}

function edit
{
	yedit
}



function Get-FilesByType
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $false
        Position = 0
        HelpMessage = "Enter a path to search.")]
        [string]$Path,
        [Parameter(Mandatory = $true
        Position = 1
        HelpMessage = "Enter a filetype to search for. (Uses Wildcards (ie *.jpeg/*.*/Test.*/Test*.*/etc.))")]
        [SupportsWildcards()]
        [Alias("Type")]
        [string]$Filetype
    )

    if ($Path -gt 0) { Get-CHildItem -Path $Path -Include $Filetype } else { Get-CHildItem -Path $pwd -Include $Filetype }
}