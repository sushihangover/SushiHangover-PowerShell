Function Test-AssemblyLoaded {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
    .SYNOPSIS
        Test if an Assembly is loaded, pipeline'd AssemblyName input and pipeline'd boolean output
    .DESCRIPTION
        A helper to test and optionally load, an Assembly with input and output pipeline processing, supporting 
        -WhatIf on the Assembly test and Verbose output if needed.
    .EXAMPLE
        Test-AssemblyLoaded -AssemblyName SushiHangover.GeoIP.LookupService -Verbose
        VERBOSE: Performing operation "Test-AssemblyLoaded" on Target "SushiHangover.GeoIP.LookupService".
        VERBOSE: SushiHangover.GeoIP.LookupService is available
        True
    .EXAMPLE
        C:\PS>"SushiHangover-BuildANewGirlFriend" | Test-AssemblyLoaded -Verbose
        VERBOSE: Performing operation "Test-AssemblyLoaded" on Target "SushiHangover-BuildANewGirlFriend".
        VERBOSE: SushiHangover-BuildANewGirlFriend is not available
        False
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$AssemblyName
    )
    Begin {}
    Process {
        [boolean]$Loaded = $false
        Try {
            if ($pscmdlet.ShouldProcess($AssemblyName)) {
                [reflection.assembly]::GetAssembly([type]$AssemblyName) | Out-Null
                Write-Verbose ($AssemblyName + " is available")
                $Loaded = $true
            }
        } Catch {
            # Do nothing but supressed error as $Loaded is set to $false by default
            Write-Verbose ($AssemblyName + " is not available")
        }
        $Loaded        
    }
    End {}
}
Function Test-ModuleImported {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
    .SYNOPSIS
        Test if a Module is loaded, pipeline'd ModuleName input and pipeline'd boolean output
    .DESCRIPTION
        A helper to test and optionally load, a Module with input and output pipeline processing, supporting 
        -WhatIf on the Module load and Verbose output if needed.
    .EXAMPLE
        c:\PS>[boolean]$Loaded = "SushiHangover-Tools" | Test-ModuleImported -Verbose
        VERBOSE: SushiHangover-Tools is not loaded
    .EXAMPLE
        c:\PS>"SushiHangover-Tools" | Test-ModuleImported -AutoLoad -WhatIf
        What if: Performing operation "Test-ModuleImported" on Target "SushiHangover-Tools".
        False
    .EXAMPLE
        C:\PS>"SushiHangover-Tools" | Test-ModuleImported -Verbose
        VERBOSE: SushiHangover-Tools is loaded
        True
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$ModuleName,
        [Parameter(Mandatory=$false,ValueFromPipeline=$false,ValueFromPipelineByPropertyName=$true)][switch]$AutoLoad
    )
    Begin {}
    Process {
        [boolean]$Imported = $false
        if ((Get-Module -Name $ModuleName) -ne $null) {
            Write-Verbose ($ModuleName + " is loaded")
            $Imported = $True
        } else {
            Write-Verbose ($ModuleName + " is not loaded")
            if ($AutoLoad.IsPresent) {
                if((Get-Module -ListAvailable -verbose:$false | Where-Object { $_.name -like $ModuleName }) -ne $null) {
                    if ($pscmdlet.ShouldProcess($ModuleName)) {
                        Import-Module -Name $ModuleName | Out-Null
                        $Imported = $true
                    }
                } else {
                    Write-Verbose ($ModuleName + " is not available")
                }
            }
            if ($PSBoundParameters['Verbose']) {
                if ((Get-Module -ListAvailable -verbose:$false | Where-Object { $_.Name -eq $ModuleName }) -eq $null) {
                    Write-Verbose ($ModuleName + " is not available")
                }
            }
        }
        $Imported
    }
    End {}
}
