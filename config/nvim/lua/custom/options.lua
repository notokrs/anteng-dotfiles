local autocmd = vim.api.nvim_create_autocmd
local create_group = vim.api.nvim_create_augroup
local o = vim.o
local g = vim.g

local enable_providers = {
	"node",
	"python3",
	"ruby",
}

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

-- Providers
for _, provider in ipairs(enable_providers) do
	g["loaded_" .. provider .. "_provider"] = nil
	vim.cmd("runtime " .. provider)
end

-- General Settings
-- nvim-ufo
o.relativenumber = true
o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
o.foldcolumn = "1"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true

-- barbecue.vim
o.updatetime = 200

autocmd({
	"WinScrolled",
	"BufWinEnter",
	"CursorHold",
	"InsertLeave",
	"BufModifiedSet",
}, {
	group = create_group("barbecue.updater", {}),
	callback = function()
		require("barbecue.ui").update()
	end,
})
