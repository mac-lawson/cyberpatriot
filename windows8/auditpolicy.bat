@echo off

REM Author: Mac Lawson
REM License: GPLv3

REM Enable auditing for account logon events
echo Enabling auditing for account logon events...
auditpol.exe /set /subcategory:"Account Logon" /success:enable /failure:enable

REM Enable auditing for account management
echo Enabling auditing for account management...
auditpol.exe /set /subcategory:"Account Management" /success:enable /failure:enable

REM Enable auditing for directory service access
echo Enabling auditing for directory service access...
auditpol.exe /set /subcategory:"Directory Service Access" /success:enable /failure:enable

REM Enable auditing for logon events
echo Enabling auditing for logon events...
auditpol.exe /set /subcategory:"Logon" /success:enable /failure:enable

REM Enable auditing for object access
echo Enabling auditing for object access...
auditpol.exe /set /subcategory:"Object Access" /success:enable /failure:enable

REM Enable auditing for privilege use
echo Enabling auditing for privilege use...
auditpol.exe /set /subcategory:"Privilege Use" /success:enable /failure:enable

REM Enable auditing for process tracking
echo Enabling auditing for process tracking...
auditpol.exe /set /subcategory:"Process Tracking" /success:enable /failure:enable

REM Enable auditing for system events
echo Enabling auditing for system events...
auditpol.exe /set /subcategory:"System" /success:enable /failure:enable

REM Display the updated audit policies
echo Displaying the updated audit policies...
auditpol.exe /get /subcategory:"Account Logon"
auditpol.exe /get /subcategory:"Account Management"
auditpol.exe /get /subcategory:"Directory Service Access"
auditpol.exe /get /subcategory:"Logon"
auditpol.exe /get /subcategory:"Object Access"
auditpol.exe /get /subcategory:"Privilege Use"
auditpol.exe /get /subcategory:"Process Tracking"
auditpol.exe /get /subcategory:"System"
