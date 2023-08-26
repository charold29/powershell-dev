
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "F:\PROGRAMAS\Anaconda\Scripts\conda.exe") {
    (& "F:\PROGRAMAS\Anaconda\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

