local M = {}

-- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- Your custom mappings
M.splits = {
  n = {
    ["<leader>vs"] = { "<cmd>vsplit", "vertical split buffer" },
    ["<leader>hs"] = { "<cmd>split", "horizontal split buffer" },
  },
}

M.navigation = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
}
return M
