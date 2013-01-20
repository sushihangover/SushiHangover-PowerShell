Set-StrictMode –Version latest
function Process-Grep {
    <#
        .NOTES
            Copyright 2012/2013 Robert Nees
            Licensed under the Apache License, Version 2.0 (the "License");
            http://sushihangover.blogspot.com
        .SYNOPSIS
            *nix style grep 
        .DESCRIPTION
            This script provides a wrapper to give Linux/Grep style cmd line options
            Note: It needs a lot of help/work to complete
        .EXAMPLE
        .LINK
            http://sushihangover.blogspot.com
        .LINK
            https://git.com/sushihangover
    #>
    [cmdletBinding()]
    param(
        [Parameter(Mandatory=$False)][Alias("filter")][string]$FilterString,
        [Parameter(Mandatory=$False)][Alias("i")][switch]$IgnoreCase,
        [Parameter(Mandatory=$False)][Alias("v")][switch]$InvertMatch,
        [Parameter(Mandatory=$False)][Alias("A")][int]$AfterContext = 0,
        [Parameter(Mandatory=$False)][Alias("B")][int]$BeforeContext = 0,
        [Parameter(Mandatory=$False)][Alias("file")][string]$PatternFilename = '',
        [Parameter(Mandatory=$False,ValueFromPipeline=$True)][string]$Text = ''
    )
    begin {
        $LineCount = 0;
        Write-Debug "(  begin) : Count = $LineCount; filter = $filterString";
        if ($PatternFilename -ne '') {
            # Load Patterns from file
        }
        if ($AfterContext -gt 0) {
            $AfterContextCount = 0
            $AfterContextArray = new-object System.Collections.Queue ($AfterContext + 1)
        } 
        if ($BeforeContext -gt 0) {
            $BeforeContextArray = new-object System.Collections.Queue ($BeforeContext + 1)
        } 
    }
    process {
        Function OutputMatch {
            Write-Output "match $_"
            if ($BeforeContext -gt 0) {
                #$BeforeContextArray.ToArray()
                foreach ($foo in $BeforeContextArray) {
                    $foo
                }
                $BeforeContextArray.Clear()
                return
            }
            if ($AfterContext -gt 0) {
                #$AfterContextCount++
                #write-output $AfterContextCount
                if ($AfterContextCount -eq $AfterContextArray.Count) {
                    write-output "dequeue match"
                    #$AfterContextCount--
                    #$AfterContextArray.Dequeue()
                } else {
                    #write-output "dequeue match"
                    #$AfterContextCount--
#                    $AfterContextArray.Dequeue()
                }
                return
            }
            $_
        }
        $LineCount++
        if ($BeforeContext -gt 0) {
            if ($BeforeContextArray.Count -gt $BeforeContext) { $foobar = $BeforeContextArray.Dequeue() }
            $foobar = $BeforeContextArray.Enqueue($_)
        }
        if ($AfterContext -gt 0) {
                $foobar = $AfterContextArray.Enqueue($_)
                Write-Output "enqueue (2) $_"

#            if (($AfterContextArray.Count -gt 0) -and ($AfterContextContext -le $AfterContext)) {
#                $AfterContextCount++
#                $foobar = $AfterContextArray.Enqueue($_)
#                Write-Output "enqueue (2) $_"
#            }
        }
        if ($IgnoreCase.IsPresent) {
            if ( ($_ -cmatch $FilterString ) -and  (-not $InvertMatch.IsPresent) ) {
                if ($AfterContext -gt 0) {$AfterContextCount++}; OutputMatch $_
            } else {
                if ($AfterContext -gt 0) {$AfterContextCount++}; OutputMatch $_
            }
        } else {
            if ( ( $_ -match $FilterString )  -and  (-not $InvertMatch.IsPresent) ) {
                if ($AfterContext -gt 0) {$AfterContextCount++}; OutputMatch $_
            } elseif ( ( $_ -notmatch $FilterString )  -and  ($InvertMatch.IsPresent) ) {
                if ($AfterContext -gt 0) {$AfterContextCount++}; OutputMatch $_
            }
        }
            #write-output $AfterContextCount
        if ($AfterContext -gt 0) {
            #write-output $AfterContextCount
            #Write-Output $AfterContextArray.Count
            if ($AfterContextCount -lt $AfterContextArray.Count) {
                #$AfterContextCount--
                $foobar = $AfterContextArray.Dequeue()
                Write-Output "dequeued"
            }
        }
    }
    end {
        if ($AfterContext -gt 0) {
            if ($AfterContextArray.Count -gt0) {
                Write-Output "dump array"
                $AfterContextArray.ToArray()
                $AfterContextArray.Clear()
            }
        }
        Write-Debug "(    end) : Count = $LineCount; filter = $FilterString";
        if ($AfterContext -gt 0) {
            $AfterContextArray.Clear()
            $AfterContextArray = $null
        } 
        if ($BeforeContext -gt 0) {
            $BeforeContextArray.Clear()
            $BeforeContextArray = $null
        } 

    }
}
