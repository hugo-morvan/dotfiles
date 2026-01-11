local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git","clone","--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set file format to unix to avoid line ending issues
vim.opt.fileformat = "unix"
vim.opt.fileformats = "unix,dos"

-- Fix WSL clipboard to strip Windows line endings
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end

require("lazy").setup({
  { import = "plugins.lsp" },
  { import = "plugins.cmp" },
  { import = "plugins.telescope" },
  { import = "plugins.treesitter" },
  { import = "plugins.ai" },
  { import = "plugins.ui" },
  { import = "plugins.lint"},
})
