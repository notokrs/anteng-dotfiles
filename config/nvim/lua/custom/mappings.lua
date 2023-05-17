local M = {}

M.general = {
	i = {
		["<C-s>"] = { "<ESC> <cmd> w <CR>", "save file" },
	},
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["<leader>tt"] = {
			function()
				require("base46").toggle_theme()
			end,
			"toggle theme",
		},
		["<C-]>"] = { ">>", "Indent" },
		["<C-[>"] = { "<<", "Outdent" },
	},
	v = {
		["<C-]>"] = { "> gv", "Indent Selection" },
		["<C-[>"] = { "< gv", "Outdent Selection" },
	},
}

return M
