function New-DoubleIListConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.DoubleIListConverter
    .Synopsis
        Creates a new System.Windows.Media.Converters.DoubleIListConverter
    .Example
        New-DoubleIListConverter
    .Example
        New-DoubleIListConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.DoubleIListConverter
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
} function New-UShortIListConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.UShortIListConverter
    .Synopsis
        Creates a new System.Windows.Media.Converters.UShortIListConverter
    .Example
        New-UShortIListConverter
    .Example
        New-UShortIListConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.UShortIListConverter
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
} function New-BoolIListConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.BoolIListConverter
    .Synopsis
        Creates a new System.Windows.Media.Converters.BoolIListConverter
    .Example
        New-BoolIListConverter
    .Example
        New-BoolIListConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.BoolIListConverter
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
} function New-PointIListConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.PointIListConverter
    .Synopsis
        Creates a new System.Windows.Media.Converters.PointIListConverter
    .Example
        New-PointIListConverter
    .Example
        New-PointIListConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.PointIListConverter
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
} function New-CharIListConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.CharIListConverter
    .Synopsis
        Creates a new System.Windows.Media.Converters.CharIListConverter
    .Example
        New-CharIListConverter
    .Example
        New-CharIListConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.CharIListConverter
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
} function New-ContainerVisual {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ContainerVisual
    .Synopsis
        Creates a new System.Windows.Media.ContainerVisual
    .Example
        New-ContainerVisual
    .Example
        New-ContainerVisual -OutputXaml
    .Example
        New-ContainerVisual -Show
    .Example
        New-ContainerVisual -AsJob
    .Parameter AsJob
        
    If Set, will show the visual in a background WPF Job
    
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    .Parameter Show
        
    If Set, will show the visual in a new window
    
    #>

    
    
    param(
        
    ${Clip},

    [System.Double]
    ${Opacity},

    ${OpacityMask},

    ${BitmapEffect},

    ${BitmapEffectInput},

    ${XSnappingGuidelines},

    ${YSnappingGuidelines},

    ${Transform},

    ${Offset},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty},

    [Switch]
    ${Show},

    [System.Int32]
    ${Row},

    [System.Int32]
    ${Column},

    [System.Int32]
    ${RowSpan},

    [System.Int32]
    ${ColumnSpan},

    [System.Int32]
    ${ZIndex},

    [System.Windows.Controls.Dock]
    ${Dock},

    [System.Double]
    ${Top},

    [System.Double]
    ${Left},

    [Switch]
    ${AsJob}
    )
    begin {
        
    }
    process {
        
        if ($PSBoundParameters.ContainsKey("AsJob")) {
            $null = $psBoundParameters.Remove("AsJob")
            $ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
            $Command = $MyInvocation.InvocationName
            if (-not $Command) {
                $Command = "Start-WPFJob"
            }
            $Parameters = $PSBoundParameters
            $AdditionalContext = @(Get-PSCallstack)[1].InvocationInfo.MyCommand.Definition
            if (-not $AdditionalContext) { $AdditionalContext += {} }
            if ($AdditionalContext -like "*.ps1") { 
                $AdditionalContext = [ScriptBlock]::Create(
                    [IO.File]::ReadAllText($AdditionalContext)
                )
            } else {
                $AdditionalContext = [ScriptBlock]::Create($AdditionalContext)
            }

            
            $JobParameters = @{
                ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
                Command = $Command
                AdditionalContext = $AdditionalContext
                Name = $Name
            }
            
            if (-not $JobParameters.Name) {
                $JobParameters.Name = $MyInvocation.InvocationName
            }

            if ($Parameters) {
                Start-WPFJob @JobParameters -Parameter $Parameters         
            } else {
                Start-WPFJob @JobParameters
            }
            return
        }
        try {
        $Object = New-Object System.Windows.Media.ContainerVisual
        } catch {
            throw $_
            return
        } 
        if ($PSBoundParameters.ContainsKey("Left")) {            
            $object.SetValue([Windows.Controls.Canvas]::LeftProperty, $Left)
            $Null = $PSBoundParameters.Remove("Left")
        }
        if ($PSBoundParameters.ContainsKey("Top")) {            
            $object.SetValue([Windows.Controls.Canvas]::TopProperty, $top)
            $Null = $PSBoundParameters.Remove("Top")
        }
        if ($PSBoundParameters.ContainsKey("Row")) {
            $Object.SetValue([Windows.Controls.Grid]::RowProperty, $row)
            $Null = $PSBoundParameters.Remove("Row")
        }
        if ($PSBoundParameters.ContainsKey("Column")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnProperty, $column)
            $Null = $PSBoundParameters.Remove("Column")
        }
        if ($PSBoundParameters.ContainsKey("RowSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::RowSpanProperty, $rowSpan)
            $Null = $PSBoundParameters.Remove("RowSpan")
        }
        if ($PSBoundParameters.ContainsKey("ColumnSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnSpanProperty, $columnSpan)
            $Null = $PSBoundParameters.Remove("ColumnSpan")
        }
        if ($PSBoundParameters.ContainsKey("ZIndex")) {
            $Object.SetValue([Windows.Controls.Panel]::ZIndexProperty, $ZIndex)
            $Null = $PSBoundParameters.Remove("ZIndex")
        }
        if ($PSBoundParameters.ContainsKey("Dock")) {
            $Object.SetValue([Windows.Controls.DockPanel]::DockProperty, $Dock)
            $Null = $PSBoundParameters.Remove("Dock")
        }
        $null = $psBoundParameters.Remove("Show")
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
        if ($show) {
            return Show-Window $Object 
        }
        $Object
    }
    end {
        
    }
} function New-DrawingVisual {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DrawingVisual
    .Synopsis
        Creates a new System.Windows.Media.DrawingVisual
    .Example
        New-DrawingVisual
    .Example
        New-DrawingVisual -OutputXaml
    .Example
        New-DrawingVisual -Show
    .Example
        New-DrawingVisual -AsJob
    .Parameter AsJob
        
    If Set, will show the visual in a background WPF Job
    
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    .Parameter Show
        
    If Set, will show the visual in a new window
    
    #>

    
    
    param(
        
    ${Clip},

    [System.Double]
    ${Opacity},

    ${OpacityMask},

    ${BitmapEffect},

    ${BitmapEffectInput},

    ${XSnappingGuidelines},

    ${YSnappingGuidelines},

    ${Transform},

    ${Offset},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty},

    [Switch]
    ${Show},

    [System.Int32]
    ${Row},

    [System.Int32]
    ${Column},

    [System.Int32]
    ${RowSpan},

    [System.Int32]
    ${ColumnSpan},

    [System.Int32]
    ${ZIndex},

    [System.Windows.Controls.Dock]
    ${Dock},

    [System.Double]
    ${Top},

    [System.Double]
    ${Left},

    [Switch]
    ${AsJob}
    )
    begin {
        
    }
    process {
        
        if ($PSBoundParameters.ContainsKey("AsJob")) {
            $null = $psBoundParameters.Remove("AsJob")
            $ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
            $Command = $MyInvocation.InvocationName
            if (-not $Command) {
                $Command = "Start-WPFJob"
            }
            $Parameters = $PSBoundParameters
            $AdditionalContext = @(Get-PSCallstack)[1].InvocationInfo.MyCommand.Definition
            if (-not $AdditionalContext) { $AdditionalContext += {} }
            if ($AdditionalContext -like "*.ps1") { 
                $AdditionalContext = [ScriptBlock]::Create(
                    [IO.File]::ReadAllText($AdditionalContext)
                )
            } else {
                $AdditionalContext = [ScriptBlock]::Create($AdditionalContext)
            }

            
            $JobParameters = @{
                ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
                Command = $Command
                AdditionalContext = $AdditionalContext
                Name = $Name
            }
            
            if (-not $JobParameters.Name) {
                $JobParameters.Name = $MyInvocation.InvocationName
            }

            if ($Parameters) {
                Start-WPFJob @JobParameters -Parameter $Parameters         
            } else {
                Start-WPFJob @JobParameters
            }
            return
        }
        try {
        $Object = New-Object System.Windows.Media.DrawingVisual
        } catch {
            throw $_
            return
        } 
        if ($PSBoundParameters.ContainsKey("Left")) {            
            $object.SetValue([Windows.Controls.Canvas]::LeftProperty, $Left)
            $Null = $PSBoundParameters.Remove("Left")
        }
        if ($PSBoundParameters.ContainsKey("Top")) {            
            $object.SetValue([Windows.Controls.Canvas]::TopProperty, $top)
            $Null = $PSBoundParameters.Remove("Top")
        }
        if ($PSBoundParameters.ContainsKey("Row")) {
            $Object.SetValue([Windows.Controls.Grid]::RowProperty, $row)
            $Null = $PSBoundParameters.Remove("Row")
        }
        if ($PSBoundParameters.ContainsKey("Column")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnProperty, $column)
            $Null = $PSBoundParameters.Remove("Column")
        }
        if ($PSBoundParameters.ContainsKey("RowSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::RowSpanProperty, $rowSpan)
            $Null = $PSBoundParameters.Remove("RowSpan")
        }
        if ($PSBoundParameters.ContainsKey("ColumnSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnSpanProperty, $columnSpan)
            $Null = $PSBoundParameters.Remove("ColumnSpan")
        }
        if ($PSBoundParameters.ContainsKey("ZIndex")) {
            $Object.SetValue([Windows.Controls.Panel]::ZIndexProperty, $ZIndex)
            $Null = $PSBoundParameters.Remove("ZIndex")
        }
        if ($PSBoundParameters.ContainsKey("Dock")) {
            $Object.SetValue([Windows.Controls.DockPanel]::DockProperty, $Dock)
            $Null = $PSBoundParameters.Remove("Dock")
        }
        $null = $psBoundParameters.Remove("Show")
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
        if ($show) {
            return Show-Window $Object 
        }
        $Object
    }
    end {
        
    }
} function New-PackWebRequestFactory {
    
    <#
    
    .Description
        Creates a new System.IO.Packaging.PackWebRequestFactory
    .Synopsis
        Creates a new System.IO.Packaging.PackWebRequestFactory
    .Example
        New-PackWebRequestFactory
    .Example
        New-PackWebRequestFactory -OutputXaml
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
        $Object = New-Object System.IO.Packaging.PackWebRequestFactory
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
} function New-ContentElement {
    
    <#
    
    .Description
        Creates a new System.Windows.ContentElement
    .Synopsis
        Creates a new System.Windows.ContentElement
    .Example
        New-ContentElement
    .Example
        New-ContentElement -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${IsEnabled},

    [Switch]
    ${Focusable},

    [Switch]
    ${AllowDrop},

    ${InputBindings},

    ${CommandBindings},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsEnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FocusableChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryCursor},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewLostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewTextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewQueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Drop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusedChanged},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.ContentElement
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
} function New-CultureInfoIetfLanguageTagConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.CultureInfoIetfLanguageTagConverter
    .Synopsis
        Creates a new System.Windows.CultureInfoIetfLanguageTagConverter
    .Example
        New-CultureInfoIetfLanguageTagConverter
    .Example
        New-CultureInfoIetfLanguageTagConverter -OutputXaml
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
        $Object = New-Object System.Windows.CultureInfoIetfLanguageTagConverter
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
} function New-DataObject {
    
    <#
    
    .Description
        Creates a new System.Windows.DataObject
    .Synopsis
        Creates a new System.Windows.DataObject
    .Example
        New-DataObject
    .Example
        New-DataObject -OutputXaml
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
        $Object = New-Object System.Windows.DataObject
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
} function New-RoutedEventArgs {
    
    <#
    
    .Description
        Creates a new System.Windows.RoutedEventArgs
    .Synopsis
        Creates a new System.Windows.RoutedEventArgs
    .Example
        New-RoutedEventArgs
    .Example
        New-RoutedEventArgs -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${RoutedEvent},

    [Switch]
    ${Handled},

    ${Source},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.RoutedEventArgs
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
} function New-DurationConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.DurationConverter
    .Synopsis
        Creates a new System.Windows.DurationConverter
    .Example
        New-DurationConverter
    .Example
        New-DurationConverter -OutputXaml
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
        $Object = New-Object System.Windows.DurationConverter
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
} function New-EventPrivateKey {
    
    <#
    
    .Description
        Creates a new System.Windows.EventPrivateKey
    .Synopsis
        Creates a new System.Windows.EventPrivateKey
    .Example
        New-EventPrivateKey
    .Example
        New-EventPrivateKey -OutputXaml
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
        $Object = New-Object System.Windows.EventPrivateKey
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
} function New-FontStyleConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.FontStyleConverter
    .Synopsis
        Creates a new System.Windows.FontStyleConverter
    .Example
        New-FontStyleConverter
    .Example
        New-FontStyleConverter -OutputXaml
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
        $Object = New-Object System.Windows.FontStyleConverter
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
} function New-FontStretchConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.FontStretchConverter
    .Synopsis
        Creates a new System.Windows.FontStretchConverter
    .Example
        New-FontStretchConverter
    .Example
        New-FontStretchConverter -OutputXaml
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
        $Object = New-Object System.Windows.FontStretchConverter
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
} function New-FontWeightConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.FontWeightConverter
    .Synopsis
        Creates a new System.Windows.FontWeightConverter
    .Example
        New-FontWeightConverter
    .Example
        New-FontWeightConverter -OutputXaml
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
        $Object = New-Object System.Windows.FontWeightConverter
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
} function New-UIElement {
    
    <#
    
    .Description
        Creates a new System.Windows.UIElement
    .Synopsis
        Creates a new System.Windows.UIElement
    .Example
        New-UIElement
    .Example
        New-UIElement -OutputXaml
    .Example
        New-UIElement -Show
    .Example
        New-UIElement -AsJob
    .Parameter AsJob
        
    If Set, will show the visual in a background WPF Job
    
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    .Parameter Show
        
    If Set, will show the visual in a new window
    
    #>

    
    
    param(
        
    ${InputBindings},

    ${CommandBindings},

    [Switch]
    ${AllowDrop},

    ${RenderSize},

    ${RenderTransform},

    ${RenderTransformOrigin},

    [System.Double]
    ${Opacity},

    ${OpacityMask},

    ${BitmapEffect},

    ${Effect},

    ${BitmapEffectInput},

    [System.String]
    ${Uid},

    [System.Windows.Visibility]
    ${Visibility},

    [Switch]
    ${ClipToBounds},

    ${Clip},

    [Switch]
    ${SnapsToDevicePixels},

    [Switch]
    ${IsEnabled},

    [Switch]
    ${IsHitTestVisible},

    [Switch]
    ${Focusable},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryCursor},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewLostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewTextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewQueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Drop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutUpdated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsEnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsHitTestVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FocusableChanged},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${RoutedEvent},

    [System.Collections.Hashtable]
    ${DependencyProperty},

    [Switch]
    ${Show},

    [System.Int32]
    ${Row},

    [System.Int32]
    ${Column},

    [System.Int32]
    ${RowSpan},

    [System.Int32]
    ${ColumnSpan},

    [System.Int32]
    ${ZIndex},

    [System.Windows.Controls.Dock]
    ${Dock},

    [System.Double]
    ${Top},

    [System.Double]
    ${Left},

    [Switch]
    ${AsJob}
    )
    begin {
        
    }
    process {
        
        if ($PSBoundParameters.ContainsKey("AsJob")) {
            $null = $psBoundParameters.Remove("AsJob")
            $ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
            $Command = $MyInvocation.InvocationName
            if (-not $Command) {
                $Command = "Start-WPFJob"
            }
            $Parameters = $PSBoundParameters
            $AdditionalContext = @(Get-PSCallstack)[1].InvocationInfo.MyCommand.Definition
            if (-not $AdditionalContext) { $AdditionalContext += {} }
            if ($AdditionalContext -like "*.ps1") { 
                $AdditionalContext = [ScriptBlock]::Create(
                    [IO.File]::ReadAllText($AdditionalContext)
                )
            } else {
                $AdditionalContext = [ScriptBlock]::Create($AdditionalContext)
            }

            
            $JobParameters = @{
                ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
                Command = $Command
                AdditionalContext = $AdditionalContext
                Name = $Name
            }
            
            if (-not $JobParameters.Name) {
                $JobParameters.Name = $MyInvocation.InvocationName
            }

            if ($Parameters) {
                Start-WPFJob @JobParameters -Parameter $Parameters         
            } else {
                Start-WPFJob @JobParameters
            }
            return
        }
        try {
        $Object = New-Object System.Windows.UIElement
        } catch {
            throw $_
            return
        } 
        if ($PSBoundParameters.ContainsKey("Left")) {            
            $object.SetValue([Windows.Controls.Canvas]::LeftProperty, $Left)
            $Null = $PSBoundParameters.Remove("Left")
        }
        if ($PSBoundParameters.ContainsKey("Top")) {            
            $object.SetValue([Windows.Controls.Canvas]::TopProperty, $top)
            $Null = $PSBoundParameters.Remove("Top")
        }
        if ($PSBoundParameters.ContainsKey("Row")) {
            $Object.SetValue([Windows.Controls.Grid]::RowProperty, $row)
            $Null = $PSBoundParameters.Remove("Row")
        }
        if ($PSBoundParameters.ContainsKey("Column")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnProperty, $column)
            $Null = $PSBoundParameters.Remove("Column")
        }
        if ($PSBoundParameters.ContainsKey("RowSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::RowSpanProperty, $rowSpan)
            $Null = $PSBoundParameters.Remove("RowSpan")
        }
        if ($PSBoundParameters.ContainsKey("ColumnSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnSpanProperty, $columnSpan)
            $Null = $PSBoundParameters.Remove("ColumnSpan")
        }
        if ($PSBoundParameters.ContainsKey("ZIndex")) {
            $Object.SetValue([Windows.Controls.Panel]::ZIndexProperty, $ZIndex)
            $Null = $PSBoundParameters.Remove("ZIndex")
        }
        if ($PSBoundParameters.ContainsKey("Dock")) {
            $Object.SetValue([Windows.Controls.DockPanel]::DockProperty, $Dock)
            $Null = $PSBoundParameters.Remove("Dock")
        }
        $null = $psBoundParameters.Remove("Show")
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
        if ($PsBoundParameters.ContainsKey("RoutedEvent")) {
            $null = $PsBoundParameters.Remove("RoutedEvent")
            foreach ($re in $RoutedEvent.GetEnumerator()) {
                if ($re.Key -is [Windows.RoutedEvent]) {
                    $Null = $Object.SetValue($re.Key, $re.Value)
                } else {
                    $Event = $object.GetType()::"$($re.Key)Event"
                    if ($Event) {
                        $null = $Object.AddHandler(
                            $Event,
                            $re.Value -as $Event.HandlerType
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
        if ($show) {
            return Show-Window $Object 
        }
        $Object
    }
    end {
        
    }
} function New-TextDecoration {
    
    <#
    
    .Description
        Creates a new System.Windows.TextDecoration
    .Synopsis
        Creates a new System.Windows.TextDecoration
    .Example
        New-TextDecoration
    .Example
        New-TextDecoration -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Pen},

    [System.Double]
    ${PenOffset},

    [System.Windows.TextDecorationUnit]
    ${PenOffsetUnit},

    [System.Windows.TextDecorationUnit]
    ${PenThicknessUnit},

    [System.Windows.TextDecorationLocation]
    ${Location},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.TextDecoration
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
} function New-TextDecorationCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.TextDecorationCollection
    .Synopsis
        Creates a new System.Windows.TextDecorationCollection
    .Example
        New-TextDecorationCollection
    .Example
        New-TextDecorationCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.TextDecorationCollection
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
} function New-TextDecorationCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.TextDecorationCollectionConverter
    .Synopsis
        Creates a new System.Windows.TextDecorationCollectionConverter
    .Example
        New-TextDecorationCollectionConverter
    .Example
        New-TextDecorationCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.TextDecorationCollectionConverter
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
} function New-UIPropertyMetadata {
    
    <#
    
    .Description
        Creates a new System.Windows.UIPropertyMetadata
    .Synopsis
        Creates a new System.Windows.UIPropertyMetadata
    .Example
        New-UIPropertyMetadata
    .Example
        New-UIPropertyMetadata -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${IsAnimationProhibited},

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
        $Object = New-Object System.Windows.UIPropertyMetadata
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
} function New-DrawingAttributes {
    
    <#
    
    .Description
        Creates a new System.Windows.Ink.DrawingAttributes
    .Synopsis
        Creates a new System.Windows.Ink.DrawingAttributes
    .Example
        New-DrawingAttributes
    .Example
        New-DrawingAttributes -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    [System.Windows.Ink.StylusTip]
    ${StylusTip},

    ${StylusTipTransform},

    [System.Double]
    ${Height},

    [System.Double]
    ${Width},

    [Switch]
    ${FitToCurve},

    [Switch]
    ${IgnorePressure},

    [Switch]
    ${IsHighlighter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AttributeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PropertyDataChanged},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Ink.DrawingAttributes
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
} function New-GestureRecognizer {
    
    <#
    
    .Description
        Creates a new System.Windows.Ink.GestureRecognizer
    .Synopsis
        Creates a new System.Windows.Ink.GestureRecognizer
    .Example
        New-GestureRecognizer
    .Example
        New-GestureRecognizer -OutputXaml
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
        $Object = New-Object System.Windows.Ink.GestureRecognizer
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
} function New-StrokeCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Ink.StrokeCollection
    .Synopsis
        Creates a new System.Windows.Ink.StrokeCollection
    .Example
        New-StrokeCollection
    .Example
        New-StrokeCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StrokesChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PropertyDataChanged},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Ink.StrokeCollection
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
} function New-StrokeCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.StrokeCollectionConverter
    .Synopsis
        Creates a new System.Windows.StrokeCollectionConverter
    .Example
        New-StrokeCollectionConverter
    .Example
        New-StrokeCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.StrokeCollectionConverter
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
} function New-CommandBinding {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.CommandBinding
    .Synopsis
        Creates a new System.Windows.Input.CommandBinding
    .Example
        New-CommandBinding
    .Example
        New-CommandBinding -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Command},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewExecuted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Executed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewCanExecute},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CanExecute},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.CommandBinding
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
} function New-CommandBindingCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.CommandBindingCollection
    .Synopsis
        Creates a new System.Windows.Input.CommandBindingCollection
    .Example
        New-CommandBindingCollection
    .Example
        New-CommandBindingCollection -OutputXaml
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
        $Object = New-Object System.Windows.Input.CommandBindingCollection
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
} function New-InputBindingCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputBindingCollection
    .Synopsis
        Creates a new System.Windows.Input.InputBindingCollection
    .Example
        New-InputBindingCollection
    .Example
        New-InputBindingCollection -OutputXaml
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
        $Object = New-Object System.Windows.Input.InputBindingCollection
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
} function New-InputGestureCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputGestureCollection
    .Synopsis
        Creates a new System.Windows.Input.InputGestureCollection
    .Example
        New-InputGestureCollection
    .Example
        New-InputGestureCollection -OutputXaml
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
        $Object = New-Object System.Windows.Input.InputGestureCollection
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
} function New-KeyBinding {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.KeyBinding
    .Synopsis
        Creates a new System.Windows.Input.KeyBinding
    .Example
        New-KeyBinding
    .Example
        New-KeyBinding -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Command},

    [System.Windows.Input.Key]
    ${Key},

    ${Gesture},

    [System.Windows.Input.ModifierKeys]
    ${Modifiers},

    ${CommandParameter},

    ${CommandTarget},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.KeyBinding
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
        if ($command -is [string]) {
            $module =$myInvocation.MyCommand.Module.ModuleName
            $cmd = 
                Get-Command "Get-*Command" -Module $module | 
                    Where-Object {  $_.Parameters.$Command } 
            if ($cmd) {
                $params = @{$Command = $true}
                $psBoundParameters.Command = & $cmd @Params
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
} function New-KeyGestureConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.KeyGestureConverter
    .Synopsis
        Creates a new System.Windows.Input.KeyGestureConverter
    .Example
        New-KeyGestureConverter
    .Example
        New-KeyGestureConverter -OutputXaml
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
        $Object = New-Object System.Windows.Input.KeyGestureConverter
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
} function New-KeyGestureValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.KeyGestureValueSerializer
    .Synopsis
        Creates a new System.Windows.Input.KeyGestureValueSerializer
    .Example
        New-KeyGestureValueSerializer
    .Example
        New-KeyGestureValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Input.KeyGestureValueSerializer
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
} function New-MouseActionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.MouseActionConverter
    .Synopsis
        Creates a new System.Windows.Input.MouseActionConverter
    .Example
        New-MouseActionConverter
    .Example
        New-MouseActionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Input.MouseActionConverter
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
} function New-MouseActionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.MouseActionValueSerializer
    .Synopsis
        Creates a new System.Windows.Input.MouseActionValueSerializer
    .Example
        New-MouseActionValueSerializer
    .Example
        New-MouseActionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Input.MouseActionValueSerializer
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
} function New-MouseBinding {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.MouseBinding
    .Synopsis
        Creates a new System.Windows.Input.MouseBinding
    .Example
        New-MouseBinding
    .Example
        New-MouseBinding -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Gesture},

    [System.Windows.Input.MouseAction]
    ${MouseAction},

    ${Command},

    ${CommandParameter},

    ${CommandTarget},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.MouseBinding
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
        if ($command -is [string]) {
            $module =$myInvocation.MyCommand.Module.ModuleName
            $cmd = 
                Get-Command "Get-*Command" -Module $module | 
                    Where-Object {  $_.Parameters.$Command } 
            if ($cmd) {
                $params = @{$Command = $true}
                $psBoundParameters.Command = & $cmd @Params
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
} function New-MouseGesture {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.MouseGesture
    .Synopsis
        Creates a new System.Windows.Input.MouseGesture
    .Example
        New-MouseGesture
    .Example
        New-MouseGesture -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Input.MouseAction]
    ${MouseAction},

    [System.Windows.Input.ModifierKeys]
    ${Modifiers},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.MouseGesture
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
} function New-MouseGestureConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.MouseGestureConverter
    .Synopsis
        Creates a new System.Windows.Input.MouseGestureConverter
    .Example
        New-MouseGestureConverter
    .Example
        New-MouseGestureConverter -OutputXaml
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
        $Object = New-Object System.Windows.Input.MouseGestureConverter
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
} function New-MouseGestureValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.MouseGestureValueSerializer
    .Synopsis
        Creates a new System.Windows.Input.MouseGestureValueSerializer
    .Example
        New-MouseGestureValueSerializer
    .Example
        New-MouseGestureValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Input.MouseGestureValueSerializer
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
} function New-RoutedCommand {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.RoutedCommand
    .Synopsis
        Creates a new System.Windows.Input.RoutedCommand
    .Example
        New-RoutedCommand
    .Example
        New-RoutedCommand -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${InputGestures},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CanExecuteChanged},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.RoutedCommand
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
} function New-RoutedUICommand {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.RoutedUICommand
    .Synopsis
        Creates a new System.Windows.Input.RoutedUICommand
    .Example
        New-RoutedUICommand
    .Example
        New-RoutedUICommand -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${Text},

    ${InputGestures},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CanExecuteChanged},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.RoutedUICommand
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
} function Get-ApplicationCommand {
    
    <#
    
    .Description
        Gets WPF Commands for ApplicationCommand.
    These Commands are static properties from [System.Windows.Input.ApplicationCommands]
    .Synopsis
        Gets WPF Commands for ApplicationCommand
    .Example
        Get-ApplicationCommand
    #>

    
    
    param(
        
    [Switch]
    ${Cut},

    [Switch]
    ${Copy},

    [Switch]
    ${Paste},

    [Switch]
    ${Delete},

    [Switch]
    ${Undo},

    [Switch]
    ${Redo},

    [Switch]
    ${Find},

    [Switch]
    ${Replace},

    [Switch]
    ${SelectAll},

    [Switch]
    ${Help},

    [Switch]
    ${New},

    [Switch]
    ${Open},

    [Switch]
    ${Close},

    [Switch]
    ${Save},

    [Switch]
    ${SaveAs},

    [Switch]
    ${Print},

    [Switch]
    ${CancelPrint},

    [Switch]
    ${PrintPreview},

    [Switch]
    ${Properties},

    [Switch]
    ${ContextMenu},

    [Switch]
    ${Stop},

    [Switch]
    ${CorrectionList},

    [Switch]
    ${NotACommand}
    )
    begin {
        
    }
    process {
        
        $Type = 'System.Windows.Input.ApplicationCommands' -as [Type]
        if (-not $Type) { return }     
        
        foreach ($k in $psBoundParameters.Keys) {
            if (-not $k) { continue }
            $type::$k
        }
    }
    end {
        
    }
} function Get-ComponentCommand {
    
    <#
    
    .Description
        Gets WPF Commands for ComponentCommand.
    These Commands are static properties from [System.Windows.Input.ComponentCommands]
    .Synopsis
        Gets WPF Commands for ComponentCommand
    .Example
        Get-ComponentCommand
    #>

    
    
    param(
        
    [Switch]
    ${ScrollPageUp},

    [Switch]
    ${ScrollPageDown},

    [Switch]
    ${ScrollPageLeft},

    [Switch]
    ${ScrollPageRight},

    [Switch]
    ${ScrollByLine},

    [Switch]
    ${MoveLeft},

    [Switch]
    ${MoveRight},

    [Switch]
    ${MoveUp},

    [Switch]
    ${MoveDown},

    [Switch]
    ${MoveToHome},

    [Switch]
    ${MoveToEnd},

    [Switch]
    ${MoveToPageUp},

    [Switch]
    ${MoveToPageDown},

    [Switch]
    ${ExtendSelectionUp},

    [Switch]
    ${ExtendSelectionDown},

    [Switch]
    ${ExtendSelectionLeft},

    [Switch]
    ${ExtendSelectionRight},

    [Switch]
    ${SelectToHome},

    [Switch]
    ${SelectToEnd},

    [Switch]
    ${SelectToPageUp},

    [Switch]
    ${SelectToPageDown},

    [Switch]
    ${MoveFocusUp},

    [Switch]
    ${MoveFocusDown},

    [Switch]
    ${MoveFocusForward},

    [Switch]
    ${MoveFocusBack},

    [Switch]
    ${MoveFocusPageUp},

    [Switch]
    ${MoveFocusPageDown}
    )
    begin {
        
    }
    process {
        
        $Type = 'System.Windows.Input.ComponentCommands' -as [Type]
        if (-not $Type) { return }     
        
        foreach ($k in $psBoundParameters.Keys) {
            if (-not $k) { continue }
            $type::$k
        }
    }
    end {
        
    }
} function Get-MediaCommand {
    
    <#
    
    .Description
        Gets WPF Commands for MediaCommand.
    These Commands are static properties from [System.Windows.Input.MediaCommands]
    .Synopsis
        Gets WPF Commands for MediaCommand
    .Example
        Get-MediaCommand
    #>

    
    
    param(
        
    [Switch]
    ${Play},

    [Switch]
    ${Pause},

    [Switch]
    ${Stop},

    [Switch]
    ${Record},

    [Switch]
    ${NextTrack},

    [Switch]
    ${PreviousTrack},

    [Switch]
    ${FastForward},

    [Switch]
    ${Rewind},

    [Switch]
    ${ChannelUp},

    [Switch]
    ${ChannelDown},

    [Switch]
    ${TogglePlayPause},

    [Switch]
    ${Select},

    [Switch]
    ${IncreaseVolume},

    [Switch]
    ${DecreaseVolume},

    [Switch]
    ${MuteVolume},

    [Switch]
    ${IncreaseTreble},

    [Switch]
    ${DecreaseTreble},

    [Switch]
    ${IncreaseBass},

    [Switch]
    ${DecreaseBass},

    [Switch]
    ${BoostBass},

    [Switch]
    ${IncreaseMicrophoneVolume},

    [Switch]
    ${DecreaseMicrophoneVolume},

    [Switch]
    ${MuteMicrophoneVolume},

    [Switch]
    ${ToggleMicrophoneOnOff}
    )
    begin {
        
    }
    process {
        
        $Type = 'System.Windows.Input.MediaCommands' -as [Type]
        if (-not $Type) { return }     
        
        foreach ($k in $psBoundParameters.Keys) {
            if (-not $k) { continue }
            $type::$k
        }
    }
    end {
        
    }
} function Get-NavigationCommand {
    
    <#
    
    .Description
        Gets WPF Commands for NavigationCommand.
    These Commands are static properties from [System.Windows.Input.NavigationCommands]
    .Synopsis
        Gets WPF Commands for NavigationCommand
    .Example
        Get-NavigationCommand
    #>

    
    
    param(
        
    [Switch]
    ${BrowseBack},

    [Switch]
    ${BrowseForward},

    [Switch]
    ${BrowseHome},

    [Switch]
    ${BrowseStop},

    [Switch]
    ${Refresh},

    [Switch]
    ${Favorites},

    [Switch]
    ${Search},

    [Switch]
    ${IncreaseZoom},

    [Switch]
    ${DecreaseZoom},

    [Switch]
    ${Zoom},

    [Switch]
    ${NextPage},

    [Switch]
    ${PreviousPage},

    [Switch]
    ${FirstPage},

    [Switch]
    ${LastPage},

    [Switch]
    ${GoToPage},

    [Switch]
    ${NavigateJournal}
    )
    begin {
        
    }
    process {
        
        $Type = 'System.Windows.Input.NavigationCommands' -as [Type]
        if (-not $Type) { return }     
        
        foreach ($k in $psBoundParameters.Keys) {
            if (-not $k) { continue }
            $type::$k
        }
    }
    end {
        
    }
} function New-AccessKeyPressedEventArgs {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.AccessKeyPressedEventArgs
    .Synopsis
        Creates a new System.Windows.Input.AccessKeyPressedEventArgs
    .Example
        New-AccessKeyPressedEventArgs
    .Example
        New-AccessKeyPressedEventArgs -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Scope},

    ${Target},

    ${RoutedEvent},

    [Switch]
    ${Handled},

    ${Source},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.AccessKeyPressedEventArgs
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
} function New-CursorConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.CursorConverter
    .Synopsis
        Creates a new System.Windows.Input.CursorConverter
    .Example
        New-CursorConverter
    .Example
        New-CursorConverter -OutputXaml
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
        $Object = New-Object System.Windows.Input.CursorConverter
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
} function New-InputScope {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputScope
    .Synopsis
        Creates a new System.Windows.Input.InputScope
    .Example
        New-InputScope
    .Example
        New-InputScope -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${SrgsMarkup},

    [System.String]
    ${RegularExpression},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.InputScope
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
} function New-InputScopeName {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputScopeName
    .Synopsis
        Creates a new System.Windows.Input.InputScopeName
    .Example
        New-InputScopeName
    .Example
        New-InputScopeName -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Input.InputScopeNameValue]
    ${NameValue},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.InputScopeName
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
} function New-InputScopePhrase {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputScopePhrase
    .Synopsis
        Creates a new System.Windows.Input.InputScopePhrase
    .Example
        New-InputScopePhrase
    .Example
        New-InputScopePhrase -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${Name},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.InputScopePhrase
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
} function New-InputScopeConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputScopeConverter
    .Synopsis
        Creates a new System.Windows.Input.InputScopeConverter
    .Example
        New-InputScopeConverter
    .Example
        New-InputScopeConverter -OutputXaml
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
        $Object = New-Object System.Windows.Input.InputScopeConverter
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
} function New-InputScopeNameConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.InputScopeNameConverter
    .Synopsis
        Creates a new System.Windows.Input.InputScopeNameConverter
    .Example
        New-InputScopeNameConverter
    .Example
        New-InputScopeNameConverter -OutputXaml
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
        $Object = New-Object System.Windows.Input.InputScopeNameConverter
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
} function New-DynamicRenderer {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.StylusPlugIns.DynamicRenderer
    .Synopsis
        Creates a new System.Windows.Input.StylusPlugIns.DynamicRenderer
    .Example
        New-DynamicRenderer
    .Example
        New-DynamicRenderer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${DrawingAttributes},

    [Switch]
    ${Enabled},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.StylusPlugIns.DynamicRenderer
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
} function New-HostVisual {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.HostVisual
    .Synopsis
        Creates a new System.Windows.Media.HostVisual
    .Example
        New-HostVisual
    .Example
        New-HostVisual -OutputXaml
    .Example
        New-HostVisual -Show
    .Example
        New-HostVisual -AsJob
    .Parameter AsJob
        
    If Set, will show the visual in a background WPF Job
    
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    .Parameter Show
        
    If Set, will show the visual in a new window
    
    #>

    
    
    param(
        
    ${Clip},

    [System.Double]
    ${Opacity},

    ${OpacityMask},

    ${BitmapEffect},

    ${BitmapEffectInput},

    ${XSnappingGuidelines},

    ${YSnappingGuidelines},

    ${Transform},

    ${Offset},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty},

    [Switch]
    ${Show},

    [System.Int32]
    ${Row},

    [System.Int32]
    ${Column},

    [System.Int32]
    ${RowSpan},

    [System.Int32]
    ${ColumnSpan},

    [System.Int32]
    ${ZIndex},

    [System.Windows.Controls.Dock]
    ${Dock},

    [System.Double]
    ${Top},

    [System.Double]
    ${Left},

    [Switch]
    ${AsJob}
    )
    begin {
        
    }
    process {
        
        if ($PSBoundParameters.ContainsKey("AsJob")) {
            $null = $psBoundParameters.Remove("AsJob")
            $ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
            $Command = $MyInvocation.InvocationName
            if (-not $Command) {
                $Command = "Start-WPFJob"
            }
            $Parameters = $PSBoundParameters
            $AdditionalContext = @(Get-PSCallstack)[1].InvocationInfo.MyCommand.Definition
            if (-not $AdditionalContext) { $AdditionalContext += {} }
            if ($AdditionalContext -like "*.ps1") { 
                $AdditionalContext = [ScriptBlock]::Create(
                    [IO.File]::ReadAllText($AdditionalContext)
                )
            } else {
                $AdditionalContext = [ScriptBlock]::Create($AdditionalContext)
            }

            
            $JobParameters = @{
                ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
                Command = $Command
                AdditionalContext = $AdditionalContext
                Name = $Name
            }
            
            if (-not $JobParameters.Name) {
                $JobParameters.Name = $MyInvocation.InvocationName
            }

            if ($Parameters) {
                Start-WPFJob @JobParameters -Parameter $Parameters         
            } else {
                Start-WPFJob @JobParameters
            }
            return
        }
        try {
        $Object = New-Object System.Windows.Media.HostVisual
        } catch {
            throw $_
            return
        } 
        if ($PSBoundParameters.ContainsKey("Left")) {            
            $object.SetValue([Windows.Controls.Canvas]::LeftProperty, $Left)
            $Null = $PSBoundParameters.Remove("Left")
        }
        if ($PSBoundParameters.ContainsKey("Top")) {            
            $object.SetValue([Windows.Controls.Canvas]::TopProperty, $top)
            $Null = $PSBoundParameters.Remove("Top")
        }
        if ($PSBoundParameters.ContainsKey("Row")) {
            $Object.SetValue([Windows.Controls.Grid]::RowProperty, $row)
            $Null = $PSBoundParameters.Remove("Row")
        }
        if ($PSBoundParameters.ContainsKey("Column")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnProperty, $column)
            $Null = $PSBoundParameters.Remove("Column")
        }
        if ($PSBoundParameters.ContainsKey("RowSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::RowSpanProperty, $rowSpan)
            $Null = $PSBoundParameters.Remove("RowSpan")
        }
        if ($PSBoundParameters.ContainsKey("ColumnSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnSpanProperty, $columnSpan)
            $Null = $PSBoundParameters.Remove("ColumnSpan")
        }
        if ($PSBoundParameters.ContainsKey("ZIndex")) {
            $Object.SetValue([Windows.Controls.Panel]::ZIndexProperty, $ZIndex)
            $Null = $PSBoundParameters.Remove("ZIndex")
        }
        if ($PSBoundParameters.ContainsKey("Dock")) {
            $Object.SetValue([Windows.Controls.DockPanel]::DockProperty, $Dock)
            $Null = $PSBoundParameters.Remove("Dock")
        }
        $null = $psBoundParameters.Remove("Show")
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
        if ($show) {
            return Show-Window $Object 
        }
        $Object
    }
    end {
        
    }
} function New-StylusPointCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.StylusPointCollection
    .Synopsis
        Creates a new System.Windows.Input.StylusPointCollection
    .Example
        New-StylusPointCollection
    .Example
        New-StylusPointCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Input.StylusPointCollection
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
} function New-StylusPointDescription {
    
    <#
    
    .Description
        Creates a new System.Windows.Input.StylusPointDescription
    .Synopsis
        Creates a new System.Windows.Input.StylusPointDescription
    .Example
        New-StylusPointDescription
    .Example
        New-StylusPointDescription -OutputXaml
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
        $Object = New-Object System.Windows.Input.StylusPointDescription
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
} function New-D3DImage {
    
    <#
    
    .Description
        Creates a new System.Windows.Interop.D3DImage
    .Synopsis
        Creates a new System.Windows.Interop.D3DImage
    .Example
        New-D3DImage
    .Example
        New-D3DImage -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Management.Automation.ScriptBlock[]]
    ${On_IsFrontBufferAvailableChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Interop.D3DImage
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
} function New-DoubleAnimationUsingPath {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DoubleAnimationUsingPath
    .Synopsis
        Creates a new System.Windows.Media.Animation.DoubleAnimationUsingPath
    .Example
        New-DoubleAnimationUsingPath
    .Example
        New-DoubleAnimationUsingPath -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${PathGeometry},

    [System.Windows.Media.Animation.PathAnimationSource]
    ${Source},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DoubleAnimationUsingPath
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
} function New-BooleanAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.BooleanAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.BooleanAnimationUsingKeyFrames
    .Example
        New-BooleanAnimationUsingKeyFrames
    .Example
        New-BooleanAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.BooleanAnimationUsingKeyFrames
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
} function New-BooleanKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.BooleanKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.BooleanKeyFrameCollection
    .Example
        New-BooleanKeyFrameCollection
    .Example
        New-BooleanKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.BooleanKeyFrameCollection
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
} function New-ByteAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ByteAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.ByteAnimation
    .Example
        New-ByteAnimation
    .Example
        New-ByteAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ByteAnimation
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
} function New-ByteAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ByteAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.ByteAnimationUsingKeyFrames
    .Example
        New-ByteAnimationUsingKeyFrames
    .Example
        New-ByteAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ByteAnimationUsingKeyFrames
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
} function New-ByteKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ByteKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.ByteKeyFrameCollection
    .Example
        New-ByteKeyFrameCollection
    .Example
        New-ByteKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ByteKeyFrameCollection
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
} function New-CharAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.CharAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.CharAnimationUsingKeyFrames
    .Example
        New-CharAnimationUsingKeyFrames
    .Example
        New-CharAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.CharAnimationUsingKeyFrames
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
} function New-CharKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.CharKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.CharKeyFrameCollection
    .Example
        New-CharKeyFrameCollection
    .Example
        New-CharKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.CharKeyFrameCollection
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
} function New-ColorAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ColorAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.ColorAnimation
    .Example
        New-ColorAnimation
    .Example
        New-ColorAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ColorAnimation
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
} function New-ColorAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ColorAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.ColorAnimationUsingKeyFrames
    .Example
        New-ColorAnimationUsingKeyFrames
    .Example
        New-ColorAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ColorAnimationUsingKeyFrames
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
} function New-ColorKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ColorKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.ColorKeyFrameCollection
    .Example
        New-ColorKeyFrameCollection
    .Example
        New-ColorKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ColorKeyFrameCollection
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
} function New-DecimalAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DecimalAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.DecimalAnimation
    .Example
        New-DecimalAnimation
    .Example
        New-DecimalAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DecimalAnimation
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
} function New-DecimalAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DecimalAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.DecimalAnimationUsingKeyFrames
    .Example
        New-DecimalAnimationUsingKeyFrames
    .Example
        New-DecimalAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DecimalAnimationUsingKeyFrames
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
} function New-DecimalKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DecimalKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.DecimalKeyFrameCollection
    .Example
        New-DecimalKeyFrameCollection
    .Example
        New-DecimalKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DecimalKeyFrameCollection
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
} function New-DiscreteBooleanKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteBooleanKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteBooleanKeyFrame
    .Example
        New-DiscreteBooleanKeyFrame
    .Example
        New-DiscreteBooleanKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    [Switch]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteBooleanKeyFrame
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
} function New-DiscreteByteKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteByteKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteByteKeyFrame
    .Example
        New-DiscreteByteKeyFrame
    .Example
        New-DiscreteByteKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteByteKeyFrame
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
} function New-DiscreteCharKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteCharKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteCharKeyFrame
    .Example
        New-DiscreteCharKeyFrame
    .Example
        New-DiscreteCharKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteCharKeyFrame
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
} function New-DiscreteColorKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteColorKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteColorKeyFrame
    .Example
        New-DiscreteColorKeyFrame
    .Example
        New-DiscreteColorKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteColorKeyFrame
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
} function New-DiscreteDecimalKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteDecimalKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteDecimalKeyFrame
    .Example
        New-DiscreteDecimalKeyFrame
    .Example
        New-DiscreteDecimalKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteDecimalKeyFrame
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
} function New-DiscreteDoubleKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteDoubleKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteDoubleKeyFrame
    .Example
        New-DiscreteDoubleKeyFrame
    .Example
        New-DiscreteDoubleKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    [System.Double]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteDoubleKeyFrame
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
} function New-DiscreteInt16KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteInt16KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteInt16KeyFrame
    .Example
        New-DiscreteInt16KeyFrame
    .Example
        New-DiscreteInt16KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteInt16KeyFrame
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
} function New-DiscreteInt32KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteInt32KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteInt32KeyFrame
    .Example
        New-DiscreteInt32KeyFrame
    .Example
        New-DiscreteInt32KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    [System.Int32]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteInt32KeyFrame
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
} function New-DiscreteInt64KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteInt64KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteInt64KeyFrame
    .Example
        New-DiscreteInt64KeyFrame
    .Example
        New-DiscreteInt64KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteInt64KeyFrame
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
} function New-DiscreteMatrixKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteMatrixKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteMatrixKeyFrame
    .Example
        New-DiscreteMatrixKeyFrame
    .Example
        New-DiscreteMatrixKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteMatrixKeyFrame
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
} function New-DiscreteObjectKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteObjectKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteObjectKeyFrame
    .Example
        New-DiscreteObjectKeyFrame
    .Example
        New-DiscreteObjectKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteObjectKeyFrame
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
} function New-DiscretePointKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscretePointKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscretePointKeyFrame
    .Example
        New-DiscretePointKeyFrame
    .Example
        New-DiscretePointKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscretePointKeyFrame
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
} function New-DiscretePoint3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscretePoint3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscretePoint3DKeyFrame
    .Example
        New-DiscretePoint3DKeyFrame
    .Example
        New-DiscretePoint3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscretePoint3DKeyFrame
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
} function New-DiscreteQuaternionKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteQuaternionKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteQuaternionKeyFrame
    .Example
        New-DiscreteQuaternionKeyFrame
    .Example
        New-DiscreteQuaternionKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteQuaternionKeyFrame
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
} function New-DiscreteRotation3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteRotation3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteRotation3DKeyFrame
    .Example
        New-DiscreteRotation3DKeyFrame
    .Example
        New-DiscreteRotation3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteRotation3DKeyFrame
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
} function New-DiscreteRectKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteRectKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteRectKeyFrame
    .Example
        New-DiscreteRectKeyFrame
    .Example
        New-DiscreteRectKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteRectKeyFrame
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
} function New-DiscreteSingleKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteSingleKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteSingleKeyFrame
    .Example
        New-DiscreteSingleKeyFrame
    .Example
        New-DiscreteSingleKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteSingleKeyFrame
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
} function New-DiscreteSizeKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteSizeKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteSizeKeyFrame
    .Example
        New-DiscreteSizeKeyFrame
    .Example
        New-DiscreteSizeKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteSizeKeyFrame
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
} function New-DiscreteStringKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteStringKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteStringKeyFrame
    .Example
        New-DiscreteStringKeyFrame
    .Example
        New-DiscreteStringKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    [System.String]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteStringKeyFrame
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
} function New-DiscreteVectorKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteVectorKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteVectorKeyFrame
    .Example
        New-DiscreteVectorKeyFrame
    .Example
        New-DiscreteVectorKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteVectorKeyFrame
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
} function New-DiscreteVector3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DiscreteVector3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.DiscreteVector3DKeyFrame
    .Example
        New-DiscreteVector3DKeyFrame
    .Example
        New-DiscreteVector3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DiscreteVector3DKeyFrame
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
} function New-DoubleAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DoubleAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.DoubleAnimation
    .Example
        New-DoubleAnimation
    .Example
        New-DoubleAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DoubleAnimation
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
} function New-DoubleAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DoubleAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.DoubleAnimationUsingKeyFrames
    .Example
        New-DoubleAnimationUsingKeyFrames
    .Example
        New-DoubleAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DoubleAnimationUsingKeyFrames
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
} function New-DoubleKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.DoubleKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.DoubleKeyFrameCollection
    .Example
        New-DoubleKeyFrameCollection
    .Example
        New-DoubleKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.DoubleKeyFrameCollection
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
} function New-Int16Animation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int16Animation
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int16Animation
    .Example
        New-Int16Animation
    .Example
        New-Int16Animation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int16Animation
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
} function New-Int16AnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int16AnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int16AnimationUsingKeyFrames
    .Example
        New-Int16AnimationUsingKeyFrames
    .Example
        New-Int16AnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int16AnimationUsingKeyFrames
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
} function New-Int16KeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int16KeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int16KeyFrameCollection
    .Example
        New-Int16KeyFrameCollection
    .Example
        New-Int16KeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int16KeyFrameCollection
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
} function New-Int32Animation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int32Animation
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int32Animation
    .Example
        New-Int32Animation
    .Example
        New-Int32Animation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int32Animation
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
} function New-Int32AnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int32AnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int32AnimationUsingKeyFrames
    .Example
        New-Int32AnimationUsingKeyFrames
    .Example
        New-Int32AnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int32AnimationUsingKeyFrames
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
} function New-Int32KeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int32KeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int32KeyFrameCollection
    .Example
        New-Int32KeyFrameCollection
    .Example
        New-Int32KeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int32KeyFrameCollection
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
} function New-Int64Animation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int64Animation
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int64Animation
    .Example
        New-Int64Animation
    .Example
        New-Int64Animation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int64Animation
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
} function New-Int64AnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int64AnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int64AnimationUsingKeyFrames
    .Example
        New-Int64AnimationUsingKeyFrames
    .Example
        New-Int64AnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int64AnimationUsingKeyFrames
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
} function New-Int64KeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Int64KeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.Int64KeyFrameCollection
    .Example
        New-Int64KeyFrameCollection
    .Example
        New-Int64KeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Int64KeyFrameCollection
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
} function New-LinearByteKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearByteKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearByteKeyFrame
    .Example
        New-LinearByteKeyFrame
    .Example
        New-LinearByteKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearByteKeyFrame
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
} function New-LinearColorKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearColorKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearColorKeyFrame
    .Example
        New-LinearColorKeyFrame
    .Example
        New-LinearColorKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearColorKeyFrame
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
} function New-LinearDecimalKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearDecimalKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearDecimalKeyFrame
    .Example
        New-LinearDecimalKeyFrame
    .Example
        New-LinearDecimalKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearDecimalKeyFrame
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
} function New-LinearDoubleKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearDoubleKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearDoubleKeyFrame
    .Example
        New-LinearDoubleKeyFrame
    .Example
        New-LinearDoubleKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    [System.Double]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearDoubleKeyFrame
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
} function New-LinearInt16KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearInt16KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearInt16KeyFrame
    .Example
        New-LinearInt16KeyFrame
    .Example
        New-LinearInt16KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearInt16KeyFrame
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
} function New-LinearInt32KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearInt32KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearInt32KeyFrame
    .Example
        New-LinearInt32KeyFrame
    .Example
        New-LinearInt32KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    [System.Int32]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearInt32KeyFrame
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
} function New-LinearInt64KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearInt64KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearInt64KeyFrame
    .Example
        New-LinearInt64KeyFrame
    .Example
        New-LinearInt64KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearInt64KeyFrame
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
} function New-LinearPointKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearPointKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearPointKeyFrame
    .Example
        New-LinearPointKeyFrame
    .Example
        New-LinearPointKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearPointKeyFrame
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
} function New-LinearPoint3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearPoint3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearPoint3DKeyFrame
    .Example
        New-LinearPoint3DKeyFrame
    .Example
        New-LinearPoint3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearPoint3DKeyFrame
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
} function New-LinearQuaternionKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearQuaternionKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearQuaternionKeyFrame
    .Example
        New-LinearQuaternionKeyFrame
    .Example
        New-LinearQuaternionKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${UseShortestPath},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearQuaternionKeyFrame
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
} function New-LinearRotation3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearRotation3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearRotation3DKeyFrame
    .Example
        New-LinearRotation3DKeyFrame
    .Example
        New-LinearRotation3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearRotation3DKeyFrame
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
} function New-LinearRectKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearRectKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearRectKeyFrame
    .Example
        New-LinearRectKeyFrame
    .Example
        New-LinearRectKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearRectKeyFrame
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
} function New-LinearSingleKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearSingleKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearSingleKeyFrame
    .Example
        New-LinearSingleKeyFrame
    .Example
        New-LinearSingleKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearSingleKeyFrame
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
} function New-LinearSizeKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearSizeKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearSizeKeyFrame
    .Example
        New-LinearSizeKeyFrame
    .Example
        New-LinearSizeKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearSizeKeyFrame
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
} function New-LinearVectorKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearVectorKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearVectorKeyFrame
    .Example
        New-LinearVectorKeyFrame
    .Example
        New-LinearVectorKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearVectorKeyFrame
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
} function New-LinearVector3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.LinearVector3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.LinearVector3DKeyFrame
    .Example
        New-LinearVector3DKeyFrame
    .Example
        New-LinearVector3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.LinearVector3DKeyFrame
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
} function New-MatrixAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.MatrixAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.MatrixAnimationUsingKeyFrames
    .Example
        New-MatrixAnimationUsingKeyFrames
    .Example
        New-MatrixAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.MatrixAnimationUsingKeyFrames
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
} function New-MatrixKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.MatrixKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.MatrixKeyFrameCollection
    .Example
        New-MatrixKeyFrameCollection
    .Example
        New-MatrixKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.MatrixKeyFrameCollection
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
} function New-ObjectAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ObjectAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.ObjectAnimationUsingKeyFrames
    .Example
        New-ObjectAnimationUsingKeyFrames
    .Example
        New-ObjectAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ObjectAnimationUsingKeyFrames
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
} function New-ObjectKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ObjectKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.ObjectKeyFrameCollection
    .Example
        New-ObjectKeyFrameCollection
    .Example
        New-ObjectKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ObjectKeyFrameCollection
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
} function New-ParallelTimeline {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.ParallelTimeline
    .Synopsis
        Creates a new System.Windows.Media.Animation.ParallelTimeline
    .Example
        New-ParallelTimeline
    .Example
        New-ParallelTimeline -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.Animation.SlipBehavior]
    ${SlipBehavior},

    ${Children},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.ParallelTimeline
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
} function New-Point3DAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Point3DAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.Point3DAnimation
    .Example
        New-Point3DAnimation
    .Example
        New-Point3DAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Point3DAnimation
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
} function New-Point3DAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Point3DAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.Point3DAnimationUsingKeyFrames
    .Example
        New-Point3DAnimationUsingKeyFrames
    .Example
        New-Point3DAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Point3DAnimationUsingKeyFrames
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
} function New-Point3DKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Point3DKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.Point3DKeyFrameCollection
    .Example
        New-Point3DKeyFrameCollection
    .Example
        New-Point3DKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Point3DKeyFrameCollection
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
} function New-PointAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.PointAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.PointAnimation
    .Example
        New-PointAnimation
    .Example
        New-PointAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.PointAnimation
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
} function New-PointAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.PointAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.PointAnimationUsingKeyFrames
    .Example
        New-PointAnimationUsingKeyFrames
    .Example
        New-PointAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.PointAnimationUsingKeyFrames
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
} function New-PointKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.PointKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.PointKeyFrameCollection
    .Example
        New-PointKeyFrameCollection
    .Example
        New-PointKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.PointKeyFrameCollection
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
} function New-QuaternionAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.QuaternionAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.QuaternionAnimation
    .Example
        New-QuaternionAnimation
    .Example
        New-QuaternionAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [Switch]
    ${UseShortestPath},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.QuaternionAnimation
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
} function New-QuaternionAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.QuaternionAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.QuaternionAnimationUsingKeyFrames
    .Example
        New-QuaternionAnimationUsingKeyFrames
    .Example
        New-QuaternionAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.QuaternionAnimationUsingKeyFrames
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
} function New-QuaternionKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.QuaternionKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.QuaternionKeyFrameCollection
    .Example
        New-QuaternionKeyFrameCollection
    .Example
        New-QuaternionKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.QuaternionKeyFrameCollection
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
} function New-RectAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.RectAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.RectAnimation
    .Example
        New-RectAnimation
    .Example
        New-RectAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.RectAnimation
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
} function New-RectAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.RectAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.RectAnimationUsingKeyFrames
    .Example
        New-RectAnimationUsingKeyFrames
    .Example
        New-RectAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.RectAnimationUsingKeyFrames
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
} function New-RectKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.RectKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.RectKeyFrameCollection
    .Example
        New-RectKeyFrameCollection
    .Example
        New-RectKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.RectKeyFrameCollection
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
} function New-Rotation3DAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Rotation3DAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.Rotation3DAnimation
    .Example
        New-Rotation3DAnimation
    .Example
        New-Rotation3DAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Rotation3DAnimation
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
} function New-Rotation3DAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Rotation3DAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.Rotation3DAnimationUsingKeyFrames
    .Example
        New-Rotation3DAnimationUsingKeyFrames
    .Example
        New-Rotation3DAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Rotation3DAnimationUsingKeyFrames
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
} function New-Rotation3DKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Rotation3DKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.Rotation3DKeyFrameCollection
    .Example
        New-Rotation3DKeyFrameCollection
    .Example
        New-Rotation3DKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Rotation3DKeyFrameCollection
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
} function New-SingleAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SingleAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.SingleAnimation
    .Example
        New-SingleAnimation
    .Example
        New-SingleAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SingleAnimation
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
} function New-SingleAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SingleAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.SingleAnimationUsingKeyFrames
    .Example
        New-SingleAnimationUsingKeyFrames
    .Example
        New-SingleAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SingleAnimationUsingKeyFrames
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
} function New-SingleKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SingleKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.SingleKeyFrameCollection
    .Example
        New-SingleKeyFrameCollection
    .Example
        New-SingleKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SingleKeyFrameCollection
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
} function New-SizeAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SizeAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.SizeAnimation
    .Example
        New-SizeAnimation
    .Example
        New-SizeAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SizeAnimation
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
} function New-SizeAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SizeAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.SizeAnimationUsingKeyFrames
    .Example
        New-SizeAnimationUsingKeyFrames
    .Example
        New-SizeAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SizeAnimationUsingKeyFrames
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
} function New-SizeKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SizeKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.SizeKeyFrameCollection
    .Example
        New-SizeKeyFrameCollection
    .Example
        New-SizeKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SizeKeyFrameCollection
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
} function New-SplineByteKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineByteKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineByteKeyFrame
    .Example
        New-SplineByteKeyFrame
    .Example
        New-SplineByteKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineByteKeyFrame
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
} function New-SplineColorKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineColorKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineColorKeyFrame
    .Example
        New-SplineColorKeyFrame
    .Example
        New-SplineColorKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineColorKeyFrame
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
} function New-SplineDecimalKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineDecimalKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineDecimalKeyFrame
    .Example
        New-SplineDecimalKeyFrame
    .Example
        New-SplineDecimalKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineDecimalKeyFrame
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
} function New-SplineDoubleKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineDoubleKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineDoubleKeyFrame
    .Example
        New-SplineDoubleKeyFrame
    .Example
        New-SplineDoubleKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    [System.Double]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineDoubleKeyFrame
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
} function New-SplineInt16KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineInt16KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineInt16KeyFrame
    .Example
        New-SplineInt16KeyFrame
    .Example
        New-SplineInt16KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineInt16KeyFrame
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
} function New-SplineInt32KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineInt32KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineInt32KeyFrame
    .Example
        New-SplineInt32KeyFrame
    .Example
        New-SplineInt32KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    [System.Int32]
    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineInt32KeyFrame
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
} function New-SplineInt64KeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineInt64KeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineInt64KeyFrame
    .Example
        New-SplineInt64KeyFrame
    .Example
        New-SplineInt64KeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineInt64KeyFrame
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
} function New-SplinePointKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplinePointKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplinePointKeyFrame
    .Example
        New-SplinePointKeyFrame
    .Example
        New-SplinePointKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplinePointKeyFrame
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
} function New-SplinePoint3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplinePoint3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplinePoint3DKeyFrame
    .Example
        New-SplinePoint3DKeyFrame
    .Example
        New-SplinePoint3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplinePoint3DKeyFrame
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
} function New-SplineQuaternionKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineQuaternionKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineQuaternionKeyFrame
    .Example
        New-SplineQuaternionKeyFrame
    .Example
        New-SplineQuaternionKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    [Switch]
    ${UseShortestPath},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineQuaternionKeyFrame
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
} function New-SplineRotation3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineRotation3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineRotation3DKeyFrame
    .Example
        New-SplineRotation3DKeyFrame
    .Example
        New-SplineRotation3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineRotation3DKeyFrame
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
} function New-SplineRectKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineRectKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineRectKeyFrame
    .Example
        New-SplineRectKeyFrame
    .Example
        New-SplineRectKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineRectKeyFrame
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
} function New-SplineSingleKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineSingleKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineSingleKeyFrame
    .Example
        New-SplineSingleKeyFrame
    .Example
        New-SplineSingleKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineSingleKeyFrame
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
} function New-SplineSizeKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineSizeKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineSizeKeyFrame
    .Example
        New-SplineSizeKeyFrame
    .Example
        New-SplineSizeKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineSizeKeyFrame
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
} function New-SplineVectorKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineVectorKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineVectorKeyFrame
    .Example
        New-SplineVectorKeyFrame
    .Example
        New-SplineVectorKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineVectorKeyFrame
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
} function New-SplineVector3DKeyFrame {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.SplineVector3DKeyFrame
    .Synopsis
        Creates a new System.Windows.Media.Animation.SplineVector3DKeyFrame
    .Example
        New-SplineVector3DKeyFrame
    .Example
        New-SplineVector3DKeyFrame -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeySpline},

    ${KeyTime},

    ${Value},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.SplineVector3DKeyFrame
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
} function New-StringAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.StringAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.StringAnimationUsingKeyFrames
    .Example
        New-StringAnimationUsingKeyFrames
    .Example
        New-StringAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.StringAnimationUsingKeyFrames
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
} function New-StringKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.StringKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.StringKeyFrameCollection
    .Example
        New-StringKeyFrameCollection
    .Example
        New-StringKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.StringKeyFrameCollection
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
} function New-TimelineCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.TimelineCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.TimelineCollection
    .Example
        New-TimelineCollection
    .Example
        New-TimelineCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.TimelineCollection
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
} function New-Vector3DAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Vector3DAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.Vector3DAnimation
    .Example
        New-Vector3DAnimation
    .Example
        New-Vector3DAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Vector3DAnimation
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
} function New-Vector3DAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Vector3DAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.Vector3DAnimationUsingKeyFrames
    .Example
        New-Vector3DAnimationUsingKeyFrames
    .Example
        New-Vector3DAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Vector3DAnimationUsingKeyFrames
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
} function New-Vector3DKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.Vector3DKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.Vector3DKeyFrameCollection
    .Example
        New-Vector3DKeyFrameCollection
    .Example
        New-Vector3DKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.Vector3DKeyFrameCollection
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
} function New-VectorAnimation {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.VectorAnimation
    .Synopsis
        Creates a new System.Windows.Media.Animation.VectorAnimation
    .Example
        New-VectorAnimation
    .Example
        New-VectorAnimation -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${From},

    ${To},

    ${By},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.VectorAnimation
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
} function New-VectorAnimationUsingKeyFrames {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.VectorAnimationUsingKeyFrames
    .Synopsis
        Creates a new System.Windows.Media.Animation.VectorAnimationUsingKeyFrames
    .Example
        New-VectorAnimationUsingKeyFrames
    .Example
        New-VectorAnimationUsingKeyFrames -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${KeyFrames},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.VectorAnimationUsingKeyFrames
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
} function New-VectorKeyFrameCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.VectorKeyFrameCollection
    .Synopsis
        Creates a new System.Windows.Media.Animation.VectorKeyFrameCollection
    .Example
        New-VectorKeyFrameCollection
    .Example
        New-VectorKeyFrameCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.VectorKeyFrameCollection
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
} function New-KeySpline {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.KeySpline
    .Synopsis
        Creates a new System.Windows.Media.Animation.KeySpline
    .Example
        New-KeySpline
    .Example
        New-KeySpline -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ControlPoint1},

    ${ControlPoint2},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.KeySpline
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
} function New-KeySplineConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.KeySplineConverter
    .Synopsis
        Creates a new System.Windows.KeySplineConverter
    .Example
        New-KeySplineConverter
    .Example
        New-KeySplineConverter -OutputXaml
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
        $Object = New-Object System.Windows.KeySplineConverter
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
} function New-KeyTimeConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.KeyTimeConverter
    .Synopsis
        Creates a new System.Windows.KeyTimeConverter
    .Example
        New-KeyTimeConverter
    .Example
        New-KeyTimeConverter -OutputXaml
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
        $Object = New-Object System.Windows.KeyTimeConverter
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
} function New-MatrixAnimationUsingPath {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.MatrixAnimationUsingPath
    .Synopsis
        Creates a new System.Windows.Media.Animation.MatrixAnimationUsingPath
    .Example
        New-MatrixAnimationUsingPath
    .Example
        New-MatrixAnimationUsingPath -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${DoesRotateWithTangent},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsAngleCumulative},

    [Switch]
    ${IsOffsetCumulative},

    ${PathGeometry},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.MatrixAnimationUsingPath
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
} function New-PointAnimationUsingPath {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.PointAnimationUsingPath
    .Synopsis
        Creates a new System.Windows.Media.Animation.PointAnimationUsingPath
    .Example
        New-PointAnimationUsingPath
    .Example
        New-PointAnimationUsingPath -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${PathGeometry},

    [Switch]
    ${IsAdditive},

    [Switch]
    ${IsCumulative},

    [System.Double]
    ${AccelerationRatio},

    [Switch]
    ${AutoReverse},

    ${BeginTime},

    [System.Double]
    ${DecelerationRatio},

    ${Duration},

    [System.Windows.Media.Animation.FillBehavior]
    ${FillBehavior},

    [System.String]
    ${Name},

    ${RepeatBehavior},

    [System.Double]
    ${SpeedRatio},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentStateInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentTimeInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentGlobalSpeedInvalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Completed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RemoveRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Animation.PointAnimationUsingPath
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
} function New-RepeatBehaviorConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Animation.RepeatBehaviorConverter
    .Synopsis
        Creates a new System.Windows.Media.Animation.RepeatBehaviorConverter
    .Example
        New-RepeatBehaviorConverter
    .Example
        New-RepeatBehaviorConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Animation.RepeatBehaviorConverter
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
} function New-ArcSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ArcSegment
    .Synopsis
        Creates a new System.Windows.Media.ArcSegment
    .Example
        New-ArcSegment
    .Example
        New-ArcSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Point},

    ${Size},

    [System.Double]
    ${RotationAngle},

    [Switch]
    ${IsLargeArc},

    [System.Windows.Media.SweepDirection]
    ${SweepDirection},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.ArcSegment
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
} function New-BezierSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.BezierSegment
    .Synopsis
        Creates a new System.Windows.Media.BezierSegment
    .Example
        New-BezierSegment
    .Example
        New-BezierSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Point1},

    ${Point2},

    ${Point3},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.BezierSegment
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
} function New-BrushValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.BrushValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.BrushValueSerializer
    .Example
        New-BrushValueSerializer
    .Example
        New-BrushValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.BrushValueSerializer
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
} function New-DoubleCollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.DoubleCollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.DoubleCollectionValueSerializer
    .Example
        New-DoubleCollectionValueSerializer
    .Example
        New-DoubleCollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.DoubleCollectionValueSerializer
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
} function New-GeometryValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.GeometryValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.GeometryValueSerializer
    .Example
        New-GeometryValueSerializer
    .Example
        New-GeometryValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.GeometryValueSerializer
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
} function New-Int32CollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.Int32CollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.Int32CollectionValueSerializer
    .Example
        New-Int32CollectionValueSerializer
    .Example
        New-Int32CollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.Int32CollectionValueSerializer
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
} function New-PathFigureCollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.PathFigureCollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.PathFigureCollectionValueSerializer
    .Example
        New-PathFigureCollectionValueSerializer
    .Example
        New-PathFigureCollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.PathFigureCollectionValueSerializer
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
} function New-PointCollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.PointCollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.PointCollectionValueSerializer
    .Example
        New-PointCollectionValueSerializer
    .Example
        New-PointCollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.PointCollectionValueSerializer
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
} function New-TransformValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.TransformValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.TransformValueSerializer
    .Example
        New-TransformValueSerializer
    .Example
        New-TransformValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.TransformValueSerializer
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
} function New-VectorCollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Converters.VectorCollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Converters.VectorCollectionValueSerializer
    .Example
        New-VectorCollectionValueSerializer
    .Example
        New-VectorCollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Converters.VectorCollectionValueSerializer
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
} function New-ColorConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ColorConverter
    .Synopsis
        Creates a new System.Windows.Media.ColorConverter
    .Example
        New-ColorConverter
    .Example
        New-ColorConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.ColorConverter
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
} function New-CombinedGeometry {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.CombinedGeometry
    .Synopsis
        Creates a new System.Windows.Media.CombinedGeometry
    .Example
        New-CombinedGeometry
    .Example
        New-CombinedGeometry -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.GeometryCombineMode]
    ${GeometryCombineMode},

    ${Geometry1},

    ${Geometry2},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.CombinedGeometry
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
} function New-DashStyle {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DashStyle
    .Synopsis
        Creates a new System.Windows.Media.DashStyle
    .Example
        New-DashStyle
    .Example
        New-DashStyle -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Offset},

    ${Dashes},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DashStyle
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
} function New-CharacterMetrics {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.CharacterMetrics
    .Synopsis
        Creates a new System.Windows.Media.CharacterMetrics
    .Example
        New-CharacterMetrics
    .Example
        New-CharacterMetrics -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${Metrics},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.CharacterMetrics
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
} function New-DrawingBrush {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DrawingBrush
    .Synopsis
        Creates a new System.Windows.Media.DrawingBrush
    .Example
        New-DrawingBrush
    .Example
        New-DrawingBrush -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Drawing},

    [System.Windows.Media.BrushMappingMode]
    ${ViewportUnits},

    [System.Windows.Media.BrushMappingMode]
    ${ViewboxUnits},

    ${Viewport},

    ${Viewbox},

    [System.Windows.Media.Stretch]
    ${Stretch},

    [System.Windows.Media.TileMode]
    ${TileMode},

    [System.Windows.Media.AlignmentX]
    ${AlignmentX},

    [System.Windows.Media.AlignmentY]
    ${AlignmentY},

    [System.Double]
    ${Opacity},

    ${Transform},

    ${RelativeTransform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DrawingBrush
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
} function New-DrawingCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DrawingCollection
    .Synopsis
        Creates a new System.Windows.Media.DrawingCollection
    .Example
        New-DrawingCollection
    .Example
        New-DrawingCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DrawingCollection
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
} function New-DrawingGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DrawingGroup
    .Synopsis
        Creates a new System.Windows.Media.DrawingGroup
    .Example
        New-DrawingGroup
    .Example
        New-DrawingGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    ${ClipGeometry},

    [System.Double]
    ${Opacity},

    ${OpacityMask},

    ${Transform},

    ${GuidelineSet},

    ${BitmapEffect},

    ${BitmapEffectInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DrawingGroup
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
} function New-DrawingImage {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DrawingImage
    .Synopsis
        Creates a new System.Windows.Media.DrawingImage
    .Example
        New-DrawingImage
    .Example
        New-DrawingImage -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Drawing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DrawingImage
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
} function New-BlurEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.BlurEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.BlurEffect
    .Example
        New-BlurEffect
    .Example
        New-BlurEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Radius},

    [System.Windows.Media.Effects.KernelType]
    ${KernelType},

    [System.Windows.Media.Effects.RenderingBias]
    ${RenderingBias},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.BlurEffect
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
} function New-DropShadowEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.DropShadowEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.DropShadowEffect
    .Example
        New-DropShadowEffect
    .Example
        New-DropShadowEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${ShadowDepth},

    ${Color},

    [System.Double]
    ${Direction},

    [System.Double]
    ${Opacity},

    [System.Double]
    ${BlurRadius},

    [System.Windows.Media.Effects.RenderingBias]
    ${RenderingBias},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.DropShadowEffect
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
} function New-BitmapEffectGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.BitmapEffectGroup
    .Synopsis
        Creates a new System.Windows.Media.Effects.BitmapEffectGroup
    .Example
        New-BitmapEffectGroup
    .Example
        New-BitmapEffectGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.BitmapEffectGroup
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
} function New-BitmapEffectInput {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.BitmapEffectInput
    .Synopsis
        Creates a new System.Windows.Media.Effects.BitmapEffectInput
    .Example
        New-BitmapEffectInput
    .Example
        New-BitmapEffectInput -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Input},

    [System.Windows.Media.BrushMappingMode]
    ${AreaToApplyEffectUnits},

    ${AreaToApplyEffect},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.BitmapEffectInput
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
} function New-BevelBitmapEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.BevelBitmapEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.BevelBitmapEffect
    .Example
        New-BevelBitmapEffect
    .Example
        New-BevelBitmapEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${BevelWidth},

    [System.Double]
    ${Relief},

    [System.Double]
    ${LightAngle},

    [System.Double]
    ${Smoothness},

    [System.Windows.Media.Effects.EdgeProfile]
    ${EdgeProfile},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.BevelBitmapEffect
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
} function New-BlurBitmapEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.BlurBitmapEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.BlurBitmapEffect
    .Example
        New-BlurBitmapEffect
    .Example
        New-BlurBitmapEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Radius},

    [System.Windows.Media.Effects.KernelType]
    ${KernelType},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.BlurBitmapEffect
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
} function New-DropShadowBitmapEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.DropShadowBitmapEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.DropShadowBitmapEffect
    .Example
        New-DropShadowBitmapEffect
    .Example
        New-DropShadowBitmapEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${ShadowDepth},

    ${Color},

    [System.Double]
    ${Direction},

    [System.Double]
    ${Noise},

    [System.Double]
    ${Opacity},

    [System.Double]
    ${Softness},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.DropShadowBitmapEffect
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
} function New-EmbossBitmapEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.EmbossBitmapEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.EmbossBitmapEffect
    .Example
        New-EmbossBitmapEffect
    .Example
        New-EmbossBitmapEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${LightAngle},

    [System.Double]
    ${Relief},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.EmbossBitmapEffect
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
} function New-OuterGlowBitmapEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.OuterGlowBitmapEffect
    .Synopsis
        Creates a new System.Windows.Media.Effects.OuterGlowBitmapEffect
    .Example
        New-OuterGlowBitmapEffect
    .Example
        New-OuterGlowBitmapEffect -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${GlowColor},

    [System.Double]
    ${GlowSize},

    [System.Double]
    ${Noise},

    [System.Double]
    ${Opacity},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.OuterGlowBitmapEffect
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
} function New-PixelShader {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.PixelShader
    .Synopsis
        Creates a new System.Windows.Media.Effects.PixelShader
    .Example
        New-PixelShader
    .Example
        New-PixelShader -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${UriSource},

    [System.Windows.Media.Effects.ShaderRenderMode]
    ${ShaderRenderMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.PixelShader
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
} function New-BitmapEffectCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Effects.BitmapEffectCollection
    .Synopsis
        Creates a new System.Windows.Media.Effects.BitmapEffectCollection
    .Example
        New-BitmapEffectCollection
    .Example
        New-BitmapEffectCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Effects.BitmapEffectCollection
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
} function New-EllipseGeometry {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.EllipseGeometry
    .Synopsis
        Creates a new System.Windows.Media.EllipseGeometry
    .Example
        New-EllipseGeometry
    .Example
        New-EllipseGeometry -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${RadiusX},

    [System.Double]
    ${RadiusY},

    ${Center},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.EllipseGeometry
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
} function New-FontFamilyMap {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.FontFamilyMap
    .Synopsis
        Creates a new System.Windows.Media.FontFamilyMap
    .Example
        New-FontFamilyMap
    .Example
        New-FontFamilyMap -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.String]
    ${Unicode},

    [System.String]
    ${Target},

    [System.Double]
    ${Scale},

    ${Language},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.FontFamilyMap
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
} function New-FamilyTypeface {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.FamilyTypeface
    .Synopsis
        Creates a new System.Windows.Media.FamilyTypeface
    .Example
        New-FamilyTypeface
    .Example
        New-FamilyTypeface -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Style},

    ${Weight},

    ${Stretch},

    [System.Double]
    ${UnderlinePosition},

    [System.Double]
    ${UnderlineThickness},

    [System.Double]
    ${StrikethroughPosition},

    [System.Double]
    ${StrikethroughThickness},

    [System.Double]
    ${CapsHeight},

    [System.Double]
    ${XHeight},

    [System.String]
    ${DeviceFontName},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.FamilyTypeface
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
} function New-FontEmbeddingManager {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.FontEmbeddingManager
    .Synopsis
        Creates a new System.Windows.Media.FontEmbeddingManager
    .Example
        New-FontEmbeddingManager
    .Example
        New-FontEmbeddingManager -OutputXaml
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
        $Object = New-Object System.Windows.Media.FontEmbeddingManager
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
} function New-FontFamily {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.FontFamily
    .Synopsis
        Creates a new System.Windows.Media.FontFamily
    .Example
        New-FontFamily
    .Example
        New-FontFamily -OutputXaml
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
        $Object = New-Object System.Windows.Media.FontFamily
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
} function New-FontFamilyConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.FontFamilyConverter
    .Synopsis
        Creates a new System.Windows.Media.FontFamilyConverter
    .Example
        New-FontFamilyConverter
    .Example
        New-FontFamilyConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.FontFamilyConverter
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
} function New-FontFamilyValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.FontFamilyValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.FontFamilyValueSerializer
    .Example
        New-FontFamilyValueSerializer
    .Example
        New-FontFamilyValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.FontFamilyValueSerializer
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
} function New-GeneralTransformGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GeneralTransformGroup
    .Synopsis
        Creates a new System.Windows.Media.GeneralTransformGroup
    .Example
        New-GeneralTransformGroup
    .Example
        New-GeneralTransformGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GeneralTransformGroup
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
} function New-BrushConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.BrushConverter
    .Synopsis
        Creates a new System.Windows.Media.BrushConverter
    .Example
        New-BrushConverter
    .Example
        New-BrushConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.BrushConverter
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
} function New-DoubleCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DoubleCollection
    .Synopsis
        Creates a new System.Windows.Media.DoubleCollection
    .Example
        New-DoubleCollection
    .Example
        New-DoubleCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.DoubleCollection
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
} function New-DoubleCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.DoubleCollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.DoubleCollectionConverter
    .Example
        New-DoubleCollectionConverter
    .Example
        New-DoubleCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.DoubleCollectionConverter
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
} function New-GeneralTransformCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GeneralTransformCollection
    .Synopsis
        Creates a new System.Windows.Media.GeneralTransformCollection
    .Example
        New-GeneralTransformCollection
    .Example
        New-GeneralTransformCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GeneralTransformCollection
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
} function New-GeometryCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GeometryCollection
    .Synopsis
        Creates a new System.Windows.Media.GeometryCollection
    .Example
        New-GeometryCollection
    .Example
        New-GeometryCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GeometryCollection
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
} function New-GeometryConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GeometryConverter
    .Synopsis
        Creates a new System.Windows.Media.GeometryConverter
    .Example
        New-GeometryConverter
    .Example
        New-GeometryConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.GeometryConverter
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
} function New-GeometryDrawing {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GeometryDrawing
    .Synopsis
        Creates a new System.Windows.Media.GeometryDrawing
    .Example
        New-GeometryDrawing
    .Example
        New-GeometryDrawing -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Brush},

    ${Pen},

    ${Geometry},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GeometryDrawing
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
} function New-GeometryGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GeometryGroup
    .Synopsis
        Creates a new System.Windows.Media.GeometryGroup
    .Example
        New-GeometryGroup
    .Example
        New-GeometryGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.FillRule]
    ${FillRule},

    ${Children},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GeometryGroup
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
} function New-GlyphRunDrawing {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GlyphRunDrawing
    .Synopsis
        Creates a new System.Windows.Media.GlyphRunDrawing
    .Example
        New-GlyphRunDrawing
    .Example
        New-GlyphRunDrawing -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${GlyphRun},

    ${ForegroundBrush},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GlyphRunDrawing
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
} function New-GradientStop {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GradientStop
    .Synopsis
        Creates a new System.Windows.Media.GradientStop
    .Example
        New-GradientStop
    .Example
        New-GradientStop -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    [System.Double]
    ${Offset},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GradientStop
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
} function New-GradientStopCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GradientStopCollection
    .Synopsis
        Creates a new System.Windows.Media.GradientStopCollection
    .Example
        New-GradientStopCollection
    .Example
        New-GradientStopCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GradientStopCollection
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
} function New-ImageBrush {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ImageBrush
    .Synopsis
        Creates a new System.Windows.Media.ImageBrush
    .Example
        New-ImageBrush
    .Example
        New-ImageBrush -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ImageSource},

    [System.Windows.Media.BrushMappingMode]
    ${ViewportUnits},

    [System.Windows.Media.BrushMappingMode]
    ${ViewboxUnits},

    ${Viewport},

    ${Viewbox},

    [System.Windows.Media.Stretch]
    ${Stretch},

    [System.Windows.Media.TileMode]
    ${TileMode},

    [System.Windows.Media.AlignmentX]
    ${AlignmentX},

    [System.Windows.Media.AlignmentY]
    ${AlignmentY},

    [System.Double]
    ${Opacity},

    ${Transform},

    ${RelativeTransform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.ImageBrush
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
} function New-ImageDrawing {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ImageDrawing
    .Synopsis
        Creates a new System.Windows.Media.ImageDrawing
    .Example
        New-ImageDrawing
    .Example
        New-ImageDrawing -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ImageSource},

    ${Rect},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.ImageDrawing
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
} function New-Int32Collection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Int32Collection
    .Synopsis
        Creates a new System.Windows.Media.Int32Collection
    .Example
        New-Int32Collection
    .Example
        New-Int32Collection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Int32]
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Int32Collection
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
} function New-Int32CollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Int32CollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.Int32CollectionConverter
    .Example
        New-Int32CollectionConverter
    .Example
        New-Int32CollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Int32CollectionConverter
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
} function New-LinearGradientBrush {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.LinearGradientBrush
    .Synopsis
        Creates a new System.Windows.Media.LinearGradientBrush
    .Example
        New-LinearGradientBrush
    .Example
        New-LinearGradientBrush -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${StartPoint},

    ${EndPoint},

    [System.Windows.Media.ColorInterpolationMode]
    ${ColorInterpolationMode},

    [System.Windows.Media.BrushMappingMode]
    ${MappingMode},

    [System.Windows.Media.GradientSpreadMethod]
    ${SpreadMethod},

    ${GradientStops},

    [System.Double]
    ${Opacity},

    ${Transform},

    ${RelativeTransform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.LinearGradientBrush
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
} function New-LineGeometry {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.LineGeometry
    .Synopsis
        Creates a new System.Windows.Media.LineGeometry
    .Example
        New-LineGeometry
    .Example
        New-LineGeometry -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${StartPoint},

    ${EndPoint},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.LineGeometry
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
} function New-LineSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.LineSegment
    .Synopsis
        Creates a new System.Windows.Media.LineSegment
    .Example
        New-LineSegment
    .Example
        New-LineSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Point},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.LineSegment
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
} function New-MatrixTransform {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.MatrixTransform
    .Synopsis
        Creates a new System.Windows.Media.MatrixTransform
    .Example
        New-MatrixTransform
    .Example
        New-MatrixTransform -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Matrix},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.MatrixTransform
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
} function New-MediaTimeline {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.MediaTimeline
    .Synopsis
        Creates a new System.Windows.Media.MediaTimeline
    .Example
        New-MediaTimeline
    .Example
        New-MediaTimeline -OutputXaml
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
        $Object = New-Object System.Windows.Media.MediaTimeline
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
} function New-PathFigure {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PathFigure
    .Synopsis
        Creates a new System.Windows.Media.PathFigure
    .Example
        New-PathFigure
    .Example
        New-PathFigure -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${StartPoint},

    [Switch]
    ${IsFilled},

    ${Segments},

    [Switch]
    ${IsClosed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PathFigure
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
} function New-PathFigureCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PathFigureCollection
    .Synopsis
        Creates a new System.Windows.Media.PathFigureCollection
    .Example
        New-PathFigureCollection
    .Example
        New-PathFigureCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PathFigureCollection
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
} function New-PathFigureCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PathFigureCollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.PathFigureCollectionConverter
    .Example
        New-PathFigureCollectionConverter
    .Example
        New-PathFigureCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.PathFigureCollectionConverter
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
} function New-PathGeometry {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PathGeometry
    .Synopsis
        Creates a new System.Windows.Media.PathGeometry
    .Example
        New-PathGeometry
    .Example
        New-PathGeometry -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.FillRule]
    ${FillRule},

    ${Figures},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PathGeometry
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
} function New-PathSegmentCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PathSegmentCollection
    .Synopsis
        Creates a new System.Windows.Media.PathSegmentCollection
    .Example
        New-PathSegmentCollection
    .Example
        New-PathSegmentCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PathSegmentCollection
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
} function New-Pen {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Pen
    .Synopsis
        Creates a new System.Windows.Media.Pen
    .Example
        New-Pen
    .Example
        New-Pen -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Brush},

    [System.Double]
    ${Thickness},

    [System.Windows.Media.PenLineCap]
    ${StartLineCap},

    [System.Windows.Media.PenLineCap]
    ${EndLineCap},

    [System.Windows.Media.PenLineCap]
    ${DashCap},

    [System.Windows.Media.PenLineJoin]
    ${LineJoin},

    [System.Double]
    ${MiterLimit},

    ${DashStyle},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Pen
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
} function New-PointCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PointCollection
    .Synopsis
        Creates a new System.Windows.Media.PointCollection
    .Example
        New-PointCollection
    .Example
        New-PointCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PointCollection
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
} function New-PointCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PointCollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.PointCollectionConverter
    .Example
        New-PointCollectionConverter
    .Example
        New-PointCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.PointCollectionConverter
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
} function New-PolyBezierSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PolyBezierSegment
    .Synopsis
        Creates a new System.Windows.Media.PolyBezierSegment
    .Example
        New-PolyBezierSegment
    .Example
        New-PolyBezierSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Points},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PolyBezierSegment
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
} function New-PolyLineSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PolyLineSegment
    .Synopsis
        Creates a new System.Windows.Media.PolyLineSegment
    .Example
        New-PolyLineSegment
    .Example
        New-PolyLineSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Points},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PolyLineSegment
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
} function New-PolyQuadraticBezierSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PolyQuadraticBezierSegment
    .Synopsis
        Creates a new System.Windows.Media.PolyQuadraticBezierSegment
    .Example
        New-PolyQuadraticBezierSegment
    .Example
        New-PolyQuadraticBezierSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Points},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.PolyQuadraticBezierSegment
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
} function New-QuadraticBezierSegment {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.QuadraticBezierSegment
    .Synopsis
        Creates a new System.Windows.Media.QuadraticBezierSegment
    .Example
        New-QuadraticBezierSegment
    .Example
        New-QuadraticBezierSegment -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Point1},

    ${Point2},

    [Switch]
    ${IsStroked},

    [Switch]
    ${IsSmoothJoin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.QuadraticBezierSegment
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
} function New-RadialGradientBrush {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.RadialGradientBrush
    .Synopsis
        Creates a new System.Windows.Media.RadialGradientBrush
    .Example
        New-RadialGradientBrush
    .Example
        New-RadialGradientBrush -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Center},

    [System.Double]
    ${RadiusX},

    [System.Double]
    ${RadiusY},

    ${GradientOrigin},

    [System.Windows.Media.ColorInterpolationMode]
    ${ColorInterpolationMode},

    [System.Windows.Media.BrushMappingMode]
    ${MappingMode},

    [System.Windows.Media.GradientSpreadMethod]
    ${SpreadMethod},

    ${GradientStops},

    [System.Double]
    ${Opacity},

    ${Transform},

    ${RelativeTransform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.RadialGradientBrush
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
} function New-RectangleGeometry {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.RectangleGeometry
    .Synopsis
        Creates a new System.Windows.Media.RectangleGeometry
    .Example
        New-RectangleGeometry
    .Example
        New-RectangleGeometry -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${RadiusX},

    [System.Double]
    ${RadiusY},

    ${Rect},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.RectangleGeometry
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
} function New-RotateTransform {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.RotateTransform
    .Synopsis
        Creates a new System.Windows.Media.RotateTransform
    .Example
        New-RotateTransform
    .Example
        New-RotateTransform -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Angle},

    [System.Double]
    ${CenterX},

    [System.Double]
    ${CenterY},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.RotateTransform
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
} function New-ScaleTransform {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ScaleTransform
    .Synopsis
        Creates a new System.Windows.Media.ScaleTransform
    .Example
        New-ScaleTransform
    .Example
        New-ScaleTransform -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${ScaleX},

    [System.Double]
    ${ScaleY},

    [System.Double]
    ${CenterX},

    [System.Double]
    ${CenterY},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.ScaleTransform
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
} function New-SkewTransform {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.SkewTransform
    .Synopsis
        Creates a new System.Windows.Media.SkewTransform
    .Example
        New-SkewTransform
    .Example
        New-SkewTransform -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${AngleX},

    [System.Double]
    ${AngleY},

    [System.Double]
    ${CenterX},

    [System.Double]
    ${CenterY},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.SkewTransform
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
} function New-SolidColorBrush {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.SolidColorBrush
    .Synopsis
        Creates a new System.Windows.Media.SolidColorBrush
    .Example
        New-SolidColorBrush
    .Example
        New-SolidColorBrush -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    [System.Double]
    ${Opacity},

    ${Transform},

    ${RelativeTransform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.SolidColorBrush
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
} function New-StreamGeometry {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.StreamGeometry
    .Synopsis
        Creates a new System.Windows.Media.StreamGeometry
    .Example
        New-StreamGeometry
    .Example
        New-StreamGeometry -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.FillRule]
    ${FillRule},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.StreamGeometry
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
} function New-TextEffect {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TextEffect
    .Synopsis
        Creates a new System.Windows.Media.TextEffect
    .Example
        New-TextEffect
    .Example
        New-TextEffect -OutputXaml
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
        $Object = New-Object System.Windows.Media.TextEffect
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
} function New-TextEffectCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TextEffectCollection
    .Synopsis
        Creates a new System.Windows.Media.TextEffectCollection
    .Example
        New-TextEffectCollection
    .Example
        New-TextEffectCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.TextEffectCollection
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
} function New-TransformCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TransformCollection
    .Synopsis
        Creates a new System.Windows.Media.TransformCollection
    .Example
        New-TransformCollection
    .Example
        New-TransformCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.TransformCollection
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
} function New-TransformConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TransformConverter
    .Synopsis
        Creates a new System.Windows.Media.TransformConverter
    .Example
        New-TransformConverter
    .Example
        New-TransformConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.TransformConverter
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
} function New-TransformGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TransformGroup
    .Synopsis
        Creates a new System.Windows.Media.TransformGroup
    .Example
        New-TransformGroup
    .Example
        New-TransformGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.TransformGroup
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
} function New-TranslateTransform {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TranslateTransform
    .Synopsis
        Creates a new System.Windows.Media.TranslateTransform
    .Example
        New-TranslateTransform
    .Example
        New-TranslateTransform -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${X},

    [System.Double]
    ${Y},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.TranslateTransform
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
} function New-VectorCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.VectorCollection
    .Synopsis
        Creates a new System.Windows.Media.VectorCollection
    .Example
        New-VectorCollection
    .Example
        New-VectorCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.VectorCollection
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
} function New-VectorCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.VectorCollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.VectorCollectionConverter
    .Example
        New-VectorCollectionConverter
    .Example
        New-VectorCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.VectorCollectionConverter
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
} function New-VisualBrush {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.VisualBrush
    .Synopsis
        Creates a new System.Windows.Media.VisualBrush
    .Example
        New-VisualBrush
    .Example
        New-VisualBrush -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Visual},

    [Switch]
    ${AutoLayoutContent},

    [System.Windows.Media.BrushMappingMode]
    ${ViewportUnits},

    [System.Windows.Media.BrushMappingMode]
    ${ViewboxUnits},

    ${Viewport},

    ${Viewbox},

    [System.Windows.Media.Stretch]
    ${Stretch},

    [System.Windows.Media.TileMode]
    ${TileMode},

    [System.Windows.Media.AlignmentX]
    ${AlignmentX},

    [System.Windows.Media.AlignmentY]
    ${AlignmentY},

    [System.Double]
    ${Opacity},

    ${Transform},

    ${RelativeTransform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.VisualBrush
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
} function New-VideoDrawing {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.VideoDrawing
    .Synopsis
        Creates a new System.Windows.Media.VideoDrawing
    .Example
        New-VideoDrawing
    .Example
        New-VideoDrawing -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Player},

    ${Rect},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.VideoDrawing
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
} function New-GuidelineSet {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GuidelineSet
    .Synopsis
        Creates a new System.Windows.Media.GuidelineSet
    .Example
        New-GuidelineSet
    .Example
        New-GuidelineSet -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${GuidelinesX},

    ${GuidelinesY},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GuidelineSet
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
} function New-GlyphRun {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GlyphRun
    .Synopsis
        Creates a new System.Windows.Media.GlyphRun
    .Example
        New-GlyphRun
    .Example
        New-GlyphRun -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${BaselineOrigin},

    [System.Double]
    ${FontRenderingEmSize},

    ${GlyphTypeface},

    [System.Int32]
    ${BidiLevel},

    [Switch]
    ${IsSideways},

    ${CaretStops},

    ${ClusterMap},

    ${Characters},

    ${GlyphIndices},

    ${AdvanceWidths},

    ${GlyphOffsets},

    ${Language},

    [System.String]
    ${DeviceFontName},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GlyphRun
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
} function New-GlyphTypeface {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.GlyphTypeface
    .Synopsis
        Creates a new System.Windows.Media.GlyphTypeface
    .Example
        New-GlyphTypeface
    .Example
        New-GlyphTypeface -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${FontUri},

    [System.Windows.Media.StyleSimulations]
    ${StyleSimulations},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.GlyphTypeface
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
} function New-ImageSourceConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ImageSourceConverter
    .Synopsis
        Creates a new System.Windows.Media.ImageSourceConverter
    .Example
        New-ImageSourceConverter
    .Example
        New-ImageSourceConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.ImageSourceConverter
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
} function New-ImageSourceValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.ImageSourceValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.ImageSourceValueSerializer
    .Example
        New-ImageSourceValueSerializer
    .Example
        New-ImageSourceValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.ImageSourceValueSerializer
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
} function New-BmpBitmapEncoder {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.BmpBitmapEncoder
    .Synopsis
        Creates a new System.Windows.Media.Imaging.BmpBitmapEncoder
    .Example
        New-BmpBitmapEncoder
    .Example
        New-BmpBitmapEncoder -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ColorContexts},

    ${Thumbnail},

    ${Metadata},

    ${Preview},

    ${Palette},

    ${Frames},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.BmpBitmapEncoder
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
} function New-BitmapImage {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.BitmapImage
    .Synopsis
        Creates a new System.Windows.Media.Imaging.BitmapImage
    .Example
        New-BitmapImage
    .Example
        New-BitmapImage -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${BaseUri},

    ${UriCachePolicy},

    ${UriSource},

    ${StreamSource},

    [System.Int32]
    ${DecodePixelWidth},

    [System.Int32]
    ${DecodePixelHeight},

    [System.Windows.Media.Imaging.Rotation]
    ${Rotation},

    ${SourceRect},

    [System.Windows.Media.Imaging.BitmapCreateOptions]
    ${CreateOptions},

    [System.Windows.Media.Imaging.BitmapCacheOption]
    ${CacheOption},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadProgress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DecodeFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.BitmapImage
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
} function New-ColorConvertedBitmap {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.ColorConvertedBitmap
    .Synopsis
        Creates a new System.Windows.Media.Imaging.ColorConvertedBitmap
    .Example
        New-ColorConvertedBitmap
    .Example
        New-ColorConvertedBitmap -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Source},

    ${SourceColorContext},

    ${DestinationColorContext},

    ${DestinationFormat},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadProgress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DecodeFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.ColorConvertedBitmap
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
} function New-CroppedBitmap {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.CroppedBitmap
    .Synopsis
        Creates a new System.Windows.Media.Imaging.CroppedBitmap
    .Example
        New-CroppedBitmap
    .Example
        New-CroppedBitmap -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Source},

    ${SourceRect},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadProgress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DecodeFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.CroppedBitmap
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
} function New-FormatConvertedBitmap {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.FormatConvertedBitmap
    .Synopsis
        Creates a new System.Windows.Media.Imaging.FormatConvertedBitmap
    .Example
        New-FormatConvertedBitmap
    .Example
        New-FormatConvertedBitmap -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Source},

    ${DestinationFormat},

    ${DestinationPalette},

    [System.Double]
    ${AlphaThreshold},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadProgress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DecodeFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.FormatConvertedBitmap
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
} function New-GifBitmapEncoder {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.GifBitmapEncoder
    .Synopsis
        Creates a new System.Windows.Media.Imaging.GifBitmapEncoder
    .Example
        New-GifBitmapEncoder
    .Example
        New-GifBitmapEncoder -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ColorContexts},

    ${Thumbnail},

    ${Metadata},

    ${Preview},

    ${Palette},

    ${Frames},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.GifBitmapEncoder
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
} function New-JpegBitmapEncoder {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.JpegBitmapEncoder
    .Synopsis
        Creates a new System.Windows.Media.Imaging.JpegBitmapEncoder
    .Example
        New-JpegBitmapEncoder
    .Example
        New-JpegBitmapEncoder -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Int32]
    ${QualityLevel},

    [System.Windows.Media.Imaging.Rotation]
    ${Rotation},

    [Switch]
    ${FlipHorizontal},

    [Switch]
    ${FlipVertical},

    ${ColorContexts},

    ${Thumbnail},

    ${Metadata},

    ${Preview},

    ${Palette},

    ${Frames},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.JpegBitmapEncoder
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
} function New-PngBitmapEncoder {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.PngBitmapEncoder
    .Synopsis
        Creates a new System.Windows.Media.Imaging.PngBitmapEncoder
    .Example
        New-PngBitmapEncoder
    .Example
        New-PngBitmapEncoder -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.Imaging.PngInterlaceOption]
    ${Interlace},

    ${ColorContexts},

    ${Thumbnail},

    ${Metadata},

    ${Preview},

    ${Palette},

    ${Frames},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.PngBitmapEncoder
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
} function New-TiffBitmapEncoder {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.TiffBitmapEncoder
    .Synopsis
        Creates a new System.Windows.Media.Imaging.TiffBitmapEncoder
    .Example
        New-TiffBitmapEncoder
    .Example
        New-TiffBitmapEncoder -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.Imaging.TiffCompressOption]
    ${Compression},

    ${ColorContexts},

    ${Thumbnail},

    ${Metadata},

    ${Preview},

    ${Palette},

    ${Frames},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.TiffBitmapEncoder
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
} function New-WmpBitmapEncoder {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.WmpBitmapEncoder
    .Synopsis
        Creates a new System.Windows.Media.Imaging.WmpBitmapEncoder
    .Example
        New-WmpBitmapEncoder
    .Example
        New-WmpBitmapEncoder -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ImageQualityLevel},

    [Switch]
    ${Lossless},

    [System.Windows.Media.Imaging.Rotation]
    ${Rotation},

    [Switch]
    ${FlipHorizontal},

    [Switch]
    ${FlipVertical},

    [Switch]
    ${UseCodecOptions},

    ${QualityLevel},

    ${SubsamplingLevel},

    ${OverlapLevel},

    ${HorizontalTileSlices},

    ${VerticalTileSlices},

    [Switch]
    ${FrequencyOrder},

    [Switch]
    ${InterleavedAlpha},

    ${AlphaQualityLevel},

    [Switch]
    ${CompressedDomainTranscode},

    ${ImageDataDiscardLevel},

    ${AlphaDataDiscardLevel},

    [Switch]
    ${IgnoreOverlap},

    ${ColorContexts},

    ${Thumbnail},

    ${Metadata},

    ${Preview},

    ${Palette},

    ${Frames},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.WmpBitmapEncoder
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
} function New-TransformedBitmap {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Imaging.TransformedBitmap
    .Synopsis
        Creates a new System.Windows.Media.Imaging.TransformedBitmap
    .Example
        New-TransformedBitmap
    .Example
        New-TransformedBitmap -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Source},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadProgress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DownloadFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DecodeFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Imaging.TransformedBitmap
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
} function New-InvalidWmpVersionException {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.InvalidWmpVersionException
    .Synopsis
        Creates a new System.Windows.Media.InvalidWmpVersionException
    .Example
        New-InvalidWmpVersionException
    .Example
        New-InvalidWmpVersionException -OutputXaml
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
        $Object = New-Object System.Windows.Media.InvalidWmpVersionException
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
} function New-MediaPlayer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.MediaPlayer
    .Synopsis
        Creates a new System.Windows.Media.MediaPlayer
    .Example
        New-MediaPlayer
    .Example
        New-MediaPlayer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Volume},

    [System.Double]
    ${Balance},

    [Switch]
    ${ScrubbingEnabled},

    [Switch]
    ${IsMuted},

    ${Position},

    [System.Double]
    ${SpeedRatio},

    ${Clock},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MediaFailed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MediaOpened},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MediaEnded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BufferingStarted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BufferingEnded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ScriptCommand},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.MediaPlayer
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
} function New-PixelFormatConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.PixelFormatConverter
    .Synopsis
        Creates a new System.Windows.Media.PixelFormatConverter
    .Example
        New-PixelFormatConverter
    .Example
        New-PixelFormatConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.PixelFormatConverter
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
} function New-RequestCachePolicyConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.RequestCachePolicyConverter
    .Synopsis
        Creates a new System.Windows.Media.RequestCachePolicyConverter
    .Example
        New-RequestCachePolicyConverter
    .Example
        New-RequestCachePolicyConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.RequestCachePolicyConverter
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
} function New-NumberSubstitution {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.NumberSubstitution
    .Synopsis
        Creates a new System.Windows.Media.NumberSubstitution
    .Example
        New-NumberSubstitution
    .Example
        New-NumberSubstitution -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Media.NumberCultureSource]
    ${CultureSource},

    ${CultureOverride},

    [System.Windows.Media.NumberSubstitutionMethod]
    ${Substitution},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.NumberSubstitution
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
} function New-TextRunCache {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.TextFormatting.TextRunCache
    .Synopsis
        Creates a new System.Windows.Media.TextFormatting.TextRunCache
    .Example
        New-TextRunCache
    .Example
        New-TextRunCache -OutputXaml
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
        $Object = New-Object System.Windows.Media.TextFormatting.TextRunCache
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
} function New-AmbientLight {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.AmbientLight
    .Synopsis
        Creates a new System.Windows.Media.Media3D.AmbientLight
    .Example
        New-AmbientLight
    .Example
        New-AmbientLight -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.AmbientLight
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
} function New-AxisAngleRotation3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.AxisAngleRotation3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.AxisAngleRotation3D
    .Example
        New-AxisAngleRotation3D
    .Example
        New-AxisAngleRotation3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Axis},

    [System.Double]
    ${Angle},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.AxisAngleRotation3D
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
} function New-ContainerUIElement3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.ContainerUIElement3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.ContainerUIElement3D
    .Example
        New-ContainerUIElement3D
    .Example
        New-ContainerUIElement3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    ${InputBindings},

    ${CommandBindings},

    [Switch]
    ${AllowDrop},

    [System.Windows.Visibility]
    ${Visibility},

    [Switch]
    ${IsEnabled},

    [Switch]
    ${IsHitTestVisible},

    [Switch]
    ${Focusable},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryCursor},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewLostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewTextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewQueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Drop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsEnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsHitTestVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FocusableChanged},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.ContainerUIElement3D
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
} function New-Matrix3DValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Matrix3DValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Matrix3DValueSerializer
    .Example
        New-Matrix3DValueSerializer
    .Example
        New-Matrix3DValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Matrix3DValueSerializer
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
} function New-Point3DCollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Point3DCollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Point3DCollectionValueSerializer
    .Example
        New-Point3DCollectionValueSerializer
    .Example
        New-Point3DCollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Point3DCollectionValueSerializer
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
} function New-Point3DValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Point3DValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Point3DValueSerializer
    .Example
        New-Point3DValueSerializer
    .Example
        New-Point3DValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Point3DValueSerializer
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
} function New-Point4DValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Point4DValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Point4DValueSerializer
    .Example
        New-Point4DValueSerializer
    .Example
        New-Point4DValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Point4DValueSerializer
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
} function New-QuaternionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.QuaternionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.QuaternionValueSerializer
    .Example
        New-QuaternionValueSerializer
    .Example
        New-QuaternionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.QuaternionValueSerializer
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
} function New-Rect3DValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Rect3DValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Rect3DValueSerializer
    .Example
        New-Rect3DValueSerializer
    .Example
        New-Rect3DValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Rect3DValueSerializer
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
} function New-Size3DValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Size3DValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Size3DValueSerializer
    .Example
        New-Size3DValueSerializer
    .Example
        New-Size3DValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Size3DValueSerializer
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
} function New-Vector3DCollectionValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Vector3DCollectionValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Vector3DCollectionValueSerializer
    .Example
        New-Vector3DCollectionValueSerializer
    .Example
        New-Vector3DCollectionValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Vector3DCollectionValueSerializer
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
} function New-Vector3DValueSerializer {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Converters.Vector3DValueSerializer
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Converters.Vector3DValueSerializer
    .Example
        New-Vector3DValueSerializer
    .Example
        New-Vector3DValueSerializer -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Converters.Vector3DValueSerializer
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
} function New-DiffuseMaterial {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.DiffuseMaterial
    .Synopsis
        Creates a new System.Windows.Media.Media3D.DiffuseMaterial
    .Example
        New-DiffuseMaterial
    .Example
        New-DiffuseMaterial -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    ${AmbientColor},

    ${Brush},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.DiffuseMaterial
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
} function New-DirectionalLight {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.DirectionalLight
    .Synopsis
        Creates a new System.Windows.Media.Media3D.DirectionalLight
    .Example
        New-DirectionalLight
    .Example
        New-DirectionalLight -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Direction},

    ${Color},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.DirectionalLight
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
} function New-EmissiveMaterial {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.EmissiveMaterial
    .Synopsis
        Creates a new System.Windows.Media.Media3D.EmissiveMaterial
    .Example
        New-EmissiveMaterial
    .Example
        New-EmissiveMaterial -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    ${Brush},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.EmissiveMaterial
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
} function New-GeneralTransform3DGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.GeneralTransform3DGroup
    .Synopsis
        Creates a new System.Windows.Media.Media3D.GeneralTransform3DGroup
    .Example
        New-GeneralTransform3DGroup
    .Example
        New-GeneralTransform3DGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.GeneralTransform3DGroup
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
} function New-GeometryModel3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.GeometryModel3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.GeometryModel3D
    .Example
        New-GeometryModel3D
    .Example
        New-GeometryModel3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Geometry},

    ${Material},

    ${BackMaterial},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.GeometryModel3D
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
} function New-MaterialGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.MaterialGroup
    .Synopsis
        Creates a new System.Windows.Media.Media3D.MaterialGroup
    .Example
        New-MaterialGroup
    .Example
        New-MaterialGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.MaterialGroup
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
} function New-MatrixCamera {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.MatrixCamera
    .Synopsis
        Creates a new System.Windows.Media.Media3D.MatrixCamera
    .Example
        New-MatrixCamera
    .Example
        New-MatrixCamera -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ViewMatrix},

    ${ProjectionMatrix},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.MatrixCamera
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
} function New-MatrixTransform3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.MatrixTransform3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.MatrixTransform3D
    .Example
        New-MatrixTransform3D
    .Example
        New-MatrixTransform3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Matrix},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.MatrixTransform3D
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
} function New-MeshGeometry3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.MeshGeometry3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.MeshGeometry3D
    .Example
        New-MeshGeometry3D
    .Example
        New-MeshGeometry3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Positions},

    ${Normals},

    ${TextureCoordinates},

    ${TriangleIndices},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.MeshGeometry3D
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
} function New-Model3DGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Model3DGroup
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Model3DGroup
    .Example
        New-Model3DGroup
    .Example
        New-Model3DGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Model3DGroup
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
} function New-ModelUIElement3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.ModelUIElement3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.ModelUIElement3D
    .Example
        New-ModelUIElement3D
    .Example
        New-ModelUIElement3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Model},

    ${InputBindings},

    ${CommandBindings},

    [Switch]
    ${AllowDrop},

    [System.Windows.Visibility]
    ${Visibility},

    [Switch]
    ${IsEnabled},

    [Switch]
    ${IsHitTestVisible},

    [Switch]
    ${Focusable},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeftButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseRightButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewMouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostMouseCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryCursor},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInAirMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusInRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusOutOfRange},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusSystemGesture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostStylusCapture},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewStylusButtonUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewLostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostKeyboardFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewTextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextInput},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewQueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewGiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Drop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsMouseCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusDirectlyOverChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCapturedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsStylusCaptureWithinChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsKeyboardFocusedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsEnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsHitTestVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FocusableChanged},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.ModelUIElement3D
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
} function New-ModelVisual3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.ModelVisual3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.ModelVisual3D
    .Example
        New-ModelVisual3D
    .Example
        New-ModelVisual3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    ${Content},

    ${Transform},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.ModelVisual3D
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
} function New-Point3DCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Point3DCollection
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Point3DCollection
    .Example
        New-Point3DCollection
    .Example
        New-Point3DCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Point3DCollection
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
} function New-Vector3DCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Vector3DCollection
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Vector3DCollection
    .Example
        New-Vector3DCollection
    .Example
        New-Vector3DCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Vector3DCollection
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
} function New-PointLight {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.PointLight
    .Synopsis
        Creates a new System.Windows.Media.Media3D.PointLight
    .Example
        New-PointLight
    .Example
        New-PointLight -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Position},

    [System.Double]
    ${Range},

    [System.Double]
    ${ConstantAttenuation},

    [System.Double]
    ${LinearAttenuation},

    [System.Double]
    ${QuadraticAttenuation},

    ${Color},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.PointLight
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
} function New-OrthographicCamera {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.OrthographicCamera
    .Synopsis
        Creates a new System.Windows.Media.Media3D.OrthographicCamera
    .Example
        New-OrthographicCamera
    .Example
        New-OrthographicCamera -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${Width},

    [System.Double]
    ${NearPlaneDistance},

    [System.Double]
    ${FarPlaneDistance},

    ${Position},

    ${LookDirection},

    ${UpDirection},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.OrthographicCamera
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
} function New-PerspectiveCamera {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.PerspectiveCamera
    .Synopsis
        Creates a new System.Windows.Media.Media3D.PerspectiveCamera
    .Example
        New-PerspectiveCamera
    .Example
        New-PerspectiveCamera -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${FieldOfView},

    [System.Double]
    ${NearPlaneDistance},

    [System.Double]
    ${FarPlaneDistance},

    ${Position},

    ${LookDirection},

    ${UpDirection},

    ${Transform},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.PerspectiveCamera
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
} function New-QuaternionRotation3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.QuaternionRotation3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.QuaternionRotation3D
    .Example
        New-QuaternionRotation3D
    .Example
        New-QuaternionRotation3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Quaternion},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.QuaternionRotation3D
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
} function New-RotateTransform3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.RotateTransform3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.RotateTransform3D
    .Example
        New-RotateTransform3D
    .Example
        New-RotateTransform3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${CenterX},

    [System.Double]
    ${CenterY},

    [System.Double]
    ${CenterZ},

    ${Rotation},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.RotateTransform3D
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
} function New-ScaleTransform3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.ScaleTransform3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.ScaleTransform3D
    .Example
        New-ScaleTransform3D
    .Example
        New-ScaleTransform3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${ScaleX},

    [System.Double]
    ${ScaleY},

    [System.Double]
    ${ScaleZ},

    [System.Double]
    ${CenterX},

    [System.Double]
    ${CenterY},

    [System.Double]
    ${CenterZ},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.ScaleTransform3D
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
} function New-SpecularMaterial {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.SpecularMaterial
    .Synopsis
        Creates a new System.Windows.Media.Media3D.SpecularMaterial
    .Example
        New-SpecularMaterial
    .Example
        New-SpecularMaterial -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Color},

    ${Brush},

    [System.Double]
    ${SpecularPower},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.SpecularMaterial
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
} function New-SpotLight {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.SpotLight
    .Synopsis
        Creates a new System.Windows.Media.Media3D.SpotLight
    .Example
        New-SpotLight
    .Example
        New-SpotLight -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.SpotLight
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
} function New-Transform3DGroup {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Transform3DGroup
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Transform3DGroup
    .Example
        New-Transform3DGroup
    .Example
        New-Transform3DGroup -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Children},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Transform3DGroup
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
} function New-TranslateTransform3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.TranslateTransform3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.TranslateTransform3D
    .Example
        New-TranslateTransform3D
    .Example
        New-TranslateTransform3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Double]
    ${OffsetX},

    [System.Double]
    ${OffsetY},

    [System.Double]
    ${OffsetZ},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.TranslateTransform3D
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
} function New-Viewport2DVisual3D {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Viewport2DVisual3D
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Viewport2DVisual3D
    .Example
        New-Viewport2DVisual3D
    .Example
        New-Viewport2DVisual3D -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Visual},

    ${Geometry},

    ${Material},

    ${Transform},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Viewport2DVisual3D
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
} function New-Viewport3DVisual {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Viewport3DVisual
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Viewport3DVisual
    .Example
        New-Viewport3DVisual
    .Example
        New-Viewport3DVisual -OutputXaml
    .Example
        New-Viewport3DVisual -Show
    .Example
        New-Viewport3DVisual -AsJob
    .Parameter AsJob
        
    If Set, will show the visual in a background WPF Job
    
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    .Parameter Show
        
    If Set, will show the visual in a new window
    
    #>

    
    
    param(
        
    ${Clip},

    [System.Double]
    ${Opacity},

    ${OpacityMask},

    ${BitmapEffect},

    ${BitmapEffectInput},

    ${Transform},

    ${Offset},

    ${Camera},

    ${Viewport},

    ${Children},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty},

    [Switch]
    ${Show},

    [System.Int32]
    ${Row},

    [System.Int32]
    ${Column},

    [System.Int32]
    ${RowSpan},

    [System.Int32]
    ${ColumnSpan},

    [System.Int32]
    ${ZIndex},

    [System.Windows.Controls.Dock]
    ${Dock},

    [System.Double]
    ${Top},

    [System.Double]
    ${Left},

    [Switch]
    ${AsJob}
    )
    begin {
        
    }
    process {
        
        if ($PSBoundParameters.ContainsKey("AsJob")) {
            $null = $psBoundParameters.Remove("AsJob")
            $ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
            $Command = $MyInvocation.InvocationName
            if (-not $Command) {
                $Command = "Start-WPFJob"
            }
            $Parameters = $PSBoundParameters
            $AdditionalContext = @(Get-PSCallstack)[1].InvocationInfo.MyCommand.Definition
            if (-not $AdditionalContext) { $AdditionalContext += {} }
            if ($AdditionalContext -like "*.ps1") { 
                $AdditionalContext = [ScriptBlock]::Create(
                    [IO.File]::ReadAllText($AdditionalContext)
                )
            } else {
                $AdditionalContext = [ScriptBlock]::Create($AdditionalContext)
            }

            
            $JobParameters = @{
                ScriptBlock = $MyInvocation.MyCommand.ScriptBlock
                Command = $Command
                AdditionalContext = $AdditionalContext
                Name = $Name
            }
            
            if (-not $JobParameters.Name) {
                $JobParameters.Name = $MyInvocation.InvocationName
            }

            if ($Parameters) {
                Start-WPFJob @JobParameters -Parameter $Parameters         
            } else {
                Start-WPFJob @JobParameters
            }
            return
        }
        try {
        $Object = New-Object System.Windows.Media.Media3D.Viewport3DVisual
        } catch {
            throw $_
            return
        } 
        if ($PSBoundParameters.ContainsKey("Left")) {            
            $object.SetValue([Windows.Controls.Canvas]::LeftProperty, $Left)
            $Null = $PSBoundParameters.Remove("Left")
        }
        if ($PSBoundParameters.ContainsKey("Top")) {            
            $object.SetValue([Windows.Controls.Canvas]::TopProperty, $top)
            $Null = $PSBoundParameters.Remove("Top")
        }
        if ($PSBoundParameters.ContainsKey("Row")) {
            $Object.SetValue([Windows.Controls.Grid]::RowProperty, $row)
            $Null = $PSBoundParameters.Remove("Row")
        }
        if ($PSBoundParameters.ContainsKey("Column")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnProperty, $column)
            $Null = $PSBoundParameters.Remove("Column")
        }
        if ($PSBoundParameters.ContainsKey("RowSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::RowSpanProperty, $rowSpan)
            $Null = $PSBoundParameters.Remove("RowSpan")
        }
        if ($PSBoundParameters.ContainsKey("ColumnSpan")) {
            $Object.SetValue([Windows.Controls.Grid]::ColumnSpanProperty, $columnSpan)
            $Null = $PSBoundParameters.Remove("ColumnSpan")
        }
        if ($PSBoundParameters.ContainsKey("ZIndex")) {
            $Object.SetValue([Windows.Controls.Panel]::ZIndexProperty, $ZIndex)
            $Null = $PSBoundParameters.Remove("ZIndex")
        }
        if ($PSBoundParameters.ContainsKey("Dock")) {
            $Object.SetValue([Windows.Controls.DockPanel]::DockProperty, $Dock)
            $Null = $PSBoundParameters.Remove("Dock")
        }
        $null = $psBoundParameters.Remove("Show")
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
        if ($show) {
            return Show-Window $Object 
        }
        $Object
    }
    end {
        
    }
} function New-GeneralTransform3DCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.GeneralTransform3DCollection
    .Synopsis
        Creates a new System.Windows.Media.Media3D.GeneralTransform3DCollection
    .Example
        New-GeneralTransform3DCollection
    .Example
        New-GeneralTransform3DCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.GeneralTransform3DCollection
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
} function New-MaterialCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.MaterialCollection
    .Synopsis
        Creates a new System.Windows.Media.Media3D.MaterialCollection
    .Example
        New-MaterialCollection
    .Example
        New-MaterialCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.MaterialCollection
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
} function New-Matrix3DConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Matrix3DConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Matrix3DConverter
    .Example
        New-Matrix3DConverter
    .Example
        New-Matrix3DConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Matrix3DConverter
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
} function New-Model3DCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Model3DCollection
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Model3DCollection
    .Example
        New-Model3DCollection
    .Example
        New-Model3DCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Model3DCollection
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
} function New-Point3DConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Point3DConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Point3DConverter
    .Example
        New-Point3DConverter
    .Example
        New-Point3DConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Point3DConverter
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
} function New-Point3DCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Point3DCollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Point3DCollectionConverter
    .Example
        New-Point3DCollectionConverter
    .Example
        New-Point3DCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Point3DCollectionConverter
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
} function New-Point4DConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Point4DConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Point4DConverter
    .Example
        New-Point4DConverter
    .Example
        New-Point4DConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Point4DConverter
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
} function New-QuaternionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.QuaternionConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.QuaternionConverter
    .Example
        New-QuaternionConverter
    .Example
        New-QuaternionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.QuaternionConverter
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
} function New-Rect3DConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Rect3DConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Rect3DConverter
    .Example
        New-Rect3DConverter
    .Example
        New-Rect3DConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Rect3DConverter
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
} function New-Size3DConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Size3DConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Size3DConverter
    .Example
        New-Size3DConverter
    .Example
        New-Size3DConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Size3DConverter
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
} function New-Transform3DCollection {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Transform3DCollection
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Transform3DCollection
    .Example
        New-Transform3DCollection
    .Example
        New-Transform3DCollection -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Item},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Changed},

    [Switch]
    ${OutputXaml},

    [System.Collections.Hashtable]
    ${DependencyProperty}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Media.Media3D.Transform3DCollection
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
} function New-Vector3DConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Vector3DConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Vector3DConverter
    .Example
        New-Vector3DConverter
    .Example
        New-Vector3DConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Vector3DConverter
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
} function New-Vector3DCollectionConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Media.Media3D.Vector3DCollectionConverter
    .Synopsis
        Creates a new System.Windows.Media.Media3D.Vector3DCollectionConverter
    .Example
        New-Vector3DCollectionConverter
    .Example
        New-Vector3DCollectionConverter -OutputXaml
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
        $Object = New-Object System.Windows.Media.Media3D.Vector3DCollectionConverter
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
} function New-XmlLanguageConverter {
    
    <#
    
    .Description
        Creates a new System.Windows.Markup.XmlLanguageConverter
    .Synopsis
        Creates a new System.Windows.Markup.XmlLanguageConverter
    .Example
        New-XmlLanguageConverter
    .Example
        New-XmlLanguageConverter -OutputXaml
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
        $Object = New-Object System.Windows.Markup.XmlLanguageConverter
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