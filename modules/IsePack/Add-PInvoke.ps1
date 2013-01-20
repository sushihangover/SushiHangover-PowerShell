function Add-PInvoke
{
    <#
    .Synopsis
        Creates C# code to access a C function
    .Description
        Creates C# code to access a C function
    .Example
        Add-PInvoke -Library User32.dll -Signature GetSystemMetrics(uint Metric)
    .Parameter Library
        A C Library containing code to invoke
    .Parameter Signature
        The C# signature of the external method
    .Parameter OutputText
        If Set, retuns the source code for the pinvoke method.
        If not, compiles the type. 
    #>
    param(
    [Parameter(Mandatory=$true, 
        HelpMessage="The C Library Containing the Function, i.e. User32")]
    [String]
    $Library,
    
    [Parameter(Mandatory=$true,
        HelpMessage="The Signature of the Method, i.e. int GetSystemMetrics(int Metric")]
    [String]
    $Signature,
    
    [Switch]
    $OutputText
    )
    
    process {
        if ($Library -notlike "*.dll*") {
            $Library+=".dll"
        }
        if ($signature -notlike "*;") {
            $Signature+=";"
        }
        if ($signature -notlike "public static extern*") {
            $signature = "public static extern $signature"
        }
        
        $MemberDefinition = "[DllImport(`"$Library`")]
$Signature"
        
        if (-not $OutputText) {
            Add-Type -PassThru -Name "PInvoke$(Get-Random)" `
                -MemberDefinition $MemberDefinition
        } else {
            $MemberDefinition
        }
    }
}