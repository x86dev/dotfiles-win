set MY_SCRIPT_PATH=../vendor/win10-initial-setup-script
REM Note: The default present must come last, as it restarts the system automatically.
@powershell.exe -NoProfile -ExecutionPolicy Bypass -File %MY_SCRIPT_PATH%/Win10.ps1 -include %MY_SCRIPT_PATH%/Win10.psm1 -preset win10-initial-setup.preset -preset %MY_SCRIPT_PATH%/Default.preset
