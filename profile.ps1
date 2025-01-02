$username = "TODO: ADD USERNAME"
$ps_script_dir = "C:\Users\$username\Scripts"
New-Alias push $ps_script_dir\gitpush.ps1
New-Alias activate ./.venv/Scripts/Activate.ps1
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" | Invoke-Expression
(Get-PSReadLineOption).HistoryNoDuplicates = $True
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
(Get-PSReadLineOption).ListPredictionColor = "#2fcbeb"
