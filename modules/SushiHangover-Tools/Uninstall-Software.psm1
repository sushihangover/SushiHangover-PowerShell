Set-StrictMode –Version latest
Function Uninstall-Software {
    <#
    .NOTES
        Copyright 2012 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
    .DESCRIPTION
    .EXAMPLE
    .EXAMPLE
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
        $Apps
    }
    Process {
        Foreach($App in $apps) {
            if ($pscmdlet.ShouldProcess($app.name)) {
                $app.Uninstall()
            }
        }
    }
    End {
    }
}
