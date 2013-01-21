# Get-RandomString.ps1
# Written by Bill Stewart (bstewart@iname.com)

#requires -version 2

<#
.SYNOPSIS
Outputs random strings.

.DESCRIPTION
Outputs one or more random strings containing specified types of characters.

.PARAMETER Length
Specifies the length of the output string(s). The default value is 8. You cannot specify a value less than 4.

.PARAMETER LowerCase
Specifies that the string must contain lowercase ASCII characters (default). Specify -LowerCase:$false if you do not want the random string(s) to contain lowercase ASCII characters.

.PARAMETER UpperCase
Specifies that the string must contain upercase ASCII characters.

.PARAMETER Numbers
Specifies that the string must contain number characters (0 through 9).

.PARAMETER Symbols
Specifies that the string must contain typewriter symbol characters.

.PARAMETER Count
Specifies the number of random strings to output.

.EXAMPLE
PS C:\> Get-RandomString
Outputs a string containing 8 random lowercase ASCII characters.

.EXAMPLE
PS C:\> Get-RandomString -Length 14 -Count 5
Outputs 5 random strings containing 14 lowercase ASCII characters each.

.EXAMPLE
PS C:\> Get-RandomString -UpperCase -LowerCase -Numbers -Count 10
Outputs 10 random 8-character strings containing uppercase, lowercase, and numbers.

.EXAMPLE
PS C:\> Get-RandomString -Length 32 -LowerCase:$false -Numbers -Symbols -Count 20
Outputs 20 random 32-character strings containing numbers and typewriter symbols.

.EXAMPLE
PS C:\> Get-RandomString -Length 4 -LowerCase:$false -Numbers -Count 15
Outputs 15 random 4-character strings containing only numbers.
#>

param(
  [UInt32] $Length=8,
  [Switch] $LowerCase=$TRUE,
  [Switch] $UpperCase=$FALSE,
  [Switch] $Numbers=$FALSE,
  [Switch] $Symbols=$FALSE,
  [Uint32] $Count=1
)

if ($Length -lt 4) {
  throw "-Length must specify a value greater than 3"
}

if (-not ($LowerCase -or $UpperCase -or $Numbers -or $Symbols)) {
  throw "You must specify one of: -LowerCase -UpperCase -Numbers -Symbols"
}

# Specifies bitmap values for character sets selected.
$CHARSET_LOWER = 1
$CHARSET_UPPER = 2
$CHARSET_NUMBER = 4
$CHARSET_SYMBOL = 8

# Creates character arrays for the different character classes,
# based on ASCII character values.
$charsLower = 97..122 | foreach-object { [Char] $_ }
$charsUpper = 65..90 | foreach-object { [Char] $_ }
$charsNumber = 48..57 | foreach-object { [Char] $_ }
$charsSymbol = 35,36,42,43,44,45,46,47,58,59,61,63,64,
  91,92,93,95,123,125,126 | foreach-object { [Char] $_ }

# Contains the array of characters to use.
$charList = @()
# Contains bitmap of the character sets selected.
$charSets = 0
if ($LowerCase) {
  $charList += $charsLower
  $charSets = $charSets -bor $CHARSET_LOWER
}
if ($UpperCase) {
  $charList += $charsUpper
  $charSets = $charSets -bor $CHARSET_UPPER
}
if ($Numbers) {
  $charList += $charsNumber
  $charSets = $charSets -bor $CHARSET_NUMBER
}
if ($Symbols) {
  $charList += $charsSymbol
  $charSets = $charSets -bor $CHARSET_SYMBOL
}

# Returns True if the string contains at least one character
# from the array, or False otherwise.
function test-stringcontents([String] $test, [Char[]] $chars) {
  foreach ($char in $test.ToCharArray()) {
    if ($chars -ccontains $char) { return $TRUE }
  }
  return $FALSE
}

1..$Count | foreach-object {
  # Loops until the string contains at least
  # one character from each character class.
  do {
    # No character classes matched yet.
    $flags = 0
    $output = ""
    # Create output string containing random characters.
    1..$Length | foreach-object {
      $output += $charList[(get-random -maximum $charList.Length)]
    }
    # Check if character classes match.
    if ($LowerCase) {
      if (test-stringcontents $output $charsLower) {
        $flags = $flags -bor $CHARSET_LOWER
      }
    }
    if ($UpperCase) {
      if (test-stringcontents $output $charsUpper) {
        $flags = $flags -bor $CHARSET_UPPER
      }
    }
    if ($Numbers) {
      if (test-stringcontents $output $charsNumber) {
        $flags = $flags -bor $CHARSET_NUMBER
      }
    }
    if ($Symbols) {
      if (test-stringcontents $output $charsSymbol) {
        $flags = $flags -bor $CHARSET_SYMBOL
      }
    }
  }
  until ($flags -eq $charSets)
  # Output the string.
  $output
}
