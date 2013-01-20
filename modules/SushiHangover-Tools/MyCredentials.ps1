Set-StrictMode -Version latest
Function Import-Credential {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Import Windows Credentials from a SecureString based CliXML file
    .DESCRIPTION
        Import Windows Credentials from a SecureString based CliXML file

        This is 'pipe-able' via the '$Path' PropertyName if need to decode multiple secure credential 
        files and pass those done the pipeline.

        Note: SecureString encryption, without passing in a key value, would be using a 'key' from the 
        current user (you!) to encrypt these strings and thus anyone that can log as you (co-worker,
        wife, hacker, ...) could use these saved Credentials...
        
        Note: This function accepts using a SecureString as a Key for the encryption. Review the SecureString 
        help to determine usage. It is your respondibility to protext that Key (Please do not enter and save it 
        your script(!!!) as you might as well used Clear Text to begin with)

        Note: ConfirmImpact = High? Yes, you are saving a user's credentials to a file. Even though 
        this is using Secure Strings in PowerShell you still need to be aware that is can be a 
        security risk and that a file with credentials will now exist.

        Note: If are working in a 'secure' computing environment, I would highly recommend you not use 
        these functions, a RSA SSL cert based encryption and decryption based system would be the correct
        way to deliver functions like these. In case of suspect access, you can revoke the SSL cert and those
        saved cred would be null and void to the hacker.
    .EXAMPLE
        c:\PS>$orgCred = Get-Credential; $orgCred |Export-Credential -Path 'DeleteMe.clixml' -Confirm:$false; 
        c:\PS>$newCred = Import-Credential -Path 'DeleteMe.clixml' ; rm DeleteMe.clixml ; Compare-Object $orgCred $newCred -IncludeEqual

        InputObject                                                 SideIndicator
        -----------                                                 -------------
        System.Management.Automation.PSCredential                   ==
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="Low")]
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)][String]$Path,
        [Parameter(Mandatory=$false)][SecureString]$SecureKey = $null
    )
    Begin {
    }
    Process {
        $MyCredential = Import-Clixml $Path
        if ($SecureKey -eq $null) {
            $Password = $MyCredential.Password | ConvertTo-SecureString
        } else {
            $Password = $MyCredential.Password | ConvertTo-SecureString -SecureKey $SecureKey
        }
        $Credential = New-Object System.Management.Automation.PsCredential($MyCredential.UserName,$Password)
        return $Credential
    }
    End {
        $Password.Clear(); $Password = $null;
        $Credential = $null
    }
}
Function Export-Credential {
    <#
    .NOTES
        Copyright 2012/2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com
    .SYNOPSIS
        Export Windows Credentials to a SecureString based CliXML file
    .DESCRIPTION
        This routine saves PSCredentials into a securestring based CliXML file for later 
        retrieval (Import-Credential). 

        Most uses of the Import/Export-Credential involve automating scripts that require 
        evalavated permissions or scripts that need to be schedule but require different credentials
        than one from the scheduler's credentials.

        Note: SecureString encryption, without passing in a key value, would be using a 'key' from the 
        current user (you!) to encrypt these strings and thus anyone that can log as you (co-worker,
        wife, hacker, ...) could use these saved Credentials...
        
        Note: This function accepts using a SecureString as a Key for the encryption. Review the SecureString 
        help to determine usage. It is your respondibility to protext that Key (Please do not enter and save it 
        your script(!!!) as you might as well used Clear Text to begin with)

        Note: ConfirmImpact = High? Yes, you are saving a user's credentials to a file. Even though 
        this is using Secure Strings in PowerShell you still need to be aware that is can be a 
        security risk and that a file with credentials will now exist.

        Note: If are working in a 'secure' computing environment, I would highly recommend you not use 
        these functions, a RSA SSL cert based encryption and decryption based system would be the correct
        way to deliver functions like these. In case of suspect access, you can revoke the SSL cert and those
        saved cred would be null and void to the hacker.
    .EXAMPLE
        Get-Credential |Export-Credential -Path 'DeleteMe.clixml' ; cat DeleteMe.clixml ; rm DeleteMe.clixml

        <Objs Version="1.1.0.1" xmlns="http://schemas.microsoft.com/powershell/2004/04">
            <Obj RefId="0">
            <TN RefId="0">
                <T>System.Management.Automation.PSCustomObject</T>
                <T>System.Object</T>
            </TN>
            <MS>
                <S N="UserName">NotTheAdminUser</S>
                <S N="Password">01000000d08c9ddf0115d1118c7a00c04fc297eb01000000a9c3a4e550e9274a9c69bdcd573b532100000000020000000
        000106600000001000020000000ac28b591484884c24a1bf55bfa1e7d7fb7031bf4dc94de8e73e7b4b8d8684474000000000e800000000200002000
        0000d335f22af04e5ac73b498432988d22e7727a3d924ec956f6acca7406ef9e89fc200000006d971df42c0644dbc4330feae5fe6b5d87488950f9e
        57ab7c8261283bd71a96240000000d137cfd2bd08a8e343fa29924edb19ca9be245acfd9426c4d5f3c13b1a9ca399bf485c380faecfcbbbb655af1c
        52d302b77e1ff7dbc1b9eb34f0864bc4c7398a</S>
            </MS>
            </Obj>
        </Objs>

    .LINK
        http://sushihangover.blogspot.com
        https://github.com/sushihangover
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="High")]
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true)][System.Management.Automation.PsCredential]$Credential,
        [Parameter(Mandatory=$true)][String]$Path,
        [Parameter(Mandatory=$false)][SecureString]$SecureKey = $null
    )
    if ($SecureKey -eq $null) {
        $Password = $Credential.Password | ConvertFrom-SecureString
    }
    if ($pscmdlet.ShouldProcess($Credential.UserName)) {
        $MyCredential = New-Object PSOBject
        $MyCredential | Add-Member NoteProperty UserName( $Credential.UserName )
        $MyCredential | Add-Member NoteProperty Password( $Password )
        $MyCredential | Export-Clixml $Path
    }
}
