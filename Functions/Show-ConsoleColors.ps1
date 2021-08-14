function Show-ConsoleColors
{
    <#
        .SYNOPSIS
            Displays all available Console UI Color values.

        .DESCRIPTION
            Displays all available Console UI Color values, with each option possessing the color it represents as an example of the output.

        .PARAMETER Example
            Switch. Specifies whether the returned values are displayed as colored text, providing visual representations of what the particular color value looks like in use.

        .EXAMPLE 
            PS C:\> Show-UIColorValues

        .EXAMPLE 
            PS C:\> Show-UIColorValues -Example

        .LINK
            .

        .NOTES
            .
    #>

    param(
        [Parameter(Mandatory = $false
        Position = 0
        HelpMessage = "When used, displays color values as colored text representing visually what said value looks like in use.")]
        [Switch]$Example
    )

    BEGIN
    {

    function ColorsExample
    {
        [enum]::GetValues([System.ConsoleColor]) | ForEach-Object {Write-Host $_ -ForegroundColor $_}
        [enum]::GetValues([System.ConsoleColor]) | ForEach-Object {Write-Host $_ -BackgroundColor $_}
    }

    function ColorsList
    {
        [enum]::GetValues([System.ConsoleColor])
    }
       
    }

    PROCESS
    {

        if ($Example) { ColorsExample } elseif { ColorsList }

    }

    END
    {

        Write-Verbose "Function executed successfully!"

    }

}