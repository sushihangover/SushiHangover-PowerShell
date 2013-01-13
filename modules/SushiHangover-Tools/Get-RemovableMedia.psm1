Set-StrictMode –Version latest
Function Get-RemovableMedia {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        List Removable Media
    .DESCRIPTION
        This scripts provides a way to list ('pipe-able' output) the removable media drives/information.

        Output are "Win32_LogicalDisk' objects
    .EXAMPLE
        Get-RemovableMedia 

        DeviceID     : E:
        DriveType    : 2
        ProviderName :
        FreeSpace    : 996462592
        Size         : 1012469760
        VolumeName   :
    .EXAMPLE
        Get-RemovableMedia | ForEach-Object{$_.DeviceID}

        A:
        E:
    .LINK
        http://sushihangover.blogspot.com
        https://github.com/sushihangover
    #>
    Param (
    )
    Begin {
        $RemovableMediaDrives = Get-WMIObject Win32_LogicalDisk -filter "DriveType=2"
    }
    Process {
        ForEach ($RemovableMedia in $RemovableMediaDrives) {
            $RemovableMedia
        }
    }
    End {
        $RemovableMedia = $null
    }
}