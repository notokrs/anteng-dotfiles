local present, noice = pcall(require, "noice")

if not present then
	return
end

noice.setup({
	cmdline = {
		enabled = true,
		view = "cmdline_popup",
		opts = {},
		format = {
			cmdline = { pattern = "^:", icon = "", lang = "vim" },
			search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
			search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
			filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
			lua = { pattern = "^:%s*lua%s+", icon = "", lang = "lua" },
			help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
			input = {},
		},
	},
	messages = {
		enabled = true,
		view = "notify",
		view_error = "notify",
		view_warn = "notify",
		view_history = "messages",
		view_search = "virtualtext",
	},
	popupmenu = {
		enabled = true,
		backend = "nui",
		kind_icons = {},
	},
	redirect = {
		view = "popup",
		filter = { event = "msg_show" },
	},
	commands = {
		history = {
			view = "split",
			opts = { enter = true, format = "details" },
			filter = {
				any = {
					{ event = "notify" },
					{ error = true },
					{ warning = true },
					{ event = "msg_show", kind = { "" } },
					{ event = "lsp", kind = "message" },
				},
			},
		},
		last = {
			view = "popup",
			opts = { enter = true, format = "details" },
			filter = {
				any = {
					{ event = "notify" },
					{ error = true },
					{ warning = true },
					{ event = "msg_show", kind = { "" } },
					{ event = "lsp", kind = "message" },
				},
			},
			filter_opts = { count = 1 },
		},
		errors = {
			view = "popup",
			opts = { enter = true, format = "details" },
			filter = { error = true },
			filter_opts = { reverse = true },
		},
	},
	notify = {
		enabled = false,
		view = "notify",
	},
	lsp = {
		progress = { enabled = false },
		hover = { enabled = false },
		signature = { enabled = false },
		message = {
			enabled = true,
			view = "notify",
			opts = {},
		},
	},
	markdown = {
		hover = {
			["|(%S-)|"] = vim.cmd.help,
			["%[.-%]%((%S-)%)"] = require("noice.util").open,
		},
		highlights = {
			["|%S-|"] = "@text.reference",
			["@%S+"] = "@parameter",
			["^%s*(Parameters:)"] = "@text.title",
			["^%s*(Return:)"] = "@text.title",
			["^%s*(See also:)"] = "@text.title",
			["{%S-}"] = "@parameter",
		},
	},
	health = {
		checker = true,
	},
	smart_move = {
		enabled = true,
		excluded_filetypes = { "cmp_menu", "cmp_docs", "notify" },
	},
	presets = {
		bottom_search = false,
		command_palette = false,
		long_message_to_split = true,
		inc_rename = false,
		lsp_doc_border = false,
	},
	throttle = 1000 / 30,
	views = {},
	routes = {},
	status = {},
	format = {},
})
