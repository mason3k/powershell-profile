$username = "TODO: ADD USERNAME"
$ps_script_dir = "C:\Users\$username\Documents\Scripts"
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config "C:\Users\$username\scoop\apps\oh-my-posh\current\themes\negligible.omp.json" | Invoke-Expression
(Get-PSReadLineOption).HistoryNoDuplicates = $True
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
(Get-PSReadLineOption).ListPredictionColor = "#2fcbeb"
