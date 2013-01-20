Set-StrictMode –Version latest
function Remove-ComObjectsFromMemory {
    <#
    .NOTES
        Copyright 2012 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
         Releases all <__ComObject> objects in the caller scope. 
    .DESCRIPTION
         Releases all <__ComObject> objects in the caller scope, except for those that are Read-Only or Constant. 
    .EXAMPLE
         Remove-ComObject -Verbose 
         Description 
         =========== 
         Releases <__ComObject> objects in the caller scope and displays the released COM objects' variable names. 
    .LINK
        http://sushihangover.blogspot.com
    #>
    [CmdletBinding()] 
    param()
    begin {
    } 
    end { 
        [Management.Automation.ScopedItemOptions]$scopedOpt = 'ReadOnly, Constant' 
        Get-Variable -Scope 1 | Where-Object { 
            $_.Value.pstypenames -contains 'System.__ComObject' -and -not ($scopedOpt -band $_.Options) 
            } | Remove-Variable -Scope 1 -Verbose
    [GC]::Collect() 
    }
}
