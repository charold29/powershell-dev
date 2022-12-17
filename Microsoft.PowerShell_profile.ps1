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
oh-my-posh init pwsh --config C:\Users\harol\AppData\Local\Programs\oh-my-posh\themes/powerlevel10k_rainbow.omp.json | Invoke-Expression

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

# 7. Verbal communication
# <1> Translate Function <1> #

function translate() {
  param (
    [String]$text
  )
  # Replace with your Powershell Directory Location
  C:\Users\HaroldR\OneDrive\Documents\Powershell\Scripts\translate.ps1 $text
}

# <2> Get a word meanings <2> #

function dictionary() {
  param (
    [String]$word,
    [Int]$index 
  )

  C:\Users\HaroldR\OneDrive\Documents\Powershell\Scripts\dictionary.ps1 -Word $word $index
}

# 8. Recycle module
# <1> Move a file to the recycle bin <1>
function trash() {
  param (
    [String]$file
  )
  Remove-ItemSafely $file
}

set-alias papelera trash

# 9. Git Commands in Functions
# <1> Get Last 5 Commits in OneLine <1>
function gitLast5Commits() {
  git log --oneline -n 5
}

# 10. Speech Integration
# <1> 