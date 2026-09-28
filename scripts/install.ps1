<#
.SYNOPSIS
    Installs the Sope Skills Starter Pack into Claude Code.

.DESCRIPTION
    Copies each skill folder from ./skills into your personal Claude skills
    folder (~/.claude/skills by default) so they're available in every project.

.PARAMETER Destination
    Where to install. Defaults to "$HOME/.claude/skills".
    Use a project path (e.g. ./my-project/.claude/skills) to install per project.

.EXAMPLE
    ./scripts/install.ps1

.EXAMPLE
    ./scripts/install.ps1 -Destination ./my-project/.claude/skills
#>
param(
    [string]$Destination = (Join-Path $HOME ".claude/skills")
)

$ErrorActionPreference = "Stop"
$source = Join-Path $PSScriptRoot "../skills"

if (-not (Test-Path $source)) {
    throw "Couldn't find the skills folder. Run this script from inside the sope-skills-pack folder."
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null

Get-ChildItem -Path $source -Directory | Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") } | ForEach-Object {
    $target = Join-Path $Destination $_.Name
    if (Test-Path $target) {
        Remove-Item -Recurse -Force $target
        Write-Host "Updated   $($_.Name)"
    } else {
        Write-Host "Installed $($_.Name)"
    }
    Copy-Item -Recurse -Path $_.FullName -Destination $target
}

Write-Host ""
Write-Host "Done. Skills are in $Destination"
Write-Host "Restart Claude Code to pick them up."
