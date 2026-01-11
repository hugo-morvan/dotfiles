return {
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      
      -- Configure golangci-lint
      lint.linters.golangci_lint = {
        cmd = "golangci-lint",
        stdin = false,
        args = {"run", "--path-precision", "1", "--out-format", "json"},
        stream = "stdout",
        ignore_exitcode = true,
        parser = function(output, bufnr)
          local diagnostics = {}
          local data = vim.json.decode(output)
          
          if data.Issues then
            for _, issue in ipairs(data.Issues) do
              table.insert(diagnostics, {
                lnum = issue.Pos.Line - 1,
                col = issue.Pos.Column - 1,
                end_lnum = issue.Pos.Line - 1,
                end_col = issue.Pos.Column - 1,
                message = issue.Text,
                source = "golangci-lint",
                severity = vim.diagnostic.severity.WARN,
              })
            end
          end
          
          return diagnostics
        end,
      }
      
      -- Set up linters by filetype
      lint.linters_by_ft = {
        go = {"golangci_lint"},
      }
      
      -- Autocommand to run linter on save
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}