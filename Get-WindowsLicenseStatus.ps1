<#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Get-WindowsLicensingStatus -- Check the License Status of Windows 8
    .DESCRIPTION
        The original script is from 'The Scripting Guys' and I changed it to allow 
        local Windows 8 machines to be checked while still supporting VMs

        http://blogs.technet.com/b/heyscriptingguy/archive/2012/08/21/use-powershell-to-check-the-license-status-of-windows-8.aspx
    .EXAMPLE
        PS C:\> Get-WindowsLicenseStatus.ps1 
        This example trys to the license status of all the VMs running on this host, if the VMMS service is not 
        running you wil get the license status of the localhost
    .EXAMPLE
        PS C:\> Get-WindowsLicenseStatus.ps1 -LocalHost
        This example returns the license status of the localhost
    .LINK
        http://sushihangover.blogspot.com
#>
Set-StrictMode –Version latest
Param (
    [Parameter(Mandatory=$false)][Switch]$LocalHost
)
Try {
    $vm = get-vm -ErrorAction SilentlyContinue
    if ($vm -ne $null) {
        $cim = New-CimSession -ComputerName $vm.name -ErrorAction SilentlyContinue
    }
} Catch [Microsoft.HyperV.PowerShell.Commands.GetVMCommand] {
    # The Virtual Machine Management Service is not running
    $cim = New-CimSession
} Catch {
    $cim = $null
} Finally {
    if ($cim -ne $null) {
        get-ciminstance -class SoftwareLicensingProduct -CimSession $cim |
          where {$_.name -match 'windows' -AND $_.licensefamily} |
            format-list -property Name, Description, `
                     @{Label ="Grace period (days)"; Expression = { $_.graceperiodremaining / 1440}}, `
                     @{Label = "License Status"; Expression = {
                        switch (foreach {$_.LicenseStatus}) {
                            0 {"Unlicensed"} `
                            1 {"Licensed"} `
                            2 {"Out-Of-Box Grace Period"} `
                            3 {"Out-Of-Tolerance Grace Period"} `
                            4 {"Non-Genuine Grace Period"} `
                        } 
                      } }
    }
}
