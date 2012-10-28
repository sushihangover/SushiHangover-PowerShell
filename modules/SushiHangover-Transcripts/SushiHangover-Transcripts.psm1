Set-StrictMode –Version latest
<#
    .NOTES
        Copyright 2012,2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Transcript Helpers
    .DESCRIPTION
        Helper function to start, stop, pause, resume and parse transcripts (records all or part of a Windows PowerShell session in a text file)
    .EXAMPLE
    .LINK
        http://sushihangover.blogspot.com
#>

Function Resume-Transcript { 
    Start-Transcript -Append -Force -Path ($SH:TranscriptName) 
}

Function Suspend-Transcript {
    Stop-Transcript
}

Function Show-Transcript { 
    Invoke-Expression ($Global:SH:TranscriptName) 
}

Function Initialize-TranscriptLocation {
    Register-EngineEvent PowerShell.Exiting { Stop-Transcript } | Out-Null
    $Transcript = Join-Path -Path ([environment]::GetFolderPath("MyDocuments")) -ChildPath "WindowsPowerShell"
    $Transcript = Join-Path -Path ($Transcript) -ChildPath ("Transcripts")
    if (!(Test-Path -Path $Transcript)) {
        New-item -Path $Transcript -ItemType Directory
    }
    Set-Variable -Name SH:TranscriptDir -Value $Transcript -Option Constant -Scope Global # This will be at the global scope level
    $Transcript = Join-Path -Path ($Transcript) -ChildPath ("Transcript-" + (Get-Date -uFormat "%Y-%m-%d-%H%M-PID") + $pid.ToString() + ".log")
    Set-Variable -Name SH:TranscriptName -Value $Transcript -Option Constant -Scope Global # This will be at the global scope level
}

Function Initialize-Transcript {
    Register-EngineEvent PowerShell.Exiting { Stop-Transcript } | Out-Null
    Start-Transcript -NoClobber -Force -Path  $Global:SH:TranscriptName | Out-Null
}

#Function Find-Transcript {
#    [cmdletBinding()]
#    Param (
#        [Parameter(Mandatory=$False)][Alias("filter")][string]$filterString,
#        [Parameter(Mandatory=$False)][Alias("i")][switch]$ignore_case,
#        [Parameter(Mandatory=$False)][Alias("v")][switch]$invert_match,
#        [Parameter(Mandatory=$False)][Alias("test")][switch]$debugOutput,
#        [Parameter(Mandatory=$False)][Alias("H")][switch]$with_filename,
#        [Parameter(Mandatory=$False)][Alias("ver")][switch]$version,
#        [Parameter(Mandatory=$False,ValueFromPipeline=$True)][string]$Path = ''
#    )
#    Begin {
#        Suspend-Transcript | Out-Null
#        $args
#    }
#    Process {
#        if ($Path.Length -gt 0) {
#            cat $Path | Do-Grep @psBoundParameters 
#        } else {
#            cat $TranscriptName|Do-Grep @psBoundParameters 
#        }
#    }
#    End {
#        Restart-Transcript | Out-Null
#    }
#}
#Set-Alias -Name grep-log -Value Find-Transcript
