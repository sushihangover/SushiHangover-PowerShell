Set-StrictMode –Version latest
<#
.NOTES
    Copyright 2012/2013 Robert Nees
    Licensed under the Apache License, Version 2.0 (the "License");
    http://sushihangover.blogspot.com
.SYNOPSIS
    RSA Private Key encrypt and decrypt functions
.DESCRIPTION
    This is a collection of functions that provide a wrapper to 'opensslkey.cs'

    Note: The source code in opensslkey.cs: 
        Copyright (C) 2008 JavaScience Consulting (See header for full details)
        I did make edits to the C# code but hold no copyright on it.
        
        The opesslkey.cs works via Add-Type with .Net 4.5 under Windows 8 / PowerShell 3.0 
        without any issues that I have seen.
.EXAMPLE
    Import-Module SushiHangover-RSACrypnto
    $PemFile = $HOME + '\.ssh\SSH2RSA2048_private_test_key.pem'
    . Set-RSACryptoServiceProvider $PemFile
    $preclearText = "Hello, Lets keep this a secret, OK?"
    Write-Host 'Clear Text of:'
    Write-Host '--------------'
    Write-Host $preclearText
    Write-Host '------------------------------------------------'
    Write-Host 'Becomes Encrypted and viewed as a Base64 String:'
    Write-Host '------------------------------------------------'
    $clearBytes =  Convert-StringToByte $preclearText
    $clearBase64 = ConvertTo-Base64String $clearBytes
    $cypherBytes = Get-RSAEncryptedBytes $clearBase64 $false
    $cypherBase64  = ConvertTo-Base64String $cypherBytes
    Write-Host 'Encrypted Base64 String:'
    Write-Host '------------------------'
    $cypherBase64
    # The multiple step way using byte output
    $clearBytes = Get-RSAClearBytes $cypherBase64 $false
    $postclearText =  Convert-ByteToString $clearBytes
    Compare-Object $preclearText $postclearText -CaseSensitive -IncludeEqual
    # Or convert directly to clear text
    $postclearText = Get-RSAClearText $cypherBase64 $false
    Compare-Object $preclearText $postclearText -CaseSensitive -IncludeEqual
    Remove-Module SushiHangover-RSACrypto
.LINK
    http://sushihangover.blogspot.com
    http://ruudvanderlinden.com/2010/10/19/running-inline-c-with-custom-assemblies-in-powershell-2-0/
    http://blogs.technet.com/b/stefan_gossner/archive/2010/05/07/using-csharp-c-code-in-powershell-scripts.aspx
    http://msdn.microsoft.com/en-us/library/system.security.cryptography.rsacryptoserviceprovider.aspx
#>
$CSFile = Join-Path -Path $PSScriptRoot -ChildPath 'opensslkey.cs’
$SourceCode = [System.IO.File]::ReadAllText($CSFile)
$Assemblies = ('System','System.Security')

try {
    Add-Type -TypeDefinition $SourceCode -ReferencedAssemblies $Assemblies -IgnoreWarnings -Language CSharp 
} catch {
    Write-Warning "An error occurred attempting to add the .NET Framework class to the PowerShell session."
    Write-Warning "The error was: $($Error[0].Exception.Message)"
}

Function ConvertTo-Base64String {
    Param (
        [Parameter(Mandatory=$true)][Alias('pem')][array]$ByteString
    )
    return [System.Convert]::ToBase64String($ByteString)
}
Export-ModuleMember -function ConvertTo-Base64String

Function ConvertFrom-Base64String {
    Param (
        [Parameter(Mandatory=$true)][Alias('pem')][string]$ByteString
    )
    return [System.Convert]::FromBase64String($ByteString)
}
Export-ModuleMember -function ConvertFrom-Base64String

Function Convert-ByteToString {
    Param (
        [Parameter(Mandatory=$true)][Alias('byte')][byte[]]$AsciiByteArray
    )
    return [System.Text.Encoding]::ASCII.GetString($AsciiByteArray)
}
Export-ModuleMember -function Convert-ByteToString

Function Convert-StringToByte {
    Param (
        [Parameter(Mandatory=$true)][Alias('byte')][string]$AsciiByteString
    )
    return [System.Text.Encoding]::ASCII.GetBytes($AsciiByteString)
}
Export-ModuleMember -function Convert-StringToByte

Function Set-RSACryptoServiceProvider {
    Param (
        [Parameter(Mandatory=$true)][Alias('pem')][Alias('p')][string]$PemPrivateKeyFile
    )
    if (Test-Path -Path $PemPrivateKeyFile) {
        Write-Debug "Pem file exists"
        $PemText = [System.IO.File]::ReadAllText($PemPrivateKeyFile)
        Write-Debug $PemText
        $PemPrivateKey = [javascience.opensslkey]::DecodeOpenSSLPrivateKey($PemText)
        [System.Security.Cryptography.RSACryptoServiceProvider]$RSA = [javascience.opensslkey]::DecodeRSAPrivateKey($PemPrivateKey);
        Write-Debug $RSA
    } else {
        Write-Debug "PEM File does not exist"
        $RSA = $null
    }
    new-variable -scope global -name RSACryptoServiceProvider -force 
    $RSACryptoServiceProvider = $RSA
}
Export-ModuleMember -function Set-RSACryptoServiceProvider

Function Get-RSACryptoServiceProvider {
    if (!$RSACryptoServiceProvider) {
        . Set-RSACryptoServiceProvider
    }
    return $RSACryptoServiceProvider
}
Export-ModuleMember -function Get-RSACryptoServiceProvider

Function Get-RSAClearBytes {
    <#
    .SYNOPSIS
        RSA Decryption to Bytes with optional OAEP padding
    .Parameter OAEPPadding
        True to perform direct RSA decryption using OAEP padding (only available on a computer
        running Microsoft Windows XP or later); otherwise, false to use PKCS#1 v1.5 padding.
    .Parameter out
        Returns Decrypted Base64 String
    #>
    Param (
        [Parameter(Mandatory=$true)][Alias('cypher')][string]$CypherBase64,
        [Parameter(Mandatory=$true)][Alias('oaep')][boolean]$OAEPPadding = $false,
        [Parameter(Mandatory=$false)][Alias('RSA')][System.Security.Cryptography.RSACryptoServiceProvider]$RSACryptoServiceProvider = (. Get-RSACryptoServiceProvider)
    )
    $CypherBytes  = [System.Convert]::FromBase64String($CypherBase64)
    $ClearBytes = $RSACryptoServiceProvider.Decrypt($CypherBytes, $OAEPPadding)
    Return $ClearBytes
}
Export-ModuleMember -function Get-RSAClearBytes

Function Get-RSAClearText {
    <#
    .SYNOPSIS
        RSA Decryption to ClearText with optional OAEP padding
    .Parameter OAEPPadding
        True to perform direct RSA decryption using OAEP padding (only available on a computer
        running Microsoft Windows XP or later); otherwise, false to use PKCS#1 v1.5 padding.
    .Parameter out
        Returns Decrypted "Clear Text" String
    #>
    Param (
        [Parameter(Mandatory=$true)][Alias('cypher')][string]$CypherBase64,
        [Parameter(Mandatory=$true)][Alias('oaep')][boolean]$OAEPPadding = $false,
        [Parameter(Mandatory=$false)][Alias('RSA')][System.Security.Cryptography.RSACryptoServiceProvider]$RSACryptoServiceProvider = (. Get-RSACryptoServiceProvider)
    )
    $clearBytes = Get-RSAClearBytes $CypherBase64 $OAEPPadding
    Return Convert-ByteToString $clearBytes
}
Export-ModuleMember -function Set-RSAEncryptedBytes

Function Get-RSAEncryptedBytes {
    Param (
        [Parameter(Mandatory=$true)][Alias('cypher')][array]$ClearBase64,
        [Parameter(Mandatory=$true)][Alias('oaep')][boolean]$OAEPPadding = $false,
        [Parameter(Mandatory=$false)][Alias('RSA')][System.Security.Cryptography.RSACryptoServiceProvider]$RSACryptoServiceProvider = (. Get-RSACryptoServiceProvider)
    )
    $ClearBytes  = [System.Convert]::FromBase64String($ClearBase64)
    $CypherBytes = $RSACryptoServiceProvider.Encrypt($ClearBytes, $OAEPPadding)
    #$CypherString = [System.Text.Encoding]::ASCII.GetString($CypherBytes)
    Return $CypherBytes
}
Export-ModuleMember -function Get-RSAEncryptedBytes

