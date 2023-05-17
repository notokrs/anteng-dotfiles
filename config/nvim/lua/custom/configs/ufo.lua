local present, ufo = pcall(require, "ufo")

if not present then
	return
end

ufo.setup({
	provider_selector = function()
		return { "lsp", "indent" }
	end,
})
