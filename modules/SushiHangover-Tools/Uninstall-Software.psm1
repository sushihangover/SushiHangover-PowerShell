Set-StrictMode –Version latest
Function Uninstall-Software {
    <#
    .NOTES
        Copyright 2012 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Uninstall software 
    .DESCRIPTION
        A way to script the uninstall of multiple software packages, a great
        way to batch remove 'obsolete' software...
    .EXAMPLE
        C:\PS>Uninstall-Software "VMWare Tools" -Whatif
    .EXAMPLE
        C:\PS>Uninstall-Software "VMWare Tools" -Confirm
    .EXAMPLE
        C:\PS>Uninstall-Software "%" -WhatIf
        Get a list of all installed software...
    .LINK
        http://sushihangover.blogspot.com
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="High")]
    param (
        [parameter(Mandatory=$true,Position=0)][string]$Software
    )
    Begin {
        $likeThis = "%" + $Software + "%"
        $Apps = Get-WmiObject -query "SELECT * FROM Win32_Product WHERE Name LIKE '$likeThis'"
    }
    Process {
        Foreach($App in $Apps) {
            if ($pscmdlet.ShouldProcess($App.name)) {
                $App.Uninstall()
            }
            $App
        }
    }
    End {
        $Apps = $null
    }
}
