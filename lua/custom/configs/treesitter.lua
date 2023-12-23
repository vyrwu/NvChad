return {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    -- default NvChad opts
    local opts = require "plugins.configs.treesitter"
    opts.ensure_installed = {
      "lua",
      "go",
      "gosum",
      "gomod",
      "markdown",
      "markdown_inline",
      "terraform",
      "yaml",
      "json",
      "bash",
      "regex",
    }

    opts.auto_install = true

    return opts
  end,
}
