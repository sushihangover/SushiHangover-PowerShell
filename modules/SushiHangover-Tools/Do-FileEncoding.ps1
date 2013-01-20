Set-StrictMode –Version latest
function Get-FileEncoding {
    <#
    .NOTES
        Copyright 2012,2013 Robert Nees
        Licensed under the Apache License, Version 2.0 (the "License");
        http://sushihangover.blogspot.com      
        ! Grap the original that this is based upon from http://poshcode.org/2059
    .SYNOPSIS
        Gets file encoding.
    .DESCRIPTION
        The Get-FileEncoding function determines encoding by looking at Byte Order Mark (BOM).
        Based on port of C# code from http://www.west-wind.com/Weblog/posts/197245.aspx
    .EXAMPLE
        Get-ChildItem  *.ps1 | select FullName, @{n='Encoding';e={Get-FileEncoding $_.FullName}} | where {$_.Encoding -ne 'ASCII'}
        This command gets ps1 files in current directory where encoding is not ASCII
    .EXAMPLE
        Get-ChildItem  *.ps1 | select FullName, @{n='Encoding';e={Get-FileEncoding $_.FullName}} | where {$_.Encoding -ne 'ASCII'} | foreach {(get-content $_.FullName) | set-content $_.FullName -Encoding ASCII}
        Same as previous example but fixes encoding using set-content
    .LINK
        http://sushihangover.blogspot.com
    .LINK 
        
    #>
    [CmdletBinding()] 
    Param (
        [Parameter(Mandatory=$True, ValueFromPipeline=$True)][string]$Path
    )
    Begin {
    }
    Process {
        [byte[]]$byte = get-content -Encoding byte -ReadCount 4 -TotalCount 4 -Path $Path
        if ($byte -ne $null) {
            if ($byte.Count -ge 4) {
                if ( $byte[0] -eq 0xef -and $byte[1] -eq 0xbb -and $byte[2] -eq 0xbf ) {
                    Write-Output 'UTF8' 
                } elseif ($byte[0] -eq 0xfe -and $byte[1] -eq 0xff) {
                    Write-Output 'Unicode'
                } elseif ($byte[0] -eq 0 -and $byte[1] -eq 0 -and $byte[2] -eq 0xfe -and $byte[3] -eq 0xff) {
                    Write-Output 'UTF32'
                } elseif ($byte[0] -eq 0x2b -and $byte[1] -eq 0x2f -and $byte[2] -eq 0x76) {
                    Write-Output 'UTF7'
                } else {
                    Write-Output 'ASCII'
                }
            } else {
                Write-Error -Message ($Path + " is only " + $byte.Count + " bytes in size, unable to determine file encoding") -Category InvalidData
            }
        } else {
            Write-Error -Message ($Path + " is zero byte(s) in size") -Category InvalidData
        }
    }
    End {
    }
}

Function Set-FileEncoding {
    <#
    .NOTES
        Copyright 2012,2013 Robert Nees
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
