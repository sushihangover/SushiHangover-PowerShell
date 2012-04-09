Function Set-FileEncoding {
    <#
    .NOTES
        Copyright 2012 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com        
    .SYNOPSIS
        Sets/Changes file encoding.
    .DESCRIPTION
        The Set-FileEncoding function changes the file's encoding in place by using Set-Content 
        with the default encoding being 'Ascii'
        EncodingTypes available are Unicode, Byte, BigEndianUnicode, UTF8, UTF7, Ascii
    .EXAMPLE
        Set-FileEncoding clear-trash.ps1 -whatif
        What if: Performing operation "Set Content" on Target "Path: C:\Users\xavier\Documents\WindowsPowerShell\clear-trash.ps1".
    #>
    [CmdletBinding()] 
    Param (
        [Parameter(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$Path,
        [Parameter(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][string]$EncodingType = "Ascii",
        [Parameter(Mandatory=$False)][switch]$WhatIf
    )
    if ((Get-FileEncoding $Path) -ne $EncodingType) {
        # Need to 'buffer' content as piping get and set will fail with file in use error...
        $FileContent = Get-Content $Path
        If ($WhatIf) {
            $FileContent | Set-Content $Path -WhatIf -Force -Encoding $EncodingType
        } else {
            $FileContent | Set-Content $Path -Force -Encoding $EncodingType
        }
    } else {
        If ($WhatIf) {
            "File encoding is the same, no file change will occur"
        }
    }
}

