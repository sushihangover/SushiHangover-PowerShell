Function Clear-Trash {
    <#
    .NOTES
        Copyright 2012 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Clear/Empty the local or remote system trashcan
    .DESCRIPTION
        Deletes all the items in the local or remote system trashcan. If you need empty the 
        trash on a remote system, pass this script via the FilePath of Invoke-Command (see examples)
    .EXAMPLE
        Clear-Trash -whatif
        What if: Performing  "Remove File" in trashcan TTIDSDIEUIC.zip
        What if: Performing  "Remove File" in trashcan Veetle 1.1.5.ipa
        What if: Performing  "Remove File" in trashcan SoundHound 4.4.ipa
        What if: Performing  "Remove File" in trashcan Starbucks 2.1.2.ipa
    .EXAMPLE
        Clear-Trash
        Permanently clear the trashcan contents
    .EXAMPLE
        Invoke-Command -filepath .\Clear-Trash.ps1 -ArgumentList $True -ComputerName (Get-ADComputers -Group 'PilotTesting')
        See what would be deleted from trashcans of multiple remote computers 
    .LINK
        http://sushihangover.blogspot.com
    #>
    param (
        [parameter(Mandatory=$false,Position=0)][switch]$WhatIf
    )
    $objShell = New-Object -ComObject Shell.Application
    $objFolder = $objShell.Namespace(0xA)
    $objFolder.items() | ForEach-Object {
        if (!$WhatIf) {
            remove-item $_.path -Recurse -Confirm:$false
        } else {
            'What if: Performing  "Remove File" in trashcan ' + $_.Name
        }
    }
}
