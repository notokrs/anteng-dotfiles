local present, silicon = pcall(require, "silicon")

if not present then
	return
end

silicon.setup({
	font = "JetBrainsMono Nerd Font",
	background = "#AAAAFF",
	theme = "Dracula",
	no_line_number = false,
	pad_vert = 80,
	pad_horiz = 50,
	no_round_corner = false,
	no_window_controls = false,
	line_offset = 1,
	line_pad = 0,
	tab_width = 4,
	language = function()
		return vim.bo.filetype
	end,
	shadow_blur_radius = 16,
	shadow_offset_x = 8,
	shadow_offset_y = 8,
	shadow_color = "#100808",
	gobble = true,
	output = function()
		return "/home/r3dmoon/Pictures/Silicon/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. ".png"
	end,
	to_clipboard = false,
})
