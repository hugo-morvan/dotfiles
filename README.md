# dotfiles

A portable Neovim configuration for Windows, WSL, and Arch Linux with:

- LSP support for Python, Go, SQL
- AI completions (Copilot, Codeium)
- One Dark theme (`navarasu/onedark.nvim`) :contentReference[oaicite:1]{index=1}
- Works with terminal Neovim and Neovim-Qt

## Installation

1. Clone the repo:

```sh
git clone https://github.com/hugo-morvan/dotfiles ~/.config/nvim
```

Install LSP tools:

```sh
npm install -g pyright
go install golang.org/x/tools/gopls@latest
```
(make sure pyright and gopls are on your PATH)

Open Neovim and run:

```vim
:PackerInstall
```
