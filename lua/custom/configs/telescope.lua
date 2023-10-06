return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local utils = require "custom.utils"

    -- default NvChad opts
    local opts = require "plugins.configs.telescope"
    opts.defaults = utils.tableMerge(opts.defaults, {
      file_ignore_patterns = { "vendor/", "node_modules/", ".git/", ".terraform/" },
      -- TODO: customize vertical search
      -- layout_strategy = "vertical",
      -- layout_config = { width = 0.5 },
    })

    opts.pickers = {
      find_files = {
        hidden = true,
      },
    }

    opts.extensions_list = { "themes", "terms", "fzf", "noice" }
    return opts
  end,
}
