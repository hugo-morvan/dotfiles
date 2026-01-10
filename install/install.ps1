$ErrorActionPreference = "Stop"

$RepoRoot = Resolve-Path "$PSScriptRoot\.."
$NvimTarget = "$env:LOCALAPPDATA\nvim"
$BackupDir = "$env:LOCALAPPDATA\nvim.backup.$([int][double]::Parse((Get-Date -UFormat %s)))"

Write-Host "🚀 Installing Neovim config (Windows)"
Write-Host "Repo: $RepoRoot"

# Backup existing config
if (Test-Path $NvimTarget -PathType Container) {
    Write-Host "📦 Existing nvim config found, backing up to:"
    Write-Host "   $BackupDir"
    Move-Item $NvimTarget $BackupDir
}

# Remove broken symlink
if (Test-Path $NvimTarget) {
    Remove-Item $NvimTarget -Force
}

# Create symlink
cmd /c mklink /D "$NvimTarget" "$RepoRoot\nvim" | Out-Null

Write-Host "✅ Neovim config linked successfully!"

Write-Host ""
Write-Host "📌 Next steps:"
Write-Host "  1. Install ripgrep: choco install ripgrep"
Write-Host "  2. Install SQL LSP: npm install -g sql-language-server"
Write-Host "  3. Open Neovim (lazy.nvim will auto-install plugins)"
Write-Host "  4. Restart Neovim"
