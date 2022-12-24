#### wt.exe profile dir ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

. $env:USERPROFILE\.config\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$ENV:STARSHIP_DISTRO = " deivids "
Invoke-Expression (&starship init powershell)
Import-Module Terminal-Icons
Import-Module posh-git

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
