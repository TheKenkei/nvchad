-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
require "configs.lspconfigs.init"

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "tsserver", "eslint", "stylelint_lsp", "lemminx" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
