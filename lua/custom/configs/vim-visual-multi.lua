return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-m>",
      ["Find Subword Under"] = "<C-m>",
    }
  end,
  lazy = false,
}
