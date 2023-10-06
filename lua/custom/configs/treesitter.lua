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

    return opts
  end,
}
