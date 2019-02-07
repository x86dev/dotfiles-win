@powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH="%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n allowGlobalConfirmation

set MY_CHOCO_INSTALL_CMD=choco --yes install

%MY_CHOCO_INSTALL_CMD% conemu
%MY_CHOCO_INSTALL_CMD% curl
%MY_CHOCO_INSTALL_CMD% firefox
%MY_CHOCO_INSTALL_CMD% git
%MY_CHOCO_INSTALL_CMD% keepass
%MY_CHOCO_INSTALL_CMD% putty
%MY_CHOCO_INSTALL_CMD% rufus
%MY_CHOCO_INSTALL_CMD% spotify
%MY_CHOCO_INSTALL_CMD% sumatrapdf
%MY_CHOCO_INSTALL_CMD% sysinternals
%MY_CHOCO_INSTALL_CMD% tccle
%MY_CHOCO_INSTALL_CMD% thunderbird
%MY_CHOCO_INSTALL_CMD% totalcommander
%MY_CHOCO_INSTALL_CMD% tortoisesvn
%MY_CHOCO_INSTALL_CMD% tortoisegit
%MY_CHOCO_INSTALL_CMD% vim
%MY_CHOCO_INSTALL_CMD% vlc
%MY_CHOCO_INSTALL_CMD% vscode
%MY_CHOCO_INSTALL_CMD% wget
%MY_CHOCO_INSTALL_CMD% livekd
%MY_CHOCO_INSTALL_CMD% radare
%MY_CHOCO_INSTALL_CMD% visualstudio2017community
%MY_CHOCO_INSTALL_CMD% windbg

bcdedit.exe -set loadoptions DDISABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING ON
