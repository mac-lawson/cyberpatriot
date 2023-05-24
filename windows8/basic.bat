@echo off

REM Author: Mac Lawson
REM License: GPLv3

REM Disable unnecessary services
echo Disabling unnecessary services...
sc config "Telnet" start= disabled
sc config "FTP" start= disabled
sc config "RemoteRegistry" start= disabled
sc config "SNMP" start= disabled

REM Enable Windows Firewall
echo Enabling Windows Firewall...
netsh advfirewall set allprofiles state on

REM Update Windows Defender
echo Updating Windows Defender...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate

REM Install Windows Updates
echo Installing Windows Updates...
"%SystemRoot%\system32\wuauclt.exe" /detectnow /updatenow

REM Set strong password policy
echo Setting strong password policy...
net accounts /minpwlen:8
net accounts /maxpwage:30

REM Disable Guest account
echo Disabling Guest account...
net user Guest /active:no

REM Disable AutoPlay
echo Disabling AutoPlay...
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f

REM Enable User Account Control (UAC)
echo Enabling User Account Control (UAC)...
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f

REM Enable Windows Update automatic installation
echo Enabling Windows Update automatic installation...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 4 /f

REM Enable Windows Error Reporting
echo Enabling Windows Error Reporting...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 0 /f

REM Disable Remote Desktop
echo Disabling Remote Desktop...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f

REM Disable Autorun/Autoplay for USB drives
echo Disabling Autorun/Autoplay for USB drives...
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 4 /f

REM Disable IPv6
echo Disabling IPv6...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 255 /f

echo System security configuration completed.
