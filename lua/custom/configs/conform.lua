return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require "conform"
    conform.setup {
      -- Nvim Filetypes:
      -- https://github.com/nathom/filetype.nvim/blob/main/lua/filetype/mappings/extensions.lua
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        css = { "prettierd" },
        html = { "prettierd" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
        lua = { "stylua" },
        python = { "black" },
        go = { "gofumpt, golines, goimports_reviser" },
        terraform = { "terraform_fmt" },
        ["terraform-vars"] = { "terraform_fmt" },
        bash = { "shfmt" },
        ["*"] = { "codespell" },
        ["_"] = { "trim_whitespace" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    }

    vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    end, { desc = "Format file or range (visual mode)" })
  end,
}
