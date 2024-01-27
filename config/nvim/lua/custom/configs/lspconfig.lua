local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local servers = {
	html = {},
	cssls = {},
	tsserver = {},
	intelephense = {},
	bashls = {},
	svelte = {},
	tailwindcss = {
		filetypes = {
			"svelte",
			"vue",
			"javascriptreact",
			"typescriptreact",
		},
	},
}
-- local servers = mason_lspconfig.get_installed_servers()

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

-- for _, lsp in ipairs(servers) do
-- 	lspconfig[lsp].setup({
-- 		on_attach = on_attach,
-- 		capabilities = capabilities,
-- 	})
-- end

mason_lspconfig.setup({
	ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = servers[server_name],
			filetypes = (servers[server_name] or {}).filetypes,
		})
	end,
})
