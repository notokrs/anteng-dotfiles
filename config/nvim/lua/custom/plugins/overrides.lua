local M = {}

M.treesitter = {
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
  },
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "php",
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
    "deno",

    -- shell
    "beautysh",

    -- php
    "intelephense",
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
  char_highlight = "LineNr",
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = false,
  show_first_indent_level = true,
  show_trailing_blankline_indent = false,
  context_highlight_list = {
    "rainbowcol1",
    "rainbowcol2",
    "rainbowcol3",
    "rainbowcol4",
    "rainbowcol5",
    "rainbowcol6",
    "rainbowcol7",
  },
}

return M
