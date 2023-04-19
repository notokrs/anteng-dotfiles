local M = {}

M.treesitter = {
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		disable = { "html" },
		query = "rainbow-parens",
	},
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"php",
		"regex",
		"markdown",
		"markdown_inline",
		"bash",
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"prettier",
		"eslint-lsp",

		-- shell
		"bash-language-server",
		"beautysh",

		-- php
		"phpcbf",
		"phpactor",

		-- xml
		"xmlformatter",
	},
}

-- git support in nvimtree
M.nvimtree = {
	filters = {
		dotfiles = true,
	},
	git = {
		enable = true,
		ignore = false,
	},
	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

-- blankline
M.blankline = {
	use_treesitter = true,
	char_highlight = "LineNr",
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = false,
	show_first_indent_level = true,
	show_trailing_blankline_indent = false,
	context_highlight_list = {
		"TSRainbowRed",
		"TSRainbowYellow",
		"TSRainbowBlue",
		"TSRainbowOrange",
		"TSRainbowGreen",
		"TSRainbowViolet",
		"TSRainbowCyan",
	},
}

-- ui
M.ui = {
	statusline = {
		separator_style = "round",
	},
}

return M
