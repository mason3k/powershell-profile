$status = git status
$status
Get-Location
$Continue = Read-Host -Prompt 'Does this look right?'
if ($Continue -ne "y" -and $Continue -ne "Y")
{
	exit
}
$remotebranch = git status -sbz
$remotebranch -match "## ([^. ]+)(?:\.\.\.([^ ]+))?"
if ($Matches.count -gt 2)
{
	$remotebranch = $Matches[2]
}
else
{
	$remotebranch = "origin/" + $Matches[1]
}
git diff $remotebranch... | dunk
$Continue = Read-Host -Prompt 'Does this look right?'
if ($Continue -ne "y" -and $Continue -ne "Y")
{
	exit
}
Write-Host "Pushing to remote..."
git push origin HEAD
