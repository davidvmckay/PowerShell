
<#PSScriptInfo

.VERSION 1.0

.GUID 4b189c97-f8b3-4d7a-a40b-fae21710b4ef

.AUTHOR @torggler

.TAGS Lync,Skype

.PROJECTURI http://www.ntsystems.it/post/Invoke-SEFAUtil-a-PowerShell-wrapper-function.aspx

.EXTERNALMODULEDEPENDENCIES Lync

#>

<#

   This example uses Get-CsUser to get all Lync Users from within the specified Organizational Unit and adds user1@tomt.it as delegate.
            # looping through the array, create key:value pairs and add them to $outData
            for ($i = 0; $i -lt $SEFAResultSplit.Count; $i++) {
                if ([bool]!($i%2)) {
                    $j = $i + 1 
                    $outData += @{$SEFAResultSplit[$i] = $SEFAResultSplit[$j]}
                }
            }