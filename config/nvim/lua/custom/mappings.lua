local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<ESC> <cmd> w <CR>", "save file" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

return M
