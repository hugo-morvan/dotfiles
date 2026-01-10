-- Load plugins
require("plugins")

-- Basic settings
vim.o.mouse = "a"
vim.o.termguicolors = true
vim.o.updatetime = 300

-- Load modules
require("lsp")
require("cmp")
require("colorscheme")
