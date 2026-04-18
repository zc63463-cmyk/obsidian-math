param(
    [Parameter(Position = 0, ValueFromRemainingArguments = $true)]
    [string[]]$MessageParts
)

$ErrorActionPreference = "Stop"

$repoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repoDir

$statusOutput = git status --short
if (-not $statusOutput) {
    Write-Host "[OK] No changes to commit."
    exit 0
}

Write-Host "[INFO] Changes detected:"
$statusOutput | ForEach-Object { Write-Host $_ }
Write-Host ""

$message = ($MessageParts -join " ").Trim()
if (-not $message) {
    $message = Read-Host "Enter commit message"
    if ([string]::IsNullOrWhiteSpace($message)) {
        Write-Host "[CANCELLED] Commit message is empty."
        exit 1
    }
}

$currentBranch = git branch --show-current
if ([string]::IsNullOrWhiteSpace($currentBranch)) {
    Write-Error "Cannot determine the current Git branch."
}

Write-Host ""
Write-Host "[INFO] Committing and pushing to origin/$currentBranch..."
git add -A
git commit -m $message
git push origin $currentBranch

Write-Host ""
Write-Host "[OK] Push completed."
