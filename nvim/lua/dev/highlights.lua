local c = {
  bg = "#181818",
  fg = "#d8d8d8",
  red = "#ab4642",
  yellow = "#f7ca88",
  green = "#a1b56c",
  blue = "#7cafc2",
  purple = "#ba8baf",
  gray = "#585858",
}

local set = vim.api.nvim_set_hl

set(0, "Normal", { fg = c.fg, bg = c.bg })
set(0, "Comment", { fg = c.gray, italic = true })
set(0, "@string", { fg = c.green })
set(0, "@function", { fg = c.blue })
set(0, "@keyword", { fg = c.purple })
set(0, "@type", { fg = c.yellow })
