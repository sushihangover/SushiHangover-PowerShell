function New-ScrollableControl {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ScrollableControl
    .Synopsis
        Creates a new System.Windows.Forms.ScrollableControl
    .Example
        New-ScrollableControl
    .Example
        New-ScrollableControl -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ScrollableControl
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
} function New-ContainerControl {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ContainerControl
    .Synopsis
        Creates a new System.Windows.Forms.ContainerControl
    .Example
        New-ContainerControl
    .Example
        New-ContainerControl -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BindingContext},

    ${ActiveControl},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ContainerControl
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
} function New-ToolStrip {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ToolStrip
    .Synopsis
        Creates a new System.Windows.Forms.ToolStrip
    .Example
        New-ToolStrip
    .Example
        New-ToolStrip -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${AutoScrollPosition},

    [Switch]
    ${AllowDrop},

    [Switch]
    ${AllowItemReorder},

    [Switch]
    ${AllowMerge},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${BackColor},

    ${BindingContext},

    [Switch]
    ${CanOverflow},

    [Switch]
    ${CausesValidation},

    ${Controls},

    ${Cursor},

    ${Font},

    [System.Windows.Forms.ToolStripDropDownDirection]
    ${DefaultDropDownDirection},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    ${ForeColor},

    [System.Windows.Forms.ToolStripGripStyle]
    ${GripStyle},

    ${GripMargin},

    ${ImageScalingSize},

    ${ImageList},

    ${Items},

    ${LayoutSettings},

    [System.Windows.Forms.ToolStripLayoutStyle]
    ${LayoutStyle},

    [Switch]
    ${Stretch},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [Switch]
    ${ShowItemToolTips},

    [Switch]
    ${TabStop},

    [System.Windows.Forms.ToolStripTextDirection]
    ${TextDirection},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BeginDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EndDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaintGrip},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ToolStrip
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
} function New-BindingNavigator {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.BindingNavigator
    .Synopsis
        Creates a new System.Windows.Forms.BindingNavigator
    .Example
        New-BindingNavigator
    .Example
        New-BindingNavigator -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${BindingSource},

    ${MoveFirstItem},

    ${MovePreviousItem},

    ${MoveNextItem},

    ${MoveLastItem},

    ${AddNewItem},

    ${DeleteItem},

    ${PositionItem},

    ${CountItem},

    [System.String]
    ${CountItemFormat},

    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${AutoScrollPosition},

    [Switch]
    ${AllowDrop},

    [Switch]
    ${AllowItemReorder},

    [Switch]
    ${AllowMerge},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${BackColor},

    ${BindingContext},

    [Switch]
    ${CanOverflow},

    [Switch]
    ${CausesValidation},

    ${Controls},

    ${Cursor},

    ${Font},

    [System.Windows.Forms.ToolStripDropDownDirection]
    ${DefaultDropDownDirection},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    ${ForeColor},

    [System.Windows.Forms.ToolStripGripStyle]
    ${GripStyle},

    ${GripMargin},

    ${ImageScalingSize},

    ${ImageList},

    ${Items},

    ${LayoutSettings},

    [System.Windows.Forms.ToolStripLayoutStyle]
    ${LayoutStyle},

    [Switch]
    ${Stretch},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [Switch]
    ${ShowItemToolTips},

    [Switch]
    ${TabStop},

    [System.Windows.Forms.ToolStripTextDirection]
    ${TextDirection},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RefreshItems},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BeginDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EndDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaintGrip},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.BindingNavigator
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
} function New-CheckedListBox {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.CheckedListBox
    .Synopsis
        Creates a new System.Windows.Forms.CheckedListBox
    .Example
        New-CheckedListBox
    .Example
        New-CheckedListBox -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${CheckOnClick},

    ${CheckedIndices},

    ${CheckedItems},

    ${DataSource},

    [System.String]
    ${DisplayMember},

    [System.Windows.Forms.DrawMode]
    ${DrawMode},

    [System.Int32]
    ${ItemHeight},

    ${Items},

    [System.Windows.Forms.SelectionMode]
    ${SelectionMode},

    [Switch]
    ${ThreeDCheckBoxes},

    [Switch]
    ${UseCompatibleTextRendering},

    [System.String]
    ${ValueMember},

    ${Padding},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [System.Int32]
    ${ColumnWidth},

    [Switch]
    ${UseCustomTabOffsets},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${HorizontalExtent},

    [Switch]
    ${HorizontalScrollbar},

    [Switch]
    ${IntegralHeight},

    [Switch]
    ${MultiColumn},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [Switch]
    ${ScrollAlwaysVisible},

    [System.Int32]
    ${SelectedIndex},

    ${SelectedIndices},

    ${SelectedItem},

    ${SelectedItems},

    [Switch]
    ${Sorted},

    [System.String]
    ${Text},

    [System.Int32]
    ${TopIndex},

    [Switch]
    ${UseTabStops},

    ${CustomTabOffsets},

    ${FormatInfo},

    [System.String]
    ${FormatString},

    [Switch]
    ${FormattingEnabled},

    ${SelectedValue},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataSourceChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DisplayMemberChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemCheck},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DrawItem},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MeasureItem},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueMemberChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Format},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormatInfoChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormatStringChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormattingEnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.CheckedListBox
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
} function New-ColorDialog {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ColorDialog
    .Synopsis
        Creates a new System.Windows.Forms.ColorDialog
    .Example
        New-ColorDialog
    .Example
        New-ColorDialog -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowFullOpen},

    [Switch]
    ${AnyColor},

    ${Color},

    ${CustomColors},

    [Switch]
    ${FullOpen},

    [Switch]
    ${ShowHelp},

    [Switch]
    ${SolidColorOnly},

    ${Tag},

    ${Site},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequest},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ColorDialog
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
} function New-ToolStripDropDown {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ToolStripDropDown
    .Synopsis
        Creates a new System.Windows.Forms.ToolStripDropDown
    .Example
        New-ToolStripDropDown
    .Example
        New-ToolStripDropDown -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowItemReorder},

    [Switch]
    ${AllowTransparency},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoClose},

    [Switch]
    ${CanOverflow},

    ${ContextMenu},

    ${ContextMenuStrip},

    [System.Windows.Forms.ToolStripDropDownDirection]
    ${DefaultDropDownDirection},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${DropShadowEnabled},

    ${Font},

    ${GripMargin},

    [System.Windows.Forms.ToolStripGripStyle]
    ${GripStyle},

    ${Location},

    [System.Double]
    ${Opacity},

    ${OwnerItem},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [Switch]
    ${Stretch},

    [System.Windows.Forms.ToolStripTextDirection]
    ${TextDirection},

    [Switch]
    ${TopLevel},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${Visible},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${AutoScrollPosition},

    [Switch]
    ${AllowDrop},

    [Switch]
    ${AllowMerge},

    ${BackColor},

    ${BindingContext},

    [Switch]
    ${CausesValidation},

    ${Controls},

    ${Cursor},

    ${ForeColor},

    ${ImageScalingSize},

    ${ImageList},

    ${Items},

    ${LayoutSettings},

    [System.Windows.Forms.ToolStripLayoutStyle]
    ${LayoutStyle},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [Switch]
    ${ShowItemToolTips},

    [Switch]
    ${TabStop},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Site},

    ${Size},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Opening},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Opened},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BeginDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EndDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaintGrip},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ToolStripDropDown
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
} function New-ToolStripDropDownMenu {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ToolStripDropDownMenu
    .Synopsis
        Creates a new System.Windows.Forms.ToolStripDropDownMenu
    .Example
        New-ToolStripDropDownMenu
    .Example
        New-ToolStripDropDownMenu -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Forms.ToolStripLayoutStyle]
    ${LayoutStyle},

    [Switch]
    ${ShowImageMargin},

    [Switch]
    ${ShowCheckMargin},

    [Switch]
    ${AllowItemReorder},

    [Switch]
    ${AllowTransparency},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoClose},

    [Switch]
    ${CanOverflow},

    ${ContextMenu},

    ${ContextMenuStrip},

    [System.Windows.Forms.ToolStripDropDownDirection]
    ${DefaultDropDownDirection},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${DropShadowEnabled},

    ${Font},

    ${GripMargin},

    [System.Windows.Forms.ToolStripGripStyle]
    ${GripStyle},

    ${Location},

    [System.Double]
    ${Opacity},

    ${OwnerItem},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [Switch]
    ${Stretch},

    [System.Windows.Forms.ToolStripTextDirection]
    ${TextDirection},

    [Switch]
    ${TopLevel},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${Visible},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${AutoScrollPosition},

    [Switch]
    ${AllowDrop},

    [Switch]
    ${AllowMerge},

    ${BackColor},

    ${BindingContext},

    [Switch]
    ${CausesValidation},

    ${Controls},

    ${Cursor},

    ${ForeColor},

    ${ImageScalingSize},

    ${ImageList},

    ${Items},

    ${LayoutSettings},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [Switch]
    ${ShowItemToolTips},

    [Switch]
    ${TabStop},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Site},

    ${Size},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Opening},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Opened},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BeginDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EndDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaintGrip},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ToolStripDropDownMenu
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
} function New-ContextMenuStrip {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ContextMenuStrip
    .Synopsis
        Creates a new System.Windows.Forms.ContextMenuStrip
    .Example
        New-ContextMenuStrip
    .Example
        New-ContextMenuStrip -OutputXaml
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
        $Object = New-Object System.Windows.Forms.ContextMenuStrip
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
} function New-DataGrid {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DataGrid
    .Synopsis
        Creates a new System.Windows.Forms.DataGrid
    .Example
        New-DataGrid
    .Example
        New-DataGrid -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowSorting},

    ${AlternatingBackColor},

    ${BackColor},

    ${ForeColor},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${CaptionBackColor},

    ${CaptionForeColor},

    ${CaptionFont},

    [System.String]
    ${CaptionText},

    [Switch]
    ${CaptionVisible},

    ${CurrentCell},

    ${SelectionBackColor},

    ${SelectionForeColor},

    ${DataSource},

    [System.String]
    ${DataMember},

    [System.Int32]
    ${CurrentRowIndex},

    ${TableStyles},

    ${GridLineColor},

    [System.Windows.Forms.DataGridLineStyle]
    ${GridLineStyle},

    [System.Windows.Forms.DataGridParentRowsLabelStyle]
    ${ParentRowsLabelStyle},

    [Switch]
    ${FlatMode},

    ${HeaderBackColor},

    ${BackgroundColor},

    ${HeaderFont},

    ${HeaderForeColor},

    ${LinkColor},

    ${LinkHoverColor},

    [Switch]
    ${AllowNavigation},

    ${Cursor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${ParentRowsBackColor},

    ${ParentRowsForeColor},

    [System.Int32]
    ${PreferredColumnWidth},

    [System.Int32]
    ${PreferredRowHeight},

    [Switch]
    ${ReadOnly},

    [Switch]
    ${ColumnHeadersVisible},

    [Switch]
    ${ParentRowsVisible},

    [Switch]
    ${RowHeadersVisible},

    [System.Int32]
    ${RowHeaderWidth},

    [System.String]
    ${Text},

    ${Item},

    ${Site},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CaptionVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentCellChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataSourceChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentRowsLabelStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FlatModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AllowNavigationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ReadOnlyChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentRowsVisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Navigate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackButtonClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ShowParentDetailsButtonClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DataGrid
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
} function New-DataGridTextBox {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DataGridTextBox
    .Synopsis
        Creates a new System.Windows.Forms.DataGridTextBox
    .Example
        New-DataGridTextBox
    .Example
        New-DataGridTextBox -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${IsInEditOrNavigateMode},

    [Switch]
    ${AcceptsReturn},

    [System.Windows.Forms.AutoCompleteMode]
    ${AutoCompleteMode},

    [System.Windows.Forms.AutoCompleteSource]
    ${AutoCompleteSource},

    ${AutoCompleteCustomSource},

    [System.Windows.Forms.CharacterCasing]
    ${CharacterCasing},

    [Switch]
    ${Multiline},

    ${PasswordChar},

    [System.Windows.Forms.ScrollBars]
    ${ScrollBars},

    [System.String]
    ${Text},

    [System.Windows.Forms.HorizontalAlignment]
    ${TextAlign},

    [Switch]
    ${UseSystemPasswordChar},

    [Switch]
    ${AcceptsTab},

    [Switch]
    ${ShortcutsEnabled},

    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${ForeColor},

    [Switch]
    ${HideSelection},

    ${Lines},

    [System.Int32]
    ${MaxLength},

    [Switch]
    ${Modified},

    ${Padding},

    [Switch]
    ${ReadOnly},

    [System.String]
    ${SelectedText},

    [System.Int32]
    ${SelectionLength},

    [System.Int32]
    ${SelectionStart},

    [Switch]
    ${WordWrap},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextAlignChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AcceptsTabChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HideSelectionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ModifiedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MultilineChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ReadOnlyChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DataGridTextBox
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
} function New-DataGridView {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DataGridView
    .Synopsis
        Creates a new System.Windows.Forms.DataGridView
    .Example
        New-DataGridView
    .Example
        New-DataGridView -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowUserToAddRows},

    [Switch]
    ${AllowUserToDeleteRows},

    [Switch]
    ${AllowUserToOrderColumns},

    [Switch]
    ${AllowUserToResizeColumns},

    [Switch]
    ${AllowUserToResizeRows},

    ${AlternatingRowsDefaultCellStyle},

    [Switch]
    ${AutoGenerateColumns},

    [Switch]
    ${AutoSize},

    [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]
    ${AutoSizeColumnsMode},

    [System.Windows.Forms.DataGridViewAutoSizeRowsMode]
    ${AutoSizeRowsMode},

    ${BackColor},

    ${BackgroundColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [System.Windows.Forms.DataGridViewCellBorderStyle]
    ${CellBorderStyle},

    [System.Windows.Forms.DataGridViewClipboardCopyMode]
    ${ClipboardCopyMode},

    [System.Int32]
    ${ColumnCount},

    [System.Windows.Forms.DataGridViewHeaderBorderStyle]
    ${ColumnHeadersBorderStyle},

    ${ColumnHeadersDefaultCellStyle},

    [System.Int32]
    ${ColumnHeadersHeight},

    [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]
    ${ColumnHeadersHeightSizeMode},

    [Switch]
    ${ColumnHeadersVisible},

    ${Columns},

    ${CurrentCell},

    [System.String]
    ${DataMember},

    ${DataSource},

    ${DefaultCellStyle},

    [System.Windows.Forms.DataGridViewEditMode]
    ${EditMode},

    [Switch]
    ${EnableHeadersVisualStyles},

    ${FirstDisplayedCell},

    [System.Int32]
    ${FirstDisplayedScrollingColumnIndex},

    [System.Int32]
    ${FirstDisplayedScrollingRowIndex},

    ${ForeColor},

    ${Font},

    ${GridColor},

    [System.Int32]
    ${HorizontalScrollingOffset},

    [Switch]
    ${MultiSelect},

    ${Padding},

    [Switch]
    ${ReadOnly},

    [System.Int32]
    ${RowCount},

    [System.Windows.Forms.DataGridViewHeaderBorderStyle]
    ${RowHeadersBorderStyle},

    ${RowHeadersDefaultCellStyle},

    [Switch]
    ${RowHeadersVisible},

    [System.Int32]
    ${RowHeadersWidth},

    [System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode]
    ${RowHeadersWidthSizeMode},

    ${Rows},

    ${RowsDefaultCellStyle},

    ${RowTemplate},

    [System.Windows.Forms.ScrollBars]
    ${ScrollBars},

    ${SelectedCells},

    ${SelectedColumns},

    ${SelectedRows},

    [System.Windows.Forms.DataGridViewSelectionMode]
    ${SelectionMode},

    [Switch]
    ${ShowCellErrors},

    [Switch]
    ${ShowCellToolTips},

    [Switch]
    ${ShowEditingIcon},

    [Switch]
    ${ShowRowErrors},

    [Switch]
    ${StandardTab},

    [System.String]
    ${Text},

    ${Item},

    ${TopLeftHeaderCell},

    [Switch]
    ${VirtualMode},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AllowUserToAddRowsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AllowUserToDeleteRowsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AllowUserToOrderColumnsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AllowUserToResizeColumnsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AllowUserToResizeRowsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AlternatingRowsDefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoGenerateColumnsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeColumnsModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeRowsModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellBorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeadersBorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeadersDefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeadersHeightChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeadersHeightSizeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataMemberChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataSourceChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EditModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GridColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MultiSelectChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ReadOnlyChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeadersBorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeadersDefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeadersWidthChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeadersWidthSizeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowsDefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeColumnModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CancelRowEdit},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellBeginEdit},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellContentClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellContentDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellContextMenuStripNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellEndEdit},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellErrorTextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellErrorTextNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellFormatting},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellMouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellPainting},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellParsing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellStateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellStyleContentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellToolTipTextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellToolTipTextNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellValidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellValidating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellValueNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellValuePushed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnDataPropertyNameChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnDefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnDisplayIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnDividerDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnDividerWidthChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeaderMouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeaderMouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnHeaderCellChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnMinimumWidthChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnNameChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnSortModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnStateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnToolTipTextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ColumnWidthChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentCellChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CurrentCellDirtyStateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataBindingComplete},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataError},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DefaultValuesNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EditingControlShowing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_NewRowNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowContextMenuStripNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowDefaultCellStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowDirtyStateNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowDividerDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowDividerHeightChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowErrorTextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowErrorTextNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeaderMouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeaderMouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeaderCellChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeightChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeightInfoNeeded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowHeightInfoPushed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowMinimumHeightChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowPostPaint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowPrePaint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowsAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowsRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowStateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowUnshared},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowValidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RowValidating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SortCompare},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Sorted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_UserAddedRow},

    [System.Management.Automation.ScriptBlock[]]
    ${On_UserDeletedRow},

    [System.Management.Automation.ScriptBlock[]]
    ${On_UserDeletingRow},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DataGridView
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
} function New-DataGridViewComboBoxEditingControl {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DataGridViewComboBoxEditingControl
    .Synopsis
        Creates a new System.Windows.Forms.DataGridViewComboBoxEditingControl
    .Example
        New-DataGridViewComboBoxEditingControl
    .Example
        New-DataGridViewComboBoxEditingControl -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${EditingControlDataGridView},

    ${EditingControlFormattedValue},

    [System.Int32]
    ${EditingControlRowIndex},

    [Switch]
    ${EditingControlValueChanged},

    [System.Windows.Forms.AutoCompleteMode]
    ${AutoCompleteMode},

    [System.Windows.Forms.AutoCompleteSource]
    ${AutoCompleteSource},

    ${AutoCompleteCustomSource},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${DataSource},

    [System.Windows.Forms.DrawMode]
    ${DrawMode},

    [System.Int32]
    ${DropDownWidth},

    [System.Int32]
    ${DropDownHeight},

    [Switch]
    ${DroppedDown},

    [System.Windows.Forms.FlatStyle]
    ${FlatStyle},

    ${ForeColor},

    [Switch]
    ${IntegralHeight},

    [System.Int32]
    ${ItemHeight},

    ${Items},

    [System.Int32]
    ${MaxDropDownItems},

    ${MaximumSize},

    ${MinimumSize},

    [System.Int32]
    ${MaxLength},

    ${Padding},

    [System.Int32]
    ${SelectedIndex},

    ${SelectedItem},

    [System.String]
    ${SelectedText},

    [System.Int32]
    ${SelectionLength},

    [System.Int32]
    ${SelectionStart},

    [Switch]
    ${Sorted},

    [System.Windows.Forms.ComboBoxStyle]
    ${DropDownStyle},

    [System.String]
    ${Text},

    [System.String]
    ${DisplayMember},

    ${FormatInfo},

    [System.String]
    ${FormatString},

    [Switch]
    ${FormattingEnabled},

    [System.String]
    ${ValueMember},

    ${SelectedValue},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DrawItem},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DropDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MeasureItem},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectionChangeCommitted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DropDownStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextUpdate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DropDownClosed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DataSourceChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DisplayMemberChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Format},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormatInfoChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormatStringChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormattingEnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueMemberChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DataGridViewComboBoxEditingControl
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
} function New-DataGridViewTextBoxEditingControl {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DataGridViewTextBoxEditingControl
    .Synopsis
        Creates a new System.Windows.Forms.DataGridViewTextBoxEditingControl
    .Example
        New-DataGridViewTextBoxEditingControl
    .Example
        New-DataGridViewTextBoxEditingControl -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${EditingControlDataGridView},

    ${EditingControlFormattedValue},

    [System.Int32]
    ${EditingControlRowIndex},

    [Switch]
    ${EditingControlValueChanged},

    [Switch]
    ${AcceptsReturn},

    [System.Windows.Forms.AutoCompleteMode]
    ${AutoCompleteMode},

    [System.Windows.Forms.AutoCompleteSource]
    ${AutoCompleteSource},

    ${AutoCompleteCustomSource},

    [System.Windows.Forms.CharacterCasing]
    ${CharacterCasing},

    [Switch]
    ${Multiline},

    ${PasswordChar},

    [System.Windows.Forms.ScrollBars]
    ${ScrollBars},

    [System.String]
    ${Text},

    [System.Windows.Forms.HorizontalAlignment]
    ${TextAlign},

    [Switch]
    ${UseSystemPasswordChar},

    [Switch]
    ${AcceptsTab},

    [Switch]
    ${ShortcutsEnabled},

    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${ForeColor},

    [Switch]
    ${HideSelection},

    ${Lines},

    [System.Int32]
    ${MaxLength},

    [Switch]
    ${Modified},

    ${Padding},

    [Switch]
    ${ReadOnly},

    [System.String]
    ${SelectedText},

    [System.Int32]
    ${SelectionLength},

    [System.Int32]
    ${SelectionStart},

    [Switch]
    ${WordWrap},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextAlignChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AcceptsTabChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HideSelectionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ModifiedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MultilineChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ReadOnlyChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DataGridViewTextBoxEditingControl
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
} function New-DateTimePicker {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DateTimePicker
    .Synopsis
        Creates a new System.Windows.Forms.DateTimePicker
    .Example
        New-DateTimePicker
    .Example
        New-DateTimePicker -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${CalendarForeColor},

    ${CalendarFont},

    ${CalendarTitleBackColor},

    ${CalendarTitleForeColor},

    ${CalendarTrailingForeColor},

    ${CalendarMonthBackground},

    [Switch]
    ${Checked},

    [System.String]
    ${CustomFormat},

    [System.Windows.Forms.LeftRightAlignment]
    ${DropDownAlign},

    ${ForeColor},

    [System.Windows.Forms.DateTimePickerFormat]
    ${Format},

    ${MaxDate},

    ${MinDate},

    ${Padding},

    [Switch]
    ${RightToLeftLayout},

    [Switch]
    ${ShowCheckBox},

    [Switch]
    ${ShowUpDown},

    [System.String]
    ${Text},

    ${Value},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormatChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CloseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DropDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DateTimePicker
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
} function New-DomainUpDown {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.DomainUpDown
    .Synopsis
        Creates a new System.Windows.Forms.DomainUpDown
    .Example
        New-DomainUpDown
    .Example
        New-DomainUpDown -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${Items},

    ${Padding},

    [System.Int32]
    ${SelectedIndex},

    ${SelectedItem},

    [Switch]
    ${Sorted},

    [Switch]
    ${Wrap},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${ForeColor},

    [Switch]
    ${InterceptArrowKeys},

    ${MaximumSize},

    ${MinimumSize},

    [Switch]
    ${ReadOnly},

    [System.String]
    ${Text},

    [System.Windows.Forms.HorizontalAlignment]
    ${TextAlign},

    [System.Windows.Forms.LeftRightAlignment]
    ${UpDownAlign},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollPosition},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedItemChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.DomainUpDown
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
} function New-Panel {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.Panel
    .Synopsis
        Creates a new System.Windows.Forms.Panel
    .Example
        New-Panel
    .Example
        New-Panel -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoSize},

    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.Panel
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
} function New-FlowLayoutPanel {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.FlowLayoutPanel
    .Synopsis
        Creates a new System.Windows.Forms.FlowLayoutPanel
    .Example
        New-FlowLayoutPanel
    .Example
        New-FlowLayoutPanel -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Forms.FlowDirection]
    ${FlowDirection},

    [Switch]
    ${WrapContents},

    [Switch]
    ${AutoSize},

    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.FlowLayoutPanel
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
} function New-FolderBrowserDialog {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.FolderBrowserDialog
    .Synopsis
        Creates a new System.Windows.Forms.FolderBrowserDialog
    .Example
        New-FolderBrowserDialog
    .Example
        New-FolderBrowserDialog -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${ShowNewFolderButton},

    [System.String]
    ${SelectedPath},

    [System.Environment+SpecialFolder]
    ${RootFolder},

    [System.String]
    ${Description},

    ${Tag},

    ${Site},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequest},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.FolderBrowserDialog
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
} function New-FontDialog {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.FontDialog
    .Synopsis
        Creates a new System.Windows.Forms.FontDialog
    .Example
        New-FontDialog
    .Example
        New-FontDialog -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowSimulations},

    [Switch]
    ${AllowVectorFonts},

    [Switch]
    ${AllowVerticalFonts},

    [Switch]
    ${AllowScriptChange},

    ${Color},

    [Switch]
    ${FixedPitchOnly},

    ${Font},

    [Switch]
    ${FontMustExist},

    [System.Int32]
    ${MaxSize},

    [System.Int32]
    ${MinSize},

    [Switch]
    ${ScriptsOnly},

    [Switch]
    ${ShowApply},

    [Switch]
    ${ShowColor},

    [Switch]
    ${ShowEffects},

    [Switch]
    ${ShowHelp},

    ${Tag},

    ${Site},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Apply},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequest},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.FontDialog
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
} function New-Form {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.Form
    .Synopsis
        Creates a new System.Windows.Forms.Form
    .Example
        New-Form
    .Example
        New-Form -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${AcceptButton},

    [Switch]
    ${AllowTransparency},

    [Switch]
    ${AutoScale},

    ${AutoScaleBaseSize},

    [Switch]
    ${AutoScroll},

    [Switch]
    ${AutoSize},

    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BackColor},

    [System.Windows.Forms.FormBorderStyle]
    ${FormBorderStyle},

    ${CancelButton},

    ${ClientSize},

    [Switch]
    ${ControlBox},

    ${DesktopBounds},

    ${DesktopLocation},

    [System.Windows.Forms.DialogResult]
    ${DialogResult},

    [Switch]
    ${HelpButton},

    ${Icon},

    [Switch]
    ${IsMdiContainer},

    [Switch]
    ${KeyPreview},

    ${Location},

    ${MaximumSize},

    ${MainMenuStrip},

    ${Margin},

    ${Menu},

    ${MinimumSize},

    [Switch]
    ${MaximizeBox},

    ${MdiChildren},

    ${MdiParent},

    [Switch]
    ${MinimizeBox},

    [System.Double]
    ${Opacity},

    ${OwnedForms},

    ${Owner},

    [Switch]
    ${RightToLeftLayout},

    [Switch]
    ${ShowInTaskbar},

    [Switch]
    ${ShowIcon},

    ${Size},

    [System.Windows.Forms.SizeGripStyle]
    ${SizeGripStyle},

    [System.Windows.Forms.FormStartPosition]
    ${StartPosition},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [Switch]
    ${TopLevel},

    [Switch]
    ${TopMost},

    ${TransparencyKey},

    [System.Windows.Forms.FormWindowState]
    ${WindowState},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpButtonClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MaximizedBoundsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MaximumSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MinimumSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Activated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Deactivate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormClosing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormClosed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Load},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MdiChildActivate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MenuComplete},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MenuStart},

    [System.Management.Automation.ScriptBlock[]]
    ${On_InputLanguageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_InputLanguageChanging},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Shown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ResizeBegin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ResizeEnd},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.Form
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
} function New-HScrollBar {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.HScrollBar
    .Synopsis
        Creates a new System.Windows.Forms.HScrollBar
    .Example
        New-HScrollBar
    .Example
        New-HScrollBar -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${ForeColor},

    ${Font},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Int32]
    ${LargeChange},

    [System.Int32]
    ${Maximum},

    [System.Int32]
    ${Minimum},

    [System.Int32]
    ${SmallChange},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [System.Int32]
    ${Value},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.HScrollBar
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
} function New-LinkLabel {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.LinkLabel
    .Synopsis
        Creates a new System.Windows.Forms.LinkLabel
    .Example
        New-LinkLabel
    .Example
        New-LinkLabel -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${ActiveLinkColor},

    ${DisabledLinkColor},

    [System.Windows.Forms.FlatStyle]
    ${FlatStyle},

    ${LinkArea},

    [System.Windows.Forms.LinkBehavior]
    ${LinkBehavior},

    ${LinkColor},

    ${Links},

    [Switch]
    ${LinkVisited},

    [System.String]
    ${Text},

    ${Padding},

    ${VisitedLinkColor},

    [Switch]
    ${UseCompatibleTextRendering},

    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoEllipsis},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${Image},

    [System.Int32]
    ${ImageIndex},

    [System.String]
    ${ImageKey},

    ${ImageList},

    [System.Drawing.ContentAlignment]
    ${ImageAlign},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [Switch]
    ${TabStop},

    [System.Drawing.ContentAlignment]
    ${TextAlign},

    [Switch]
    ${UseMnemonic},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackColor},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LinkClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextAlignChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.LinkLabel
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
} function New-MaskedTextBox {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.MaskedTextBox
    .Synopsis
        Creates a new System.Windows.Forms.MaskedTextBox
    .Example
        New-MaskedTextBox
    .Example
        New-MaskedTextBox -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AcceptsTab},

    [Switch]
    ${AllowPromptAsInput},

    [Switch]
    ${AsciiOnly},

    [Switch]
    ${BeepOnError},

    ${Culture},

    [System.Windows.Forms.MaskFormat]
    ${CutCopyMaskFormat},

    ${FormatProvider},

    [Switch]
    ${HidePromptOnLeave},

    [System.Windows.Forms.InsertKeyMode]
    ${InsertKeyMode},

    ${Lines},

    [System.String]
    ${Mask},

    [System.Int32]
    ${MaxLength},

    [Switch]
    ${Multiline},

    ${PasswordChar},

    ${PromptChar},

    [Switch]
    ${ReadOnly},

    [Switch]
    ${RejectInputOnFirstFailure},

    [Switch]
    ${ResetOnPrompt},

    [Switch]
    ${ResetOnSpace},

    [Switch]
    ${SkipLiterals},

    [System.String]
    ${SelectedText},

    [System.String]
    ${Text},

    [System.Windows.Forms.HorizontalAlignment]
    ${TextAlign},

    [System.Windows.Forms.MaskFormat]
    ${TextMaskFormat},

    [Switch]
    ${UseSystemPasswordChar},

    ${ValidatingType},

    [Switch]
    ${WordWrap},

    [Switch]
    ${ShortcutsEnabled},

    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${ForeColor},

    [Switch]
    ${HideSelection},

    [Switch]
    ${Modified},

    ${Padding},

    [System.Int32]
    ${SelectionLength},

    [System.Int32]
    ${SelectionStart},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AcceptsTabChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_IsOverwriteModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MaskChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MaskInputRejected},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MultilineChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextAlignChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TypeValidationCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BorderStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HideSelectionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ModifiedChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ReadOnlyChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.MaskedTextBox
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
} function New-MdiClient {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.MdiClient
    .Synopsis
        Creates a new System.Windows.Forms.MdiClient
    .Example
        New-MdiClient
    .Example
        New-MdiClient -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${MdiChildren},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BackColor},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.MdiClient
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
} function New-MenuStrip {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.MenuStrip
    .Synopsis
        Creates a new System.Windows.Forms.MenuStrip
    .Example
        New-MenuStrip
    .Example
        New-MenuStrip -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${CanOverflow},

    [System.Windows.Forms.ToolStripGripStyle]
    ${GripStyle},

    [Switch]
    ${ShowItemToolTips},

    [Switch]
    ${Stretch},

    ${MdiWindowListItem},

    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${AutoScrollPosition},

    [Switch]
    ${AllowDrop},

    [Switch]
    ${AllowItemReorder},

    [Switch]
    ${AllowMerge},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${BackColor},

    ${BindingContext},

    [Switch]
    ${CausesValidation},

    ${Controls},

    ${Cursor},

    ${Font},

    [System.Windows.Forms.ToolStripDropDownDirection]
    ${DefaultDropDownDirection},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    ${ForeColor},

    ${GripMargin},

    ${ImageScalingSize},

    ${ImageList},

    ${Items},

    ${LayoutSettings},

    [System.Windows.Forms.ToolStripLayoutStyle]
    ${LayoutStyle},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [Switch]
    ${TabStop},

    [System.Windows.Forms.ToolStripTextDirection]
    ${TextDirection},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MenuActivate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MenuDeactivate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BeginDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EndDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaintGrip},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.MenuStrip
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
} function New-MonthCalendar {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.MonthCalendar
    .Synopsis
        Creates a new System.Windows.Forms.MonthCalendar
    .Example
        New-MonthCalendar
    .Example
        New-MonthCalendar -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${AnnuallyBoldedDates},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BoldedDates},

    ${CalendarDimensions},

    [System.Windows.Forms.Day]
    ${FirstDayOfWeek},

    ${ForeColor},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    ${MaxDate},

    [System.Int32]
    ${MaxSelectionCount},

    ${MinDate},

    ${MonthlyBoldedDates},

    ${Padding},

    [Switch]
    ${RightToLeftLayout},

    [System.Int32]
    ${ScrollChange},

    ${SelectionEnd},

    ${SelectionStart},

    ${SelectionRange},

    [Switch]
    ${ShowToday},

    [Switch]
    ${ShowTodayCircle},

    [Switch]
    ${ShowWeekNumbers},

    ${Size},

    [System.String]
    ${Text},

    ${TodayDate},

    ${TitleBackColor},

    ${TitleForeColor},

    ${TrailingForeColor},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DateSelected},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.MonthCalendar
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
} function New-NumericUpDown {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.NumericUpDown
    .Synopsis
        Creates a new System.Windows.Forms.NumericUpDown
    .Example
        New-NumericUpDown
    .Example
        New-NumericUpDown -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Int32]
    ${DecimalPlaces},

    [Switch]
    ${Hexadecimal},

    ${Increment},

    ${Maximum},

    ${Minimum},

    ${Padding},

    [System.String]
    ${Text},

    [Switch]
    ${ThousandsSeparator},

    ${Value},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${ForeColor},

    [Switch]
    ${InterceptArrowKeys},

    ${MaximumSize},

    ${MinimumSize},

    [Switch]
    ${ReadOnly},

    [System.Windows.Forms.HorizontalAlignment]
    ${TextAlign},

    [System.Windows.Forms.LeftRightAlignment]
    ${UpDownAlign},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollPosition},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.NumericUpDown
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
} function New-PictureBox {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.PictureBox
    .Synopsis
        Creates a new System.Windows.Forms.PictureBox
    .Example
        New-PictureBox
    .Example
        New-PictureBox -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [Switch]
    ${CausesValidation},

    ${ErrorImage},

    ${ForeColor},

    ${Font},

    ${Image},

    [System.String]
    ${ImageLocation},

    ${InitialImage},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [System.Windows.Forms.PictureBoxSizeMode]
    ${SizeMode},

    [Switch]
    ${TabStop},

    [System.Int32]
    ${TabIndex},

    [System.String]
    ${Text},

    [Switch]
    ${WaitOnLoad},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    ${Site},

    ${Size},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LoadCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LoadProgressChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.PictureBox
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
} function New-PropertyGrid {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.PropertyGrid
    .Synopsis
        Creates a new System.Windows.Forms.PropertyGrid
    .Example
        New-PropertyGrid
    .Example
        New-PropertyGrid -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoScroll},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BrowsableAttributes},

    ${CategoryForeColor},

    ${CommandsBackColor},

    ${CommandsForeColor},

    ${CommandsLinkColor},

    ${CommandsActiveLinkColor},

    ${CommandsDisabledLinkColor},

    [Switch]
    ${CommandsVisibleIfAvailable},

    ${Controls},

    ${ForeColor},

    ${HelpBackColor},

    ${HelpForeColor},

    [Switch]
    ${HelpVisible},

    ${LineColor},

    ${Padding},

    [System.Windows.Forms.PropertySort]
    ${PropertySort},

    ${SelectedObject},

    ${SelectedObjects},

    ${SelectedGridItem},

    ${Site},

    [System.String]
    ${Text},

    [Switch]
    ${LargeButtons},

    [Switch]
    ${ToolbarVisible},

    ${ViewBackColor},

    ${ViewForeColor},

    [Switch]
    ${UseCompatibleTextRendering},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PropertyValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PropertyTabChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PropertySortChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedGridItemChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SelectedObjectsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.PropertyGrid
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
} function New-SplitContainer {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.SplitContainer
    .Synopsis
        Creates a new System.Windows.Forms.SplitContainer
    .Example
        New-SplitContainer
    .Example
        New-SplitContainer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoScroll},

    ${AutoScrollOffset},

    ${AutoScrollMinSize},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    [Switch]
    ${AutoSize},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    ${Controls},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [System.Windows.Forms.FixedPanel]
    ${FixedPanel},

    [Switch]
    ${IsSplitterFixed},

    [System.Windows.Forms.Orientation]
    ${Orientation},

    ${Padding},

    [Switch]
    ${Panel1Collapsed},

    [Switch]
    ${Panel2Collapsed},

    [System.Int32]
    ${Panel1MinSize},

    [System.Int32]
    ${Panel2MinSize},

    [System.Int32]
    ${SplitterDistance},

    [System.Int32]
    ${SplitterIncrement},

    [System.Int32]
    ${SplitterWidth},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${ActiveControl},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${BackColor},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Cursor},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SplitterMoving},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SplitterMoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.SplitContainer
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
} function New-Splitter {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.Splitter
    .Synopsis
        Creates a new System.Windows.Forms.Splitter
    .Example
        New-Splitter
    .Example
        New-Splitter -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AllowDrop},

    ${ForeColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Font},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Int32]
    ${MinExtra},

    [System.Int32]
    ${MinSize},

    [System.Int32]
    ${SplitPosition},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BackColor},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SplitterMoving},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SplitterMoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.Splitter
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
} function New-StatusStrip {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.StatusStrip
    .Synopsis
        Creates a new System.Windows.Forms.StatusStrip
    .Example
        New-StatusStrip
    .Example
        New-StatusStrip -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${CanOverflow},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [System.Windows.Forms.ToolStripGripStyle]
    ${GripStyle},

    [System.Windows.Forms.ToolStripLayoutStyle]
    ${LayoutStyle},

    ${Padding},

    [Switch]
    ${ShowItemToolTips},

    [Switch]
    ${SizingGrip},

    [Switch]
    ${Stretch},

    [Switch]
    ${AutoSize},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${AutoScrollPosition},

    [Switch]
    ${AllowDrop},

    [Switch]
    ${AllowItemReorder},

    [Switch]
    ${AllowMerge},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${BackColor},

    ${BindingContext},

    [Switch]
    ${CausesValidation},

    ${Controls},

    ${Cursor},

    ${Font},

    [System.Windows.Forms.ToolStripDropDownDirection]
    ${DefaultDropDownDirection},

    ${ForeColor},

    ${GripMargin},

    ${ImageScalingSize},

    ${ImageList},

    ${Items},

    ${LayoutSettings},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [Switch]
    ${TabStop},

    [System.Windows.Forms.ToolStripTextDirection]
    ${TextDirection},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BeginDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EndDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ItemRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutCompleted},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LayoutStyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaintGrip},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.StatusStrip
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
} function New-TableLayoutPanel {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.TableLayoutPanel
    .Synopsis
        Creates a new System.Windows.Forms.TableLayoutPanel
    .Example
        New-TableLayoutPanel
    .Example
        New-TableLayoutPanel -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${LayoutSettings},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [System.Windows.Forms.TableLayoutPanelCellBorderStyle]
    ${CellBorderStyle},

    ${Controls},

    [System.Int32]
    ${ColumnCount},

    [System.Windows.Forms.TableLayoutPanelGrowStyle]
    ${GrowStyle},

    [System.Int32]
    ${RowCount},

    ${RowStyles},

    ${ColumnStyles},

    [Switch]
    ${AutoSize},

    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CellPaint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.TableLayoutPanel
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
} function New-TabPage {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.TabPage
    .Synopsis
        Creates a new System.Windows.Forms.TabPage
    .Example
        New-TabPage
    .Example
        New-TabPage -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    [Switch]
    ${AutoSize},

    ${BackColor},

    [System.Int32]
    ${ImageIndex},

    [System.String]
    ${ImageKey},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [Switch]
    ${UseVisualStyleBackColor},

    ${Location},

    ${MaximumSize},

    ${MinimumSize},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [System.String]
    ${ToolTipText},

    [Switch]
    ${Visible},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollPosition},

    ${AutoScrollMinSize},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Margin},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.TabPage
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
} function New-ToolStripContainer {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ToolStripContainer
    .Synopsis
        Creates a new System.Windows.Forms.ToolStripContainer
    .Example
        New-ToolStripContainer
    .Example
        New-ToolStripContainer -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [Switch]
    ${BottomToolStripPanelVisible},

    [Switch]
    ${CausesValidation},

    ${ContextMenuStrip},

    ${Cursor},

    ${ForeColor},

    [Switch]
    ${LeftToolStripPanelVisible},

    [Switch]
    ${RightToolStripPanelVisible},

    [Switch]
    ${TopToolStripPanelVisible},

    ${Controls},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollPosition},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.String]
    ${Text},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ToolStripContainer
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
} function New-ToolStripContentPanel {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ToolStripContentPanel
    .Synopsis
        Creates a new System.Windows.Forms.ToolStripContentPanel
    .Example
        New-ToolStripContentPanel
    .Example
        New-ToolStripContentPanel -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    [Switch]
    ${AutoSize},

    ${BackColor},

    [Switch]
    ${CausesValidation},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    ${Location},

    ${MinimumSize},

    ${MaximumSize},

    [System.String]
    ${Name},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    [System.Windows.Forms.BorderStyle]
    ${BorderStyle},

    [System.String]
    ${Text},

    ${AutoScrollPosition},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    ${AutoScrollOffset},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Margin},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Load},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ToolStripContentPanel
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
} function New-ToolStripPanel {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.ToolStripPanel
    .Synopsis
        Creates a new System.Windows.Forms.ToolStripPanel
    .Example
        New-ToolStripPanel
    .Example
        New-ToolStripPanel -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowDrop},

    [Switch]
    ${AutoScroll},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    [Switch]
    ${AutoSize},

    ${RowMargin},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Locked},

    [System.Windows.Forms.Orientation]
    ${Orientation},

    ${Renderer},

    [System.Windows.Forms.ToolStripRenderMode]
    ${RenderMode},

    ${Rows},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollPosition},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RendererChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.ToolStripPanel
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
} function New-TrackBar {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.TrackBar
    .Synopsis
        Creates a new System.Windows.Forms.TrackBar
    .Example
        New-TrackBar
    .Example
        New-TrackBar -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AutoSize},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${Font},

    ${ForeColor},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Int32]
    ${LargeChange},

    [System.Int32]
    ${Maximum},

    [System.Int32]
    ${Minimum},

    [System.Windows.Forms.Orientation]
    ${Orientation},

    ${Padding},

    [Switch]
    ${RightToLeftLayout},

    [System.Int32]
    ${SmallChange},

    [System.String]
    ${Text},

    [System.Windows.Forms.TickStyle]
    ${TickStyle},

    [System.Int32]
    ${TickFrequency},

    [System.Int32]
    ${Value},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BackColor},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.TrackBar
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
} function New-VScrollBar {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.VScrollBar
    .Synopsis
        Creates a new System.Windows.Forms.VScrollBar
    .Example
        New-VScrollBar
    .Example
        New-VScrollBar -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [Switch]
    ${AutoSize},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${ForeColor},

    ${Font},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Int32]
    ${LargeChange},

    [System.Int32]
    ${Maximum},

    [System.Int32]
    ${Minimum},

    [System.Int32]
    ${SmallChange},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [System.Int32]
    ${Value},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    ${AutoScrollOffset},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ValueChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.VScrollBar
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
} function New-PageSetupDialog {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.PageSetupDialog
    .Synopsis
        Creates a new System.Windows.Forms.PageSetupDialog
    .Example
        New-PageSetupDialog
    .Example
        New-PageSetupDialog -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${AllowMargins},

    [Switch]
    ${AllowOrientation},

    [Switch]
    ${AllowPaper},

    [Switch]
    ${AllowPrinter},

    ${Document},

    [Switch]
    ${EnableMetric},

    ${MinMargins},

    ${PageSettings},

    ${PrinterSettings},

    [Switch]
    ${ShowHelp},

    [Switch]
    ${ShowNetwork},

    ${Tag},

    ${Site},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequest},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.PageSetupDialog
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
} function New-PrintPreviewControl {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.PrintPreviewControl
    .Synopsis
        Creates a new System.Windows.Forms.PrintPreviewControl
    .Example
        New-PrintPreviewControl
    .Example
        New-PrintPreviewControl -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    [Switch]
    ${UseAntiAlias},

    [Switch]
    ${AutoZoom},

    ${Document},

    [System.Int32]
    ${Columns},

    [System.Int32]
    ${Rows},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [System.String]
    ${Text},

    [System.Int32]
    ${StartPage},

    [System.Double]
    ${Zoom},

    [System.String]
    ${AccessibleDefaultActionDescription},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [Switch]
    ${AllowDrop},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${AutoSize},

    ${AutoScrollOffset},

    ${BackColor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    ${BindingContext},

    ${Bounds},

    [Switch]
    ${Capture},

    [Switch]
    ${CausesValidation},

    ${ClientSize},

    ${ContextMenu},

    ${ContextMenuStrip},

    ${Controls},

    ${Cursor},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    [Switch]
    ${Enabled},

    ${Font},

    ${ForeColor},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    ${Location},

    ${Margin},

    ${MaximumSize},

    ${MinimumSize},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    ${Site},

    ${Size},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TabStop},

    ${Tag},

    [System.Int32]
    ${Top},

    [Switch]
    ${UseWaitCursor},

    [Switch]
    ${Visible},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    ${Padding},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StartPageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.PrintPreviewControl
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
} function New-PrintPreviewDialog {
    
    <#
    
    .Description
        Creates a new System.Windows.Forms.PrintPreviewDialog
    .Synopsis
        Creates a new System.Windows.Forms.PrintPreviewDialog
    .Example
        New-PrintPreviewDialog
    .Example
        New-PrintPreviewDialog -OutputXaml
    .Parameter OutputXaml
        If Set, will output the object as XAML instead of creating it
    #>

    
    
    param(
        
    ${AcceptButton},

    [Switch]
    ${AutoScale},

    [Switch]
    ${AutoScroll},

    [Switch]
    ${AutoSize},

    [System.Windows.Forms.AutoValidate]
    ${AutoValidate},

    ${BackColor},

    ${CancelButton},

    [Switch]
    ${ControlBox},

    ${ContextMenuStrip},

    [System.Windows.Forms.FormBorderStyle]
    ${FormBorderStyle},

    [Switch]
    ${HelpButton},

    ${Icon},

    [Switch]
    ${IsMdiContainer},

    [Switch]
    ${KeyPreview},

    ${MaximumSize},

    [Switch]
    ${MaximizeBox},

    ${Margin},

    ${Menu},

    ${MinimumSize},

    ${Padding},

    ${Size},

    [System.Windows.Forms.FormStartPosition]
    ${StartPosition},

    [Switch]
    ${TopMost},

    ${TransparencyKey},

    [Switch]
    ${UseWaitCursor},

    [System.Windows.Forms.FormWindowState]
    ${WindowState},

    [System.Windows.Forms.AccessibleRole]
    ${AccessibleRole},

    [System.String]
    ${AccessibleDescription},

    [System.String]
    ${AccessibleName},

    [Switch]
    ${CausesValidation},

    [Switch]
    ${Enabled},

    ${Location},

    ${Tag},

    [Switch]
    ${AllowDrop},

    ${Cursor},

    ${BackgroundImage},

    [System.Windows.Forms.ImageLayout]
    ${BackgroundImageLayout},

    [System.Windows.Forms.ImeMode]
    ${ImeMode},

    ${AutoScrollMargin},

    ${AutoScrollMinSize},

    [System.Windows.Forms.AnchorStyles]
    ${Anchor},

    [Switch]
    ${Visible},

    ${ForeColor},

    [System.Windows.Forms.RightToLeft]
    ${RightToLeft},

    [Switch]
    ${RightToLeftLayout},

    [Switch]
    ${TabStop},

    [System.String]
    ${Text},

    [System.Windows.Forms.DockStyle]
    ${Dock},

    ${Font},

    ${ContextMenu},

    [Switch]
    ${UseAntiAlias},

    ${AutoScaleBaseSize},

    ${Document},

    [Switch]
    ${MinimizeBox},

    [System.Double]
    ${Opacity},

    [Switch]
    ${ShowInTaskbar},

    [System.Windows.Forms.SizeGripStyle]
    ${SizeGripStyle},

    [Switch]
    ${AllowTransparency},

    [System.Windows.Forms.AutoSizeMode]
    ${AutoSizeMode},

    ${ClientSize},

    ${DesktopBounds},

    ${DesktopLocation},

    [System.Windows.Forms.DialogResult]
    ${DialogResult},

    ${MainMenuStrip},

    ${MdiChildren},

    ${MdiParent},

    ${OwnedForms},

    ${Owner},

    [Switch]
    ${ShowIcon},

    [System.Int32]
    ${TabIndex},

    [Switch]
    ${TopLevel},

    ${AutoScaleDimensions},

    [System.Windows.Forms.AutoScaleMode]
    ${AutoScaleMode},

    ${BindingContext},

    ${ActiveControl},

    ${AutoScrollPosition},

    [System.String]
    ${AccessibleDefaultActionDescription},

    ${AutoScrollOffset},

    ${Bounds},

    [Switch]
    ${Capture},

    ${Controls},

    [System.Int32]
    ${Height},

    [Switch]
    ${IsAccessible},

    [System.Int32]
    ${Left},

    [System.String]
    ${Name},

    ${Parent},

    ${Region},

    ${Site},

    [System.Int32]
    ${Top},

    [System.Int32]
    ${Width},

    ${WindowTarget},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_AutoValidateChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuStripChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MaximumSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MarginChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MinimumSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PaddingChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CausesValidationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_EnabledChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LocationChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_CursorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BackgroundImageLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ImeModeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_VisibleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ForeColorChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RightToLeftLayoutChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabStopChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DockChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FontChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ContextMenuChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpButtonClicked},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MaximizedBoundsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_TabIndexChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Activated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Closed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Deactivate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormClosing},

    [System.Management.Automation.ScriptBlock[]]
    ${On_FormClosed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Load},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MdiChildActivate},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MenuComplete},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MenuStart},

    [System.Management.Automation.ScriptBlock[]]
    ${On_InputLanguageChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_InputLanguageChanging},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Shown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ResizeBegin},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ResizeEnd},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Scroll},

    [System.Management.Automation.ScriptBlock[]]
    ${On_BindingContextChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ClientSizeChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_RegionChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Click},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlAdded},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ControlRemoved},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragDrop},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragOver},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DragLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GiveFeedback},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleCreated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HandleDestroyed},

    [System.Management.Automation.ScriptBlock[]]
    ${On_HelpRequested},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Invalidated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Paint},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryContinueDrag},

    [System.Management.Automation.ScriptBlock[]]
    ${On_QueryAccessibilityHelp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_DoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Enter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_GotFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyPress},

    [System.Management.Automation.ScriptBlock[]]
    ${On_KeyUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Layout},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Leave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_LostFocus},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDoubleClick},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseCaptureChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseEnter},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseLeave},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseHover},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseMove},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseUp},

    [System.Management.Automation.ScriptBlock[]]
    ${On_MouseWheel},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Move},

    [System.Management.Automation.ScriptBlock[]]
    ${On_PreviewKeyDown},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Resize},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ChangeUICues},

    [System.Management.Automation.ScriptBlock[]]
    ${On_StyleChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_SystemColorsChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validating},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Validated},

    [System.Management.Automation.ScriptBlock[]]
    ${On_ParentChanged},

    [System.Management.Automation.ScriptBlock[]]
    ${On_Disposed},

    [Switch]
    ${OutputXaml}
    )
    begin {
        
    }
    process {
        
        try {
        $Object = New-Object System.Windows.Forms.PrintPreviewDialog
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