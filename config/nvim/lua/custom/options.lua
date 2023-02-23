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
