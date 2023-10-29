local config = function()
  local null_ls = require "null-ls"
  local b = null_ls.builtins
  local sources = {
    b.formatting.stylua,
    b.formatting.prettierd,
    b.formatting.gofumpt,
    b.formatting.goimports_reviser,
    b.formatting.golines,
    b.formatting.terraform_fmt,
    b.formatting.terrafmt,
    b.diagnostics.textlint.with {
      extra_args = { "--config", string.format("%s/.config/.textlintrc.json", os.getenv "HOME") },
    },
    b.formatting.trim_newlines,
    b.formatting.trim_whitespace,
    b.formatting.yamlfmt,
    b.formatting.shfmt,
  }

  null_ls.setup {
    debug = true,
    sources = sources,
    on_attach = function()
      vim.api.nvim_create_autocmd("BufWritePost", {
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end,
  }
end

return {
  "jose-elias-alvarez/null-ls.nvim",
  config = config,
}