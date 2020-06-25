@powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco feature enable -n allowGlobalConfirmation

set MY_CHOCO_INSTALL_CMD=choco install --limitoutput --yes
set MY_CHOCO_PIN_CMD=choco pin add -n=

%MY_CHOCO_INSTALL_CMD% choco-upgrade-all-at

%MY_CHOCO_INSTALL_CMD% busybox
busybox --install %SystemRoot%

%MY_CHOCO_INSTALL_CMD% 7zip.install
%MY_CHOCO_INSTALL_CMD% firefox
%MY_CHOCO_INSTALL_CMD% git
%MY_CHOCO_INSTALL_CMD% gpg4win
%MY_CHOCO_INSTALL_CMD% keepass
%MY_CHOCO_INSTALL_CMD% putty
%MY_CHOCO_INSTALL_CMD% qownnotes
%MY_CHOCO_INSTALL_CMD% nextcloud-client
%MY_CHOCO_INSTALL_CMD% python3
%MY_CHOCO_INSTALL_CMD% sumatrapdf
%MY_CHOCO_INSTALL_CMD% sysinternals
%MY_CHOCO_INSTALL_CMD% thunderbird
%MY_CHOCO_INSTALL_CMD% totalcommander
%MY_CHOCO_INSTALL_CMD% tortoisegit
%MY_CHOCO_INSTALL_CMD% vim
%MY_CHOCO_INSTALL_CMD% vscode
%MY_CHOCO_INSTALL_CMD% vscode-settingssync
%MY_CHOCO_INSTALL_CMD% wget
%MY_CHOCO_INSTALL_CMD% microsoft-windows-terminal

REM Required for Windows terminal.
%MY_CHOCO_INSTALL_CMD% dotnetfx

REM Misc tweaks.
%MY_CHOCO_INSTALL_CMD% taskbar-never-combine
%MY_CHOCO_INSTALL_CMD% explorer-show-all-folders
%MY_CHOCO_INSTALL_CMD% explorer-expand-to-current-folder

REM Multimedia stuff.
%MY_CHOCO_INSTALL_CMD% spotify
%MY_CHOCO_INSTALL_CMD% vlc
%MY_CHOCO_INSTALL_CMD% xnviewmp

REM Pin apps that upgrade themselves.
%MY_CHOCO_PIN_CMD% firefox
%MY_CHOCO_PIN_CMD% vscode

REM Disable fast startup (will break dual boot).
powercfg -h off
