#requires -version 2.0
<#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        touch-file -- change file access and modification times
    .DESCRIPTION
     The touch utility sets the modification and access times of files.  If any file does not exist, 
     it is created with default permissions. (see examples)
    .EXAMPLE
        TODO : Add Examples
    .LINK
        http://sushihangover.blogspot.com
#>
function Touch-File{
    [cmdletbinding(SupportsShouldProcess=$True)]
    Param(
        [Parameter(Mandatory=$true,ValueFromPipeline=$True)][String]$FileName,
        [Parameter(Mandatory=$false)][Alias('r')][String]$Replace = "",
        [Parameter(Mandatory=$false)][Alias('t')][DateTime]$Time = $null,
        [Parameter(Mandatory=$false)][Alias('c')][Switch]$Create,
        [Parameter(Mandatory=$false)][Alias('a')][Switch]$AccessTime,
        [Parameter(Mandatory=$false)][Alias('m')][Switch]$ModificationTime,
        [Parameter(Mandatory=$false)][Alias('n')][Switch]$CreationTime,
        [Parameter(Mandatory=$false)][Alias('f')][Switch]$Force
    )
    begin {
        function Update-FileSystemInfo([System.IO.FileSystemInfo]$fsInfo) {
            if ($Time -ne $null) {
                $fsInfo.CreationTime = $CurrentDateTime
                $fsInfo.LastWriteTime = $CurrentDateTime
                $fsInfo.LastAccessTime = $CurrentDateTime
            } else {
                if ($AccessTime.IsPresent) {
                    $fsInfo.LastAccessTime = $CurrentDateTime
                }
                if ($ModificationTime.IsPresent) {
                    $fsInfo.LastWriteTime = $CurrentDateTime
                }
                if ($CreationTime.IsPresent) {
                    $fsInfo.CreationTime = $CurrentDateTime
                }
            }
        }
   
        function Touch-NewFile {
            [cmdletbinding(SupportsShouldProcess=$True)]
            Param(
                [Parameter(Mandatory=$True)][String]$FileName
            )
            if ($Force.IsPresent ) {
                Set-Content -Path ($FileName) -Value ($null) -Force
            } else {
                Set-Content -Path ($FileName) -Value ($null)
            }
            $fsInfo = new-object System.IO.FileInfo($FileName)
            return $fsInfo
        }
        if ($Replace -ne "") {
            try {
                $replaceInfo = Get-ChildItem $Replace
                $CurrentDateTime = $replaceInfo.CreationTime
            } catch {
                return
            }
        } else {
            if ($Time -eq $null) {
                $CurrentDateTime = Get-Date            
            } else {
                $CurrentDateTime = $Time
            }
        }
    }
    process {
        if ($pscmdlet.ShouldProcess($FileName)) {
            if (test-path $FileName) {
                $fsInfo = Get-ChildItem $FileName
                Update-FileSystemInfo($fsInfo)
            }
            else {
                if (!$Create.IsPresent) {
                    $fsInfo = Touch-NewFile($FileName)
                    $fsInfo = Get-ChildItem $FileName
                    Update-FileSystemInfo($fsInfo)
                }
            }
        }
        $fsInfo = $null
    }
    end {
    }
}

