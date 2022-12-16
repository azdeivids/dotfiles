#### wt.exe profile dir ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

. $env:USERPROFILE\.config\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$ENV:STARSHIP_DISTRO = " deivids "
Invoke-Expression (&starship init powershell)

#  者 🪟
