function Get-CommonParameters
{
    <#
        .SYNOPSIS
            Displays a list of 'CommonParameters'.

        .DESCRIPTION
            Displays a list of all available 'CommonParameters' includimg Parameter name, Type, Aliases, and Description of the Parameter.

        .PARAMETER Detailed
            Switch. Includes a Description of each Parameters functionality/use. 

        .EXAMPLE
            PS C:\> Get-CommonParameters -Detailed
            
            Parameter   : OutVariable
            Category    : Common
            Type        : String
            Aliases     : ov
            Description : Stores output objects from the command in the specified variable in addition to sending the output along
                          the pipeline.

            Parameter   : PipelineVariable
            Category    : Common
            Type        : String
            Aliases     : pv
            Description : PipelineVariable stores the value of the current pipeline element as a variable, for any named command
                          as it flows through the pipeline.

            Parameter   : OutBuffer
            Category    : Common
            Type        : Int32
            Aliases     : ob
            Description : Determines the number of objects to accumulate in a buffer before any objects are sent through the
                              pipeline. If you omit this parameter, objects are sent as they're generated.

        .LINK
            https://github.com/Xenirvana

        .NOTES
            This Function is intended to be similar to the Get-Verb Cmdlet, and is useful for PowerShell Development tasks.
    #>

    [CmdletBinding()]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "Specify to format output as a Table. Default formatting is as List."
        )]
        [Switch]$Detailed
    )

    BEGIN
    {
        $CommonParameters = @(
            [PSCustomObject]@{
                Parameter = 'OutVariable'
                Type = 'String', ''
                Aliases = 'ov'
                Description = 'Stores output objects from the command in the specified variable in addition to sending the output along the pipeline.'
            }
            [PSCustomObject]@{
                Parameter = 'PipelineVariable'
                Type = 'Common', 'String'
                Aliases = 'pv'
                Description = 'PipelineVariable stores the value of the current pipeline element as a variable, for any named command as it flows through the pipeline.'
            }
            [PSCustomObject]@{
                Parameter = 'OutBuffer'
                Type = 'Common', 'Int32'
                Aliases = 'ob'
                Description = 'Determines the number of objects to accumulate in a buffer before any objects are sent through the pipeline. If you omit this parameter, objects are sent as they are generated.'
            }
            [PSCustomObject]@{
                Parameter = 'Verbose'
                Type = 'Common', 'Switch'
                Aliases = 'vb'
                Description = 'Displays detailed information about the operation done by the command. This information resembles the information in a trace or in a transaction log. This parameter works only when the command generates a verbose message. For example, this parameter works when a command contains the Write-Verbose cmdlet.'
            }
            [PSCustomObject]@{
                Parameter = 'Debug'
                Type = 'Common', 'Switch'
                Aliases = 'db'
                Description = 'Displays programmer-level detail about the operation performed by a command. This Parameter only works when a command generates a debugging message, such as functions which use the Write-Debug Cmdlet.'
            }
            [PSCustomObject]@{
                Parameter = 'ErrorVariable'
                Type = 'Common', 'String'
                Aliases = 'ev'
                Description = 'ErrorVariable stores error messages about the command in the specified variable and in the $Error automatic variable. '
            }
            [PSCustomObject]@{
                Parameter = 'InformationVariable'
                Type = 'Common', 'String'
                Aliases = 'iv'
                Description = 'When used, the InformationVariable common parameter stores in a variable a string that you specify by adding the Write-Information command. Write-Information values are shown depending on the value of the InformationAction common parameter; if you do not add the InformationAction common parameter, Write-Information strings are shown depending on the value of the $InformationPreference preference variable.'
            }
            [PSCustomObject]@{
                Parameter = 'WarningVariable'
                Type = 'Common', 'String'
                Aliases = 'wv'
                Description = 'Stores warnings about a command in the specified Variable.'
            }
            [PSCustomObject]@{
                Parameter = 'ErrorAction'
                Type = 'Common', 'ActionPreference'
                Aliases = 'ea'
                Description = 'Determines how the cmdlet responds to a non-terminating error from the command. This parameter works only when the command generates a non-terminating error, such as those from the Write-Error cmdlet.'
            }
            [PSCustomObject]@{
                Parameter = 'InformationAction'
                Type = 'Common', 'ActionPreference'
                Aliases = 'ia'
                Description = 'When used, the InformationAction common parameter overrides the value of the $InformationPreference preference variable, which by default is set to SilentlyContinue. When you use Write-Information in a script with InformationAction, Write-Information values are shown depending on the value of the InformationAction parameter.'
            }
            [PSCustomObject]@{
                Parameter = 'WarningAction'
                Type = 'Common', 'ActionPreference'
                Aliases = 'wa'
                Description = 'Determines how the cmdlet responds to a warning from the command. Continue is the default value. This parameter works only when the command generates a warning message. For example, this parameter works when a command contains the Write-Warning cmdlet.'
            }
            [PSCustomObject]@{
                Parameter = 'WhatIf'
                Type = 'Risk Mitigation', 'Switch'
                Aliases = 'wi'
                Description = 'Displays a message that describes the effect of the command, instead of executing the command.'
            }
            [PSCustomObject]@{
                Parameter = 'Confirm'
                Type = 'Risk Mitigation', 'Switch'
                Aliases = 'cf'
                Description = 'Prompts you for confirmation before executing the command.'
            }
        )
    }

    PROCESS
    {
        if ($Detailed) { $CommonParameters | Format-List } else { $CommonParameters | Format-Table -Property Parameter,Type,Aliases }
    }

    END
    {
        Write-Verbose -Message "Process complete!"
    }

}
