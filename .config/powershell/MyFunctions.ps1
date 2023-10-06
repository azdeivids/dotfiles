# get top proceses consuming memory
function Get-TopMemoryProcesses {
  Get-Process | Sort-Object -Descending PM | Select-Object -First 15
}

# get top proceses consuming cpu
function Get-TopCPUProcesses {
  Get-Process | Sort-Object -Descending CPU | Select-Object -First 15
}

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# interactive actions
function Move-ItemInteractive {
    param (
        [Parameter(Position = 0, Mandatory)]
        [string]$Path,

        [Parameter(Position = 1, Mandatory)]
        [string]$Destination
    )

    $confirmation = Read-Host "Move '$Path' to '$Destination'? (Y/N)"
    if ($confirmation -eq 'Y' -or $confirmation -eq 'y') {
        Move-Item -Path $Path -Destination $Destination
    } else {
        Write-Host "Move operation canceled."
    }
}

function Remove-ItemInteractive {
    param (
        [Parameter(Position = 0, Mandatory)]
        [string]$Path
    )

    $confirmation = Read-Host "Remove '$Path'? (Y/N)"
    if ($confirmation -eq 'Y' -or $confirmation -eq 'y') {
        Remove-Item -Path $Path
    } else {
        Write-Host "Removal operation canceled."
    }
}

