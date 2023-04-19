local autocmd = vim.api.nvim_create_autocmd
local o = vim.o

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

-- Providers
local enable_providers = {
	"node",
	"python3",
	"ruby",
}

for _, provider in ipairs(enable_providers) do
	vim.g["loaded_" .. provider .. "_provider"] = nil
	vim.cmd("runtime " .. provider)
end

-- General Settings
o.relativenumber = true
o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
o.foldcolumn = "1"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true
