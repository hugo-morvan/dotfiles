return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig")
      lsp.pyright.setup({})
      lsp.gopls.setup({})
      lsp.sqlls.setup({})
    end
  }
}