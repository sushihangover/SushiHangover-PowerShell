Set-StrictMode –Version latest
Function Clear-IECache {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Clear Internet Explorer's cache
    .DESCRIPTION
        This function wraps a custom C# based function that clears the IE cache, this has been tested on Internet Explorer 8, 9, & 10.
        Clearing the cache, depending upon how many items are in it, can take some time. There currently are no call back 
        events, thus I am not displaying a PowerShell Progress bar, but if someone asks, I can add that to the C# code.

        Note: You can not unload the ClearIECache assembly once loaded, this is a .NET behavior. Assemblies loaded into an AppDomain cannot be unloaded, 
        and only the AppDomain can be unloaded, and PowerShell uses a single appdomain. You can work around this if required by loading this function into a 
        separate process, calling it and then drop that other process, but for something this small I do not see the current need. Comments welcome.
    .EXAMPLE
        c:\PS>Clear-IECache
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    Param (
    )
    $CSFile = Join-Path -Path $PSScriptRoot -ChildPath 'ClearIECache.cs’
    $SourceCode = [System.IO.File]::ReadAllText($CSFile)
    $Assemblies = ('System') #,'System.Collections.Generic','System.Ling','System.Text','System.Runtime.InteropServices')

    try {
        Add-Type -TypeDefinition $SourceCode -ReferencedAssemblies $Assemblies -IgnoreWarnings -Language CSharp 
    } catch {
        Write-Warning "An error occurred attempting to add the .NET Framework class to the PowerShell session."
        Write-Warning "The error was: $($Error[0].Exception.Message)"
    }

    $ieCache = New-Object SushiHangover.ClearIECache
    $ieCache.Clear()
    $ieCache = $null
}

