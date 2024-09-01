chcp 65001 > nul
@echo off
@title "Post Setup"
SETLOCAL EnableDelayedExpansion

taskkill /f /im explorer.exe

Echo "Installing Visual C Runtimes"
start /b /wait "" "C:\Modules\VisualCAIO\install_all.bat" >nul 2>&1
cls

Echo "Installing 7zip"
start /b /wait "" "C:\Modules\7z1900-x64.msi" /passive >nul 2>&1
cls

Echo "Installing OpenShell"
start /b /wait "" "C:\Modules\OpenShellSetup_4_4_142.exe" /qn ADDLOCAL=StartMenu >nul 2>&1
cls

echo "7zip Settings"
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.7z" /ve /t REG_SZ /d "7-Zip.7z" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.7z" /ve /t REG_SZ /d "7z Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.7z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.7z\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.7z\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.7z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.7z" /ve /t REG_SZ /d "7-Zip.7z" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.7z" /ve /t REG_SZ /d "7z Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.7z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.7z\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.7z\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.7z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.zip" /ve /t REG_SZ /d "7-Zip.zip" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.zip" /ve /t REG_SZ /d "zip Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.zip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.zip\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.zip\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.zip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.zip" /ve /t REG_SZ /d "7-Zip.zip" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.zip" /ve /t REG_SZ /d "zip Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.zip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.zip\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.zip\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.zip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.rar" /ve /t REG_SZ /d "7-Zip.rar" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rar" /ve /t REG_SZ /d "rar Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,3" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rar\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rar\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.rar" /ve /t REG_SZ /d "7-Zip.rar" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rar" /ve /t REG_SZ /d "rar Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rar\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rar\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.001" /ve /t REG_SZ /d "7-Zip.001" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.001" /ve /t REG_SZ /d "001 Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.001\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,9" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.001\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.001\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.001\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.001" /ve /t REG_SZ /d "7-Zip.001" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.001" /ve /t REG_SZ /d "001 Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.001\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,9" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.001\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.001\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.001\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.cab" /ve /t REG_SZ /d "7-Zip.cab" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cab" /ve /t REG_SZ /d "cab Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cab\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,7" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cab\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cab\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cab\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.cab" /ve /t REG_SZ /d "7-Zip.cab" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cab" /ve /t REG_SZ /d "cab Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cab\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,7" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cab\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cab\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cab\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.iso" /ve /t REG_SZ /d "7-Zip.iso" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.iso" /ve /t REG_SZ /d "iso Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.iso\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,8" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.iso\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.iso\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.iso\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.iso" /ve /t REG_SZ /d "7-Zip.iso" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.iso" /ve /t REG_SZ /d "iso Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.iso\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,8" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.iso\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.iso\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.iso\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.xz" /ve /t REG_SZ /d "7-Zip.xz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xz" /ve /t REG_SZ /d "xz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.xz" /ve /t REG_SZ /d "7-Zip.xz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xz" /ve /t REG_SZ /d "xz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.txz" /ve /t REG_SZ /d "7-Zip.txz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.txz" /ve /t REG_SZ /d "txz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.txz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.txz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.txz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.txz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.txz" /ve /t REG_SZ /d "7-Zip.txz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.txz" /ve /t REG_SZ /d "txz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.txz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.txz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.txz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.txz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.lzma" /ve /t REG_SZ /d "7-Zip.lzma" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzma" /ve /t REG_SZ /d "lzma Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzma\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,16" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzma\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzma\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzma\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.lzma" /ve /t REG_SZ /d "7-Zip.lzma" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzma" /ve /t REG_SZ /d "lzma Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzma\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,16" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzma\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzma\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzma\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.tar" /ve /t REG_SZ /d "7-Zip.tar" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tar" /ve /t REG_SZ /d "tar Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,13" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tar\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tar\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tar" /ve /t REG_SZ /d "7-Zip.tar" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tar" /ve /t REG_SZ /d "tar Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,13" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tar\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tar\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.cpio" /ve /t REG_SZ /d "7-Zip.cpio" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cpio" /ve /t REG_SZ /d "cpio Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cpio\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,12" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cpio\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cpio\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.cpio\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.cpio" /ve /t REG_SZ /d "7-Zip.cpio" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cpio" /ve /t REG_SZ /d "cpio Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cpio\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,12" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cpio\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cpio\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.cpio\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.bz2" /ve /t REG_SZ /d "7-Zip.bz2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bz2" /ve /t REG_SZ /d "bz2 Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bz2\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bz2\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.bz2" /ve /t REG_SZ /d "7-Zip.bz2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bz2" /ve /t REG_SZ /d "bz2 Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bz2\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bz2\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.bzip2" /ve /t REG_SZ /d "7-Zip.bzip2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bzip2" /ve /t REG_SZ /d "bzip2 Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bzip2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bzip2\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bzip2\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.bzip2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.bzip2" /ve /t REG_SZ /d "7-Zip.bzip2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bzip2" /ve /t REG_SZ /d "bzip2 Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bzip2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bzip2\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bzip2\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.bzip2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.tbz2" /ve /t REG_SZ /d "7-Zip.tbz2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz2" /ve /t REG_SZ /d "tbz2 Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz2\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz2\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tbz2" /ve /t REG_SZ /d "7-Zip.tbz2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz2" /ve /t REG_SZ /d "tbz2 Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz2\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz2\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.tbz" /ve /t REG_SZ /d "7-Zip.tbz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz" /ve /t REG_SZ /d "tbz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tbz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tbz" /ve /t REG_SZ /d "7-Zip.tbz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz" /ve /t REG_SZ /d "tbz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tbz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.gz" /ve /t REG_SZ /d "7-Zip.gz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gz" /ve /t REG_SZ /d "gz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.gz" /ve /t REG_SZ /d "7-Zip.gz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gz" /ve /t REG_SZ /d "gz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.gzip" /ve /t REG_SZ /d "7-Zip.gzip" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gzip" /ve /t REG_SZ /d "gzip Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gzip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gzip\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gzip\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.gzip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.gzip" /ve /t REG_SZ /d "7-Zip.gzip" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gzip" /ve /t REG_SZ /d "gzip Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gzip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gzip\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gzip\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.gzip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.tgz" /ve /t REG_SZ /d "7-Zip.tgz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tgz" /ve /t REG_SZ /d "tgz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tgz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tgz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tgz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tgz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tgz" /ve /t REG_SZ /d "7-Zip.tgz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tgz" /ve /t REG_SZ /d "tgz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tgz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tgz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tgz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tgz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.tpz" /ve /t REG_SZ /d "7-Zip.tpz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tpz" /ve /t REG_SZ /d "tpz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tpz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tpz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tpz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.tpz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tpz" /ve /t REG_SZ /d "7-Zip.tpz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tpz" /ve /t REG_SZ /d "tpz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tpz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tpz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tpz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.tpz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.z" /ve /t REG_SZ /d "7-Zip.z" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.z" /ve /t REG_SZ /d "z Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.z\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.z\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.z" /ve /t REG_SZ /d "7-Zip.z" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.z" /ve /t REG_SZ /d "z Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.z\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.z\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.taz" /ve /t REG_SZ /d "7-Zip.taz" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.taz" /ve /t REG_SZ /d "taz Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.taz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.taz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.taz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.taz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.taz" /ve /t REG_SZ /d "7-Zip.taz" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.taz" /ve /t REG_SZ /d "taz Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.taz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.taz\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.taz\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.taz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.lzh" /ve /t REG_SZ /d "7-Zip.lzh" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzh" /ve /t REG_SZ /d "lzh Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzh\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzh\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzh\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lzh\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.lzh" /ve /t REG_SZ /d "7-Zip.lzh" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzh" /ve /t REG_SZ /d "lzh Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzh\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzh\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzh\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lzh\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.lha" /ve /t REG_SZ /d "7-Zip.lha" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lha" /ve /t REG_SZ /d "lha Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lha\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lha\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lha\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.lha\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.lha" /ve /t REG_SZ /d "7-Zip.lha" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lha" /ve /t REG_SZ /d "lha Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lha\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lha\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lha\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.lha\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.rpm" /ve /t REG_SZ /d "7-Zip.rpm" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rpm" /ve /t REG_SZ /d "rpm Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rpm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,10" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rpm\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rpm\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.rpm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.rpm" /ve /t REG_SZ /d "7-Zip.rpm" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rpm" /ve /t REG_SZ /d "rpm Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rpm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,10" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rpm\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rpm\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.rpm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.deb" /ve /t REG_SZ /d "7-Zip.deb" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.deb" /ve /t REG_SZ /d "deb Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.deb\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,11" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.deb\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.deb\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.deb\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.deb" /ve /t REG_SZ /d "7-Zip.deb" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.deb" /ve /t REG_SZ /d "deb Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.deb\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,11" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.deb\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.deb\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.deb\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.arj" /ve /t REG_SZ /d "7-Zip.arj" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.arj" /ve /t REG_SZ /d "arj Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.arj\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,4" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.arj\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.arj\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.arj\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.arj" /ve /t REG_SZ /d "7-Zip.arj" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.arj" /ve /t REG_SZ /d "arj Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.arj\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.arj\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.arj\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.arj\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.vhd" /ve /t REG_SZ /d "7-Zip.vhd" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.vhd" /ve /t REG_SZ /d "vhd Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.vhd\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,20" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.vhd\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.vhd\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.vhd\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.vhd" /ve /t REG_SZ /d "7-Zip.vhd" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.vhd" /ve /t REG_SZ /d "vhd Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.vhd\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,20" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.vhd\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.vhd\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.vhd\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.wim" /ve /t REG_SZ /d "7-Zip.wim" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.wim" /ve /t REG_SZ /d "wim Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.wim\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.wim\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.wim\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.wim\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.wim" /ve /t REG_SZ /d "7-Zip.wim" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.wim" /ve /t REG_SZ /d "wim Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.wim\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.wim\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.wim\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.wim\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.swm" /ve /t REG_SZ /d "7-Zip.swm" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.swm" /ve /t REG_SZ /d "swm Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.swm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.swm\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.swm\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.swm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.swm" /ve /t REG_SZ /d "7-Zip.swm" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.swm" /ve /t REG_SZ /d "swm Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.swm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.swm\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.swm\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.swm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.fat" /ve /t REG_SZ /d "7-Zip.fat" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.fat" /ve /t REG_SZ /d "fat Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.fat\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,21" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.fat\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.fat\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.fat\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.fat" /ve /t REG_SZ /d "7-Zip.fat" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.fat" /ve /t REG_SZ /d "fat Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.fat\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,21" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.fat\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.fat\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.fat\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.ntfs" /ve /t REG_SZ /d "7-Zip.ntfs" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.ntfs" /ve /t REG_SZ /d "ntfs Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.ntfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,22" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.ntfs\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.ntfs\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.ntfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.ntfs" /ve /t REG_SZ /d "7-Zip.ntfs" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.ntfs" /ve /t REG_SZ /d "ntfs Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.ntfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,22" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.ntfs\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.ntfs\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.ntfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.dmg" /ve /t REG_SZ /d "7-Zip.dmg" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.dmg" /ve /t REG_SZ /d "dmg Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.dmg\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,17" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.dmg\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.dmg\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.dmg\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.dmg" /ve /t REG_SZ /d "7-Zip.dmg" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.dmg" /ve /t REG_SZ /d "dmg Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.dmg\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,17" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.dmg\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.dmg\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.dmg\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.hfs" /ve /t REG_SZ /d "7-Zip.hfs" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.hfs" /ve /t REG_SZ /d "hfs Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.hfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,18" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.hfs\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.hfs\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.hfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.hfs" /ve /t REG_SZ /d "7-Zip.hfs" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.hfs" /ve /t REG_SZ /d "hfs Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.hfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,18" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.hfs\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.hfs\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.hfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.xar" /ve /t REG_SZ /d "7-Zip.xar" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xar" /ve /t REG_SZ /d "xar Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,19" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xar\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xar\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.xar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.xar" /ve /t REG_SZ /d "7-Zip.xar" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xar" /ve /t REG_SZ /d "xar Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,19" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xar\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xar\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.xar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\.squashfs" /ve /t REG_SZ /d "7-Zip.squashfs" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.squashfs" /ve /t REG_SZ /d "squashfs Archive" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.squashfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,24" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.squashfs\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.squashfs\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Classes\7-Zip.squashfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.squashfs" /ve /t REG_SZ /d "7-Zip.squashfs" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.squashfs" /ve /t REG_SZ /d "squashfs Archive" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.squashfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,24" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.squashfs\shell" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.squashfs\shell\open" /ve /t REG_SZ /d "" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\7-Zip.squashfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "GlobalAssocChangedCounter" /t REG_DWORD /d "10" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM\Columns" /v "RootFolder" /t REG_BINARY /d "0100000000000000010000000400000001000000A0000000" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "FolderHistory" /t REG_BINARY /d "0000" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "PanelPath0" /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "FlatViewArc0" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "PanelPath1" /t REG_SZ /d "" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "FlatViewArc1" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "ListMode" /t REG_DWORD /d "771" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "Position" /t REG_BINARY /d "3400000034000000D40500002B03000000000000" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\7-Zip\FM" /v "Panels" /t REG_BINARY /d "0100000000000000C6020000" /f
cls

cls & echo "Disabling process mitigation"

for %%i in (dwm.exe lsass.exe svchost.exe WmiPrvSE.exe winlogon.exe csrss.exe) do (
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i" /v "MitigationOptions" /t REG_BINARY /d "22222222222222222222222222222222" /f > NUL 2>&1
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i" /v "MitigationAuditOptions" /t REG_BINARY /d "22222222222222222222222222222222" /f > NUL 2>&1
)

cls & echo "Editing BCDEDIT"
bcdedit /deletevalue useplatformclock
bcdedit /set disabledynamictick yes
bcdedit /set bootmenupolicy legacy
bcdedit /set testsigning on
bcdedit /set debug No
bcdedit /set isolatedcontext No
bcdedit /set ems No
bcdedit /set bootems No
bcdedit /set disableelamdrivers Yes
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set hypervisorlaunchtype Off
bcdedit /set {current} recoveryenabled no
bcdedit /set vsmlaunchtype Off
bcdedit /set tscsyncpolicy enhanced
bcdedit /set vm No
bcdedit /timeout 8
bcdedit /set nx alwaysoff
powercfg -h off
label C: reb0rnOS
bcdedit /set {current} description "2022-Server | reb0rnOS"

cls & echo "Disabling USB Powersavings"
for %%a in (
EnhancedPowerManagementEnabled
AllowIdleIrpInD3
EnableSelectiveSuspend
DeviceSelectiveSuspended
SelectiveSuspendEnabled
SelectiveSuspendOn
EnumerationRetryCount
ExtPropDescSemaphore
WaitWakeEnabled
D3ColdSupported
WdfDirectedPowerTransitionEnable
EnableIdlePowerManagement
IdleInWorkingState
) do for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%a" ^| findstr "HKEY"') do reg.exe add "%%b" /v "%%a" /t REG_DWORD /d "0" /f > NUL 2>&1

Powershell -file "C:\Windows\Modules\Disable-PNP.ps1"

cls & echo "Disabling Disk Checks, Low Space - Searching & Tracking"
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f

cls & echo "Disabling NetBIOS over TCP/IP (This only applies if the Driver is enabled)"
for /f "delims=" %%u in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces" /s /f "NetbiosOptions" ^| findstr "HKEY"') do (
Reg.exe add "%%u" /v "NetbiosOptions" /t REG_DWORD /d "2" /f
)

cls & echo "Disabling usage of firewall"
netsh advfirewall set allprofiles state off
powershell Remove-AutologgerConfig -Name "autologger-diagtrack-listener", "cellcore", "cloudexperiencehostoobe", "lwtnetlog", "mellanox-Kernel", "microsoft-windows-assignedaccess-trace", "microsoft-windows-rdp-graphics-rdpidd-trace", "microsoft-windows-setup", "netcore", "ntfslog", "peauthlog", "radiomgr", "readyboot", "refslog", "setupplatform", "setupplatformtel", "spoolerlogger", "tcpiplogger", "wifisession", "wifidriverihvsessionrepro", "wifidriverihvsession", "wfp-ipsec-trace", "ubpm", "tilestore"
PowerRun.exe /SW:0 Reg.exe delete "HKLM\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f > nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f > nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\ControlSet001\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\ControlSet001\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f

Echo "Tweaking Nic Settings"
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
for /f %%i in ('reg query "%%a" /v "*MaxRssProcessors" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*MaxRssProcessors" /t REG_SZ /d "2" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*ReceiveBuffers" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*ReceiveBuffers" /t REG_SZ /d "2048" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*TransmitBuffers" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*TransmitBuffers" /t REG_SZ /d "2048" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*AlternateSemaphoreDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*AlternateSemaphoreDelay" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*DeviceSleepOnDisconnect" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*DeviceSleepOnDisconnect" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*EEE" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*EEE" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*FlowControl" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*FlowControl" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*ModernStandbyWoLMagicPacket" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*ModernStandbyWoLMagicPacket" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*Node" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*Node" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*PMARPOffload" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*PMARPOffload" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*PMNSOffload" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*PMNSOffload" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*RssBaseProcNumber" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*RssBaseProcNumber" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*RxAbsIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*RxAbsIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*RxIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*RxIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*SelectiveSuspend" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*SelectiveSuspend" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*TxAbsIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*TxAbsIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*TxIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*TxIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*WakeOnMagicPacket" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "*WakeOnPattern" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "*WakeOnPattern" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "AdvancedEEE" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "AdvancedEEE" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "AutoDisableGigabit" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "AutoPowerSaveModeEnabled" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "EEELinkAdvertisement" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "EeePhyEnable" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EeePhyEnable" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "EnableGreenEthernet" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "EnableModernStandby" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EnableModernStandby" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "GigaLite" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "GigaLite" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "LogLevelWarn" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "LogLevelWarn" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "Node" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "Node" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "PnPCapabilities" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "PnPCapabilities" /t REG_DWORD /d "24" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "PowerDownPll" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "PowerDownPll" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "PowerSavingMode" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "PowerSavingMode" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "ReduceSpeedOnPowerDown" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "RxAbsIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "RxAbsIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "RxIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "RxIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "S5WakeOnLan" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "S5WakeOnLan" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "SavePowerNowEnabled" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "SavePowerNowEnabled" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "TxAbsIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "TxAbsIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "TxIntDelay" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "TxIntDelay" /t REG_SZ /d "1" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "ULPMode" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "ULPMode" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "WakeOnLink" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "WakeOnLink" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "WakeOnSlot" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "WakeOnSlot" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "WakeUpModeCap" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "WakeUpModeCap" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "WolShutdownLinkSpeed" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "WaitAutoNegComplete" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "WaitAutoNegComplete" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "LogLinkStateEvent" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "LogLinkStateEvent" /t REG_SZ /d "16" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "EnablePME" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EnablePME" /t REG_SZ /d "16" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "SavePowerNowEnabled" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "SavePowerNowEnabled" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f >nul 2>&1
)
for /f %%i in ('reg query "%%a" /v "SavePowerNowEnabled" ^| findstr "HKEY"') do (
Reg.exe add "%%i" /v "NicAutoPowerSaver" /t REG_SZ /d "0" /f >nul 2>&1
)
) >nul 2>&1

cls & echo "CONFIGURING RSSQueues, dependant on numbers of cores"
for /F "tokens=* skip=1" %%z in ('wmic cpu get NumberOfCores  ^| findstr "."') do set CPUCORES=%%z

if %CPUCORES% LEQ 8 (
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum\%%i" /v "Driver"') do (
for /f %%i in ('echo %%a ^| findstr "{"') do (
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%i" /v "*NumRssQueues" /t REG_SZ /d "2" /f > NUL 2>&1
)
)
)
)

cls & echo "DISABLING Network features in the adapter properties"
PowerShell -NoLogo -NoProfile -NonInteractive -Command "Enable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip,ms_pacer ; Disable-NetAdapterBinding -Name "*" -ComponentID ms_lldp,ms_lltdio,ms_implat,ms_rspndr,ms_tcpip6,ms_server,ms_msclient"
powershell Disable-NetFirewallRule

:: AFD Parameters
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "IrpStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "PriorityBoost" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "DoNotHoldNicBuffers" /t REG_DWORD /d "1" /f

:: NDIS Parameters
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "EnableNicAutoPowerSaverInSleepStudy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "ImplicitPowerRefManagement" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "DebugLoggingMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "TrackNblOwner" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "DisableNDISWatchDog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "ForceLogsInMiniDump" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "DisableWDIWatchdogForceBugcheck" /t REG_DWORD /d "1" /f

cls & echo "Disabling Nagles Algorithm"
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /t REG_DWORD /d "1" /f > NUL 2>&1
)

set supplemental congestionprovider=ctcp

netsh int tcp set heuristics disabled

powershell Set-NetOffloadGlobalSetting -PacketCoalescingFilter disabled

powershell Set-NetTCPSetting -SettingName InternetCustom -Timestamps Disabled

cls & echo "Removing all WMI Autologgers"
PowerRun.exe /SW:0 Reg.exe delete "HKLM\System\CurrentControlSet\Control\WMI\Autologger" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger" /f > NUL 2>&1

echo "Disabling Drivers and Services"
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\afunix" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mpsdrv" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bowser" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\fvevol" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cldflt" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\npsvctrig" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\peauth" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rspndr" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lltdio" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mslldp" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\luafv" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wof" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\filecrypt" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\fileinfo" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\srv2 /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\srvnet" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\storqosflt" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\volsnap" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcifs" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\windowstrustedrt" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\windowstrustedrtproxy" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdfs" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cnghwassist" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dcpsvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KSecPkg" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MMCSS" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBIOS" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rdbss" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tdx" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\udfs" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VerifierExt" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiSYSTEMHost" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\fontcache" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\usosvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\trkwks" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pcasvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdpusersvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wpnuserservice" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wpnservice" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanworkstation" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tokenbroker" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pciide" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spaceport" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\volmgrx" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdrom" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Dfsc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "4" /f
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Cmbatt" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mssmbios" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\acpiex" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\acpipagr" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\acpipmi" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\acpitime" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GPIOClx0101" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iaLPSS2i_GPIO2" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iaLPSS2i_I2C" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iaLPSSi_GPIO" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iaLPSSi_I2C" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\msgpiowin32" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NativeWifiP" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vwififlt" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcmsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tabletinputservice" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d "2" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\Wcmsvc" /v "Start" /t REG_DWORD /d "2" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\Ndisuio" /v "Start" /t REG_DWORD /d "3" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\NativeWifiP" /v "Start" /t REG_DWORD /d "3" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\vwifibus" /v "Start" /t REG_DWORD /d "3" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\vwififlt" /v "Start" /t REG_DWORD /d "1" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\wdiwifi" /v "Start" /t REG_DWORD /d "3" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d "3" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "2" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "2" /f
PowerRun.exe /SW:0 "Reg.exe" add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f

for %%a in (DmaRemappingCompatible) do for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%a" ^| findstr "HKEY"') do reg.exe add "%%b" /v "%%a" /t REG_DWORD /d "0" /f > NUL 2>&1

devmanview /disable "SYSTEM Speaker"
devmanview /disable "SYSTEM Timer"
devmanview /disable "WAN Miniport (IKEv2)"
devmanview /disable "WAN Miniport (IP)"
devmanview /disable "WAN Miniport (IPv6)"
devmanview /disable "WAN Miniport (L2TP)"
devmanview /disable "WAN Miniport (Network Monitor)"
devmanview /disable "WAN Miniport (PPPOE)"
devmanview /disable "WAN Miniport (PPTP)"
devmanview /disable "WAN Miniport (SSTP)"
devmanview /disable "UMBus Root Bus Enumerator"
devmanview /disable "Programmable Interrupt Controller"
devmanview /disable "High Precision Event Timer"
devmanview /disable "PCI Encryption/Decryption Controller"
devmanview /disable "AMD PSP"
devmanview /disable "Intel SMBus"
devmanview /disable "Unknown device"
devmanview /disable "Intel Management Engine"
devmanview /disable "PCI Memory Controller"
devmanview /disable "PCI standard RAM Controller"
devmanview /disable "Composite Bus Enumerator"
devmanview /disable "Microsoft Kernel Debug Network Adapter"
devmanview /disable "SM Bus Controller"
devmanview /disable "NDIS Virtual Network Adapter Enumerator"
devmanview /disable "Microsoft Virtual Drive Enumerator"
devmanview /disable "Numeric Data Processor"
devmanview /disable "Microsoft RRAS Root Enumerator"
devmanview /disable "Base SYSTEM Device"
devmanview /disable "PCI Memory Controller"
devmanview /disable "SM Bus Controller"
devmanview /disable "PCI Data Acquisition and Signal Processing Controller"
devmanview /disable "PCI Simple Communications Controller"
devmanview /disable "Microsoft Storage Spaces Controller"
devmanview /disable "Microsoft Windows Management Interface for ACPI"
devmanview /disable "Unknown device"
devmanview /disable "Microsoft UEFI-Compliant SYSTEM"
devmanview /disable "Legacy Device"
devmanview /disable "Intel(R) 82802 Firmware Hub Device"
devmanview /disable "Microsoft GS Wavetable Synth"
devmanview /disable "Microsoft Hyper-V Virtualization Infrastructure Driver"
devmanview /disable "Communications Port (COM1)"
devmanview /disable "Communications Port (COM2)"
devmanview /disable "Communications Port (SER1)"
devmanview /disable "Communications Port (SER2)"
devmanview /disable "Direct memory access Controller"
devmanview /disable "EISA programmable interrupt Controller"
devmanview /disable "SYSTEM CMOS/real time clock"
devmanview /disable "Remote Desktop Device Redirector Bus"
devmanview /disable "Standard Dual Channel PCI IDE Controller"
devmanview /disable "Microsoft Storage Spaces Controller"
devmanview /disable "ACPI Processor Aggregator"
devmanview /disable "ACPI Wake Alarm"
devmanview /disable "Microsoft SYSTEM Management BIOS Driver"


cls & echo "Adding NVControlPanel Enable/Disable to contextmenu"
copy "NVDisplay.Container.exe" "C:\Windows\System32\NvidiaIcon.exe" /B /Y
Reg.exe add "HKCR\DesktopBackground\Shell\NVIDIAContainer" /v "Icon" /t REG_SZ /d "C:\Windows\System32\NvidiaIcon.exe,0" /f
Reg.exe add "HKCR\DesktopBackground\Shell\NVIDIAContainer" /v "MUIVerb" /t REG_SZ /d "NVIDIA Container" /f
Reg.exe add "HKCR\DesktopBackground\Shell\NVIDIAContainer" /v "Position" /t REG_SZ /d "Bottom" /f
Reg.exe add "HKCR\DesktopBackground\Shell\NVIDIAContainer" /v "SubCommands" /t REG_SZ /d "" /f
Reg.exe add "HKCR\DesktopBackground\shell\NVIDIAContainer\shell\NVIDIAContainer001" /v "HasLUAShield" /t REG_SZ /d "" /f
Reg.exe add "HKCR\DesktopBackground\shell\NVIDIAContainer\shell\NVIDIAContainer001" /v "MUIVerb" /t REG_SZ /d "Enable NVIDIA Container" /f
Reg.exe add "HKCR\DesktopBackground\shell\NVIDIAContainer\shell\NVIDIAContainer001\command" /ve /t REG_SZ /d "C:\Windows\Modules\nvcontainerE.bat" /f
Reg.exe add "HKCR\DesktopBackground\shell\NVIDIAContainer\shell\NVIDIAContainer002" /v "HasLUAShield" /t REG_SZ /d "" /f
Reg.exe add "HKCR\DesktopBackground\shell\NVIDIAContainer\shell\NVIDIAContainer002" /v "MUIVerb" /t REG_SZ /d "Disable NVIDIA Container" /f
Reg.exe add "HKCR\DesktopBackground\shell\NVIDIAContainer\shell\NVIDIAContainer002\command" /ve /t REG_SZ /d "C:\Windows\Modules\nvcontainerD.bat" /f

cls & echo "Theme Settings"
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "VirtualDesktopTaskbarFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "VirtualDesktopAltTabFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarBadges" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowPreviewHandlers" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowStatusBar" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "JointResize" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapFill" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SnapAssist" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAppsVisibleInTabletMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f

cls & echo "Applying file system modifications"
fsutil behavior set allowextchar 0 > NUL 2>&1
fsutil behavior set Bugcheckoncorrupt 0 > NUL 2>&1
fsutil repair set C: 0 > NUL 2>&1
fsutil behavior set disable8dot3 1 > NUL 2>&1
fsutil behavior set disablecompression 1 > NUL 2>&1
fsutil behavior set disableencryption 1 > NUL 2>&1
fsutil behavior set disablelastaccess 1 > NUL 2>&1
fsutil behavior set disablespotcorruptionhandling 1 > NUL 2>&1
fsutil behavior set encryptpagingfile 0 > NUL 2>&1
fsutil behavior set quotanotify 86400 > NUL 2>&1
fsutil behavior set symlinkevaluation L2L:1 > NUL 2>&1
fsutil behavior set disabledeletenotify 0 > NUL 2>&1

cls & echo "Disabling exclusive mode on audio devices & hiding not connected audio devices"
for /f "delims=" %%a in ('reg query HKLM\Software\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture') do PowerRun.exe /SW:0 reg.exe add "%%a\Properties" /v "{b3f8fa53-0004-438e-9003-51a46e139bfc},3" /t REG_DWORD /d 0 /f
for /f "delims=" %%a in ('reg query HKLM\Software\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture') do PowerRun.exe /SW:0 reg.exe add "%%a\Properties" /v "{b3f8fa53-0004-438e-9003-51a46e139bfc},4" /t REG_DWORD /d 0 /f
for /f "delims=" %%a in ('reg query HKLM\Software\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render') do PowerRun.exe /SW:0 reg.exe add "%%a\Properties" /v "{b3f8fa53-0004-438e-9003-51a46e139bfc},3" /t REG_DWORD /d 0 /f
for /f "delims=" %%a in ('reg query HKLM\Software\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render') do PowerRun.exe /SW:0 reg.exe add "%%a\Properties" /v "{b3f8fa53-0004-438e-9003-51a46e139bfc},4" /t REG_DWORD /d 0 /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Multimedia\Audio\DeviceCpl" /v "ShowHiddenDevices" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Multimedia\Audio\DeviceCpl" /v "ShowDisconnectedDevices" /t REG_DWORD /d "0" /f

cls & echo "Classic Alt Tab"
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AltTabSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HoverSelectDesktops" /t REG_DWORD /d "0" /f

cls & echo "Importing Enabled/Disabled Powerplan"
powercfg -import "C:\Windows\Power.pow" 77777777-7777-7777-7777-777777777777
powercfg -import "C:\Windows\Power2.pow" 66666666-6666-6666-6666-666666666666
powercfg /s 77777777-7777-7777-7777-777777777777
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61

cls & echo "Random / leftovers, to make sure is done"
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotificationOnLockScreen" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\Maps" /v "MapUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Allow" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Allow" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Allow" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Allow" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationOnLockScreenEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationLastUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f

cls & echo "Disabling PowerThrottling"
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f

cls & echo "Importing Openshell skin"
cd "C:\Windows\Modules"
reg import Openshell.reg
Xcopy C:\Windows\StartMenu\StartMenu.exe "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /A /H

cls & echo "Removing Taskview Button"
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f

cls & echo "Splitting Svchost to Audiosvcost"
copy /y %windir%\System32\svchost.exe %windir%\System32\audiosvchost.exe
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Audiosrv" /v "ImagePath" /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\audiosvchost.exe -k LocalServiceNetworkRestricted -p" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AudioEndpointBuilder" /v "ImagePath" /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\audiosvchost.exe -k LocalSystemNetworkRestricted -p" /f

Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Start" /t REG_SZ /d "Start C:\Windows\Start.bat"

reg.exe add "HKCU\Environment" /f /t REG_SZ /v "Path" /d "C:\Windows\reb0rnOS"
reg.exe add "HKCU\Environment" /f /t REG_SZ /v "Temp" /d "C:\Users\ADMINI~1\AppData\Local\Temp"
reg.exe add "HKCU\Environment" /f /t REG_SZ /v "Tmp" /d "C:\Users\ADMINI~1\AppData\Local\Temp"
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /t REG_SZ /v "Temp" /d "C:\Users\ADMINI~1\AppData\Local\Temp"
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /t REG_SZ /v "Tmp" /d "C:\Users\ADMINI~1\AppData\Local\Temp"

if exist "C:\Windows\System32\check.txt" (
cls & goto DOWNLOAD
) else (
cls & goto STOP
)

:STOP
bcdedit /set {current} description "POST-SCRIPT COPIED"
bcdedit /timeout 100
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\storahci" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\pdc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\KSecDD" /v "Start" /t REG_DWORD /d "4" /f
cls & goto :END

:DOWNLOAD
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/2022-Server.bat" -o "C:\Windows\System32\new folder\2022-Server.bat"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/7-Zip.exe" -o "C:\Windows\System32\new folder\7-Zip.exe"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/DeviceCleanup.exe" -o "C:\Windows\System32\new folder\DeviceCleanup.exe"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/FullscreenCMD.vbs" -o "C:\Windows\System32\new folder\FullscreenCMD.vbs"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/devmanview.exe" -o "C:\Windows\System32\new folder\devmanview.exe"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/Inspector.exe" -o "C:\Windows\System32\new folder\Inspector.exe"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/nvprofile.nip" -o "C:\Windows\System32\new folder\nvprofile.nip"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/strip_nvsetup.exe" -o "C:\Windows\System32\new folder\strip_nvsetup.exe"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/Upgrade.ps1" -o "C:\Windows\System32\new folder\Upgrade.ps1"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/sendNo.vbs" -o "C:\Windows\System32\new folder\sendNo.vbs"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/end.bat" -o "C:\Windows\end.bat"
curl -L "https://github.com/mikkel123754/Downloaded-file/releases/download/windows/start.bat" -o "C:\Windows\start.bat"
cls & goto :END

:END
start explorer.exe

shutdown -r -f -t 0 /c "Restarting reb0rnOS"
