local overrides = require("custom.plugins.overrides")

local plugins = {

	["goolord/alpha-nvim"] = { disable = false },

	-- Override plugin definition options
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	["hrsh7th/nvim-cmp"] = {
		config = function()
			require("plugins.configs.cmp")
			require("custom.plugins.cmp")
		end,
	},

	-- overrde plugin configs
	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},

	["NvChad/ui"] = {
		override_options = overrides.ui,
	},

	["lukas-reineke/indent-blankline.nvim"] = {
		override_options = overrides.blankline,
	},

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},

	["nvim-tree/nvim-tree.lua"] = {
		override_options = overrides.nvimtree,
	},

	-- Install a plugin
	-- better escape
	["max397574/better-escape.nvim"] = {
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	-- code formatting, linting etc
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- autotag
	["windwp/nvim-ts-autotag"] = {},

	-- autocomplete
	["hrsh7th/cmp-nvim-lsp"] = {},
	["hrsh7th/cmp-buffer"] = {},
	["hrsh7th/cmp-path"] = {},
	["hrsh7th/cmp-cmdline"] = {},

	-- colorizer
	["HiPhish/nvim-ts-rainbow2"] = {},

	-- yuck
	["elkowar/yuck.vim"] = {},

	-- live server
	["manzeloth/live-server"] = {},

	-- silicon
	["segeljakt/vim-silicon"] = {
		config = function()
			require("custom.plugins.silicon")
		end,
	},

	-- noice
	["folke/noice.nvim"] = {
		config = function()
			require("custom.plugins.noice")
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
}

return plugins
