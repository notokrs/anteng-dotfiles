local M = {}

M.override = {
  Comment = {
    italic = true,
  },
  NvDashAscii = {
    bg = "none",
    fg = "blue",
  },
  NvDashButtons = {
    bg = "none",
    fg = "light_grey",
  },
}

M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
