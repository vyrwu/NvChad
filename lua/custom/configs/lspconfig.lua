local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local lsps = {
  "gopls",
  "terraformls",
  "helm_ls",
  "jsonls",
  "yamlls",
}

for _, v in pairs(lsps) do
  if v == "gopls" then
    lspconfig[v].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedarams = true,
          },
        },
      },
    }
    goto continue
  end

  if v == "helm_ls" then
    lspconfig[v].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = { "helm_ls", "serve" },
      filetypes = { "helm" },
      root_dir = util.root_pattern "Chart.yaml",
    }
    goto continue
  end

  lspconfig[v].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  ::continue::
end
