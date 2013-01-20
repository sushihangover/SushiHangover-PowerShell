_____________________________________________________________________________

          Readme for the Windows 7 Resource Kit PowerShell Pack

                         by James Brundage 

              Copyright (c) 2009 by Microsoft Corporation
                      
               Portions copyright (c) 2009 James Brundage
     
                         All Rights Reserved

_____________________________________________________________________________


============
INSTALLATION
============

To install the Powershell Pack, copy PowerShellPack.zip to your Windows 7 
computer and extract the compressed files to a destination folder on your 
computer. Then double-click on the InstallPowerShellPack.cmd batch file from 
within the destination folder. 

After you run this, the modules in the PowerShell Pack will be copied to the 
modules directory of the current user. Anywhere you copy the PowerShell Pack 
to will contain the installation, and running the InstallPowerShellPack.cmd from 
that directory will copy the PowerShell Pack to the current user's directory.


=====================
USING POWERSHELL PACK
=====================

To run the PowerShell Pack, use Import-Module PowerShellPack.  

To import individual modules, use Import-Module ModuleName (i.e. Import-Module WPK).

To get help on individual commands, use Get-Help CommandName, for instance, 
Get-Help Get-Image. 

For tips on getting started using the PowerShell Pack, see the following two 
documents which are included in the PowerShell Pack:

- About the Windows 7 Resource Kit PowerShell Pack.docx

- Quick Start to Writing User Interfaces with WPK.docx


=============
COMMON ERRORS
=============

If you have not changed your execution policy, you may get an error like this:

...cannot be loaded because the execution of scripts is disabled on this system. 
Please see "get-help about_signing" for more details.

In this case, you should consider changing your execution policy to RemoteSigned, 
Unrestricted, or Bypass.  These execution policies are there for your protection, 
to help ensure that scripts you do not trust are not run by default.

If you attempt to use WPK within the PowerShell Console, you may see this error:

New-Object : Exception calling ".ctor" with "0" argument(s): "The calling thread 
must be STA, because many UI components require this."

This error is exactly what it says. The PowerShell Console runs in MTA mode by 
default, which WPF will not allow. The PowerShell Integrated Scripted Environment 
on the other hand runs in STA mode, so you can run scripts within the Integrated 
Scripting Environment, or you can run the PowerShell Console with the -sta switch. 


==============
UNINSTALLATION
==============

To uninstall the PowerShell Pack, simply delete the individual module directories.


==========
DISCLAIMER
==========
The Windows 7 Resource Kit PowerShell Pack included on the companion CD is 
unsupported by Microsoft and is provided to you as-is, with no warranty or 
guarantee concerning its functionality. For the latest news and usage tips 
concerning this PowerShell Pack, see the Windows PowerShell Team Blog at 
http://blogs.msdn.com/powershell/.

===============
ACKNOWLEDGMENTS
===============

All of the Windows PowerShell Scripts in the PowerShell Pack would not be 
possible without the amazing people who put their hearts into developing 
Windows PowerShell V2:

Norberto Arrieta – For Opening the PowerShell Engine to the World of WPF
Vladimir Averkin – For Making Remoting Good
June Blender – For the goodness in Get-Help
Karan Dhillon – For Triage and For Guidance
Kenneth Hansen – For Steering the Ship
Dan Harman – For Modules
Lee Holmes – For the Magic of Add-Type
Arul Kumaravel – For Herding Developers
James Lewis – For Keeping PowerShell V2 Jobs on Track
Narayanan Lakshmanan – For PowerShell V2 Jobs
Steve Nelson – For keeping our APIs sane
Arul Kumaravel – For Herding Developers
Hemant Mahawar – For keeping the engine focused
Refaat Issa – For the ISE’s Vision and Bringing V2 Scripting to Life
Bruce Payette – For PowerShell’s Amazing Language and For Modules
Ibrahim Abdul Rahim – For Keeping the Integrated Scripting Environment Focused
Lucio Silveria – For the Integrated Scripting Environment’s Ability to Script UI
Jason Shirk – For Script Cmdlets and tons of V2 improvements
Jeffrey Snover – For PowerShell’s Vision
Marcel Ortiz Soto – For Upping the Scripting Ante
Krishna Vutukuri – For Remoting 
Wei Wu – For Making Remoting Great
Jon White – For Focus

And for all the Windows PowerShell alumni and Windows PowerShell MVPs that have 
pushed to make the language great.

--James Brundage


