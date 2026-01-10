#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NVIM_TARGET="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim.backup.$(date +%s)"

echo "🚀 Installing Neovim config..."
echo "Repo: $REPO_DIR"

# Ensure ~/.config exists
mkdir -p "$HOME/.config"

# Backup existing config
if [ -e "$NVIM_TARGET" ] && [ ! -L "$NVIM_TARGET" ]; then
  echo "📦 Existing nvim config found, backing up to:"
  echo "   $BACKUP_DIR"
  mv "$NVIM_TARGET" "$BACKUP_DIR"
fi

# Remove broken symlink if exists
if [ -L "$NVIM_TARGET" ]; then
  rm "$NVIM_TARGET"
fi

# Create symlink
ln -s "$REPO_DIR/nvim" "$NVIM_TARGET"

echo "✅ Neovim config linked successfully!"

echo ""
echo "📌 Next steps:"
echo "  1. Install ripgrep: sudo pacman -S ripgrep (Arch) or sudo apt install ripgrep (Ubuntu)"
echo "  2. Install SQL LSP: npm install -g sql-language-server"
echo "  3. Open nvim (lazy.nvim will auto-install plugins)"
echo "  4. Restart nvim"
