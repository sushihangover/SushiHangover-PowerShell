function New-FileFormatException {
    
    <#
    
    .Description
        Creates a new System.IO.FileFormatException
    .Synopsis
        Creates a new System.IO.FileFormatException
    .Example
        New-FileFormatException
    .Example
        New-FileFormatException -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${HelpLink},

    [System.String]
    ${Source},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.IO.FileFormatException
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-DependencyObject {
    
    <#
    
    .Description
        Creates a new System.Windows.DependencyObject
    .Synopsis
        Creates a new System.Windows.DependencyObject
    .Example
        New-DependencyObject
    .Example
        New-DependencyObject -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.DependencyObject
        } catch {
            throw $_
            return
        } 
        if ($PsBoundParameters.ContainsKey("DependencyProperty")) {
            $null = $PsBoundParameters.Remove("DependencyProperty")
            foreach ($dp in $dependencyProperty.GetEnumerator()) {
                if ($dp.Key -is [Windows.DependencyProperty]) {
                    $Null = $Object.SetValue($dp.Key, $dp.Value)
                } else {
                    $Prop = $Object.GetType()::"$($dp.Key)Property"
                    if ($Prop) {
                        $null = $Object.SetValue(
                            $Prop,
                            $dp.Value -as $Prop.PropertyType
                        ) 
                    }
                }
            }
        }
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-PropertyMetadata {
    
    <#
    
    .Description
        Creates a new System.Windows.PropertyMetadata
    .Synopsis
        Creates a new System.Windows.PropertyMetadata
    .Example
        New-PropertyMetadata
    .Example
        New-PropertyMetadata -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${DefaultValue},

    ${PropertyChangedCallback},

    ${CoerceValueCallback},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.PropertyMetadata
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-DateTimeValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.DateTimeValueSerializer
    .Synopsis
        Creates a new System.Windows.Markup.DateTimeValueSerializer
    .Example
        New-DateTimeValueSerializer
    .Example
        New-DateTimeValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.DateTimeValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-CurrentChangingEventArgs {
    
    <#
    
    .Description
        Creates a new System.ComponentModel.CurrentChangingEventArgs
    .Synopsis
        Creates a new System.ComponentModel.CurrentChangingEventArgs
    .Example
        New-CurrentChangingEventArgs
    .Example
        New-CurrentChangingEventArgs -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${Cancel},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.ComponentModel.CurrentChangingEventArgs
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-SortDescriptionCollection {
    
    <#
    
    .Description
        Creates a new System.ComponentModel.SortDescriptionCollection
    .Synopsis
        Creates a new System.ComponentModel.SortDescriptionCollection
    .Example
        New-SortDescriptionCollection
    .Example
        New-SortDescriptionCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.ComponentModel.SortDescriptionCollection
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-WebBrowserPermission {
    
    <#
    
    .Description
        Creates a new System.Security.Permissions.WebBrowserPermission
    .Synopsis
        Creates a new System.Security.Permissions.WebBrowserPermission
    .Example
        New-WebBrowserPermission
    .Example
        New-WebBrowserPermission -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Security.Permissions.WebBrowserPermissionLevel]
    ${Level},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Security.Permissions.WebBrowserPermission
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-MediaPermission {
    
    <#
    
    .Description
        Creates a new System.Security.Permissions.MediaPermission
    .Synopsis
        Creates a new System.Security.Permissions.MediaPermission
    .Example
        New-MediaPermission
    .Example
        New-MediaPermission -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Security.Permissions.MediaPermission
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-Int32RectValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Converters.Int32RectValueSerializer
    .Synopsis
        Creates a new System.Windows.Converters.Int32RectValueSerializer
    .Example
        New-Int32RectValueSerializer
    .Example
        New-Int32RectValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Converters.Int32RectValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-PointValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Converters.PointValueSerializer
    .Synopsis
        Creates a new System.Windows.Converters.PointValueSerializer
    .Example
        New-PointValueSerializer
    .Example
        New-PointValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Converters.PointValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-RectValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Converters.RectValueSerializer
    .Synopsis
        Creates a new System.Windows.Converters.RectValueSerializer
    .Example
        New-RectValueSerializer
    .Example
        New-RectValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Converters.RectValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-SizeValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Converters.SizeValueSerializer
    .Synopsis
        Creates a new System.Windows.Converters.SizeValueSerializer
    .Example
        New-SizeValueSerializer
    .Example
        New-SizeValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Converters.SizeValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-VectorValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Converters.VectorValueSerializer
    .Synopsis
        Creates a new System.Windows.Converters.VectorValueSerializer
    .Example
        New-VectorValueSerializer
    .Example
        New-VectorValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Converters.VectorValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-ExpressionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.ExpressionConverter
    .Synopsis
        Creates a new System.Windows.ExpressionConverter
    .Example
        New-ExpressionConverter
    .Example
        New-ExpressionConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.ExpressionConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-Int32RectConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Int32RectConverter
    .Synopsis
        Creates a new System.Windows.Int32RectConverter
    .Example
        New-Int32RectConverter
    .Example
        New-Int32RectConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Int32RectConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-PointConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.PointConverter
    .Synopsis
        Creates a new System.Windows.PointConverter
    .Example
        New-PointConverter
    .Example
        New-PointConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.PointConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-RectConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.RectConverter
    .Synopsis
        Creates a new System.Windows.RectConverter
    .Example
        New-RectConverter
    .Example
        New-RectConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.RectConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-SizeConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.SizeConverter
    .Synopsis
        Creates a new System.Windows.SizeConverter
    .Example
        New-SizeConverter
    .Example
        New-SizeConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.SizeConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-VectorConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.VectorConverter
    .Synopsis
        Creates a new System.Windows.VectorConverter
    .Example
        New-VectorConverter
    .Example
        New-VectorConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.VectorConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-KeyConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.KeyConverter
    .Synopsis
        Creates a new System.Windows.Input.KeyConverter
    .Example
        New-KeyConverter
    .Example
        New-KeyConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.KeyConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-KeyValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.KeyValueSerializer
    .Synopsis
        Creates a new System.Windows.Input.KeyValueSerializer
    .Example
        New-KeyValueSerializer
    .Example
        New-KeyValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.KeyValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-MatrixValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.MatrixValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.MatrixValueSerializer
    .Example
        New-MatrixValueSerializer
    .Example
        New-MatrixValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Converters.MatrixValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-DisableDpiAwarenessAttribute {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DisableDpiAwarenessAttribute
    .Synopsis
        Creates a new System.Windows.Media.DisableDpiAwarenessAttribute
    .Example
        New-DisableDpiAwarenessAttribute
    .Example
        New-DisableDpiAwarenessAttribute -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DisableDpiAwarenessAttribute
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-MatrixConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.MatrixConverter
    .Synopsis
        Creates a new System.Windows.Media.MatrixConverter
    .Example
        New-MatrixConverter
    .Example
        New-MatrixConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.MatrixConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-DispatcherTimer {
    
    <#
    
    .Description
        Creates a new System.Windows.Threading.DispatcherTimer
    .Synopsis
        Creates a new System.Windows.Threading.DispatcherTimer
    .Example
        New-DispatcherTimer
    .Example
        New-DispatcherTimer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${IsEnabled},

    ${Interval},

    ${Tag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Tick},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Threading.DispatcherTimer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-AmbientAttribute {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.AmbientAttribute
    .Synopsis
        Creates a new System.Windows.Markup.AmbientAttribute
    .Example
        New-AmbientAttribute
    .Example
        New-AmbientAttribute -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.AmbientAttribute
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-ContentPropertyAttribute {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.ContentPropertyAttribute
    .Synopsis
        Creates a new System.Windows.Markup.ContentPropertyAttribute
    .Example
        New-ContentPropertyAttribute
    .Example
        New-ContentPropertyAttribute -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.ContentPropertyAttribute
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-MarkupExtensionReturnTypeAttribute {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.MarkupExtensionReturnTypeAttribute
    .Synopsis
        Creates a new System.Windows.Markup.MarkupExtensionReturnTypeAttribute
    .Example
        New-MarkupExtensionReturnTypeAttribute
    .Example
        New-MarkupExtensionReturnTypeAttribute -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.MarkupExtensionReturnTypeAttribute
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-ServiceProviders {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.ServiceProviders
    .Synopsis
        Creates a new System.Windows.Markup.ServiceProviders
    .Example
        New-ServiceProviders
    .Example
        New-ServiceProviders -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.ServiceProviders
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-TrimSurroundingWhitespaceAttribute {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.TrimSurroundingWhitespaceAttribute
    .Synopsis
        Creates a new System.Windows.Markup.TrimSurroundingWhitespaceAttribute
    .Example
        New-TrimSurroundingWhitespaceAttribute
    .Example
        New-TrimSurroundingWhitespaceAttribute -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.TrimSurroundingWhitespaceAttribute
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-WhitespaceSignificantCollectionAttribute {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.WhitespaceSignificantCollectionAttribute
    .Synopsis
        Creates a new System.Windows.Markup.WhitespaceSignificantCollectionAttribute
    .Example
        New-WhitespaceSignificantCollectionAttribute
    .Example
        New-WhitespaceSignificantCollectionAttribute -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Markup.WhitespaceSignificantCollectionAttribute
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-ModifierKeysConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.ModifierKeysConverter
    .Synopsis
        Creates a new System.Windows.Input.ModifierKeysConverter
    .Example
        New-ModifierKeysConverter
    .Example
        New-ModifierKeysConverter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.ModifierKeysConverter
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-ModifierKeysValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.ModifierKeysValueSerializer
    .Synopsis
        Creates a new System.Windows.Input.ModifierKeysValueSerializer
    .Example
        New-ModifierKeysValueSerializer
    .Example
        New-ModifierKeysValueSerializer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.ModifierKeysValueSerializer
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-DispatcherFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Threading.DispatcherFrame
    .Synopsis
        Creates a new System.Windows.Threading.DispatcherFrame
    .Example
        New-DispatcherFrame
    .Example
        New-DispatcherFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${Continue},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Threading.DispatcherFrame
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-DispatcherSynchronizationContext {
    
    <#
    
    .Description
        Creates a new System.Windows.Threading.DispatcherSynchronizationContext
    .Synopsis
        Creates a new System.Windows.Threading.DispatcherSynchronizationContext
    .Example
        New-DispatcherSynchronizationContext
    .Example
        New-DispatcherSynchronizationContext -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Threading.DispatcherSynchronizationContext
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-RightsManagementException {
    
    <#
    
    .Description
        Creates a new System.Security.RightsManagement.RightsManagementException
    .Synopsis
        Creates a new System.Security.RightsManagement.RightsManagementException
    .Example
        New-RightsManagementException
    .Example
        New-RightsManagementException -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${HelpLink},

    [System.String]
    ${Source},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Security.RightsManagement.RightsManagementException
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
} function New-UnsignedPublishLicense {
    
    <#
    
    .Description
        Creates a new System.Security.RightsManagement.UnsignedPublishLicense
    .Synopsis
        Creates a new System.Security.RightsManagement.UnsignedPublishLicense
    .Example
        New-UnsignedPublishLicense
    .Example
        New-UnsignedPublishLicense -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Owner},

    [System.String]
    ${ReferralInfoName},

    ${ReferralInfoUri},

    ${ContentId},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Security.RightsManagement.UnsignedPublishLicense
        } catch {
            throw $_
            return
        } 
        Set-Property -property $psBoundParameters -inputObject $Object
        if ($outputXaml) {                
            $strWrite = New-Object IO.StringWriter
            ([xml]([Windows.Markup.XamlWriter]::Save($Object))).Save($strWrite)
            return "$strWrite"
        }
        $Object
    }
    end {
        
    }
}