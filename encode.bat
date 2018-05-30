@echo off
rem Author: https://github.com/jankais3r/RDPcopy

rem Set console encoding to Windows 1252. This helps with filenames containing non-ASCII characters (e.g. č/ř/ž/…).
chcp 1252

set arg1=%1

rem Create base64-encoded version of the source file.
certutil -encode %arg1% %UserProfile%\RDPcopy.txt

rem Append file path of the source file to the text file. We do this to preserve the filename during the copy process.
echo | set /p="%arg1%" >> %UserProfile%\RDPcopy.txt

rem Load the content of the created file to clipboard. This will automatically sync it to the host machine's clipboard via RDP.
clip < %UserProfile%\RDPcopy.txt

del %UserProfile%\RDPcopy.txt