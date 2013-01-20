Set-StrictMode –Version latest
Function Clear-Trash {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Clear/Empty the local or remote system trashcan
    .DESCRIPTION
        Deletes all the items in the local or remote system trashcan. If you need empty the 
        trash on a remote system, pass this script via the FilePath of Invoke-Command (see examples)
    .EXAMPLE
        c:\PS>Clear-Trash -WhatIf
        What if: Performing operation "Clear-Trash" on Target "\\vmware-host\Shared Folders\Desktop\$RECYCLE.BIN\$R392LXU.txt".
        What if: Performing operation "Clear-Trash" on Target "\\vmware-host\Shared Folders\Desktop\$RECYCLE.BIN\$RD91NWA.txt".
        What if: Performing operation "Clear-Trash" on Target "\\vmware-host\Shared Folders\Desktop\$RECYCLE.BIN\$RGOBO0M.txt".
    .EXAMPLE
        c:\PS>Invoke-Command -ComputerName localhost -ScriptBlock {Clear-Trash -Whatif} -ComputerName (Get-ADComputers -Group 'PilotTesting')
        What if: Performing operation "Clear-Trash" on Target "\\vmware-host\Shared Folders\Desktop\$RECYCLE.BIN\$RGOBO0M.txt".

        See what would be deleted from trashcans of multiple remote computers 
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Medium")]
    param ()
    $objShell = New-Object -ComObject Shell.Application
    $objFolder = $objShell.Namespace(0xA)
    $objFolder.items() | ForEach-Object {
        if ($pscmdlet.ShouldProcess($_.path)) {
            remove-item $_.path -Recurse
        }
    }
}

