@echo off
Title *Toms Antivirus Multi Cleanup Repair Utility*
setlocal ENABLEDELAYEDEXPANSION & set "_FilePath=%~1"
  if NOT EXIST "!_FilePath!" (echo/Starting AdminElevation)
  set "_FN=_%~ns1" & echo/%TEMP%| findstr /C:"(" >nul && (echo/ERROR: %%TEMP%% path can not contain parenthesis &pause &endlocal &fc;: 2>nul & goto:eof)
  set _FN=%_FN:(=%
  set _vbspath="%temp:~%\%_FN:)=%.vbs" & set "_batpath=%temp:~%\%_FN:)=%.bat"
  >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
  if "%errorlevel%" NEQ "0" goto :_getElevation
  (if exist %_vbspath% ( del %_vbspath% )) & (if exist %_batpath% ( del %_batpath% )) 
  endlocal & CD /D "%~dp1" & ver >nul & goto:eof
  :_getElevation
  echo/Requesting elevation...
  echo/Set UAC = CreateObject^("Shell.Application"^) > %_vbspath% || (echo/&echo/Unable to create %_vbspath% & endlocal &md; 2>nul &goto:eof) 
  echo/UAC.ShellExecute "%_batpath%", "", "", "runas", 1 >> %_vbspath% & echo/wscript.Quit(1)>> %_vbspath%
  echo/@%* > "%_batpath%" || (echo/&echo/Unable to create %_batpath% & endlocal &md; 2>nul &goto:eof)
  echo/@if %%errorlevel%%==9009 (echo/Admin user could not read the batch file. If running from a mapped drive or UNC path, check if Admin user can read it.) ^& @if %%errorlevel%% NEQ 0 pause >> "%_batpath%"
  %_vbspath% && (echo/&echo/Failed to run VBscript %_vbspath% &endlocal &md; 2>nul & goto:Ask)
  echo/&echo/Elevation was requested on a new CMD window &endlocal &fc;: 2>nul & goto:Ask
:Ask
cls
echo                   Toms AntiVirus Multi Cleanup Repair Utility
echo [-----------------------------------------------------------------------------]
echo [ The MIT License (MIT)                                                       ]
echo [ Copyright (c) 2015 TomasPimentel                                            ]
echo [                                                                             ]
echo [ Permission is hereby granted, free of charge, to any person obtaining a copy]
echo [ of this software and associated documentation files (the "Software"), to    ]
echo [ deal in the Software without restrictions, including without limitation the ]
echo [ rights to use, copy, modify, merge, publish, distribute, sublicense, and/or ]
echo [ sell copies of the Software, and to permit persons to whom the Software is  ]
echo [ furnished to do so, subject to the following conditions:                    ]
echo [                                                                             ]
echo [ The above copyright notice and this permission notice shall be included in  ]
echo [ all copies of substantial portions of the Software.                         ]
echo [                                                                             ]
echo [ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  ]
echo [ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    ]
echo [ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE ]
echo [ AUTHORS OF COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      ]
echo [ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     ]
echo [ FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OF THE USE OR OTHER DEALINGS]
echo [ IN THE SOFTWARE.                                                            ]
echo [-----------------------------------------------------------------------------]
echo.
set INPUT=
set /P INPUT= Do you accept the Terms and Conditions? (Y/N): %=%
If /I "%INPUT%"=="y" goto yes 
If /I "%INPUT%"=="n" goto no
If /I "%INPUT%"=="Y" goto yes 
If /I "%INPUT%"=="N" goto no
echo Incorrect input & goto Ask
:yes
Cls
md TamcruTemp
cd TamcruTemp
echo %time% Please Wait Downloading Required Program Files
echo [                  ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/ARP.exe', 'ARP.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [#                 ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/disable_telemetry_registry_entries.reg', 'disable_telemetry_registry_entries.reg')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [##                ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/DNSFlush.exe', 'DNSFlush.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [###               ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/endsplash.exe', 'endsplash.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [####              ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/InstallerServices.exe', 'InstallerServices.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [#####             ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/IPInfo.vbs', 'IPInfo.vbs')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [######            ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/Loading.vbs', 'Loading.vbs')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [#######           ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/ManualMalwareScan.exe', 'ManualMalwareScan.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [#######           ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/purge_windows_10_telemetry.bat', 'purge_windows_10_telemetry.bat')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [########          ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/Safemode.exe', 'Safemode.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [#########         ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/SafemodeDisabled.exe', 'SafemodeDisabled.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [##########        ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/SafemodeEnabled.exe', 'SafemodeEnabled.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [###########       ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/TCPandIPReset.exe', 'TCPandIPReset.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [############      ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/wget.exe', 'wget.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [#############     ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/WinsockReset.exe', 'WinsockReset.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [##############    ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/Tron.download', 'Tron.download')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [###############   ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/ComIntRepair.exe', 'ComIntRepair.exe')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [################  ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/Defraggler.download', 'Defraggler.download')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [################# ]
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Repo/DefragglerLang.download', 'DefragglerLang.download')"
cls
echo %time% Please Wait Program Downloading Required Files
echo [##################]


cls
::The MIT License (MIT)
::
::Copyright (c) 2015 TomasPimentel
::
::Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without ::restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the ::Software is furnished to do so, subject to the following conditions:
::
::The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
::
::THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND ::NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, ::OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
::

title *Tamcru* By: Tomas Pimentel (Hacks4life)
::------Create and switch to folder------




::------Return To Menu------
SET RETURN=Return
:Return
::------Return To Menu------



::===============================Main Menu==========================================
title *Tamcru* By: Tomas Pimentel (Hacks4life)
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<**************************************>"Main Menu"
findstr /A:02 /S "*********************************" "Main Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Windows Repairs (Still In Progress)                            *
echo *                                                                             *
echo *  Enter 2 For Network Repairs (Still In Progress)                            *
echo *                                                                             *
echo *  Enter 3 For Anti-Virus Installation                                        *
echo *                                                                             *
echo *  Enter 4 For Anti-Virus Removal Tools                                       *
echo *                                                                             *
echo *  Enter 5 for Features (Still In Progress)                                   *
echo *                                                                             *
echo *  Enter 6 for Information (Still In Progress)                                *
echo *                                                                             *
echo *  Enter 7 for Malware Tools and System Optimizers                            *
echo *                                                                             *
echo *  Enter 8 For External Browser                                               *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto a
if %input%==2 goto b
if %input%==3 goto c
if %input%==4 goto d
if %input%==5 goto e
if %input%==6 goto f
if %input%==7 goto g
if %input%==8 goto h
if %input%==9 goto x
echo Incorrect input & goto %RETURN%

::===============================Main Menu end======================================
::===========================Windows  Repair Menu===================================
:a
title *Tamcru* Windows Repair Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<****************************>"Windows Repair Menu"
findstr /A:02 /S "*************************" "Windows Repair Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Chkdsk Scan (Fixes errors on the disk)                         *
echo *                                                                             *
echo *  Enter 2 For System File Scan /w Detailed CBS Report                        *
echo *                                                                             *
echo *  Enter 3 For Reset Administrator Permissions (SubInACL)                     *
echo *                                                                             *
echo *  Enter 4 for Purge Windows 10 Telemetry                                     *
echo *                                                                             *
echo *  Enter 5 for Windows Update Full Reset                                      *
echo *                                                                             *
echo *  Enter 6 for --------                                                       *
echo *                                                                             *
echo *  Enter 7 for --------                                                       *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                     Enter 10 For Next Page  *
echo *******************************************************************************
:Ask
set input=
set /p input= Enter Option %=%
if %input%==1 goto ra
if %input%==2 goto rb
if %input%==3 goto rc
if %input%==4 goto rd
if %input%==5 goto re
if %input%==6 goto rf
if %input%==7 goto rg
if %input%==8 goto rh
if %input%==9 goto x
if %input%==10 goto r2
echo Incorrect input & goto a


::============================Windows Repair Menu End===============================
::--------------------------------------Repairs--------------------------------------

:ra
cls
echo Running Chkdsk Scan
Chkdsk /f
pause
GOTO a

------------------------------SFC Log-------------------------------------------
:rb
cls
title *Tamcru* System Files Scan
Echo Running System File Scan
sfc /scannow
Pause
echo 1 - Yes
echo 2 - No
set input=
set /p input= Do you want a detailed Report? %=%
if %input%==1 goto Detailed
if %input%==2 goto a
echo Incorrect input & goto a


:Detailed
echo %time% Please wait Grabbing cbs.log Info
findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"%userprofile%\Desktop\sfcdetails.txt"
cls
echo %time% Done.
echo %time% A Detailed SFC log has been moved to your desktop
start "" "%userprofile%\Desktop\sfcdetails.txt"
timeout /t 3
GOTO a
-------------------------------SFC Log End--------------------------------------

::----------------------Reset Administrator Permissions-------------------------
:rc
cls
echo %time% Downloading Administrator Permissions (SubInACL)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Tools/AdministratorPermissions.msi', 'AdministratorPermissions.msi')"
cls
echo %time% Running Administator Permissions (SubInACL) Setup
call AdministratorPermissions.msi
echo %time% Wait for installation to finish then
pause
cls

subinacl /subkeyreg HKEY_LOCAL_MACHINE /grant=administrators=f  /grant=system=f

subinacl /subkeyreg HKEY_CURRENT_USER /grant=administrators=f  /grant=system=f

subinacl /subkeyreg HKEY_CLASSES_ROOT /grant=administrators=f  /grant=system=f

subinacl /subdirectories %windir% /grant=administrators=f /grant=system=f

echo %time% Done
GOTO a
::-----------------Reset Administrator Permissions End--------------------------

::------------------Windows 10 Telemetry Purge-----------------------------------
:rd
cls
Call "purge_windows_10_telemetry.bat"
GOTO a


::-------------------------updates ER-----------------------------
:re
echo %time% Please Wait
net stop bits
cls
echo %time% Please Wait.
net stop wuauserv
cls
echo %time% Please Wait..
net stop appidsvc
cls
echo %time% Please Wait...
net stop cryptsvc
cls
echo %time% Please Wait....
Ipconfig /flushdns
cls
echo %time% Please Wait.....
Del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat"
cls
echo %time% Please Wait......
rmdir %windir%\softwaredistribution /s /q
cls
echo %time% Please Wait.......
sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
cls
echo %time% Please Wait........
cd /d %windir%\system32
cls
echo %time% Please Wait.........
Ren %systemroot%\system32\catroot2 catroot2.bak
cls
echo %time% Please Wait..........
regsvr32.exe /s atl.dll
cls
echo %time% Please Wait...........
regsvr32.exe /s urlmon.dll
cls
echo %time% Please Wait............
regsvr32.exe /s mshtml.dll
cls
echo %time% Please Wait.............
regsvr32.exe /s shdocvw.dll
cls
echo %time% Please Wait..............
regsvr32.exe /s browseui.dll
cls
echo %time% Please Wait...............
regsvr32.exe /s jscript.dll
cls
echo %time% Please Wait................
regsvr32.exe /s vbscript.dll
cls
echo %time% Please Wait.................
regsvr32.exe /s scrrun.dll
cls
echo %time% Please Wait..................
regsvr32.exe /s msxml.dll
cls
echo %time% Please Wait...................
regsvr32.exe /s msxml3.dll
cls
echo %time% Please Wait....................
regsvr32.exe /s msxml6.dll
cls
echo %time% Please Wait.....................
regsvr32.exe /s actxprxy.dll
cls
echo %time% Please Wait......................
regsvr32.exe /s softpub.dll
cls
echo %time% Please Wait.......................
regsvr32.exe /s wintrust.dll
cls
echo %time% Please Wait........................
regsvr32.exe /s dssenh.dll
cls
echo %time% Please Wait.........................
regsvr32.exe /s rsaenh.dll
cls
echo %time% Please Wait..........................
regsvr32.exe /s gpkcsp.dll
cls
echo %time% Please Wait...........................
regsvr32.exe /s sccbase.dll
cls
echo %time% Please Wait............................
regsvr32.exe /s slbcsp.dll
cls
echo %time% Please Wait.............................
regsvr32.exe /s cryptdlg.dll
cls
echo %time% Please Wait..............................
regsvr32.exe /s oleaut32.dll
cls
echo %time% Please Wait...............................
regsvr32.exe /s ole32.dll
cls
echo %time% Please Wait................................
regsvr32.exe /s shell32.dll
cls
echo %time% Please Wait.................................
regsvr32.exe /s initpki.dll
cls
echo %time% Please Wait..................................
regsvr32.exe /s wuapi.dll
cls
echo %time% Please Wait...................................
regsvr32.exe /s wuaueng.dll
cls
echo %time% Please Wait....................................
regsvr32.exe /s wuaueng1.dll
cls
echo %time% Please Wait.....................................
regsvr32.exe /s wucltui.dll
cls
echo %time% Please Wait......................................
regsvr32.exe /s wups.dll
cls
echo %time% Please Wait.......................................
regsvr32.exe /s wups2.dll
cls
echo %time% Please Wait........................................
regsvr32.exe /s wuweb.dll
cls
echo %time% Please Wait.........................................
regsvr32.exe /s qmgr.dll
cls
echo %time% Please Wait..........................................
regsvr32.exe /s qmgrprxy.dll
cls
echo %time% Please Wait...........................................
regsvr32.exe /s wucltux.dll
cls
echo %time% Please Wait............................................
regsvr32.exe /s muweb.dll
cls
echo %time% Please Wait.............................................
regsvr32.exe /s wuwebv.dll
cls
echo %time% Please Wait..............................................
regsvr32 /s wudriver.dll
cls
echo %time% Please Wait...............................................
netsh winsock reset
cls
echo %time% Finishing
net start bits
cls
echo %time% Finishing.
net start wuauserv
cls
echo %time% Finishing..
net start appidsvc
cls
echo %time% Finishing...
net start cryptsvc
cls
echo %time% Finishing....
bitsadmin.exe /reset /allusers
echo %time% Done
Pause
GOTO a
::-------------------------updates End--------------------------

::---------------------------------repair rf---------------------------------
:rf
cls
GOTO a
::--------------------------------- Repair End------------------------------

::---------------------------------Repair RG Remove----------------------------------
:rg
cls
echo Still in Progress
pause
GOTO a
::------------------------------Repair RG End---------------------------------

::Return---
:rh
cls
GOTO %RETURN%
::Return--end



::======================Windows Repair 2============================================
:r2
title *Tamcru* Windows Repair Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<****************************>"Windows Repair Menu"
findstr /A:02 /S "*************************" "Windows Repair Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Repair Option 1                                                *
echo *                                                                             *
echo *  Enter 2 For Repair Option 2                                                *
echo *                                                                             *
echo *  Enter 3 For Repair Option 3                                                *
echo *                                                                             *
echo *  Enter 4 for Repair Option 4                                                *
echo *                                                                             *
echo *  Enter 5 for Repair Option 5                                                *
echo *                                                                             *
echo *  Enter 6 for Repair Option 6                                                *
echo *                                                                             *
echo *  Enter 7 for Repair Option 7                                                *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                     Enter 10 For Next Page  *
echo *******************************************************************************
:Ask
set input=
set /p input= Enter Option %=%
if %input%==1 goto r2a
if %input%==2 goto r2b
if %input%==3 goto r2c
if %input%==4 goto r2d
if %input%==5 goto r2e
if %input%==6 goto r2f
if %input%==7 goto r2g
if %input%==8 goto r2h
if %input%==9 goto x
if %input%==10 goto r2
echo Incorrect input & goto a
r2

:r2a
cls 
GOTO r2

:r2b
cls
GOTO r2

:r2c
cls
GOTO r2

:r2d
cls
GOTO r2

:r2e
cls
GOTO r2

:r2f
cls
GOTO r2

:r2g
cls
GOTO r2

::Return---
:r2h
cls
GOTO a
::Return--end


::================================Repairs end=======================================
::==============================Network Repairs=====================================
:b
cls
title *Tamcru* Network Repair Menu
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<****************************>"Network Repair Menu"
findstr /A:02 /S "****************************" "Network Repair Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Complete Internet Repair                                       *
echo *                                                                             *
echo *  Enter 2 For TCP/IP Reset                                                   *
echo *                                                                             *
echo *  Enter 3 For Winsock Reset                                                  *
echo *                                                                             *
echo *  Enter 4 For Flush ARP cache                                                *
echo *                                                                             *
echo *  Enter 5 For Flush and Renew DNS                                            *
echo *                                                                             *
echo *  Enter 6 For -----------------                                              *
echo *                                                                             *
echo *  Enter 7 For ----------------------                                         *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto anra
if %input%==2 goto anrb
if %input%==3 goto anrc
if %input%==4 goto anrd
if %input%==5 goto anre
if %input%==6 goto anrf
if %input%==7 goto anrg
if %input%==8 goto %RETURN%
if %input%==9 goto x
echo Incorrect input & goto b

::=================================IP Info==========================================
:anra
start "" /wait "IPInfo.vbs"
GOTO b

::-------------------------------IP Info End----------------------------------------
::-------------------------------TCP/IP Reset---------------------------------------

:anrb
set p=Resetting TCP/IP...
if exist %windir%\system32\netsh.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\netsh.exe int ip reset %userprofile%\desktop\netreset.log 1>>%userprofile%\desktop\netfix.log 2>>&1
@echo on 
echo This fix requires a system restart... execute shutdown /a to abort.
@echo off
if exist %windir%\system32\shutdown.exe %windir%\system32\shutdown.exe /r
) else (
echo err: failed to reset tcp/ip
echo err: unable to locate %windir%\system32\netsh.exe
)
Call "TCPandIPReset.exe"
goto :b
 
::---------------------TCP/Ip Reset end----------------------------------------------
::---------------------Winsock Reset-------------------------------------------------
:anrc
set p=Resetting Winsock...
if exist %windir%\system32\netsh.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\netsh.exe winsock reset 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to reset winsock
echo err: unable to locate %windir%\system32\netsh.exe
GOTO b
)
set p=Renewing IP address...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /renew 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to renew IP address
echo err: unable to locate %windir%\system32\ipconfig.exe
)
Call "WinsockReset.exe"
GOTO b

::----------------------Winsock Reset end---------------------------------------------
::---------------------- Flush ARP cache----------------------------------------------

:anrd
set p=Releasing IP address...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /release 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to release ip address
echo err: unable to locate %windir%\system32\ipconfig.exe
)
 
set p=Flushing ARP cache...
if exist %windir%\system32\netsh.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\netsh.exe interface ip delete arpcache 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
if exist %windir%\system32\arp.exe (
%windir%\system32\arp.exe -d * 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to fush arp cache
echo err: unable to locate %windir%\system32\netsh.exe or %windir%\system32\arp.exe
))
 
set p=Reloading NetBIOS name cache...
if exist %windir%\system32\nbtstat.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\nbtstat.exe -R 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to reload netbios name cache
echo err: unable to locate %windir%\system32\nbtstat.exe
)
 
set p=Sending NetBIOS name update...
if exist %windir%\system32\nbtstat.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\nbtstat.exe -RR 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to send netbios name update
echo err: unable to locate %windir%\system32\nbtstat.exe
)
set p=Renewing IP address...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /renew 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to renew IP address
echo err: unable to locate %windir%\system32\ipconfig.exe
)
Call "ARP.exe"
GOTO b

::------------------------Flush ARP cache End------------------------------------
::-------------------------Flush DNS----------------------------------------------


:anre
set p=Releasing IP address...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /release 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to release ip address
echo err: unable to locate %windir%\system32\ipconfig.exe
)
set p=Flushing DNS cache...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /flushdns 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to flush dns cache
echo err: unable to locate %windir%\system32\ipconfig.exe
)
set p=Renewing IP address...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /renew 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to renew IP address
echo err: unable to locate %windir%\system32\ipconfig.exe
)
set p=Registering DNS name...
if exist %windir%\system32\ipconfig.exe (
echo %p% & title %p% & echo %p% >>%userprofile%\desktop\netfix.log
%windir%\system32\ipconfig.exe /registerdns 1>>%userprofile%\desktop\netfix.log 2>>&1
) else (
echo err: failed to register DNS name
echo err: unable to locate %windir%\system32\ipconfig.exe
)
Call "DNSFlush.exe"
GOTO b

::----------------------------FLush DNS End---------------------------------------


:anrf
cls
GOTO b

:anrg
cls
GOTO b

::================================Network Repair End================================
::=================================Anti-Virus Menu==================================

:c
title *Tamcru* Anti-Virus Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*********************************>"AntiVirus Menu"
findstr /A:02 /S "*********************************" "AntiVirus Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Avast Anti-Virus                                               *
echo *                                                                             *
echo *  Enter 2 For AVG Anti-Virus                                                 *
echo *                                                                             *
echo *  Enter 3 For Bitdefender Anti-Virus                                         *
echo *                                                                             *
echo *  Enter 4 For ESET Anti-Virus                                                *
echo *                                                                             *
echo *  Enter 5 For Kaspersky Anti-Virus                                           *
echo *                                                                             *
echo *  Enter 6 For McAfee Anti-Virus                                              *
echo *                                                                             *
echo *  Enter 7 For Trend Micro Anti-Virus                                         *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto aa
if %input%==2 goto ab
if %input%==3 goto ac
if %input%==4 goto ad
if %input%==5 goto ae
if %input%==6 goto af
if %input%==7 goto ag
if %input%==8 goto %RETURN%
if %input%==9 goto x
echo Incorrect input & goto c

::=================================Anti-Virus Menu ENd==============================
::===================================Anti-Viruses===================================

::------------------------------------Avast-----------------------------------------
:aa
title *Tamcru* Avast Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*************************************>"Avast Menu"
findstr /A:02 /S "*********************************" "Avast Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 for Avast Free Anti-Virus                                          *
echo *                                                                             *
echo *  Enter 2 For Avast Internet Security (30-Day Trial)                         *
echo *                                                                             *
echo *  Enter 3 For Avast Premier Anti-Virus (30-Day Trial)                        *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto ava
if %input%==2 goto avb
if %input%==3 goto avc
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto aa

:ava
cls
echo %time% Downloading Avast Free Anti-Virus
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avast_free_antivirus_setup_online.exe', 'avast_free_antivirus_setup_online.exe')"
cls
echo %time% Starting Avast Free Anti-Virus Setup
Call avast_free_antivirus_setup_online.exe
GOTO c

:avb
cls
echo %time% Downloading Avast Internet Security (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avast_internet_security_setup_online.exe', 'avast_internet_security_setup_online.exe')"
cls
echo %time% Starting Avast Internet Security (30-Day Trial) Setup
Call avast_internet_security_setup_online.exe
GOTO c

:avc
cls
echo %time% Downloading Avast Premier Anti-Virus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avast_premier_antivirus_setup_online.exe', 'avast_premier_antivirus_setup_online.exe')"
cls
echo %time% Starting Avast Premier Anti-Virus (30-Day Trial) Setup
Call avast_premier_antivirus_setup_online.exe
GOTO c

GOTO c
::-----------------------------------Avast End--------------------------------------

::-----------------------------------AVG--------------------------------------------
:ab
title *Tamcru* AVG Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<***************************************>"AVG Menu"
findstr /A:02 /S "*********************************" "AVG Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For AVG Free Anti-Virus                                            *
echo *                                                                             *
echo *  Enter 2 For AVG Anti-Virus (30-Day Trial)                                  *
echo *                                                                             *
echo *  Enter 3 For AVG Internet Security (30-Day Trial)                           *
echo *                                                                             *
echo *  Enter 4 For AVG PC Tune Up (30-Day Trial)                                  *
echo *                                                                             *
echo *  Enter 5 For AVG Web Tune Up                                                *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto aaa
if %input%==2 goto aab
if %input%==3 goto aac
if %input%==4 goto aad
if %input%==5 goto aae
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto ab

:aaa
cls
echo %time% Downloading AVG Free Anti-Virus
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_free_stb_all_6140p1_177.exe', 'avg_free_stb_all_6140p1_177.exe')"
cls
echo %time% Starting AVG Free Anti-Virus Setup
Call avg_free_stb_all_6140p1_177.exe
GOTO c

:aab
cls
echo %time% Downloading AVG Anti-Virus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_avc_stb_all_2015_ltst_197.exe', 'avg_avc_stb_all_2015_ltst_197.exe')"
cls
echo %time% Starting AVG Anti-Virus (30-Day Trial) Setup
Call avg_avc_stb_all_2015_ltst_197.exe
GOTO c


:aac
cls
echo %time% Downloading AVG Internet Security (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_isc_stb_all_2015_ltst_206.exe', 'avg_isc_stb_all_2015_ltst_206.exe')"
cls
echo %time% Starting AVG Internet Security (30-Day Trial) Setup
Call avg_isc_stb_all_2015_ltst_206.exe
GOTO c

:aad
cls
echo %time% Downloading AVG PC Tune Up (30-Day Trial)
echo %time% Please Wait This file may take approximatly 5 - 10 Minutes to download
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_tuht_stf_all_2015_638.exe', 'avg_tuht_stf_all_2015_638.exe')"
cls
echo %time% Starting AVG PC Tune (30-Day Trial) Setup
Call avg_tuht_stf_all_2015_638.exe
GOTO c

:aae
cls
echo %time% Downloading AVG Web Tune Up
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.avg.com/download-web-tuneup', 'AVGWebTuneUp.exe')"
cls
echo %time% Starting PC Tune Setup
Call AVGWebTuneUp.exe
GOTO c


GOTO c
::-------------------------------AVG END--------------------------------------------


::------------------------------Bitdefender-----------------------------------------
:ac
title *Tamcru* Bitdefender Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*******************************>"Bitdefender Menu"
findstr /A:02 /S "*******************************" "Bitdefender Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Bitdefender Anti-Virus Plus 2016 (30-Day Trial)                *
echo *                                                                             *
echo *  Enter 2 For Bitdefender Internet Security 2016 (30-Day Trial)              *
echo *                                                                             *
echo *  Enter 3 For Bitdefender Total Security (30-Day Trial)                      *
echo *                                                                             *
echo *  Enter 4 For Bitdefender Windows 8 Security (30-Day Trial)                  *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto aba
if %input%==2 goto abb
if %input%==3 goto abc
if %input%==4 goto abd
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto ac

:aba
cls
echo %time% Downloading Bitdefender Anti-Virus Plus 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_antivirus.exe', 'bitdefender_antivirus.exe')"
cls
echo %time% Starting Bitdefender Anti-Virus Plus 2016 (30-Day Trial) Setup
Call bitdefender_antivirus.exe
GOTO c


:abb
cls
echo %time% Downloading Bitdefender Internet Security 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_isecurity.exe', 'bitdefender_isecurity.exe')"
cls
echo %time% Starting Bitdefender Internet Security 2016 (30-Day Trial) Setup
Call bitdefender_isecurity.exe
GOTO c

:abc
cls
echo %time% Downloading Bitdefender Total Security 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_webts.exe', 'bitdefender_webts.exe')"
cls
echo %time% Starting Bitdefender Total Security 2016 (30-Day Trial) Setup
Call bitdefender_webts.exe
GOTO c

:abd
cls
echo %time% Downloading Bitdefender Windows 8 Security 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_w8security.exe', 'bitdefender_w8security.exe')"
cls
echo %time% Starting Bitdefender Windows 8 Security 2016 (30-Day Trial) Setup
Call bitdefender_w8security.exe
GOTO c


::---------------------------Bitdefender end----------------------------------------

::-----------------------------ESET-------------------------------------------------
:ad
title *Tamcru* ESET Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<**************************************>"ESET Menu"
findstr /A:02 /S "**************************************" "ESET Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For ESET NOD32 Antivirus (30-Day Trial)                            *
echo *                                                                             *
echo *  Enter 2 For ESET ESET Smart Security (30-Day Trial)                        *
echo *                                                                             *
echo *  Enter 3 For ESET Online Scanner                                            *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto aea
if %input%==2 goto aeb
if %input%==3 goto aec
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto ad


:aea
cls
echo %time% Downloading ESET NOD32 Antivirus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/ESET/eset_nod32_antivirus_live_installer.exe', 'eset_nod32_antivirus_live_installer.exe')"
cls
echo %time% Starting ESET NOD32 Antivirus (30-Day Trial) Setup
Call eset_nod32_antivirus_live_installer.exe
GOTO c

:aeb
cls
echo %time% Downloading ESET Smart Security (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/ESET/eset_smart_security_live_installer.exe', 'eset_smart_security_live_installer.exe')"
cls
echo %time% Starting ESET Smart Security (30-Day Trial) Setup
Call eset_smart_security_live_installer.exe
GOTO c

:aec
cls
echo %time% Downloading ESET Online Scanner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/ESET/esetsmartinstaller_enu.exe', 'esetsmartinstaller_enu.exe')"
cls
echo %time% Starting ESET Online Scanner Setup
Call esetsmartinstaller_enu.exe
GOTO c
::-------------------------------ESET END-------------------------------------------


::-------------------------------Kaspersky------------------------------------------


:ae
title *Tamcru* Kaspersky Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*********************************>"Kaspersky Menu"
findstr /A:02 /S "*********************************" "Kaspersky Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Kaspersky Anti-Virus (30-Day Trial)                            *
echo *                                                                             *
echo *  Enter 2 For Kaspersky Internet Security (30-Day Trial)                     *
echo *                                                                             *
echo *  Enter 3 For Kaspersky Total Security (30-Day Trial)                        *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto aka
if %input%==2 goto akb
if %input%==3 goto akc
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto ae

:aka
cls
echo %time% Downloading Kaspersky Anti-Virus (30-Day Trial)
echo %time% This may take 5-10 minutes. File Size : 174MB
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Kaspersky/KasperskyAV.exe', 'KasperskyAV.exe')"
cls
echo %time% Starting Kaspersky Anti-Virus (30-Day Trial) Setup
Call KasperskyAV.exe
GOTO c

:aka
cls
echo %time% Downloading Internet Security (30-Day Trial)
echo %time% This may take 5-10 minutes. File Size : 176MB
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Kaspersky/KasperskyIS.exe', 'KasperskyIS.exe')"
cls
echo %time% Starting Kaspersky Internet Security (30-Day Trial) Setup
Call KasperskyIS.exe
GOTO c

:aka
cls
echo %time% Downloading Kaspersky Total Security (30-Day Trial)
echo %time% This may take 5-10 minutes. File Size : 172MB
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Kaspersky/KasperskyTS.exe', 'KasperskyTS.exe')"
cls
echo %time% Starting Kaspersky Total Security (30-Day Trial) Setup
Call KasperskyTS.exe
GOTO c
::------------------------------Kaspersky end---------------------------------------

::--------------------------------McAfee--------------------------------------------
:af
title *Tamcru* McAfee Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<************************************>"McAfee Menu"
findstr /A:02 /S "************************************" "McAfee Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For McAfee Anti-Virus (30-Day Trial)                               *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto ama
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto af

:ama
cls
echo %time% Downloading McAfee Anti-Virus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/McAfee/McAfeeAntiVirus.exe', 'McAfeeAntiVirus.exe')"
cls
echo %time% Starting McAfee Anti-Virus (30-Day Trial) Setup
Call McAfeeAntiVirus.exe
GOTO c
::---------------------------  McAfee End-------------------------------------------

::-----------------------------TrendMicro-------------------------------------------
:ag
title *Tamcru* TrendMicro Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<********************************>"TrendMicro Menu"
findstr /A:02 /S "********************************" "TrendMicro Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For TrendMicro Maximum Security 10 (30-Day Trial)                  *
echo *                                                                             *
echo *  Enter 2 For TrendMicro Internet Security 10 (30-Day Trial)                 *
echo *                                                                             *
echo *  Enter 3 For TrendMicro AntiVirus + Security 10 (30-Day Trial)              *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto ata
if %input%==2 goto atb
if %input%==3 goto atc
if %input%==8 goto c
if %input%==9 goto x
echo Incorrect input & goto ag

:ata
cls
echo %time% Downloading TrendMicro Premium Security 10 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/TrendMicro/TrendMicro_MAX_10.0_US-en_Downloader.exe', 'TrendMicro_MAX_10.0_US-en_Downloader.exe')"
cls
echo %time% Starting TrendMicro Premium Security 10 (30-Day Trial) Setup
Call TrendMicro_MAX_10.0_US-en_Downloader.exe
GOTO c

:atb
cls
echo %time% Downloading TrendMicro Internet Security 10 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/TrendMicro/TrendMicro_TIS_10.0_US-en_Downloader.exe', 'TrendMicro_TIS_10.0_US-en_Downloader.exe')"
cls
echo %time% Starting TrendMicro Internet Security 10 (30-Day Trial) Setup
Call TrendMicro_TIS_10.0_US-en_Downloader.exe
GOTO c


:atc
cls
echo %time% Downloading TrendMicro AntiVirus + Security 10 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/TrendMicro/TrendMicro_TAV_10.0_US-en_Downloader.exe', 'TrendMicro_TAV_10.0_US-en_Downloader.exe')"
cls
echo %time% Starting TrendMicro AntiVirus + Security 10 (30-Day Trial) Setup
Call TrendMicro_TIS_10.0_US-en_Downloader.exe
GOTO c

::--------------------------------TrendMicro End------------------------------------





::===============================Anti-Viruses End===================================


::=============================== Removal Tools=====================================
:d
start "" "Safemode.exe"
:dm
title *Tamcru* Removal Tools Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*****************************>"Removal Tools Menu"
findstr /A:02 /S "*****************************" "Removal Tools Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Avast                        Enter 10 For Avira                *
echo *                                                                             *
echo *  Enter 2 For AVG                          Enter 11 For Norton               *
echo *                                                                             *
echo *  Enter 3 For Bitdefender                                                    *
echo *                                                                             *
echo *  Enter 4 For ESET                                                           *
echo *                                                                             *
echo *  Enter 5 For Kaspersky                                                      *
echo *                                                                             *
echo *  Enter 6 For McAfee                                                         *
echo *                                                                             *
echo *  Enter 7 For TrendMicro                                                     *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************
set input=
set /p input= Enter Option %=%
if %input%==1 goto arma
if %input%==2 goto armb
if %input%==3 goto armc
if %input%==4 goto armd
if %input%==5 goto arme
if %input%==6 goto armf
if %input%==7 goto armg
if %input%==10 goto armh
if %input%==11 goto armi
if %input%==8 goto %RETURN%
if %input%==9 goto x
echo Incorrect input & goto dm

::--------------------------Avast Removal Tool--------------------------------------
:arma
cls 
echo %time% Downloading Avast Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/avastclear.exe', 'avastclear.exe')"
cls
echo %time% Starting Avast Removal Tool
Call avastclear.exe
GOTO dm
::-------------------------Avast Removal Tool End-----------------------------------


::----------------------------AVG Removal Tool--------------------------------------
:armb
cls 
echo %time% Downloading AVG Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/AVG_Remover.exe', 'AVG_Remover.exe')"
cls
echo %time% Starting AVG Removal Tool
Call AVG_Remover.exe
GOTO dm
::--------------------------AVG Removal Tool End------------------------------------

::------------------------Bitdefender Removal Tool----------------------------------
:armc
cls 
echo %time% Downloading Bitdefender Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/BitdefenderUninstallTool.exe', 'BitdefenderUninstallTool.exe')"
cls
echo %time% Starting BitDefender Removal Tool
Call BitdefenderUninstallTool.exe
GOTO dm
::----------------------BitDefender Removal Tool End--------------------------------

::---------------------------ESET Removal Tool--------------------------------------
:armd
cls 
echo %time% Downloading ESET Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/ESETUninstaller.exe', 'ESETUninstaller.exe')"
cls
echo %time% Starting ESET Removal Tool
Call ESETUninstaller.exe
GOTO dm
::-------------------------ESET Removal Tool-----------------------------------------

::-----------------------Kaspersky Removal Tool--------------------------------------
:arme
cls 
echo %time% Downloading Kaspersky Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/kavremover.exe', 'kavremover.exe')"
cls
echo %time% Starting Kaspersky Removal Tool
Call kavremover.exe
GOTO dm
::---------------------Kaspersky Removal Tool End------------------------------------

::-------------------------McAfee Removal Tool---------------------------------------
:armf
cls 
echo %time% Downloading McAfee Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/MCPR.exe', 'MCPR.exe')"
cls
echo %time% Starting McAfee Removal Tool
Call MCPR.exe
GOTO dm
::--------------------------McAfee Removal Tool---------------------------------------

::------------------------Trend Micro Removal Tool------------------------------------
:armg
cls 
echo %time% Downloading TrendMicro Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/TrendMicroUninstalltool.exe', 'TrendMicroUninstalltool.exe')"
cls
echo %time% Starting TrendMicro Removal Tool
Call TrendMicroUninstalltool.exe
GOTO dm
::----------------------Trend Micro Removal Tool End-----------------------------------

::---------------------------Avira Removal Tool----------------------------------------
:armh
cls 
echo %time% Downloading Avira Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/aviraregistrycleaner.exe', 'aviraregistrycleaner.exe')"
cls
echo %time% Starting Avira Removal Tool
Call aviraregistrycleaner.exe
GOTO dm
::------------------------Avira Removal Tool End---------------------------------------

::--------------------------Norton Removal Tool----------------------------------------
:armi
cls
echo %time% Downloading Norton Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/Norton_Removal_Tool.exe', 'Norton_Removal_Tool.exe')"
cls
echo %time% Starting Norton Removal Tool
Call Norton_Removal_Tool.exe
GOTO dm
::------------------------Norton Removal Tool End--------------------------------------

::=========================Removal Tools END===========================================

::=============================Features=================================================
:e
cls 
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*******************************>"Features Menu"
findstr /A:02 /S "***************************" "Features Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Enable Safemode W/Networking                                   *
echo *                                                                             *
echo *  Enter 2 For Disable Safemode W/Networking                                  *
echo *                                                                             *
echo *  Enter 3 For Start Installer Services In Safemode                           *
echo *                                                                             *
echo *  Enter 4 For Current IP Information                                         *
echo *                                                                             *
echo *  Enter 5 for --------                                                       *
echo *                                                                             *
echo *  Enter 6 for --------                                                       *
echo *                                                                             *
echo *  Enter 7 for --------                                                       *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************

set input=
set /p input= Enter Option %=%
if %input%==1 goto fa
if %input%==2 goto fb
if %input%==3 goto fc
if %input%==4 goto fd
if %input%==5 goto fe
if %input%==6 goto ff
if %input%==7 goto fg
if %input%==8 goto %RETURN%
if %input%==9 goto x
echo Incorrect input & goto e
GOTO %RETURN%

::---------------------------------------
:fa
cls 
bcdedit /set {default} safeboot network
cls
Call "SafemodeEnabled.exe"
shutdown /r /t 0
GOTO e
::---------------------------------------

::---------------------------------------
:fb
cls 
bcdedit /deletevalue {default} safeboot
cls
Call "SafemodeDisabled.exe"
shutdown /r /t 0
GOTO e
::---------------------------------------

::---------------------------------------
:fc
cls 
echo %time% Starting Windows Installer Services
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\MSIServer" /VE /T REG_SZ /F /D "Service"
Cls 
echo %time% Starting Windows Installer Services
cls
Call "InstallerServices.exe"
GOTO e
::---------------------------------------

::---------------------------------------
:fd
cls 
start "" /wait "IPInfo.vbs"
GOTO e
::---------------------------------------

::---------------------------------------
:fe
cls 
echo %time% Still In Progress
Pause
GOTO e
::---------------------------------------

::---------------------------------------
:ff
cls 
echo %time% Still In Progress
Pause
GOTO e
::---------------------------------------

::---------------------------------------
:fg
cls 
echo %time% Still In Progress
Pause
GOTO e
::---------------------------------------



::===========================Features END===============================================

:f
title *Tamcru* Information Menu
::===============================INFO===============================================
cls
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<*******************************>"Information Menu"
findstr /A:02 /S "***************************" "Information Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Windows                                                        *
echo *                                                                             *
echo *  Enter 2 For Firewall                                                       *
echo *                                                                             *
echo *  Enter 3 For Malware                                                        *
echo *                                                                             *
echo *  Enter 4 For Adware                                                         *
echo *                                                                             *
echo *  Enter 5 for Riskware                                                       *
echo *                                                                             *
echo *  Enter 6 for Rootkit                                                        *
echo *                                                                             *
echo *  Enter 7 for Viruses/Trojans                                                *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
echo *******************************************************************************

set input=
set /p input= Enter Option %=%
if %input%==1 goto ia
if %input%==2 goto ib
if %input%==3 goto ic
if %input%==4 goto id
if %input%==5 goto ie
if %input%==6 goto if
if %input%==7 goto ig
if %input%==8 goto %RETURN%
if %input%==9 goto x
echo Incorrect input & goto f


:ia
cls 
echo %time% Still In Progress
Pause
GOTO f


:ib
cls 
echo %time% Still In Progress
Pause
GOTO f


:ic
cls 
echo %time% Still In Progress
Pause
GOTO f


:id
cls 
echo %time% Still In Progress
Pause
GOTO f


:ie
cls 
echo %time% Still In Progress
Pause
GOTO f


:if
cls 
echo  ----------------------Rootkit----------------------
echo / Rootkits are designed to conceal certain objects  \
echo / or activities in your system.                     \
echo / Often their main purpose is to prevent            \
echo / is to prevent malicious programs being detected   \
echo / in order to extend the period                     \
echo / in which programs can run on an infected computer.\
echo. --------------------------------------------------- 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
GOTO f

------------------------Trojan Information-------------------------
:ig
cls 
echo  -----------------------Backdoor--------------------
echo / A backdoor Trojan gives malicious users remote    \
echo / control over the infected computer. They enable   \
echo / the author to do anything they wish on the        \
echo / infected computer including sending, receiving    \
echo / launching, and deleting files, displaying data,   \
echo / and rebooting the computer. Backdoor Trojans are  \
echo / often used to unite a group of victim computers to\
echo / form a botnet or zombie network that can be used  \ 
echo / for criminal purposes.                            \
echo. --------------------------------------------------- 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/     
echo.
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls 
echo  ----------------------Exploit----------------------
echo / Exploits are programs that contain data or code   \
echo / that takes advantage of a vulnerability           \
echo / within application software that’s                \
echo / running on your computer.                         \
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls 
echo  ------------------Trojan-Banker--------------------
echo / Trojan-Banker programs are designed to steal      \
echo / your account data for online banking systems      \      
echo / e-payment systems, and credit or debit cards.     \   
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  ------------------Trojan-DDoS ---------------------
echo / These programs conduct DoS (Denial of Service)    \
echo / against a targeted web address.                   \
echo / By sending multiple requests from your computer   \ 
echo / and several other infected computers              \
echo / the attack can overwhelm the target address       \    
echo / leading to a denial of service.                   \
echo. --------------------------------------------------- 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  ---------------Trojan-Downloader-------------------
echo / Trojan-Downloaders can download and install       \
echo / new versions of malicious programs onto your      \
echo / computer including Trojans and adware.            \
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  -----------------Trojan-Dropper--------------------
echo / These programs are used by hackers in order to    \
echo / install Trojans and / or viruses or               \
echo / to prevent the detection of malicious programs.   \
echo / Not all antivirus programs are capable of scanning\
echo / all of the components inside this type of Trojan. \ 
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  -----------------Trojan-FakeAV---------------------
echo / Trojan-FakeAV programs simulate the activity of   \
echo / antivirus software.  They are designed to extort  \
echo / money from you in return for the detection and    \
echo / removal of threats even though the threats that   \
echo / they report are actually non-existent.            \
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  ---------------Trojan-GameThief--------------------
echo / This type of program steals user account          \
echo / information from online gamers.                   \
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  -------------------Trojan-IM-----------------------
echo / Trojan-IM programs steal your logins and passwords\
echo / for instant messaging programs such ICQ, MSN      \
echo / Messenger, AOL Instant Messenger, Yahoo Pager,    \
echo / Skype, and many more.                             \
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  ------------------Trojan-Ransom--------------------
echo / This type of Trojan can modify data on your       \
echo / computer so that your computer doesn’t run        \
echo / correctly or you can no longer use specific data. \
echo / the criminal will only restore your computer's    \
echo / performance or unblock your data, after you have  \
echo / paid them the ransom money that they demand       \
echo. --------------------------------------------------- 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
cls
echo  -------------------Trojan-Spy----------------------
echo / Trojan-Spy programs can spy on how you’re using   \
echo / your computer for example, by tracking the data   \
echo / you enter via your keyboard, taking screen shots, \
echo / or getting a list of running applications         \
echo. --------------------------------------------------- 
echo. 
echo. 
echo. 
echo. 
echo      _/ 
echo     _/                  
echo    _/_/_/    _/    _/   
echo   _/    _/  _/    _/    
echo  _/    _/  _/    _/     
echo _/_/_/      _/_/_/      
echo                _/       
echo           _/_/    
echo.  
echo     _/_/_/          _/      _/    _/                      _/                  
echo    _/    _/        _/      _/    _/    _/_/_/    _/_/_/  _/  _/      _/_/_/   
echo   _/    _/        _/      _/_/_/_/  _/    _/  _/        _/_/      _/_/        
echo  _/    _/  _/    _/      _/    _/  _/    _/  _/        _/  _/        _/_/     
echo _/_/_/      _/_/        _/    _/    _/_/_/    _/_/_/  _/    _/  _/_/_/  
pause
GOTO f
-------------------------Trojan Information end------------------------




::==========================Information================================







::------------------------------------Browser---------------------------------------

:h
cls 
echo %time% Downloading Browser
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/B1/Browser.exe', 'Browser.exe')"
cls
echo %time% Done :D
echo %time% Running Browser
call Browser.exe
GOTO %RETURN%
::----------------------------------Browser End-------------------------------------








:g
title *Tamcru* Malware Cleanup Menu Menu
cls 
::-------------------------------Malware Cleanup------------------------------------
SET /P ".=******************************************************************> " <nul
echo ^1.8>"VERSION"
findstr /A:0D /S "1.8" "VERSION"
SET /P ".=****************************> " <nul
echo ^<***********************************>"Cleanup Menu"
findstr /A:02 /S "**********************************" "Cleanup Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For AdwCleaner                     Enter 10 For Autorun Scanner    *
echo *                                                                             *
echo *  Enter 2 For RogueKiller                    Enter 11 For SuperAntiSpyware   *
echo *                                                                             *
echo *  Enter 3 For HitmanPro                                                      *
echo *                                                                             *
SET /P ".=*  Enter 4 For Crapkiller                          > " <nul
echo ^<           *>"Optimization"
findstr /A:0A /S "         *" "Optimization"
echo *                                                                             *
echo *  Enter 5 for Spybot Search and Destroy      Enter 12 For CCleaner           *
echo *                                                                             *
echo *  Enter 6 for TDSSKiller                     Enter 13 For Tron Auto Script   *
echo *                                                                             *
echo *  Enter 7 for MalwareBytes                   Enter 14 For Disk Defrag        *
echo *                                                                             *
echo *  Enter 8 To Go Back                         Enter 15 For Other Repair (N/a) *
echo *                                                                             *
echo *  Enter 9 To End                             Enter 18 For Manual Malware Scan*
echo *                                                                             *
echo *******************************************************************************

set input=
set /p input= Enter Option %=%
if %input%==1 goto i
if %input%==2 goto j
if %input%==3 goto k
if %input%==4 goto l
if %input%==5 goto m
if %input%==6 goto n
if %input%==7 goto o
if %input%==10 goto p
if %input%==11 goto q
if %input%==12 goto r
if %input%==13 goto s
if %input%==14 goto t
if %input%==15 goto u
if %input%==18 goto y
if %input%==8 goto %RETURN%
if %input%==9 goto x
echo Incorrect input & goto g

::=============================Cleanup Tools=======================================

::---------------------------------Adware Clean------------------------------------
:i
cls 
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT
echo %time% Downloading AdwCleaner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/AdwCleaner/AdwCleaner.exe', 'AdwCleaner.exe')"
cls
echo %time% Running AdwCleaner
call AdwCleaner.exe
GOTO g

:64BIT
echo %time% Downloading AdwCleaner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/AdwCleaner/AdwCleaner.exe', 'AdwCleaner.exe')"
cls
echo %time% Running AdwCleaner
call AdwCleaner.exe
GOTO g
::-----------------------------Adware Clean End------------------------------------






::---------------------------------RogueKiller-------------------------------------
:j
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT
echo %time% Downloading RogueKiller
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/RogueKiller/RogueKiller.exe', 'RogueKiller.exe')"
cls
echo %time% Running RogueKiller
call RogueKiller.exe
GOTO g

:64BIT
echo %time% Downloading RogueKiller
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/RogueKiller/RogueKillerX64.exe', 'RogueKillerX64.exe')"
cls
echo %time% Running RogueKiller
call RogueKillerX64.exe
GOTO g

::--------------------------------RogueKiller End----------------------------------













::------------------------------Riskware Removal-----------------------------------
:k
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT 
echo %time% Download HitmanPro
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/HitmanPro/HitmanPro.exe', 'HitmanPro.exe')"
cls
echo %time% Done :D
echo %time% Running HitmanPro
call HitmanPro.exe
GOTO g
:64BIT
echo %time% Downloading HitmanPro
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/HitmanPro/HitmanPro_x64.exe', 'HitmanPro_x64.exe')"
cls
echo %time% Done :D
echo %time% Running HitmanPro
call HitmanPro_x64.exe
GOTO g
::---------------------------Riskware Removal END----------------------------------










---------------------------------Crap Killer---------------------------------------

:l
cls 
echo %time% Downloading CrapKiller
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/CrapKiller/CrapKiller.cmd', 'CrapKiller.cmd')"
Call CrapKiller.cmd
GOTO g

--------------------------------Crap Killer End------------------------------------







---------------------------------Spyware Removal-----------------------------------
:m
cls
echo %time% Downloading Spybot Search and Destroy.
echo %time% Please be patient this can take up to 5 minutes
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/Spybot/SpybotPortable.exe', 'SpybotPortable.exe')"
cls 
echo %time% Running Spybot Search and Destroy
call SpybotProtable.exe
GOTO g
--------------------------------spyware Removal END--------------------------------

----------------------------------Rootkit Removal----------------------------------
:n
cls
echo %time% Downloading TDSSKiller.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/Rootkit/tdsskiller.exe', 'tdsskiller.exe')"
cls
echo %time% Done :D
echo %time% Running TDSSKiller
call tdsskiller.exe
GOTO g
--------------------------------Rootkit Removal End--------------------------------









::-----------------------------------Malwarebytes--------------------------------------
:o
cls
echo %time% Downloading Malwarebytes Anti-Malware.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/MalwareBytes/mbam.exe', 'mbam.exe')"
cls
echo %time% Done :D
echo %time% Running Malwarebytes Anti-Malware Setup.
call mbam.exe
GOTO g
::--------------------------------Malwarebytes END---------------------------------------

::------------------------------Auto Run Scanner-------------------------------------
:p
cls
echo %time% Downloading Autorun Scanner.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/Autoruns/autoruns.exe', 'autoruns.exe')"
cls
echo %time% Done :D
echo %time% Running Autorun Scanner
call autoruns.exe
GOTO g
::----------------------------Auto Run scanner end-----------------------------------

::-----------------------------SuperAntiSpyware------------------------------------------

:q
cls

echo %time% Downloading SuperAntiSpyware.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/SuperAntiSpyware/SAS.EXE', 'SAS.EXE')"
cls
echo %time% Done :D
echo %time% Running SuperAntiSpyware Setup.
call SAS.EXE
GOTO g
::-----------------------------SuperAntiSpyware End--------------------------------------

::---------------------------CCleaner----------------------------------------
:r
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT 
echo %time% Download CCleaner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/CCleaner/CCleaner.exe', 'CCleaner.exe')"
cls
echo %time% Done :D
echo %time% Running CCleaner
call CCleaner.exe
GOTO g
:64BIT
echo %time% Downloading CCleaner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/CCleaner/CCleaner64.exe', 'CCleaner64.exe')"
cls
echo %time% Done :D
echo %time% Running CCleaner
call CCleaner64.exe
GOTO g
::-------------------------CCleaner End--------------------------------------

::------------------------Tron Script------------------------------------------------
:s
Cls
echo %time% Check System For Tron Files
IF EXIST "tron/Tron.bat" (
Call "tron/Tron.bat"
GOTO g
) ELSE (
echo %time% Please wait, This process may take up to 30mins
echo %time% Downloading Tron Script
call wget.exe -v --no-check-certificate --output-file=Download.log --input-file=Tron.download
cls
Echo %time% Extracting Tron Please wait
Title Tamcru
Call "Tron.exe"
)
echo %time% Starting Tron
IF EXIST "tron/Tron.bat" (
start call "tron/Tron.bat"
) ELSE (
start call "Tron.bat"
)
GOTO g
::-----------------------Tron Script End---------------------------------------------







::------------------------Defraggler -----------------------------------------------
:t
cls
echo %time% Downloading Defraggler Components
call wget.exe -v --no-check-certificate --output-file=DefragglerDownload.log --input-file=Defraggler.download
Title Tamcru
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT 
echo %time% Running Defragger
call Defragglerr.exe
GOTO g
:64BIT
echo %time% Running Defragger
call Defraggler64.exe
GOTO g
::-----------------------Defraggler End--------------------------------------------

::-----------------------Other Removal Tool-------------------------------------------
:u
GOTO g


::-----------------------Other Removal Tool End--------------------------------------------



::-------------------------Manual Malware Scan---------------------------------------
:y
cls
echo %time% Running Manual Malware Scanner 
Call "ManualMalwareScan.exe"
GOTO g
::------------------------Manual Malware Scan End------------------------------------

::===============================Cleanup Tools END===================================


::==================================END==============================================
:x
Cd ..
cls
echo %time% Cleaning Up Tamcru Files
RD /s /q TamcruTemp
:no
exit
