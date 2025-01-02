# powershell-profile
My personal PowerShell Configuration

Mostly designed to get me up and running during machine changes. Windows-specific.

## Set-Up
1. `Install-Module PSReadLine -AllowPrerelease -Force`
1. `PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force`
1. [Install chocolatey](https://chocolatey.org/install)
1. [Install Oh my Posh](https://ohmyposh.dev/docs/installation/windows)
  1. `oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/amro.omp.json" | Invoke-Expression `
1. [Install Python with Windows launcher](https://www.python.org/downloads/windows/)
1. [Install uv](https://docs.astral.sh/uv/getting-started/installation/)
1. `python -m pip install --user pipx`
1. `.\pipx.exe ensurepath`
1. `pipx install dunk`
1. `python -m pip install rich`
1. Set environment variable PYTHONSTARTUP=[the location of .pythonrc]
1. Put `gitpush.ps1` in `C:\Users\[USERNAME]\Scripts`
1. Complete TODO for setting username in `profile.ps1`

## References (and Thanks)
- https://github.com/pypa/pipx
- https://docs.astral.sh/uv/
- https://github.com/darrenburns/dunk
- https://github.com/PowerShell/PSReadLine
- https://chocolatey.org/
- https://ohmyposh.dev/
- https://www.snakesonadomain.com/repl/rich/tools/dev-environment/2023/01/10/rich-repl.html
- https://github.com/Textualize/rich
