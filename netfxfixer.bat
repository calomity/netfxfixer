@echo OFF
echo dotnetfx 3.5 & 2.0 offline installer from default windows iso, just run this batch file and wait the finish
echo ...
echo creating netfx folder
rmdir netfx
mkdir netfx
echo created and moving file to netfx
MOVE "%CD%\microsoft-windows-netfx3-ondemand-package~31bf3856ad364e35~amd64~~.cab" "%CD%\netfx"
MOVE "%CD%\Microsoft-Windows-NetFx3-OnDemand-Package~31bf3856ad364e35~amd64~tr-TR~.cab" "%CD%\netfx"
echo %CD%\netfx
cd %CD%\netfx
CALL Dism.exe /online /enable-feature /featurename:NetFX3 /Source:%cd% /LimitAccess
ATTRIB microsoft-windows-netfx3-ondemand-package~31bf3856ad364e35~amd64~~.cab
pause 