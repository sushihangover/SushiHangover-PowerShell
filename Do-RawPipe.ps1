Function Do-RawPipe {
    <#
    .NOTES
        Copyright 2012,2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
     .SYNOPSIS
        Gets file encoding.
    .DESCRIPTION
        Get the standard output of a process so we can 'pipe' it
        to another process and avoid PowerShell's object pipe
    .EXAMPLE
        RawPipe.ps1 makepretty.exe "-if myface.jpg -of -" findmate.exe "-if - -of listofladys.csv"
        Bash >> makepretty -if myface.jpg -of - | findmate -if - -of listofladys.csv
    #>
    param(
        [string] $procName1, 
        [string] $argList1, 
        [string] $procName2, 
        [string] $argList2, 
        [string] $working1Path, 
        [string] $working2Path
    ) 
    $process1StartInfo = New-Object System.Diagnostics.ProcessStartInfo
    $process1StartInfo.FileName = $procName1
    if ($working1Path -gt "") {
        $process1StartInfo.WorkingDirectory = $working1Path
    } else {
        $process1StartInfo.WorkingDirectory = ((Get-Location).Path)
    }
    if ($argList1) {
        $process1StartInfo.Arguments = $argList1
    }
    $process2StartInfo = New-Object System.Diagnostics.ProcessStartInfo
    $process2StartInfo.FileName = $procName2
        if ($working2Path -gt "") {
        $process2StartInfo.WorkingDirectory = $working2Path
    } else {
        $process2StartInfo.WorkingDirectory = ((Get-Location).Path)
    }
    if ($argList2) { 
        $process2StartInfo.Arguments = $argList2
    }

    try {
        $process1StartInfo.UseShellExecute = $false
        $process1StartInfo.RedirectStandardInput = $false
        $process1StartInfo.RedirectStandardOutput = $true
   
        $process2StartInfo.UseShellExecute = $false
        $process2StartInfo.RedirectStandardInput = $true
        $process2StartInfo.RedirectStandardOutput = $false

        $process1 = [System.Diagnostics.Process]::Start($process1StartInfo)
        Write-Debug "Created $procName1 process"
        $process2 = [System.Diagnostics.Process]::Start($process2StartInfo)
        Write-Debug "Created $procName2 process"

        $foo = 0
        $buffer = new-object char[] 32768
        try {
            do {
                $readCount = $process1.StandardOutput.ReadBLock($buffer, 0, $buffer.Length)
                $process2.StandardInput.Write($buffer, 0, $readCount)
                $process2.StandardInput.Flush()
                $foo++
            } while ($readCount -gt 0)
        } catch {
            write-debug "ReadBlock Error @ " ((($foo - 1) * $buffer.Length) + $readCount)
        }
        write-verbose "$procName1 Std Output Length : " ((($foo) * $buffer.Length) + $readCount)
        
        Write-Debug "Process2 StdIn close"
        $process2.StandardInput.Close()
        Write-Debug "Process2 wait for exit"
        #$process2.WaitForExit()
        if ($process2.HasExited) {
            write-debug $procName2 " Exit Code = " $processs2.ExitCode
        }
        Write-Debug "Process1 StdOut close"
        $process1.StandardOutput.Close()
        Write-Debug "Process1 wait for exit"
        #$process1.WaitForExit()
        if ($process1.HasExited) {
            Write-Debug $procName1 " Exit Code = " $processs1.ExitCode
        }
    } catch {
        Write-Debug "Catch Error and clean up"
       #$process2.StandardInput.Flush()
       #$process2.StandardInput.Close()
       #$process2.Close; $process2.Dispose()
       #$process1.StandardInput.Close()
       #$process1.Close; $process1.Dispose()
    }
}
