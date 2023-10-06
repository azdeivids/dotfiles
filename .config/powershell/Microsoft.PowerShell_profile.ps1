#### pwsh profile dir ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$ENV:STARSHIP_DISTRO = "deivids"
Invoke-Expression (&starship init powershell)

# oh-my-posh init pwsh | Invoke-Expression
# oh-my-posh init pwsh --config 'C:/Users/deivids/.config/oh-my-posh/mad-theme.omp.json' | Invoke-Expression

# Modules
Import-Module -Name Terminal-Icons
Import-Module -Name Az.Tools.Predictor
Import-Module -Name posh-git

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -EditMode Windows

# Fzf
Import-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# zoxide
Import-Module -Name z

# # set functions
# . (Join-Path $HOME\.config\powershell MyFunctions.ps1)

# get top proceses consuming memory
Set-Alias psmem Get-TopMemoryProcesses

# get top proceses consuming cpu
Set-Alias pscpu Get-TopCPUProcesses

# confirm before action
Set-Alias mv Move-ItemInteractive
Set-Alias rm Remove-ItemInteractive


# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias touch New-Item
Set-Alias time Get-Date
Set-Alias np notepad

# Terraform
Set-Alias tfa 'terraform apply'
Set-Alias tfi 'terraform init'
Set-Alias tfd 'terraform destroy'
Set-Alias tfp 'terraform plan'
Set-Alias tfv 'terraform validate'
