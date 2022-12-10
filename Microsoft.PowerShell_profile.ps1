. $env:USERPROFILE\.config\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$ENV:STARSHIP_DISTRO = "者 deivids "
Invoke-Expression (&starship init powershell)