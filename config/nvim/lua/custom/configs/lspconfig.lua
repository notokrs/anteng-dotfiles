local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local util = require("plugins.configs.lspconfig").util

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

-- local servers = { "html", "cssls", "tsserver", "intelephense", "bashls", "svelte", "tailwindcss" }
local servers = mason_lspconfig.get_installed_servers()

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
