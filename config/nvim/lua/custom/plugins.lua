local overrides = require("custom.configs.overrides")

local plugins = {
	-- Override plugin definition options
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	{
		"hrsh7th/nvim-cmp",
		opts = function()
			return require("plugins.configs.cmp")
		end,
		config = function(_, opts)
			require("cmp").setup(opts)
			require("custom.configs.cmp")
		end,
	},

	-- overrde plugin configs
	{ "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },

	{ "NvChad/ui", opts = overrides.ui },

	{ "lukas-reineke/indent-blankline.nvim", opts = overrides.blankline },

	{ "williamboman/mason.nvim", opts = overrides.mason },

	{ "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },

	-- Install a plugin
	-- autotag
	{ "windwp/nvim-ts-autotag", lazy = false },

	-- autocomplete
	{ "hrsh7th/cmp-nvim-lsp", lazy = false },
	{ "hrsh7th/cmp-buffer", lazy = false },
	{ "hrsh7th/cmp-path", lazy = false },
	{ "hrsh7th/cmp-cmdline", lazy = false },

	-- colorizer
	{ "HiPhish/nvim-ts-rainbow2", lazy = false },

	-- yuck
	{ "elkowar/yuck.vim" },

	-- live server
	{ "manzeloth/live-server" },

	-- silicon
	{
		"krivahtoo/silicon.nvim",
		lazy = false,
		config = function()
			require("custom.configs.silicon")
		end,
	},

	-- noice
	{
		"folke/noice.nvim",
		lazy = false,
		config = function()
			require("custom.configs.noice")
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	-- nvim-statuscol
	{
		"luukvbaal/statuscol.nvim",
		event = { "BufReadPost" },
		config = function()
			require("custom.configs.statuscol")
		end,
	},

	-- nvim-ufo (folding)
	{
		"kevinhwang91/nvim-ufo",
		event = { "BufReadPost" },
		wants = { "promise-async" },
		dependencies = {
			"kevinhwang91/promise-async",
		},
		config = function()
			require("custom.configs.ufo")
		end,
	},
}

return plugins
