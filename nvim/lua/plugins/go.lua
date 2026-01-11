return {
  {
    "saecki/crates.nvim",
    tag = "stable",
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function()
      require("crates").setup()
    end,
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
        goimport = "goimports",
        gofmt = "gofumpt",
        max_line_len = 120,
        tag_transform = "camelcase",
        test_dir = "",
        comment_placeholder = "   ",
        lsp_cfg = true,
        lsp_gofumpt = true,
        lsp_on_attach = function(client, bufnr)
          -- Key mappings for Go LSP
          local opts = { buffer = bufnr }
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set("n", "<space>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
          
          -- Go specific keymaps
          vim.keymap.set("n", "<space>gs", "<cmd>GoFillStruct<CR>", opts)
          vim.keymap.set("n", "<space>ga", "<cmd>GoAddTag<CR>", opts)
          vim.keymap.set("n", "<space>gr", "<cmd>GoRemoveTag<CR>", opts)
          vim.keymap.set("n", "<space>gi", "<cmd>GoImpl<CR>", opts)
          vim.keymap.set("n", "<space>gf", "<cmd>GoFmt<CR>", opts)
          vim.keymap.set("n", "<space>gi", "<cmd>GoImports<CR>", opts)
        end,
        diagnostic = {
          hdlr = false,
          underline = true,
          virtual_text = true,
          signs = true,
          update_in_insert = false,
        },
      })
    end,
    event = {"CmdlineEnter"},
    ft = {"go", "gomod"},
    build = ':lua require("go.install").update_all_sync()'
  },
}