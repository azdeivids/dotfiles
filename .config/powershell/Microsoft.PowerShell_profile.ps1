#### pwsh profile dir ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# $ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
# $ENV:STARSHIP_DISTRO = "deivids"
# Invoke-Expression (&starship init powershell)

oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'C:/Users/deivids/.config/oh-my-posh/mad-theme.omp.json' | Invoke-Expression

# Modules
Import-Module -Name Terminal-Icons
Import-Module -Name Az.Tools.Predictor
Import-Module -Name z
Import-Module -Name PSFzf

# Fzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl-r'

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -EditMode Windows

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias touch New-Item
Set-Alias time Get-Date
Set-Alias tf terraform
Set-Alias d docker
Set-Alias np notepad

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
      Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }