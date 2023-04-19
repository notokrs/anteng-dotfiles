local present, ufo = pcall(require, "ufo")

if not present then
	return
end

ufo.setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "lsp", "indent" }
	end,
})
