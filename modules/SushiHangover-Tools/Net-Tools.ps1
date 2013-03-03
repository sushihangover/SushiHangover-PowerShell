Set-StrictMode –Version latest
Function Resolve-Host {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Resolve a host to a set of IP address(es)
    .DESCRIPTION
        This DNS function has the ability to return the first IP address for a host, a number of the addresses (or all), and also supports the 
        "PassThru" parameter to get back an array of IPAddress Class
    .EXAMPLE
        C:PS>Resolve-HostName -ComputerName google.com

        173.194.33.36
    .EXAMPLE
        C:PS>Resolve-HostName google.com -Count -1

        173.194.33.36
        173.194.33.37
        173.194.33.38
        173.194.33.39
        173.194.33.40
        173.194.33.41
        173.194.33.46
        173.194.33.32
        173.194.33.33
        173.194.33.34
        173.194.33.35
    .EXAMPLE 
        C:PS>'google.com' | Resolve-Host -PassThru | Select-Object -ExpandProperty AddressList |ft

          Address AddressFamily ScopeId       IsIPv6Multic IsIPv6LinkLo IsIPv6SiteLo IsIPv6Teredo IsIPv4Mapped IPAddressToS
                                                       ast          cal          cal                    ToIPv6 tring
          ------- ------------- -------       ------------ ------------ ------------ ------------ ------------ ------------
        119653037  InterNetwork                      False        False        False        False        False 173.194.33.7
        136430253  InterNetwork                      False        False        False        False        False 173.194.33.8
        153207469  InterNetwork                      False        False        False        False        False 173.194.33.9
        237093549  InterNetwork                      False        False        False        False        False 173.194.3...
          2212525  InterNetwork                      False        False        False        False        False 173.194.33.0
         18989741  InterNetwork                      False        False        False        False        False 173.194.33.1
         35766957  InterNetwork                      False        False        False        False        False 173.194.33.2
         52544173  InterNetwork                      False        False        False        False        False 173.194.33.3
         69321389  InterNetwork                      False        False        False        False        False 173.194.33.4
         86098605  InterNetwork                      False        False        False        False        False 173.194.33.5
        102875821  InterNetwork                      False        False        False        False        False 173.194.33.6
    .EXAMPLE
        C:PS>Resolve-HostName www.windowsphone.com -PassThru |Select-Object -ExpandProperty AddressList

        Address            : 3870373789
        AddressFamily      : InterNetwork
        ScopeId            :
        IsIPv6Multicast    : False
        IsIPv6LinkLocal    : False
        IsIPv6SiteLocal    : False
        IsIPv6Teredo       : False
        IsIPv4MappedToIPv6 : False
        IPAddressToString  : 157.55.177.230
    .EXAMPLE
        C:PS>@('google.com','www.bing.com') | Resolve-Host -PassThru  | fl

        HostName    : google.com
        Aliases     : {}
        AddressList : {173.194.33.4, 173.194.33.5, 173.194.33.6, 173.194.33.7...}

        HostName    : a134.dsw3.akamai.net
        Aliases     : {}
        AddressList : {96.17.15.115, 96.17.15.139, 23.3.105.35, 23.3.105.17}
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(DefaultParameterSetName='Limit',SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param(
        [Parameter(Mandatory=$true,ValueFromPipeLine=$true,Position=1,ValueFromPipelineByPropertyName=$true)][string]$ComputerName,
        [Parameter(ParameterSetName='Limit')][Alias("Count")][Parameter(Mandatory=$false,Position=2,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)][int]$First = 0,
        [Parameter(ParameterSetName='PassThru')][Parameter(Mandatory=$false,Position=2,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)][switch]$PassThru
    )
    Process {
        if ($pscmdlet.ShouldProcess("Name lookup on $ComputerName")) {
            $Addresses = [System.Net.DNS]::GetHostEntry($ComputerName)
            if ($PassThru.IsPresent) {
                $return = $Addresses
            } else {
                if ($First -eq 0) {
                    $return = $Addresses.AddressList[0].IPAddressToString
                } elseif ($First -lt 0) {
                    $return = $Addresses.AddressList.IPAddressToString
                } else {
                    $i = 0
                    $return + @()
                    foreach ($Address in $Addresses.AddressList) {
                        # can not use break as this is pipeline'd, so use the old fashion if/else
                        if ($i -lt $Addresses.AddressList.Count) {
                            if ($i -lt $First) {
                                $return =+ $Address.IPAddressToString
                            $i++
                            }
                        }
                    }
                }
            }
            Write-Output $return
        }
    }
}
Function Test-ICMP {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        A 'pipeline-able' Ping function using the [System.Net.NetworkInformation.Ping] object and allows a simple true/false return or 
        the actual full reply object. Accepts the host name to ping on the pipeline and returns the ping reply object for 
        pipeline processing.
    .DESCRIPTION
        This cmdlet provides functionality similar to the Ping.exe command line tool. 
        The Send methods send an Internet Control Message Protocol (ICMP) echo request message to a remote computer 
        and waits for an ICMP echo reply message from that computer. 
        For a detailed description of ICMP messages, see RFC 792, available at http://www.ietf.org.

        For details on Status codes, consult the Links 
    .EXAMPLE
        C:\PS>Test-ICMP -ComputerName macbookpro -Count 5 -Delay 2 -PassThru | Out-GridView

        Display the results of the pings in real-time in the GridView component
    .EXAMPLE
        C:PS>@('google.com','www.bing.com') | Test-ICMP -Count 3 -Delay 1 -WhatIf

        What if: Performing operation "Test-ICMP" on Target "google.com".
        What if: Performing operation "Test-ICMP" on Target "www.bing.com".
    .EXAMPLE
        C:\PS>Test-ICMP -ComputerName bing.com -Count 1 -PassThru

        Status        : Success
        Address       : 204.79.197.200
        RoundtripTime : 7
        Options       : System.Net.NetworkInformation.PingOptions
        Buffer        : {97, 98, 99, 100...}
    .EXAMPLE
        C:PS>Test-ICMP -ComputerName bing.com -Simple -Count 2

        True
        True
    .EXAMPLE 
        C:PS>Test-ICMP -ComputerName b11.com
        
        WARNING: b11.com : down
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    .LINK
        http://msdn.microsoft.com/en-us/library/system.net.networkinformation.pingreply.aspx
    .LINK
        http://msdn.microsoft.com/en-us/library/system.net.networkinformation.ipstatus.aspx
    #>
    [cmdletbinding(DefaultParameterSetName='Simple',SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param(
        [Parameter(Mandatory=$true,Position=1,ValueFromPipeLine=$true,ValueFromPipelineByPropertyName=$true)][string]$ComputerName,
        [Parameter(Mandatory=$false,Position=2,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)][int]$Count = 1,
        [Parameter(Mandatory=$false,Position=3,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)][int]$Delay = 0,
        [Parameter(ParameterSetName='Simple',Mandatory=$false,Position=4,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)][switch]$Simple,
        [Parameter(ParameterSetName='PassThru')][Parameter(Mandatory=$false,Position=4,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)][switch]$PassThru
    )
    Begin {
        $ping = New-Object System.Net.NetworkInformation.Ping
    }
    Process {
        if ($pscmdlet.ShouldProcess("$ComputerName")) {
            try {
                Resolve-Host -ComputerName $ComputerName -PassThru | Out-Null
                try {
                    For ($i=1;$i++,$i -le $Count) {
                        try {
                            [System.Net.NetworkInformation.PingReply]$PingReply = $ping.Send($ComputerName)
                        } catch [System.Net.NetworkInformation.PingException] {
                            $PingReply = New-Object System.Net.NetworkInformation.PingReply
                        }
                        if ($Simple.IsPresent) {
                            if ($PingReply.Status -eq [System.Net.NetworkInformation.IPStatus]::Success) {
                                [boolean]$return = $true
                            } else {
                                [boolean]$return = $false
                            }
                        } else {
                            [System.Net.NetworkInformation.PingReply]$return = $PingReply
                        }
                        if ($Simple.IsPresent -or $PassThru.IsPresent) {
                            Write-Output $return
                        } else {
                            if ($PingReply.Status -eq [System.Net.NetworkInformation.IPStatus]::Success) { 
                                Write-Host $ComputerName " : up" 
                            } else { 
                                Write-Warning ($ComputerName + " : down")
                            } 
                        }
                        if (($Count -gt 1) -and ($i -lt ($Count + 1))) {
                             Start-Sleep -Seconds $Delay
                        }
                    }
                } catch {
                    $Error[0]
                }
            } catch {
                Write-Warning "Non-existant host name : $ComputerName"
            }
        }
    }
    End {
        $ping = $null
    }
}
Function Test-RemoteWMI{
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Another Ping function but using the WMI Object from the actual machine
    .DESCRIPTION
        By using the remote WMI Object from the computer that we are trying to 'ping', we can 
        determine if the machine is actually responding to WMI requests vs. just ICMP replies.
    .EXAMPLE
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param(
        [Parameter(Mandatory=$true,Position=0,ValueFromPipeLine=$true,ValueFromPipelineByPropertyName=$true)]$ComputerName,
        [Parameter(Mandatory=$false,Position=0,ValueFromPipeLine=$false,ValueFromPipelineByPropertyName=$false)]$Credentials
    )
    Begin {
        $ping = New-Object System.Net.NetworkInformation.Ping
    }
    Process {
        $ping = Get-WMIObject -Credential  -ComputerName $ComputerName -Property Win32_PingStatus -Filter "Address ='127.0.0.1'"
        $ping.Status

if ( $objPing -eq $null )
{
  $res = "UNCERTAIN: Failed to execute Ping"
  echo $res
  exit
}

#Check if the ping was successfull or not
if ( $objPing.StatusCode -ne 0 )
{ 
  $res = "ERROR: Destination host (" + $strHost + ") unreachble" 
  echo $res
  exit
}

        $local:ErrorActionPreference = 'SilentlyContinue'
        if ($ping.Send($ComputerName)) {
            return $True
        } else {
            return $False
        }
    }
    End {
        $ping = $null
        rm variable:ping
    }
}

<#
Add-Type -TypeDefinition @public enum WMIPingStatusCode {
>> A,
>> B,
>> C,
>> D
>> }
>> '@

<#
StatusCode
0
Success
11001
Buffer Too Small
11002
Destination Net Unreachable
11003
Destination Host Unreachable
11004
Destination Protocol Unreachable
11005
Destination Port Unreachable
11006
No Resources
11007
Bad Option
11008
Hardware Error
11009
Packet Too Big
11010
Request Timed Out
11011
Bad Request
11012
Bad Route
11013
TimeToLive Expired Transit
11014
TimeToLive Expired Reassembly
11015
Parameter Problem
11016
Source Quench
11017
Option Too Big
11018
Bad Destination
11032
Negotiating IPSEC
11050
General Failure

#>