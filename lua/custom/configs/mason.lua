return {
  "williamboman/mason.nvim",
  opts = function()
    -- default NvChad opts
    local opts = require "plugins.configs.mason"
    opts.ensure_installed = {
      "lua-language-server",
      "stylua",
      "golangci-lint",
      "gopls",
      "terraform-ls",
      "tflint",
      "helm-ls",
      "yaml-language-server",
      "yamllint",
      "json-lsp",
      "marksman", --markdown
      "bash-language-server",
      "eslint_d",
      "pylint",
    }

    opts.automatic_installation = true

    return opts
  end,
}
