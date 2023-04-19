local present, statuscol = pcall(require, "statuscol")
local builtin = require("statuscol.builtin")

if not present then
	return
end

statuscol.setup({
	relculright = true,
	segments = {
		{ text = { "%s" }, click = "v:lua.ScSa" },
		{ text = { builtin.lnumfunc }, click = "v:lua.ScLa" },
		{ text = { " ", builtin.foldfunc, " " }, click = "v:lua.ScFa" },
	},
})
