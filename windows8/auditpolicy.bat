@echo off

REM Author: Mac Lawson
REM License: GPLv3

REM Disable unnecessary services

REM Enable auditing for account logon events
auditpol /set /subcategory:"Account Logon" /success:enable /failure:enable

REM Enable auditing for account management
auditpol /set /subcategory:"Account Management" /success:enable /failure:enable

REM Enable auditing for directory service access
auditpol /set /subcategory:"Directory Service Access" /success:enable /failure:enable

REM Enable auditing for logon events
auditpol /set /subcategory:"Logon" /success:enable /failure:enable

REM Enable auditing for object access
auditpol /set /subcategory:"Object Access" /success:enable /failure:enable

REM Enable auditing for privilege use
auditpol /set /subcategory:"Privilege Use" /success:enable /failure:enable

REM Enable auditing for process tracking
auditpol /set /subcategory:"Process Tracking" /success:enable /failure:enable

REM Enable auditing for system events
auditpol /set /subcategory:"System" /success:enable /failure:enable

REM Apply the new audit policies
gpupdate /force

REM Display the updated audit policies
auditpol /get /subcategory:"Account Logon"
auditpol /get /subcategory:"Account Management"
auditpol /get /subcategory:"Directory Service Access"
auditpol /get /subcategory:"Logon"
auditpol /get /subcategory:"Object Access"
auditpol /get /subcategory:"Privilege Use"
auditpol /get /subcategory:"Process Tracking"
auditpol /get /subcategory:"System"
