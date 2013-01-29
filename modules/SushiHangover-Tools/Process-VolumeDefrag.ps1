Set-StrictMode –Version latest
function Process-VolumeDefrag {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
    .DESCRIPTION
    .EXAMPLE
        Get-WmiObject -ComputerName $ComputerName  -Class Win32_Volume | ForEach-Object {if ($_ | Process-VolumeDefrag -AnalysisOnly | Where-Object -Property FilePercentFragmentation -eq 0) {$_ | Process-VolumeDefrag} }
        A one-liner to defrag volumes that have a file fragmentation over 10%
    .EXAMPLE
        c:\PS>Process-VolumeDefrag -DriveLetter "c:" -WhatIf
        What if: Performing operation "Process-VolumeDefrag" on Target "\\MACBOOKPRO\root\cimv2:Win32_Volume.DeviceID="\\\\?\\Volume{314a1c8f-5921-11e2-be65-806e6f6e6963}\\"".
    .EXAMPLE
        c:\PS>Get-WmiObject -ComputerName $ComputerName  -Class Win32_Volume -Filter ("DriveLetter = '" + $DriveLetter + "'") | Process-VolumeDefrag -AnalysisOnly

        __GENUS                       : 1
        __CLASS                       : Win32_DefragAnalysis
        __SUPERCLASS                  :
        __DYNASTY                     : Win32_DefragAnalysis
        __RELPATH                     : Win32_DefragAnalysis
        __PROPERTY_COUNT              : 27
        __DERIVATION                  : {}
        __SERVER                      : MACBOOKPRO
        __NAMESPACE                   : ROOT\CIMV2
        __PATH                        : \\MACBOOKPRO\ROOT\CIMV2:Win32_DefragAnalysis
        AverageFileSize               : 43
        AverageFragmentsPerFile       : 1
        AverageFreeSpacePerExtent     : 36225024
        ClusterSize                   : 4096
        ExcessFolderFragments         : 0
        FilePercentFragmentation      : 0
        FragmentedFolders             : 0
        FreeSpace                     : 15105986560
        FreeSpacePercent              : 47
        FreeSpacePercentFragmentation : 23
        LargestFreeSpaceExtent        : 11488489472
        MFTPercentInUse               : 100
        MFTRecordCount                : 155903
        PageFileSize                  : 0
        TotalExcessFragments          : 0
        TotalFiles                    : 99728
        TotalFolders                  : 4917
        TotalFragmentedFiles          : 0
        TotalFreeSpaceExtents         : 417
        TotalMFTFragments             : 2
        TotalMFTSize                  : 159645696
        TotalPageFileFragments        : 0
        TotalPercentFragmentation     : 0
        TotalUnmovableFiles           : 6
        UsedSpace                     : 16737165312
        VolumeName                    :
        VolumeSize                    : 31843151872
        PSComputerName                : MACBOOKPRO
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Medium")]
    Param (
        [parameter(ParameterSetName='VolumeObject',Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][System.Management.ManagementBaseObject]$Win32_Volume = $null,
        [parameter(ParameterSetName='DriveLetter',Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][string]$DriveLetter,
        [parameter(ParameterSetName='DriveLetter',Mandatory=$false,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][string]$ComputerName = 'LocalHost',
        [parameter(Mandatory=$false)][switch]$AnalysisOnly,
        [parameter(Mandatory=$false)][switch]$Force
    )
    Begin {
        if (!(Test-IsElevatedUser)) {
            # Win8/2012, must be elevated user, try running defrag.exe to see...
            # via WMI you will get a return of 11 (Unknown Error) vs. a return of 1 (Access Denied)....
            throw 'The storage optimizer cannot start because you have insufficient priveleges to perform this operation. (0x89000024)' 
        }
    }
    Process {
        $DefragReport = $null
        if ($Win32_Volume -eq $null) {
            $Win32_Volume = Get-WmiObject -ComputerName $ComputerName  -Class Win32_Volume -Filter ("DriveLetter = '" + $DriveLetter + "'")
        }
        Write-Verbose $Win32_Volume
        if ($pscmdlet.ShouldProcess($Win32_Volume)) {
            if ($AnalysisOnly.IsPresent) {
                $DefragResults = $Win32_Volume.defraganalysis()
                if ($DefragResults.ReturnValue -eq 0) {
                    $DefragReport = $DefragResults.DefragAnalysis
                }
            } else {
                if ($Force.IsPresent) {
                    $DefragResults = $Win32_Volume.defrag($true)
                } else {
                    $DefragResults = $Win32_Volume.defrag($false)
                }
                if ($DefragResults.ReturnValue -eq 0) {
                    $DefragReport = $DefragResults.DefragAnalysis
                }
            }
            switch ($DefragResults.ReturnValue)
            {
                1 { throw "Access Denied" }
                2 { throw "Not Supported" }
                3 { throw "Volume Dirty Bit Is Set" }
                4 { throw "Not Enough Free Space" }
                5 { throw "Corrupt Master File Table Detected" }
                6 { throw "Call Canceled" }
                7 { throw "Call Cancellation Request Too Late" }
                8 { throw "Defrag Engine Is Already Running" }
                9 { throw "Unable To Connect To Defrag Engine" }
                10 { throw "Defrag Engine Error" }
                11 { throw "Unknown Error" }
                default {$DefragReport = $DefragResults.DefragAnalysis}
            }
        }
        return $DefragReport
    }
    End {
    }
}
