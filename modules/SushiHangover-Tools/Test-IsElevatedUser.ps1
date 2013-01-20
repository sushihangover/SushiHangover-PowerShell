function Test-IsElevatedUser {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Elevated Privileges
    .DESCRIPTION
        Checks if the current Powershell instance is running with elevated privileges or not.
    .OUTPUTS
        System.Boolean : True if the current Powershell user is elevated, false if not.
    .EXAMPLE
        C:\PS>Test-IsElevatedUser
        False
    .LINK
        http://sushihangover.blogspot.com
        https://github.com/sushihangover
    #>
    param ()
    $IsElevatedUser = $false
    try {
        $WindowsIdentity = [Security.Principal.WindowsIdentity]::GetCurrent()
        $WindowsPrincipal = New-Object Security.Principal.WindowsPrincipal -ArgumentList $WindowsIdentity
        $IsElevatedUser =  $WindowsPrincipal.IsInRole( [Security.Principal.WindowsBuiltInRole]::Administrator )
    } catch {
        throw "Elevated privileges is undetermined; the error was: '{0}'." -f $_
    }
    return $IsElevatedUser
}