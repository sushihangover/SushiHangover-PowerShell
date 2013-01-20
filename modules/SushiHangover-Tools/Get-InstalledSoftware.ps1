Set-StrictMode –Version latest
Function Get-InstalledSoftware {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Get the software installed 
    .DESCRIPTION
        A way to script the collection of software that has been installed on 
        an Windows OS. Great for quick auditing, support desks, compliance checking, etc...

        The output is 'pipe-able' and in the object structure:

            IdentifyingNumber : {44D55920-B223-4702-81D9-4C07108A3C27}
            Name              : VMware Tools
            Vendor            : VMware, Inc.
            Version           : 9.2.2.18018
            Caption           : VMware Tools
    .EXAMPLE
            [11] » Get-InstalledSoftware

            IdentifyingNumber : {44D55920-B223-4702-81D9-4C07108A3C27}
            Name              : VMware Tools
            Vendor            : VMware, Inc.
            Version           : 9.2.2.18018
            Caption           : VMware Tools

            IdentifyingNumber : {5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4}
            Name              : Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161
            Vendor            : Microsoft Corporation
            Version           : 9.0.30729.6161
            Caption           : Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161
    .LINK
        http://sushihangover.blogspot.com
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True)]
    param (
#        [parameter(Mandatory=$true,Position=0)][string]$Software
    )
    Begin {
        $Apps = Get-WmiObject -query "SELECT * FROM Win32_Product"
    }
    Process {
        Foreach($App in $apps) {
            $App
        }
    }
    End {
        $App = $null
    }
}
