$username = "TODO: ADD USERNAME"
$ps_script_dir = "C:\Users\$username\Scripts"
Import-Module posh-git
oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" | Invoke-Expression
(Get-PSReadLineOption).HistoryNoDuplicates = $True
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
(Get-PSReadLineOption).ListPredictionColor = "#2fcbeb"
