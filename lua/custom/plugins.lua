local utils = require "custom.utils"

local plugins = {
  require "custom.configs.treesitter",
  require "custom.configs.mason",
  require "custom.configs.lazygit",
  require "custom.configs.lspconfig",
  require "custom.configs.dadbod-ui",
  -- require "custom.configs.noice",
  require "custom.configs.telescope",
  require "custom.configs.conform",
  require "custom.configs.nvim-lint",
  require "custom.configs.vim-markdown",
  require "custom.configs.vim-visual-multi",
  require "custom.configs.nvterm",
}

return plugins
