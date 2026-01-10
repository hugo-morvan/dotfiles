-- Ensure termguicolors
vim.o.termguicolors = true

-- Load One Dark
require("onedark").setup {
  style = "warmer", -- dark/darker/cool/deep/warm/warmer/light
}
require("onedark").load()
