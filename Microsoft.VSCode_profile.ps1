### vscode pwsh profile dir ~\Documents\PowerShell\Microsoft.VSCode_profile.ps1

. $env:USERPROFILE\.config\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$ENV:STARSHIP_DISTRO = "者deivids "
Invoke-Expression (&starship init powershell)
