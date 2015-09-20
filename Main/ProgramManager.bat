@echo off
::The MIT License (MIT)
::
::Copyright (c) 2015 TomasPimentel
::
::Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without ::restriction, 
::
::including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the ::Software is furnished to 
::
::do so, subject to the following conditions:
::
::The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
::
::THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
::
::NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, ::OUT OF 
::
::OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


::------Create and switch to folder------
md UniqueTempFolder
cd UniqueTempFolder




::------Return To Menu------
SET RETURN=Return
:Return
::------Return To Menu------



::===============================Main Menu==========================================
title *Tamcru* By: Tomas Pimentel (Hacks4life)
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo *  Enter 5 for ------- (Still In Progress)                                    *
echo *                                                                             *
echo *  Enter 6 for Information (Still In Progress)                                *
echo *                                                                             *
echo *  Enter 7 for Virus/Malware/Adware Cleaners                                  *
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
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
SET /P ".=****************************> " <nul
echo ^<****************************>"Windows Repair Menu"
findstr /A:02 /S "*************************" "Windows Repair Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Windows Update Full Reset                                      *
echo *                                                                             *
echo *  Enter 2 For SFC Detail Log (/Desktop)                                      *
echo *                                                                             *
echo *  Enter 3 For Repair                                                         *
echo *                                                                             *
echo *  Enter 4 for Repair                                                         *
echo *                                                                             *
echo *  Enter 5 for Repair                                                         *
echo *                                                                             *
echo *  Enter 6 for Repair                                                         *
echo *                                                                             *
echo *  Enter 7 for Repair                                                         *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
echo *                                                                             *
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
echo Incorrect input & goto a


::============================Windows Repair Menu End===============================
::--------------------------------------Repairs--------------------------------------

:ra
cls
echo Please Wait
net stop bits
cls
echo Please Wait.
net stop wuauserv
cls
echo Please Wait..
net stop appidsvc
cls
echo Please Wait...
net stop cryptsvc
cls
echo Please Wait....
Ipconfig /flushdns
cls
echo Please Wait.....
Del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat"
cls
echo Please Wait......
rmdir %windir%\softwaredistribution /s /q
cls
echo Please Wait.......
sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
cls
echo Please Wait........
cd /d %windir%\system32
cls
echo Please Wait.........
Ren %systemroot%\system32\catroot2 catroot2.bak
cls
echo Please Wait..........
regsvr32.exe /s atl.dll
cls
echo Please Wait...........
regsvr32.exe /s urlmon.dll
cls
echo Please Wait............
regsvr32.exe /s mshtml.dll
cls
echo Please Wait.............
regsvr32.exe /s shdocvw.dll
cls
echo Please Wait..............
regsvr32.exe /s browseui.dll
cls
echo Please Wait...............
regsvr32.exe /s jscript.dll
cls
echo Please Wait................
regsvr32.exe /s vbscript.dll
cls
echo Please Wait.................
regsvr32.exe /s scrrun.dll
cls
echo Please Wait..................
regsvr32.exe /s msxml.dll
cls
echo Please Wait...................
regsvr32.exe /s msxml3.dll
cls
echo Please Wait....................
regsvr32.exe /s msxml6.dll
cls
echo Please Wait.....................
regsvr32.exe /s actxprxy.dll
cls
echo Please Wait......................
regsvr32.exe /s softpub.dll
cls
echo Please Wait.......................
regsvr32.exe /s wintrust.dll
cls
echo Please Wait........................
regsvr32.exe /s dssenh.dll
cls
echo Please Wait.........................
regsvr32.exe /s rsaenh.dll
cls
echo Please Wait..........................
regsvr32.exe /s gpkcsp.dll
cls
echo Please Wait...........................
regsvr32.exe /s sccbase.dll
cls
echo Please Wait............................
regsvr32.exe /s slbcsp.dll
cls
echo Please Wait.............................
regsvr32.exe /s cryptdlg.dll
cls
echo Please Wait..............................
regsvr32.exe /s oleaut32.dll
cls
echo Please Wait...............................
regsvr32.exe /s ole32.dll
cls
echo Please Wait................................
regsvr32.exe /s shell32.dll
cls
echo Please Wait.................................
regsvr32.exe /s initpki.dll
cls
echo Please Wait..................................
regsvr32.exe /s wuapi.dll
cls
echo Please Wait...................................
regsvr32.exe /s wuaueng.dll
cls
echo Please Wait....................................
regsvr32.exe /s wuaueng1.dll
cls
echo Please Wait.....................................
regsvr32.exe /s wucltui.dll
cls
echo Please Wait......................................
regsvr32.exe /s wups.dll
cls
echo Please Wait.......................................
regsvr32.exe /s wups2.dll
cls
echo Please Wait........................................
regsvr32.exe /s wuweb.dll
cls
echo Please Wait.........................................
regsvr32.exe /s qmgr.dll
cls
echo Please Wait..........................................
regsvr32.exe /s qmgrprxy.dll
cls
echo Please Wait...........................................
regsvr32.exe /s wucltux.dll
cls
echo Please Wait............................................
regsvr32.exe /s muweb.dll
cls
echo Please Wait.............................................
regsvr32.exe /s wuwebv.dll
cls
echo Please Wait..............................................
regsvr32 /s wudriver.dll
cls
echo Please Wait...............................................
netsh winsock reset
cls
echo Finishing
net start bits
cls
echo Finishing.
net start wuauserv
cls
echo Finishing..
net start appidsvc
cls
echo Finishing...
net start cryptsvc
cls
echo Finishing....
bitsadmin.exe /reset /allusers
echo Done
Pause
GOTO a

::------------------------------SFC Log-------------------------------------------
:rb
cls
echo Please wait Grabbing cbs.log Info
findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"%userprofile%\Desktop\sfcdetails.txt"
cls
Echo Done.
echo A Detailed SFC log has been moved to your desktop
start "" "%userprofile%\Desktop\sfcdetails.txt"
timeout /t 3
GOTO a
::-------------------------------SFC Log End--------------------------------------

:rc
cls
echo Option 3
pause
GOTO a

:rd
cls
echo Option 4
pause
GOTO a


:re
cls
echo Option 5
pause
GOTO a



:rf
cls
echo Option 6
pause
GOTO a


:rg
cls
echo Option 7
pause
GOTO a


:rh
cls
GOTO %RETURN%

::================================Repairs end=======================================
::==============================Network Repairs=====================================
:b
cls
title *Tamcru* Network Repair Menu
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
SET /P ".=****************************> " <nul
echo ^<****************************>"Network Repair Menu"
findstr /A:02 /S "****************************" "Network Repair Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For IPConfig                                                       *
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
start "" /wait "C:/Program Files/Common Files/Tamcru/Main/Tools/IPInfo.vbs"
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
echo Reseting TCP/IP Complete
Timeout /t 3
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
echo Reseting Winsock Complete
Timeout /t 3
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
echo Flushing ARP cache Complete
Timeout /t 3
GOTO b

::------------------------Flush ARP cache End------------------------------------
::-------------------------Fush DNS----------------------------------------------


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
echo Flushing DNS Complete
Timeout /t 3
GOTO b

::----------------------------FLush DNS End---------------------------------------


:anrf
echo IN PROGRESS 4
GOTO b

:anrg
echo IN PROGRESS 6
GOTO b

::================================Network Repair End================================
::=================================Anti-Virus Menu==================================

:c
title *Tamcru* Anti-Virus Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading Avast Free Anti-Virus
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avast_free_antivirus_setup_online.exe', 

'avast_free_antivirus_setup_online.exe')"
cls
echo Starting Avast Free Anti-Virus Setup
Call avast_free_antivirus_setup_online.exe
GOTO c

:avb
cls
echo Downloading Avast Internet Security (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avast_internet_security_setup_online.exe', 

'avast_internet_security_setup_online.exe')"
cls
echo Starting Avast Internet Security (30-Day Trial) Setup
Call avast_internet_security_setup_online.exe
GOTO c

:avc
cls
echo Downloading Avast Premier Anti-Virus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avast_premier_antivirus_setup_online.exe', 

'avast_premier_antivirus_setup_online.exe')"
cls
echo Starting Avast Premier Anti-Virus (30-Day Trial) Setup
Call avast_premier_antivirus_setup_online.exe
GOTO c

GOTO c
::-----------------------------------Avast End--------------------------------------

::-----------------------------------AVG--------------------------------------------
:ab
title *Tamcru* AVG Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading AVG Free Anti-Virus
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_free_stb_all_6140p1_177.exe', 'avg_free_stb_all_6140p1_177.exe')"
cls
echo Starting AVG Free Anti-Virus Setup
Call avg_free_stb_all_6140p1_177.exe
GOTO c

:aab
cls
echo Downloading AVG Anti-Virus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_avc_stb_all_2015_ltst_197.exe', 'avg_avc_stb_all_2015_ltst_197.exe')"
cls
echo Starting AVG Anti-Virus (30-Day Trial) Setup
Call avg_avc_stb_all_2015_ltst_197.exe
GOTO c


:aac
cls
echo Downloading AVG Internet Security (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_isc_stb_all_2015_ltst_206.exe', 'avg_isc_stb_all_2015_ltst_206.exe')"
cls
echo Starting AVG Internet Security (30-Day Trial) Setup
Call avg_isc_stb_all_2015_ltst_206.exe
GOTO c

:aad
cls
echo Downloading AVG PC Tune Up (30-Day Trial)
echo Please Wait This file may take approximatly 5 - 10 Minutes to download
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/avg_tuht_stf_all_2015_638.exe', 'avg_tuht_stf_all_2015_638.exe')"
cls
echo Starting AVG PC Tune (30-Day Trial) Setup
Call avg_tuht_stf_all_2015_638.exe
GOTO c

:aae
cls
echo Downloading AVG Web Tune Up
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.avg.com/download-web-tuneup', 'AVGWebTuneUp.exe')"
cls
echo Starting PC Tune Setup
Call AVGWebTuneUp.exe
GOTO c


GOTO c
::-------------------------------AVG END--------------------------------------------


::------------------------------Bitdefender-----------------------------------------
:ac
title *Tamcru* Bitdefender Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading Bitdefender Anti-Virus Plus 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_antivirus.exe', 'bitdefender_antivirus.exe')"
cls
echo Starting Bitdefender Anti-Virus Plus 2016 (30-Day Trial) Setup
Call bitdefender_antivirus.exe
GOTO c


:abb
cls
echo Downloading Bitdefender Internet Security 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_isecurity.exe', 'bitdefender_isecurity.exe')"
cls
echo Starting Bitdefender Internet Security 2016 (30-Day Trial) Setup
Call bitdefender_isecurity.exe
GOTO c

:abc
cls
echo Downloading Bitdefender Total Security 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_webts.exe', 'bitdefender_webts.exe')"
cls
echo Starting Bitdefender Total Security 2016 (30-Day Trial) Setup
Call bitdefender_webts.exe
GOTO c

:abd
cls
echo Downloading Bitdefender Windows 8 Security 2016 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Bitdefender/bitdefender_w8security.exe', 'bitdefender_w8security.exe')"
cls
echo Starting Bitdefender Windows 8 Security 2016 (30-Day Trial) Setup
Call bitdefender_w8security.exe
GOTO c


::---------------------------Bitdefender end----------------------------------------

::-----------------------------ESET-------------------------------------------------
:ad
title *Tamcru* ESET Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading ESET NOD32 Antivirus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/ESET/eset_nod32_antivirus_live_installer.exe', 

'eset_nod32_antivirus_live_installer.exe')"
cls
echo Starting ESET NOD32 Antivirus (30-Day Trial) Setup
Call eset_nod32_antivirus_live_installer.exe
GOTO c

:aeb
cls
echo Downloading ESET Smart Security (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/ESET/eset_smart_security_live_installer.exe', 

'eset_smart_security_live_installer.exe')"
cls
echo Starting ESET Smart Security (30-Day Trial) Setup
Call eset_smart_security_live_installer.exe
GOTO c

:aec
cls
echo Downloading ESET Online Scanner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/ESET/esetsmartinstaller_enu.exe', 'esetsmartinstaller_enu.exe')"
cls
echo Starting ESET Online Scanner Setup
Call esetsmartinstaller_enu.exe
GOTO c
::-------------------------------ESET END-------------------------------------------


::-------------------------------Kaspersky------------------------------------------


:ae
title *Tamcru* Kaspersky Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading Kaspersky Anti-Virus (30-Day Trial)
echo This may take 5-10 minutes. File Size : 174MB
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Kaspersky/KasperskyAV.exe', 'KasperskyAV.exe')"
cls
echo Starting Kaspersky Anti-Virus (30-Day Trial) Setup
Call KasperskyAV.exe
GOTO c

:aka
cls
echo Downloading Internet Security (30-Day Trial)
echo This may take 5-10 minutes. File Size : 176MB
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Kaspersky/KasperskyIS.exe', 'KasperskyIS.exe')"
cls
echo Starting Kaspersky Internet Security (30-Day Trial) Setup
Call KasperskyIS.exe
GOTO c

:aka
cls
echo Downloading Kaspersky Total Security (30-Day Trial)
echo This may take 5-10 minutes. File Size : 172MB
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/Kaspersky/KasperskyTS.exe', 'KasperskyTS.exe')"
cls
echo Starting Kaspersky Total Security (30-Day Trial) Setup
Call KasperskyTS.exe
GOTO c
::------------------------------Kaspersky end---------------------------------------

::--------------------------------McAfee--------------------------------------------
:af
title *Tamcru* McAfee Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading McAfee Anti-Virus (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/McAfee/McAfeeAntiVirus.exe', 'McAfeeAntiVirus.exe')"
cls
echo Starting McAfee Anti-Virus (30-Day Trial) Setup
Call McAfeeAntiVirus.exe
GOTO c
::---------------------------  McAfee End-------------------------------------------

::-----------------------------TrendMicro-------------------------------------------
:ag
title *Tamcru* TrendMicro Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading TrendMicro Premium Security 10 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/TrendMicro/TrendMicro_MAX_10.0_US-en_Downloader.exe', 

'TrendMicro_MAX_10.0_US-en_Downloader.exe')"
cls
echo Starting TrendMicro Premium Security 10 (30-Day Trial) Setup
Call TrendMicro_MAX_10.0_US-en_Downloader.exe
GOTO c

:atb
cls
echo Downloading TrendMicro Internet Security 10 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/TrendMicro/TrendMicro_TIS_10.0_US-en_Downloader.exe', 

'TrendMicro_TIS_10.0_US-en_Downloader.exe')"
cls
echo Starting TrendMicro Internet Security 10 (30-Day Trial) Setup
Call TrendMicro_TIS_10.0_US-en_Downloader.exe
GOTO c


:atc
cls
echo Downloading TrendMicro AntiVirus + Security 10 (30-Day Trial)
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Anti-Viruses/TrendMicro/TrendMicro_TAV_10.0_US-en_Downloader.exe', 

'TrendMicro_TAV_10.0_US-en_Downloader.exe')"
cls
echo Starting TrendMicro AntiVirus + Security 10 (30-Day Trial) Setup
Call TrendMicro_TIS_10.0_US-en_Downloader.exe
GOTO c

::--------------------------------TrendMicro End------------------------------------





::===============================Anti-Viruses End===================================


::=============================== Removal Tools=====================================
:d
start "" "C:/Program Files/Common Files/Tamcru/Main/Warnings/Safemode.vbs"
:dm
title *Tamcru* Removal Tools Menu
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Downloading Avast Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/avastclear.exe', 'avastclear.exe')"
cls
echo Starting Avast Removal Tool
Call avastclear.exe
GOTO dm
::-------------------------Avast Removal Tool End-----------------------------------


::----------------------------AVG Removal Tool--------------------------------------
:armb
cls 
echo Downloading AVG Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/AVG_Remover.exe', 'AVG_Remover.exe')"
cls
echo Starting AVG Removal Tool
Call AVG_Remover.exe
GOTO dm
::--------------------------AVG Removal Tool End------------------------------------

::------------------------Bitdefender Removal Tool----------------------------------
:armc
cls 
echo Downloading Bitdefender Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/BitdefenderUninstallTool.exe', 'BitdefenderUninstallTool.exe')"
cls
echo Starting BitDefender Removal Tool
Call BitdefenderUninstallTool.exe
GOTO dm
::----------------------BitDefender Removal Tool End--------------------------------

::---------------------------ESET Removal Tool--------------------------------------
:armd
cls 
echo Downloading ESET Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/ESETUninstaller.exe', 'ESETUninstaller.exe')"
cls
echo Starting ESET Removal Tool
Call ESETUninstaller.exe
GOTO dm
::-------------------------ESET Removal Tool-----------------------------------------

::-----------------------Kaspersky Removal Tool--------------------------------------
:arme
cls 
echo Downloading Kaspersky Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/kavremover.exe', 'kavremover.exe')"
cls
echo Starting Kaspersky Removal Tool
Call kavremover.exe
GOTO dm
::---------------------Kaspersky Removal Tool End------------------------------------

::-------------------------McAfee Removal Tool---------------------------------------
:armf
cls 
echo Downloading McAfee Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/MCPR.exe', 'MCPR.exe')"
cls
echo Starting McAfee Removal Tool
Call MCPR.exe
GOTO dm
::--------------------------McAfee Removal Tool---------------------------------------

::------------------------Trend Micro Removal Tool------------------------------------
:armg
cls 
echo Downloading TrendMicro Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/TrendMicroUninstalltool.exe', 'TrendMicroUninstalltool.exe')"
cls
echo Starting TrendMicro Removal Tool
Call TrendMicroUninstalltool.exe
GOTO dm
::----------------------Trend Micro Removal Tool End-----------------------------------

::---------------------------Avira Removal Tool----------------------------------------
:armh
cls 
echo Downloading Avira Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/aviraregistrycleaner.exe', 'aviraregistrycleaner.exe')"
cls
echo Starting Avira Removal Tool
Call aviraregistrycleaner.exe
GOTO dm
::------------------------Avira Removal Tool End---------------------------------------

::--------------------------Norton Removal Tool----------------------------------------
:armi
cls
echo Downloading Norton Removal Tool
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Removal_Tools/Norton_Removal_Tool.exe', 'Norton_Removal_Tool.exe')"
cls
echo Starting Norton Removal Tool
Call Norton_Removal_Tool.exe
GOTO dm
::------------------------Norton Removal Tool End--------------------------------------

::=========================Removal Tools END===========================================

::=============================Unknown=================================================
:e
cls 
GOTO %RETURN%
::===========================Unknown END===============================================

:f
title *Tamcru* Information Menu
::===============================INFO===============================================
cls
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
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
echo Still In Progress
Pause
GOTO f


:ib
cls 
echo Still In Progress
Pause
GOTO f


:ic
cls 
echo Still In Progress
Pause
GOTO f


:id
cls 
echo Still In Progress
Pause
GOTO f


:ie
cls 
echo Still In Progress
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
echo Downloading Browser
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/B1/Browser.exe', 'Browser.exe')"
cls
echo Done :D
echo Running Browser
call Browser.exe
GOTO %RETURN%
::----------------------------------Browser End-------------------------------------








:g
title *Tamcru* Malware Cleanup Menu Menu
cls 
::-------------------------------Malware Cleanup------------------------------------
SET /P ".=******************************************************************> " <nul
echo ^1.7>"VERSION"
findstr /A:0D /S "1.7" "VERSION"
SET /P ".=****************************> " <nul
echo ^<***********************************>"Cleanup Menu"
findstr /A:02 /S "**********************************" "Cleanup Menu"
echo *******************************************************************************
echo *                                                                             *
echo *  Enter 1 For Adware Scanner                                                 *
echo *                                                                             *
echo *  Enter 2 For Malware Scanner                                                *
echo *                                                                             *
echo *  Enter 3 For Riskware Scanner                                               *
echo *                                                                             *
echo *  Enter 4 For Crapware Scanner                                               *
echo *                                                                             *
echo *  Enter 5 for Spyware Scanner                                                *
echo *                                                                             *
echo *  Enter 6 for Rootkit Scanner                                                *
echo *                                                                             *
echo *  Enter 7 for Uninstall/Startup Cleanup                                      *
echo *                                                                             *
echo *  Enter 8 To Go Back                                                         *
echo *                                                                             *
echo *  Enter 9 To End                                                             *
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
echo Downloading Adware Scanner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/AdwCleaner/AdwCleaner.exe', 'AdwCleaner.exe')"
cls
echo Running AdwCleaner
call AdwCleaner.exe
GOTO g

:64BIT
echo Downloading Adware Scanner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/AdwCleaner/AdwCleaner.exe', 'AdwCleaner.exe')"
cls
echo Running AdwCleaner
call AdwCleaner.exe
GOTO g
::-----------------------------Adware Clean End------------------------------------






::---------------------------------RogueKiller-------------------------------------
:j
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT
echo Downloading Malware Scanner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/RogueKiller/RogueKiller.exe', 'RogueKiller.exe')"
cls
echo Running RogueKiller
call RogueKiller.exe
GOTO g

:64BIT
echo Downloading Malware Scanner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/RogueKiller/RogueKillerX64.exe', 'RogueKillerX64.exe')"
cls
echo Running RogueKiller
call RogueKillerX64.exe
GOTO g

::--------------------------------RogueKiller End----------------------------------













::------------------------------Riskware Removal-----------------------------------
:k
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT 
echo Download HitmanPro
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/HitmanPro/HitmanPro.exe', 'HitmanPro.exe')"
cls
echo Done :D
echo Running HitmanPro
call HitmanPro.exe
pause
GOTO g
:64BIT
echo Downloading HitmanPro
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/HitmanPro/HitmanPro_x64.exe', 'HitmanPro_x64.exe')"
cls
echo Done :D
echo Running HitmanPro
call HitmanPro_x64.exe
wait
GOTO g
::---------------------------Riskware Removal END----------------------------------










---------------------------------Crap Killer---------------------------------------

:l
cls 
echo Downloading Crap Killer
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/CrapKiller/CrapKiller.cmd', 'CrapKiller.cmd')"
Call CrapKiller.cmd
GOTO g

--------------------------------Crap Killer End------------------------------------







---------------------------------Spyware Removal-----------------------------------
:m
cls
echo Downloading AntiSpyware Scanner.
echo Please be patient this can take up to 5 minutes
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/Spybot/SpybotPortable.exe', 'SpybotPortable.exe')"
call SpybotProtable.exe
GOTO g
--------------------------------spyware Removal END--------------------------------

----------------------------------Rootkit Removal----------------------------------
:n
cls
echo Downloading Anti-Rootkit Scanner.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/Rootkit/tdsskiller.exe', 'tdsskiller.exe')"
echo Done :D
echo Running Anti-Rootkit Scanner
call tdsskiller.exe
GOTO g
--------------------------------Rootkit Removal End--------------------------------









::-----------------------------------CCleaner--------------------------------------
:o
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT 
echo Download CCleaner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/CCleaner/32bit/CCleaner.exe', 'CCleaner.exe')"
cls
echo Done :D
echo Running CCleaner
call CCleaner.exe
pause
GOTO g
:64BIT
echo Downloading CCleaner
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/38784088/Malware_Removal/CCleaner/64bit/CCleaner64.exe', 'CCleaner64.exe')"
cls
echo Done :D
echo Running CCleaner
call CCleaner64.exe
wait
GOTO g
::--------------------------------CCleaner END---------------------------------------
::===============================Cleanup Tools END===================================


::==================================END==============================================
:x
Cd..
RD /s /q UniqueTempFolder
exit
