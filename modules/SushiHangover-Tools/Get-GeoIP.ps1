Set-StrictMode –Version latest
<#
.NOTES
    Copyright 2013 Robert Nees
    Licensed under the Apache License, Version 2.0 (the "License");
.SYNOPSIS
    MaxMind GeoIP Database Interface
.DESCRIPTION
    MaxMind GeoIP Database Interface
.LINK
    http://sushihangover.blogspot.com
.LINK
    https://github.com/sushihangover
.LINK
    http://dev.maxmind.com/geoip/geolite
#>
Function Expand-GeoIPDatabase {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
    .SYNOPSIS
        Expand your MaxMind GeoIP Free Databases
    .DESCRIPTION
        Expand your MaxMind GeoIP Free        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$Path,
 Databases. Normally callled by Refresh-GeoIPDatabase, but if you manually download 
        the datbases you can use this to decompass the '.gz' files
    .EXAMPLE
        C:\PS>Expand-GeoIPDatabase
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]

    $MaxMindDBLocation = Join-Path -Path $PSScriptRoot -ChildPath "MaxMindGeoIpDB"
    $DBList = ls -path $MaxMindDBLocation -Filter '*.gz'
    if ($pscmdlet.ShouldProcess("Decompress the MaxMind GEoIp Database located at $MaxMindDBLocation")) {
        $DBList | Expand-GZip -verbose
    }
}
Function Refresh-GeoIpDatabase {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
    .SYNOPSIS
        Download/Refresh your MaxMind GeoIP Free Databases
    .DESCRIPTION
        Download/Refresh your MaxMind GeoIP Free Databases
    .EXAMPLE
        C:\PS>Refresh-GeoIPDatabase
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param (
    )
    $MaxMindGeoIP = @(
        'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz',
        'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz',
        'http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz'
    )
    $MaxMindDBLocation = Join-Path -Path $PSScriptRoot -ChildPath "MaxMindGeoIpDB"
    if (!(Test-Path -Path $MaxMindDBLocation)) {
        if ($pscmdlet.ShouldProcess("Create MAxMind Database Directory @ $MaxMindDBLocation")) {
            New-Item -ItemType Directory -Path $MaxMindDBLocation | Out-Null
        }
    }
    if ($pscmdlet.ShouldProcess("Connect to MaxMind Webiste")) {
        $foobar = Invoke-WebRequest -Uri http://dev.maxmind.com/geoip/geolite
        ForEach ($url in $MaxMindGeoIP) {
            if ($pscmdlet.ShouldProcess("Download : $url")) {
                Start-BitsTransfer -Source $url -Destination $MaxMindDBLocation
            }
        }
        if ($pscmdlet.ShouldProcess("Decompress Databsases")) {
            ls -path $MaxMindDBLocation -Filter '*.gz' | Expand-GZip -verbose
        }
    }
}
Function Get-GeoIpCity {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
    .DESCRIPTION
    .EXAMPLE
        C:\PS>Resolve-Host Microsoft.com | Get-GeoIpCity
        Redmond
        C:\PS>Resolve-Host Google.com | Get-GeoIpCity
        Mountain View
    .EXAMPLE
        C:\PS>$MyHomeTownIP | Get-GeoIpCity
        Kirkland
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$IPAddress
    )
    Begin {
        if (!(Test-AssemblyLoaded -AssemblyName SushiHangover.GeoIP.LookupService)) {
            Import-GeoIP
        }
        $CityIPDatabasePath = Join-Path -Path $PSScriptRoot -ChildPath 'MaxMindGeoIpDB\GeoLiteCity.dat’
        $CityIPDatabase = ls $CityIPDatabasePath
        $geoip = New-Object SushiHangover.GeoIP.LookupService($CityIPDatabase.FullName, [SushiHangover.GeoIP.LookupService]::GEOIP_STANDARD)
    }
    Process {
        ($geoip.getLocation($IPAddress)).City
    }
    End {
    }
}
Function Get-GeoIpLocation {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Returns a full GeoIP location object
    .DESCRIPTION
        Returns the full GeoIP location object on the pipeline

            TypeName: SushiHangover.GeoIP.Location
        Name        MemberType Definition
        ----        ---------- ----------
        distance    Method     double distance(SushiHangover.GeoIP.Location loc)
        Equals      Method     bool Equals(System.Object obj)
        GetHashCode Method     int GetHashCode()
        GetType     Method     type GetType()
        ToString    Method     string ToString()
        area_code   Property   int area_code {get;set;}
        city        Property   string city {get;set;}
        countryCode Property   string countryCode {get;set;}
        countryName Property   string countryName {get;set;}
        dma_code    Property   int dma_code {get;set;}
        latitude    Property   double latitude {get;set;}
        longitude   Property   double longitude {get;set;}
        metro_code  Property   int metro_code {get;set;}
        postalCode  Property   string postalCode {get;set;}
        region      Property   string region {get;set;}
        regionName  Property   string regionName {get;set;}
    .EXAMPLE
    .EXAMPLE
        Resolve-Host google.com -PassThru | Select-Object -ExpandProperty AddressList |Select-Object -ExpandProperty `
            IPAddressToString|Get-GeoIpLocation | Select-Object -Property postalCode,regionName,city -Unique|ft -AutoSize

        postalCode regionName city
        ---------- ---------- ----
        94043      California Mountain View
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$IPAddress
    )
    Begin {
        if (!(Test-AssemblyLoaded -AssemblyName SushiHangover.GeoIP.LookupService)) {
            Import-GeoIP
        }
        $CityIPDatabasePath = Join-Path -Path $PSScriptRoot -ChildPath 'MaxMindGeoIpDB\GeoLiteCity.dat’
        $CityIPDatabase = ls $CityIPDatabasePath
        $geoip = New-Object SushiHangover.GeoIP.LookupService($CityIPDatabase.FullName, [SushiHangover.GeoIP.LookupService]::GEOIP_STANDARD)
    }
    Process {
        ($geoip.getLocation($IPAddress))
    }
    End {
    }
}
Function Get-GeoIpASN {
    <#
    .NOTES
        Copyright 2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
    .DESCRIPTION
        Autonomous Systems are routable networks within the public Internet, administered by the local RIRs
        and assigned to owners of networks. The ASN Information tool displays information about an IP address's 
        Autonomous System Number (ASN) such as: IP owner, registration date, issuing registrar and the max range 
        of the AS with total IPs.
    .EXAMPLE
        $MyHomeTownIP | Get-GeoIpASN
        
        AS5650 Frontier Communications of America, Inc.
    .EXAMPLE
        C:\PS>Get-GeoIpASN -IPAddress 157.55.33.14

        AS8075 Microsoft Corp
    .EXAMPLE
        C:\PS>Resolve-Host -ComputerName google.com -Count -1 | Get-GeoIpASN
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
        AS15169 Google Inc.
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$IPAddress
    )
    Begin {
        if (!(Test-AssemblyLoaded -AssemblyName SushiHangover.GeoIP.LookupService)) {
            Import-GeoIp
        }
        $CityIPDatabasePath = Join-Path -Path $PSScriptRoot -ChildPath 'MaxMindGeoIpDB\GeoIPASNum.dat’
        $CityIPDatabase = ls $CityIPDatabasePath
        $geoip = New-Object SushiHangover.GeoIP.LookupService($CityIPDatabase.FullName, [SushiHangover.GeoIP.LookupService]::GEOIP_STANDARD)
    }
    Process {
        ($geoip.getOrg($IPAddress))
    }
    End {
    }
}
Function Import-GeoIp {
    $CSFile = Join-Path -Path $PSScriptRoot -ChildPath 'Get-GeoIP.cs’
    $SourceCode = [System.IO.File]::ReadAllText($CSFile)
    $Assemblies = ('System','System.IO','System.Net') 
    try {
        Add-Type -TypeDefinition $SourceCode -ReferencedAssemblies $Assemblies -Language CSharp -IgnoreWarnings
    } catch {
        Write-Warning "An error occurred attempting to add the .NET Framework class to the PowerShell session."
        Write-Warning "The error was: $($Error[0].Exception.Message)"
    }
}
