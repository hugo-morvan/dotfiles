-- Packer bootstrapping
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1",
      "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd "packadd packer.nvim"
  end
end
ensure_packer()

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"

  -- Autocomplete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"}

  -- AI
  use "github/copilot.vim"
  use "Exafunction/codeium.nvim"

  -- Theme: One Dark
  use {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup { style = "darker" }
      require("onedark").load()
    end
  }
end)
