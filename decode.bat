@echo off
rem Author: https://github.com/jankais3r/RDPcopy

rem Set console encoding to Windows 1252. This helps with filenames containing non-ASCII characters (e.g. č/ř/ž/…).
chcp 1252

rem Save clipboard content to a file.
powershell -STA "Add-Type -as System.Windows.Forms; [Windows.Forms.Clipboard]::GetText()" > %UserProfile%\RDPcopy.txt

rem Read the last line in the file and parse the original filename out of it.
for /F "delims=" %%i in ('powershell "Get-Content $env:USERPROFILE\RDPcopy.txt -Last 1 | Split-Path -leaf"') do set RDPcopyFilename=%%i

rem Decode the base64 blob back into a file and name it properly.
certutil -decode %UserProfile%\RDPcopy.txt ".\%RDPcopyFilename%

del %UserProfile%\RDPcopy.txt