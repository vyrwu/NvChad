local plugins = {
  {
    "kdheepak/lazygit.nvim",
     -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>gg",
        vim.cmd.LazyGit,
        desc = "Access LazyGit",
      },
    },
  },
}
return plugins

