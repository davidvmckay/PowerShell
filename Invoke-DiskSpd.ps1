
<#PSScriptInfo

.VERSION 0.1

.GUID c3e1577a-fb7f-427b-b423-8126ee17dd9b

.AUTHOR @torggler

.COMPANYNAME 

.COPYRIGHT 

.TAGS 

.LICENSEURI 

.PROJECTURI 

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


#>

<#
.Synopsis
    A wrapper for the DiskSpd utility
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
.INPUTS
   Inputs to this cmdlet (if any)
.OUTPUTS
   Output from this cmdlet (if any)
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   The role this cmdlet belongs to
.FUNCTIONALITY
   The functionality that best describes this cmdlet
#>

[CmdletBinding(DefaultParameterSetName='Parameter Set 1', 
                PositionalBinding=$false,
                ConfirmImpact='Medium')]
[Alias('diskspd')]
[OutputType([psobject])]
Param
(
    # Path to the Diskspd.exe file
    [Parameter(Mandatory=$false, 
                Position=0,
                ParameterSetName='Parameter Set 1')]
    [ValidateNotNull()]
    [ValidateNotNullOrEmpty()]
    [System.IO.FileInfo] 
    $Path=(Join-Path -Path $env:USERPROFILE -ChildPath "Downloads\Diskspd-v2.0.15\amd64fre\diskspd.exe"),

    [System.IO.FileInfo]
    $TestFilePath = (Join-Path -Path $env:TEMP -ChildPath "diskspdtest.dat"),

    # Logfile, specify a path to the LogFile

    [int]
    $TestFileSize = 1GB,

    [string[]]
    [ValidatePattern()]
    $BlockSize,

    [int]
    $WritePercentage,

    [int]
    $OutstandingIos,

    [switch]
    $RemoveTestFile

)

#region set environment
#endregion

$DiskSpd = ""
$DiskSpdParams = "-d10 -c1G $TestFilePath"

foreach ($bs in $BlockSize) {
    

    $DiskSpdOutput = Invoke-Expression -Command ($ + $SEFAParameters) 
}



#endregion