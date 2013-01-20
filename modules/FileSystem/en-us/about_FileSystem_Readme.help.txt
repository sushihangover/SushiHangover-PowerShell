
NAME
    Get-FreeDiskSpace
    
SYNOPSIS
    Gets the free disk space on logical drives
    of the local computer or a remote computer.
    
    
SYNTAX
    Get-FreeDiskSpace [-Drive <Object>] [-SampleInterval <Int32>] [-MaxSamples 
    <Int64>] [-Continuous] [-ComputerName <String[]>] [<CommonParameters>]
    
    
DESCRIPTION
    Gets the performance counters values for free disk space,
    both in megabytes and as a percentage for all or selected
    logical drives of the local computer or a remote computer.
    

RELATED LINKS
    Get-Counter 

REMARKS
    To see the examples, type: "get-help Get-FreeDiskSpace -examples".
    For more information, type: "get-help Get-FreeDiskSpace -detailed".
    For technical information, type: "get-help Get-FreeDiskSpace -full".

NAME
    New-Zip
    
SYNOPSIS
    Creates a new zip archive.
    
    
SYNTAX
    New-Zip [-Path] <String> [-PassThru] [-Force] [<CommonParameters>]
    
    
DESCRIPTION
    The New-Zip function creates a ZIP archive file (.zip)
    with no contents (no compressed files). To add files to
    the ZIP archive, use the Copy-ToZip function.
    

RELATED LINKS
    Copy-ToZip 

REMARKS
    To see the examples, type: "get-help New-Zip -examples".
    For more information, type: "get-help New-Zip -detailed".
    For technical information, type: "get-help New-Zip -full".

NAME
    Resolve-ShortcutFile
    
SYNOPSIS
    Resolves an Internet shortcut file to the web site the shortcut references
    
    
SYNTAX
    Resolve-ShortcutFile [[-Filename] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Parses an Internet shortcut file and returns a property bag containing the
    shortcut file and the URL it resolves to.
    

RELATED LINKS
    Get-Content 
    Get-Item 
    Select-Object 
    Where-Object 

REMARKS
    To see the examples, type: "get-help Resolve-ShortcutFile -examples".
    For more information, type: "get-help Resolve-ShortcutFile -detailed".
    For technical information, type: "get-help Resolve-ShortcutFile -full".

NAME
    Mount-SpecialFolder
    
SYNOPSIS
    Creates a PSDrive for special folders in the system.
    
    
SYNTAX
    Mount-SpecialFolder [[-Folder] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    The Mount-SpecialFolder function creates a Windows
    PowerShell drive (PSDrive) for a specified special
    folder or all special folders in the system.
    
    The Mount-SpecialFolder function is run automatically
    when you import the FileSystem module. To see the PSDrives
    in your session, type "get-psdrive".
    

RELATED LINKS
     http://blogs.msdn.com/powershell/archive/2008/12/13/explore-your-environme
    nt.aspx
     http://msdn.microsoft.com/en-us/library/system.environment.specialfolder.a
    spx
    Get-PSDrive 
    New-PSDrive 
    Remove-PSDrive 

REMARKS
    To see the examples, type: "get-help Mount-SpecialFolder -examples".
    For more information, type: "get-help Mount-SpecialFolder -detailed".
    For technical information, type: "get-help Mount-SpecialFolder -full".

NAME
    Start-FileSystemWatcher
    
SYNOPSIS
    Starts monitoring for file changes
    
    
SYNTAX
    Start-FileSystemWatcher [-File] <String> [-Filter <String>] [-Recurse] [-On
     <String[]>] [-Do <ScriptBlock[]>] [<CommonParameters>]
    
    
DESCRIPTION
    Starts monitoring for file changes using the events on IO.FileSystemWatcher
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Start-FileSystemWatcher -examples".
    For more information, type: "get-help Start-FileSystemWatcher -detailed".
    For technical information, type: "get-help Start-FileSystemWatcher -full".

NAME
    Get-DuplicateFile
    
SYNOPSIS
    Finds files that have identical file contents.
    
    
SYNTAX
    Get-DuplicateFile [[-Directory] <String>] [-Recurse] [-HideProgress] [<Comm
    onParameters>]
    
    
DESCRIPTION
    The Get-DuplicateFile function detects files in a drive
    or directory that have identical file content by comparing
    an SHA1 cryptographic hash of the file contents.
    

RELATED LINKS
    Get-SHA1 

REMARKS
    To see the examples, type: "get-help Get-DuplicateFile -examples".
    For more information, type: "get-help Get-DuplicateFile -detailed".
    For technical information, type: "get-help Get-DuplicateFile -full".

NAME
    Rename-Drive
    
SYNOPSIS
    Renames a file system drive.
    
    
SYNTAX
    Rename-Drive [[-Drive] <String>] [[-Name] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    The Rename-Drive function provides a new volume name for
    a drive on the local computer. 
    
    To use this function, start Windows PowerShell with the "Run as
    administrator" option.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Rename-Drive -examples".
    For more information, type: "get-help Rename-Drive -detailed".
    For technical information, type: "get-help Rename-Drive -full".

NAME
    Get-SHA1
    
SYNOPSIS
    Computes the SHA1 hash of the specified file.
    
    
SYNTAX
    Get-SHA1 [[-File] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    The Get-SHA1 function creates a cryptographic hash of the file
    specified in the File parameter by using the SHA1 method.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Get-SHA1 -examples".
    For more information, type: "get-help Get-SHA1 -detailed".
    For technical information, type: "get-help Get-SHA1 -full".

NAME
    Copy-ToZip
    
SYNOPSIS
    Compresses files and adds them to a ZIP file.
    
    
SYNTAX
    Copy-ToZip [-File] <String> [-ZipFile] <String> [-HideProgress] [-Force] [<
    CommonParameters>]
    
    
DESCRIPTION
    The Copy-ToZip function compresses files and
    adds the compressed files to a ZIP archive file. 
    
    If the ZIP file does not exist, this function
    creates it. You can also use this function to add
    compressed files to a ZIP file that you create by
    using the New-Zip function.
    

RELATED LINKS
    New-Zip 

REMARKS
    To see the examples, type: "get-help Copy-ToZip -examples".
    For more information, type: "get-help Copy-ToZip -detailed".
    For technical information, type: "get-help Copy-ToZip -full".



