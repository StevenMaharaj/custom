local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "gopls", "bufls", "rust_analyzer", "pyright", "clangd", "omnisharp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.omnisharp.setup {
  cmd = { "dotnet", "/home/steve/installers/OmniSharp.dll" },
  on_attach = on_attach,
  capabilities = capabilities,
}
--
-- lspconfig.pyright.setup { blabla}
