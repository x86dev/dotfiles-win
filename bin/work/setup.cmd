set MY_CHOCO_INSTALL_CMD=choco install -v --yes

%MY_CHOCO_INSTALL_CMD% conemu
%MY_CHOCO_INSTALL_CMD% curl
%MY_CHOCO_INSTALL_CMD% greenshot
%MY_CHOCO_INSTALL_CMD% livekd
%MY_CHOCO_INSTALL_CMD% tccle
%MY_CHOCO_INSTALL_CMD% tortoisesvn
%MY_CHOCO_INSTALL_CMD% visualstudio2017community
%MY_CHOCO_INSTALL_CMD% windbg
%MY_CHOCO_INSTALL_CMD% zoom

bcdedit.exe -set loadoptions DDISABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING ON
