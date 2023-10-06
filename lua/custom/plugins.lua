local utils = require "custom.utils"

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local default_opts = require "plugins.configs.treesitter"
      local custom_opts = require "custom.configs.treesitter"
      return utils.tableMerge(default_opts, custom_opts)
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      local default_opts = require "plugins.configs.mason"
      local custom_opts = require "custom.configs.mason"
      return utils.tableMerge(default_opts, custom_opts)
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = function()
      return require "custom.configs.lazygit"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "towolf/vim-helm",
    lazy = false,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUIToggle",
    },
    keys = {
      -- stylua: ignore
      { "<leader>db", "<cmd>DBUIToggle<cr>", desc = "Toggle UI" },
    },

    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require "custom.configs.noice"
    end,
    keys = {
      -- stylua: ignore
      { "<leader>fm", "<cmd>Noice telescope<cr>", desc = "Find Noice Message" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local default_opts = require "plugins.configs.telescope"
      local custom_opts = require "custom.configs.telescope"
      return utils.tableMerge(default_opts, custom_opts)
    end,
  },
}

return plugins
