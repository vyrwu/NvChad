return {
  "preservim/vim-markdown",
  ft = "markdown",
  init = function()
    vim.cmd [[set foldlevelstart=6]]
    -- vim.cmd [[set conceallevel=2]]
    vim.g.vim_markdown_follow_anchor = 1
    vim.g.vim_markdown_anchorexpr = "'<<'.v:anchor.'>>'"
  end,
  dependencies = {
    "godlygeek/tabular",
  },
}
