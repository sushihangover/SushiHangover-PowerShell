Set-StrictMode –Version latest
function Install-WindowsUpdates {
    <#
    .SYNOPSIS
        Get and optionally install Windows Updates
    .DESCRIPTION
        This script will get all available udpates for the computer it is run on. 
        It will then optionally install those updates, provided they do not require 
        user input.
        
        This script was based off the original vbs that appeared on the MSDN site.
        Please see the Related Links section for the URL.
        
        Without any parameters the script will return the title of each update that
        is currently available.
    .PARAMETER Install
        When present the script will download and install each update. If the EulaAccept
        param has not been passed, only updates that don't have a Eula will be applied.
    .PARAMETER EulaAccept
        When present will allow the script to download and install all updates that are
        currently available.
    .EXAMPLE
        C:\PS>Install-WindowsUpdates -ListOnly

        UninstallationNotes :
        Title               : Definition Update for Windows Defender - KB2267602 (Definition 1.143.401.0)
        Description         : Install this update to revise the definition files that are used to detect viruses, spyware, and
                                other potentially unwanted software. Once you have installed this item, it cannot be removed.
        SupportUrl          : http://go.microsoft.com/fwlink/?LinkId=52661
        RebootRequired      : False
    .EXAMPLE
        C:\PS>Install-WindowsUpdates -WhatIf
        What if: Performing operation "Install-WindowsUpdates" on Target "Download 1 Windows Update Package(s)".
    .EXAMPLE
        C:\PS>Install-WindowsUpdates -Confirm

        Confirm
        Are you sure you want to perform this action?
        Performing operation "Install-WindowsUpdates" on Target "Download 1 Windows Update Package(s)".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y

        Confirm
        Are you sure you want to perform this action?
        Performing operation "Install-WindowsUpdates" on Target "Install Definition Update for Windows Defender - KB2267602
        (Definition 1.143.401.0)".
        [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y
    .NOTES
    .LINK
        http://sushihangover.blogspot.com
    .LINK
        https://github.com/sushihangover
    .LINK
        http://msdn.microsoft.com/en-us/library/windows/desktop/aa387102(v=vs.85).aspx
    #>
    [cmdletbinding(SupportsShouldProcess=$True,ConfirmImpact="High")]
    Param (
        [parameter(mandatory=$false)][switch]$RebootIfRequired,
        [parameter(mandatory=$false)][switch]$IncludeHidden,
        [parameter(mandatory=$false)][switch]$ListOnly
    )
    Begin {
        $ScriptName = $MyInvocation.MyCommand.Name
        $Username = $env:USERDOMAIN + "\" + $env:USERNAME
        if (Test-IsElevatedUser) {
            New-EventLog -Source $ScriptName -LogName 'Windows Powershell' -ErrorAction SilentlyContinue
 
            $Message = "Script: " + $ScriptName + "`nScript User: " + $Username + "`nStarted: " + (Get-Date).toString()
            Write-EventLog -LogName 'Windows Powershell' -Source $ScriptName -EventID "104" -EntryType "Information" -Message $Message
        }
        $UpdateSession = New-Object -ComObject 'Microsoft.Update.Session'
        $UpdateSession.ClientApplicationID = 'Install Windows Updates via PowerShell'
        $ReBootRequired = $false
    }
    Process {
        $UpdateSearcher = $UpdateSession.CreateUpdateSearcher()
        $SearchQuery = "IsInstalled=0 and Type='Software'"
         if ($IncludeHidden.IsPresent) {
            $SearchQuery += ' and IsHidden=0'
        }
        try {
            $SearchResult = $UpdateSearcher.Search($SearchQuery)
        } catch { # [Exception from HRESULT: 0x8024402C] {
        }
        if ($ListOnly.IsPresent) {
            ForEach ($Update in $SearchResult.Updates) {
                New-Object -TypeName PSObject -Property @{
                    Title = $Update.Title; Description = $Update.Description; SupportUrl = $Update.SupportUrl; 
                        UninstallationNotes = $Update.UninstallationNotes; RebootRequired = $Update.RebootRequired}
            }
        } elseif ($SearchResult.Updates.Count -ne 0) {
            if (Test-IsElevatedUser) {
                Write-Verbose 'Creating a collection of updates to download:'
                $UpdatesToDownload = New-Object -ComObject 'Microsoft.Update.UpdateColl'
                ForEach ($Update in $SearchResult.Updates) {
                    $addThisUpdate = $false
                    if ($Update.InstallationBehavior.CanRequestUserInput) {
                        Write-Verbose "> Skipping: $($Update.Title) because it requires user input"
                    } elseif ($Update.EulaAccepted -eq $false) {
                        if ($pscmdlet.ShouldProcess($Update.Title + " has a license agreement that must be accepted:")) {
                            $Update.AcceptEula()
                            $addThisUpdate = $true
                        } else {
                            Write-Verbose "> Skipping: $($Update.Title) because the license agreement was declined"
                        }
                    } else {
                        $addThisUpdate = $true
                    }
                    if ($addThisUpdate) {
                        Write-Verbose "Adding: $($Update.Title) to download list"
                        $UpdatesToDownload.Add($Update) |Out-Null
                    }
                }
                if ($UpdatesToDownload.Count -ne 0) {
                    $DLCount = $UpdatesToDownload.Count
                    if ($pscmdlet.ShouldProcess("Download $DLCount Windows Update Package(s)")) {
                        Write-Verbose 'Downloading updates...'
                        $Downloader = $UpdateSession.CreateUpdateDownloader()
                        $Downloader.Updates = $UpdatesToDownload
                        $Downloader.Download() | Out-Null
                    }
                }
                $UpdatesToInstall = New-Object -ComObject 'Microsoft.Update.UpdateColl'
                $rebootMayBeRequired = $false
                $Installer = $UpdateSession.CreateUpdateInstaller()
                foreach ($Update in $SearchResult.Updates) {
                    $UpdateTitle = $Update.Title
                    if ($Update.IsDownloaded) {
                        Write-Verbose "Successfully downloaded & ready to install : ($UpdateTitle)"
                        $UpdatesToInstall.Add($Update) |Out-Null        
                        if ($Update.InstallationBehavior.RebootBehavior -gt 0) {
                            $rebootMayBeRequired = $true
                        }
                        $Installer.Updates = $UpdatesToInstall
                        if ($pscmdlet.ShouldProcess("Install $UpdateTitle")) {
                            Write-Verbose "Installing $UpdateTitle"
                            $InstallationResult = $Installer.Install()
                            if ($InstallationResult.RebootRequired) { 
                                $ReBootRequired = $true
                            }
                            Write-Verbose "Installation Result: $($InstallationResult.ResultCode)"
                            Write-Verbose "Reboot Required: $($InstallationResult.RebootRequired)"
                            Write-Verbose 'Listing of updates installed and individual installation results'            
                            for($i=0; $i -lt $UpdatesToInstall.Count; $i++) {
                                New-Object -TypeName PSObject -Property @{
                                    Title = $UpdateTitle; Result = $InstallationResult.ResultCode}
                            }
                        }
                        $UpdatesToInstall.Clear()
                    }
                }
            } else {
                throw "Elevated user required for installation"
            }
        } else {
            Write-Verbose "No updates are available" 
        }
    }
    End {
        $Message = "Script: " + $ScriptName + "`nScript User: " + $Username + "`nFinished: " + (Get-Date).toString()
        Write-EventLog -LogName 'Windows Powershell' -Source $ScriptName -EventID "104" -EntryType "Information" -Message $Message
        if ($ReBootRequired -and $RebootIfRequired.IsPresent) {
            Restart-Computer -Force
        } 
    }
}