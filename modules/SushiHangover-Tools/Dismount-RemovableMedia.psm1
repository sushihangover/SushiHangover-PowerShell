Set-StrictMode –Version latest
Function Dismount-RemovableMedia {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Eject Removable Media
    .DESCRIPTION
        This scripts provides a way to script the eject a removable media drive
    .EXAMPLE
        C:\PS>Do-Eject.ps1 E: -Confirm
        Confirm
        Are you sure you want to perform this action?
        Performing operation "Dismount-RemovableMedia" on Target "a:".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"):
    .EXAMPLE
        >Dismount-RemovableMedia a: -whatif
        What if: Performing operation "Dismount-RemovableMedia" on Target "a:".
     .EXAMPLE
        >Get-RemovableMedia |foreach {if ($_.DeviceID -eq 'e:') {$_ |dismount-removablemedia -whatif}}
        What if: Performing operation "Dismount-RemovableMedia" on Target "E:".  
     .LINK
        http://sushihangover.blogspot.com
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param (
        [parameter(mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][Alias("Drive")][string]$DeviceID
    )
    Begin {
        $ShellApplication = New-Object -comObject Shell.Application
    }
    Process {
        if ($pscmdlet.ShouldProcess($DeviceID)) {
            $ShellApplication.Namespace(17).ParseName("$DeviceID").InvokeVerb("Eject")
        }
    }
    End {
        $ShellApplication = $null
        Remove-ComObjectsFromMemory
    }
}