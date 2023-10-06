local opts = {
  defaults = {
    file_ignore_patterns = { "vendor/", "node_modules/", ".git/", ".terraform/"},
    -- TODO: customize vertical search
    -- layout_strategy = "vertical",
    -- layout_config = { width = 0.5 },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },

  extensions_list = { "themes", "terms", "fzf", "noice" },
}

return opts
