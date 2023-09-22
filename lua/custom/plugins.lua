local utils = require 'custom.utils'

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local default_opts = require 'plugins.configs.treesitter'
      local custom_opts = require 'custom.configs.treesitter'
      return utils.tableMerge(default_opts, custom_opts)
    end
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      local default_opts = require 'plugins.configs.mason'
      local custom_opts = require 'custom.configs.mason'
      return utils.tableMerge(default_opts, custom_opts)
    end
  },
  {
    "kdheepak/lazygit.nvim",
     -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = function()
      return require "custom.configs.lazygit"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "towolf/vim-helm",
    lazy = false,
  },
}
return plugins

