'Created by CharolDev'

# PERFIL DEV

# 1. Predictive Commands
#= See https://docs.microsoft.com/en-us/powershell/module/psreadline =#
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# 2. Terminal Icons
#= See https://github.com/devblackops/Terminal-Icons =#
Import-Module -Name Terminal-Icons

# 3. OhMyPosh Terminal Theme
oh-my-posh init pwsh --config C:\Users\USUARIO\AppData\Local\Programs\oh-my-posh\themes/star.omp.json | Invoke-Expression

# 4. Chocolatey to Manage Packages
#= See https://docs.chocolatey.org/en-us/choco/setup =#

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# 5. Varied Functions
# <1> To move to Desktop <1> #
function desktop() {
  Set-Location -Path "D:\OneDrive\Harold\Desktop"
}

# 5. Varied Alias
# <1> To move to Desktop <1> #
set-alias escritorio desktop

# 6. Audio Administrator
#= See https://github.com/frgnca/AudioDeviceCmdlets =#

# <1> Audio Devices Functions <1> #
Import-Module AudioDeviceCmdlets

function switch-audio() {
  D:\OneDrive\Harold\Documentos\PowerShell\Scripts\switch-audio.ps1
}

function set-volume {
  param (
    [Float]$volume
  )
  Set-AudioDevice -PlaybackVolume $volume
}

function mute {
  set-audioDevice -playbackMuteToggle
}

function unmute {
  set-audioDevice -playbackMute $false
}

# 7. Translate
# <1> English to Spanish Function <1> #

function translate() {
  param (
    [String]$text
  )
  D:\OneDrive\Harold\Documentos\PowerShell\Scripts\translate.ps1 $text
}
