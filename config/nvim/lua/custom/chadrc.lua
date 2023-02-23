local M = {}
local highlights = require("custom.highlights")

M.ui = {
	theme = "dark_horizon",
	theme_toggle = { "dark_horizon", "one_light" },
	hl_override = highlights.override,
	hl_add = highlights.add,
	transparency = false,
}

M.plugins = require("custom.plugins")
M.mappings = require("custom.mappings")

return M
