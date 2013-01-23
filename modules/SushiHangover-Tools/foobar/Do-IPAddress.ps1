<#
.NOTES
Copyright 2012 Robert Nees
Licensed under the Apache License, Version 2.0 (the "License");
http://sushihangover.blogspot.com

.SYNOPSIS
Set static ip entries or dhcp addressing on a network interface
.DESCRIPTION
This script sets a network interface to either have dhcp or static ip addressing

.EXAMPLE

.LINK
http://sushihangover.blogspot.com
#>
param(
    [parameter(
        parametersetname="Static",
        mandatory=$true,
        position=1)]
    [parameter(
        parametersetname="Dhcp",
        mandatory=$true,
        position=1)]
    [string]$NICName,
    [parameter(
        parametersetname="Dhcp",
        mandatory=$false,
        position=2)]
    [string]$reset = $false,
        [parameter(
        parametersetname="Static",
        mandatory=$true,
        position=2)]
    [string]$ip = '',
        [parameter(
        parametersetname="Static",
        mandatory=$true,
        position=3)]
    [string]$gateway,
        [parameter(
        parametersetname="Static",
        mandatory=$false,
        position=4)]
    [string]$mask = "255.255.255.0",
        [parameter(
        parametersetname="Static",
        mandatory=$false,
        position=5)]
    [string]$dns1 = "8.8.8.8",
        [parameter(
        parametersetname="Static",
        mandatory=$false,
        position=6)]
    [string]$dns2 = "8.8.4.4",
        [parameter(
        parametersetname="Static",
        mandatory=$false,
        position=7)]
    [string]$registerDns = "FALSE"
)
$dns = $dns1
if($dns2) { 
    $dns ="$dns1,$dns2"
}
$NIC = (gwmi Win32_NetworkAdapter | where {$_.netconnectionid -eq $NICName})
if ($NIC.InterfaceIndex -gt 0) {
    $NetInterface = Get-WmiObject Win32_NetworkAdapterConfiguration | where {$_.InterfaceIndex -eq $NIC.InterfaceIndex}
    if ($NetInterface) {
        switch ($PsCmdlet.ParameterSetName) {
            "Static" {
                [void]$NetInterface.EnableStatic($ip, $subnetmask)
                [void]$NetInterface.SetGateways($gateway)
                [void]$NetInterface.SetDNSServerSearchOrder($dns)
                [void]$NetInterface.SetDynamicDNSRegistration($registerDns)
                [void]$NIC.Disable()
                [void]$NIC.Enable()
            }
            "Dhcp" {
                $NetInterface.EnableDHCP()
                if ($reset) {
                    $NIC.Disable()
                    $NIC.Enable()
                    write-host $NIC.netconnectionid "was reset"
                }
            }
        }
    }
} else {
    write-host "Network Adapter not found : " $NICName
}


