local M = {}

M.treesitter = {
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		disable = { "html", "markdown" },
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
		"tailwind-language-server",
		"prettier",

		-- shell
		"bash-language-server",
		"beautysh",

		-- php
		"intelephense",
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
	show_first_indent_level = true,
	show_trailing_blankline_indent = true,
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

return M
