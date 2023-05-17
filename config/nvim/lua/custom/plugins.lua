local overrides = require("custom.configs.overrides")

local plugins = {
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
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline", event = { "BufEnter" } },
		},
		config = function(_, opts)
			require("cmp").setup(opts)
			require("custom.configs.cmp")
		end,
	},

	-- overrde plugin configs
	{ "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },
	{ "lukas-reineke/indent-blankline.nvim", opts = overrides.blankline },
	{ "williamboman/mason.nvim", opts = overrides.mason },
	{ "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },

	-- Install a plugin
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},
	-- autotag
	{ "windwp/nvim-ts-autotag", event = { "BufReadPost" } },

	-- colorizer
	{ "HiPhish/nvim-ts-rainbow2", event = { "BufReadPost" } },

	-- yuck
	{ "elkowar/yuck.vim" },

	-- silicon
	{
		"michaelrommel/nvim-silicon",
		cmd = "Silicon",
		event = { "BufReadPost" },
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

	-- suda.nvim
	{ "lambdalisue/suda.vim", event = { "BufReadPost" } },

	-- barbecue
	{
		"utilyre/barbecue.nvim",
		event = { "BufReadPost" },
		dependencies = {
			"SmiteshP/nvim-navic",
		},
		config = function()
			require("custom.configs.barbecue")
		end,
	},
}

return plugins
