set MY_CHOCO_INSTALL_CMD=choco install -v --yes

%MY_CHOCO_INSTALL_CMD% curl
%MY_CHOCO_INSTALL_CMD% greenshot
%MY_CHOCO_INSTALL_CMD% livekd
%MY_CHOCO_INSTALL_CMD% subversion
%MY_CHOCO_INSTALL_CMD% tccle
%MY_CHOCO_INSTALL_CMD% tortoisesvn
%MY_CHOCO_INSTALL_CMD% windbg
%MY_CHOCO_INSTALL_CMD% zoom

REM Needs Secure Boot turned off.
bcdedit.exe -set loadoptions DDISABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING ON

REM For WSL / Ubuntu.
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
