Set-StrictMode –Version latest
Function Disable-WindowsSearch {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Stop and Set the Windows Search Indexer to disabled
    .DESCRIPTION
        Call me lazy, I get tried of typing the cmds to stop and disable the 
        WSearch Service on the Windows 8 machines I touch.... I use them as jumpboxes 
        to AWS, Azure, VPN based datacenters and the pauses during the indexing of scripts, transcripts, 
        drives me insane...
    .EXAMPLE
        C:\PS>Disable-WindowsSearch -Confirm

        Confirm
        Are you sure you want to perform this action?
        Performing operation "Disable-WindowsSearch" on Target "System.ServiceProcess.ServiceController".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y

        Confirm
        Are you sure you want to perform this action?
        Performing operation "Stop-Service" on Target "Windows Search (WSearch)".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y
        WARNING: Waiting for service 'Windows Search (WSearch)' to stop...
        WARNING: Waiting for service 'Windows Search (WSearch)' to stop...
        WARNING: Waiting for service 'Windows Search (WSearch)' to stop...

        Confirm
        Are you sure you want to perform this action?
        Performing operation "Set-Service" on Target "Windows Search (WSearch)".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param (
        [parameter(Mandatory=$false)][switch]$Enable
    )
    Begin {
    }
    Process {
        $Service = Get-Service -Name 'WSearch'
        if ($pscmdlet.ShouldProcess($Service)) {
            if (!($Enable.IsPresent)) {
                if ($Service.Status -eq 'Running') {
                    $Service | Stop-Service -Force
                }
                $Service | Set-Service -StartupType Disable
            } else {
                $Service | Set-Service -StartupType Automatic
                $Service | Start-Service
            }
        }
    }
    End {
    }
}