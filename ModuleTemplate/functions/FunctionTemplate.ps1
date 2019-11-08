<#
    .SYNOPSIS
    A brief description of this function.

    .DESCRIPTION
    A detailed description of this function.

    .PARAMETER Template
    A description of a parameter.

    .EXAMPLE
    An example of this function's usage.
#>

function FunctionTemplate {
    [CmdletBinding()]
    #[OutputType([System.Management.Automation.PSObject])]
    Param (
        $Template
    )    
    $CallerErrorActionPreference = $ErrorActionPreference
    try {
        1/0; write-host "will this run" -ForegroundColor Cyan
<#
        $PSObject = [PSCustomObject] @{
            Name     = $DownloadFileName           
            DownloadFileStatus =  $DownloadFileStatus
        }
        Write-Output -InputObject $PSObject
#> 
    } catch {
        Write-Error -ErrorRecord $_ -ErrorAction $CallerErrorActionPreference
        #FunctionTemplate -ErrorAction Stop

    }
    return $null;
}