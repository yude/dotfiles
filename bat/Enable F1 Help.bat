@echo off
start HelpPane.exe
takeown /f c:\windows\HelpPane.exe
icacls c:\windows\HelpPane.exe /grant Everyone:(X)