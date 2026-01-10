# Modern Neovim Setup 🚀

A clean, fast, and modern Neovim configuration with:

✅ **lazy.nvim** (much faster startup than packer)  
✅ **Polished Neovim-Qt GUI** (mouse, DPI, font, transparency)  
✅ **LSP for Python, Go, SQL**  
✅ **AI integrations (Copilot + Codeium)**  
✅ **Telescope + ripgrep**  
✅ **Keybinding cheatsheet**  
✅ **DB / SQL tooling ready**  
✅ **Cross-platform (Windows / WSL / Arch)**  

---

## 📁 Repo Layout

```
dotfiles/
├── README.md
├── nvim/
│   ├── init.lua
│   ├── ginit.vim
│   └── lua/
│       ├── core/
│       │   ├── options.lua
│       │   ├── keymaps.lua
│       │   └── autocmds.lua
│       ├── plugins/
│       │   ├── init.lua
│       │   ├── lsp.lua
│       │   ├── cmp.lua
│       │   ├── telescope.lua
│       │   ├── treesitter.lua
│       │   ├── ai.lua
│       │   └── ui.lua
│       └── colorscheme.lua
└── install/
    ├── install.sh
    └── install.ps1
```

---

## 🚀 Installation

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

## ⌨️ Keybinding Cheatsheet

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

---

## 🎨 Features

### LSP Support
- **Python**: pyright
- **Go**: gopls  
- **SQL**: sqlls

### AI Integration
- **GitHub Copilot**: `:Copilot` commands
- **Codeium**: Free AI completions

### UI & Theme
- **One Dark** theme (darker style)
- **Lualine** statusline
- **Neovim-Qt** polish with transparency and ligatures

### Development Tools
- **Telescope**: Fuzzy finder with ripgrep
- **Treesitter**: Syntax highlighting
- **nvim-cmp**: Autocomplete with LSP integration

---

## 🔧 Configuration

All configuration is modular in `lua/core/` and `lua/plugins/`:

- `options.lua` - Basic Neovim settings
- `keymaps.lua` - Keybinding definitions  
- `autocmds.lua` - Auto commands
- `plugins/*.lua` - Plugin configurations

---

## 📦 External Dependencies

- **ripgrep** - Fast text search for Telescope
- **sql-language-server** - SQL LSP support
- **JetBrains Mono Nerd Font** - Recommended font

Download fonts from: https://www.nerdfonts.com/

---

## 🚀 Next Steps

Want to extend this setup?

- 🚀 Go debugging (DAP)
- 🧪 Test runners  
- 🗄 DB UI (dadbod)
- 🔁 Session management
- ⌨ Vim motions training

This setup is **production-grade** and ready for serious development! 🎯