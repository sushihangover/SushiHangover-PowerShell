Set-StrictMode –Version latest
Function Sleep-Computer {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Place your computer into Sleep mode
    .DESCRIPTION
        Since there is not a cmdlet that will 'sleep' your computer, the Sleep-Computer function was born. You can use 
        the force option to override/clear your hibernate setting and then sleep if you need to...
    .EXAMPLE
        c:\PS>Sleep-Computer -WhatIf
        What if: Performing operation "Sleep-Computer" on Target "SushiHangover-MacBookPro".
    .EXAMPLE
        c:\PS>Sleep-Computer -Confirm -Force

        Confirm
        Are you sure you want to perform this action?
        Performing operation "Sleep-Computer" on Target "V-RONEES-W8MBP".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"):
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    param (
        [parameter(mandatory=$false)][switch]$Force
    )
    if ($pscmdlet.ShouldProcess($env:COMPUTERNAME)) {
        if ($Force.IsPresent) {
            if ($pscmdlet.ShouldProcess("Turning off hibernation")) {
                & powercfg -hibernate off
            }
        }
        $rundll = Join-Path -Path ($env:windir) -ChildPath "System32\rundll32.exe"
        & ($rundll) powrprof.dll,SetSuspendState 0,1,0
    }
}
