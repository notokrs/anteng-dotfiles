local present, silicon = pcall(require, "silicon")

if not present then
	return
end

silicon.setup({
	output = {
		clipboard = false,
		-- file = "/home/r3dmoon/Pictures/Silicon",
		path = "/home/r3dmoon/Pictures/Silicon",
		format = "silicon_[year][month][day]_[hour][minute][second].png",
	},

	font = "JetBrainsMono Nerd Font",
	theme = "Dracula",
	background = "#AAAAFF",

	shadow = {
		blur_radius = 0.0, -- (number) The blur radius for the shadow, set to 0.0 for no shadow.
		offset_x = 0, -- (number) The horizontal offset for the shadow.
		offset_y = 0, -- (number) The vertical offset for the shadow.
		color = "#555", -- (string) The color for the shadow.
	},

	pad_horiz = 100, -- (number) The horizontal padding.
	pad_vert = 80, -- (number) The vertical padding.
	line_number = false, -- (boolean) Whether to show line numbers in the screenshot.
	line_pad = 2, -- (number) The padding between lines.
	line_offset = 1, -- (number) The starting line number for the screenshot.
	tab_width = 4, -- (number) The tab width for the screenshot.
	gobble = false, -- (boolean) Whether to trim extra indentation.
	highlight_selection = false, -- (boolean) Whether to capture the whole file and highlight selected lines.
	round_corner = true,
	window_controls = true, -- (boolean) Whether to show window controls (minimize, maximize, close) in the screenshot.
	window_title = nil, -- (function) A function that returns the window title as a string.

	watermark = {
		text = nil, -- (string) The text to use as the watermark, set to nil to disable.
		color = "#222", -- (string) The color for the watermark text.
		style = "bold",
	},
})
