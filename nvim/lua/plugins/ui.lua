return {
  {
    "blazkowolf/gruber-darker.nvim",
    config = function()
      require("gruber-darker").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({ options = { theme = "gruber_dark" } })
    end
  }
}