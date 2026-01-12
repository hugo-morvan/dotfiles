
## Installation

### Linux/macOS
```bash
git clone https://github.com/hugo-morvan/dotfiles.git
cd dotfiles
./install/install.sh

# Install dependencies
sudo pacman -S ripgrep          # Arch
# OR
sudo apt install ripgrep         # Ubuntu
npm install -g sql-language-server

# Launch Neovim (plugins auto-install)
nvim
```

### Windows
```powershell
git clone https://github.com/hugo-morvan/dotfiles.git
cd dotfiles
.\install\install.ps1

# Install dependencies
choco install ripgrep
npm install -g sql-language-server

# Launch Neovim (plugins auto-install)
nvim
```

---

## Keybinding Cheatsheet

| Action           | Key              |
| ---------------- | ---------------- |
| Find files       | `<leader>ff`     |
| Live grep        | `<leader>fg`     |
| Buffers          | `<leader>fb`     |
| Go to definition | `gd`             |
| References       | `gr`             |
| Hover            | `K`              |
| Rename           | `<leader>rn`     |
| AI suggestion    | `<Tab>` / `<CR>` |
