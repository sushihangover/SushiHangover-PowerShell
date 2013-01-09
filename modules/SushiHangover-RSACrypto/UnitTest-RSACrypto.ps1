Set-StrictMode –Version latest
<#
.NOTES
    Copyright 2013 Robert Nees
    Licensed under the Apache License, Version 2.0 (the "License");
    http://sushihangover.blogspot.com
.SYNOPSIS
    Test the SushiHangover-RSACrypto module
.DESCRIPTION
    This is a collection of functions to test the SushiHangover-RSACrypto module

    It is not much of a unit test, but more like an example. 
    
    If the Compare-Object output is different than the module is 'broken', please report 
    any problems via SushiHangover on GitHub and/or http://sushihangover.blogspot.com
.EXAMPLE
    UnitTest-RSACrypto.ps1
.LINK
    http://sushihangover.blogspot.com
#>
Import-Module SushiHangover-RSACrypto
$PemFile = $HOME + '\.ssh\SSH2RSA2048_private_test_key.pem'
. Set-RSACryptoServiceProvider $PemFile
$preclearText = "Hello, Lets keep this a secret, OK?"
Write-Host 'Clear Text of:' 
Write-Host '--------------'
Write-Host $preclearText -ForegroundColor Green
Write-Host
$preclearBytes =  Convert-StringToByte $preclearText
$clearBase64 = ConvertTo-Base64String $preclearBytes
$cypherBytes = Get-RSAEncryptedBytes $clearBase64 $false
$cypherBase64  = ConvertTo-Base64String $cypherBytes
Write-Host 'Encrypted Base64 String:'
Write-Host '------------------------'
Write-Host $cypherBase64  -ForegroundColor Red
Write-Host
Write-Host 'Compare-Object output using input bytes via Get-RSAClearBytes:'
$postclearBytes = Get-RSAClearBytes $cypherBase64 $false
Compare-Object $preclearBytes $postclearBytes -CaseSensitive -IncludeEqual |Format-Table -AutoSize
Write-Host 'Compare-Object output using clear text input via Get-RSAClearText:'
$postclearText = Get-RSAClearText $cypherBase64 $false
Write-Host
Compare-Object $preclearText $postclearText -CaseSensitive -IncludeEqual
Remove-Module SushiHangover-RSACrypto
