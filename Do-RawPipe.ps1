Set-StrictMode –Version latest
Function Pipe-Raw
{
    <#
    .NOTES
        Copyright 2012,2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
    .DESCRIPTION
        Get the standard output of a process so we can 'pipe' it
        to another process and avoid PowerShell's object pipe which is not 
        what you want when you do things like this in CMD.exe or a Linux shell:
        Bash >> makepretty -if myface.jpg -of - | findmate -if - -of listofladys.csv
        Becomes in PowerShell:
        Do-RawPipe makepretty.exe "-if myface.jpg -of -" findmate.exe "-if - -of listofladys.csv"
    .EXAMPLE
    dir c:\ /s /b | find "LOG" 
    .EXAMPLE
    dir | sort
    cat apple.txt | wc 
    cat apple.txt | sed -e "s/e/J/g"

    .LINK
        http://sushihangover.blogspot.com
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True)][string] $Process1, 
        [Parameter(Mandatory=$False)][string] $Args1, 
        [Parameter(Mandatory=$True)][string] $Process2, 
        [Parameter(Mandatory=$False)][string] $Args2, 
        [Parameter(Mandatory=$False)][string] $Working1Path,
        [Parameter(Mandatory=$False)][string] $Working2Path,
        [Parameter(Mandatory=$False)][int] $BufferSize = 32768
    )
    write-output "Building Process 1 startup information"
    $process1StartInfo = New-Object System.Diagnostics.ProcessStartInfo
    $process1StartInfo.FileName = $Process1
    if ($working1Path -gt "") {
        $process1StartInfo.WorkingDirectory = $Working1Path
    } else {
        $process1StartInfo.WorkingDirectory = ((Get-Location).Path)
    }
    if ($Args1) {
        $process1StartInfo.Arguments = $Args1
    }
    write-output "Building Process 2 startup information"
    $process2StartInfo = New-Object System.Diagnostics.ProcessStartInfo
    $process2StartInfo.FileName = $Process2
    if ($Working2Path -gt "") {
        $process2StartInfo.WorkingDirectory = $Working2Path
    } else {
        $process2StartInfo.WorkingDirectory = ((Get-Location).Path)
    }
    if ($Args2) { 
        $process2StartInfo.Arguments = $Args2
    }

    try {
        $process1StartInfo.UseShellExecute = $True
        $process1StartInfo.RedirectStandardInput = $False
        $process1StartInfo.RedirectStandardOutput = $True
   
        $process2StartInfo.UseShellExecute = $false
        $process2StartInfo.RedirectStandardInput = $true
        $process2StartInfo.RedirectStandardOutput = $false

        write-output "Starting $Process1 process"
        $process1StartInfo
        $Process1ID = [System.Diagnostics.Process]::Start($process1StartInfo)
        write-output "Starting $Process2 process"
        $process2ID = [System.Diagnostics.Process]::Start($process2StartInfo)

        $foo = 0
        $buffer = new-object char[] $BufferSize
        try {
            do {
                $readCount = $Process1ID.StandardOutput.ReadBLock($buffer, 0, $buffer.Length)
                $process2ID.StandardInput.Write($buffer, 0, $readCount)
                $process2ID.StandardInput.Flush()
                $foo++
            } while ($readCount -gt 0)
        } catch {
            write-host "ReadBlock Error @ " ((($foo - 1) * $buffer.Length) + $readCount)
        }
        write-host "$Process1 Std Output Length : " ((($foo) * $buffer.Length) + $readCount)
        
        Write-Debug "Process2 StdIn close"
        $process2.StandardInput.Close()
        Write-Debug "Process2 wait for exit"
        #$process2.WaitForExit()
        if ($process2.HasExited) {
            write-debug $Proces2 " Exit Code = " $Processs2ID.ExitCode
        }
        Write-Debug "Process1 StdOut close"
        $process1.StandardOutput.Close()
        Write-Debug "Process1 wait for exit"
        #$process1.WaitForExit()
        if ($process1.HasExited) {
            write-debug $Process1 " Exit Code = " $Processs1ID.ExitCode
        }
    } catch {
       write-host "Catch Error and clean up"
       # $process2.StandardInput.Flush()
       #$process2.StandardInput.Close()
       #$process2.Close; $process2.Dispose()
       #$process1.StandardInput.Close()
       #$process1.Close; $process1.Dispose()
#       exit
    }
} 