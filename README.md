# dotfiles

A portable Neovim configuration for Windows, WSL, and Arch Linux with:

- LSP support for Python, Go, SQL
- AI completions (Copilot, Codeium)
- One Dark theme (`navarasu/onedark.nvim`)
- Works with terminal Neovim and Neovim-Qt

## Installation

Linux install:
```bash
git clone https://github.com/hugo-morvan/dotfiles.git
cd dotfiles
./install/install.sh
nvim
:PackerInstall
```

Windows install:
```powershell
git clone https://github.com/hugo-morvan/dotfiles.git
cd dotfiles
.\install\install.ps1
nvim
:PackerInstall
```
