local c = require("theme.palette").colors
local set = vim.api.nvim_set_hl

local M = {}

function M.setup()
  -- core UI
  set(0, "Normal", { fg = c.fg, bg = "NONE" })

  -- fallback syntax groups → Normal
  local fallback = {
    "Constant",
    "Statement",
    "PreProc",
    "Type",
    "Special",
    "Underlined",
    "@variable",
    "Delimiter",
    "Title",
    "Identifier",
    "Operator",
    "Function",
  }

  for _, group in ipairs(fallback) do
    set(0, group, { link = "Normal" })
  end

  -- explicit styles
  set(0, "Comment", { fg = c.gray, italic = true })
  set(0, "String", { fg = c.blue })
  set(0, "Number", { fg = c.purple })
  set(0, "Directory", { fg = c.blue })
  set(0, "Boolean", { fg = c.yellow })
  set(0, "Error", { bg = c.red })
  set(0, "Question", { fg = c.green })

  set(0, "NormalFloat", { fg = c.fg, bg = c.bg })
  set(0, "FloatBorder", { fg = c.gray })
  set(0, "Question", { fg = c.blue })
  set(0, "Title", { fg = c.yellow })
  set(0, "Directory", { fg = c.blue })


  -- LSP → Treesitter
  set(0, "@lsp.type.function", { link = "@function" })
  set(0, "@lsp.type.method", { link = "@function" })
  set(0, "@lsp.type.variable", { link = "@variable" })

  -- mini.diff colors (add after your Operator / Treesitter section)
  set(0, "MiniDiffSignAdd", { fg = c.green })
  set(0, "MiniDiffSignChange", { fg = c.blue })
  set(0, "MiniDiffSignDelete", { fg = c.red })

  -- Overlay (optional, only visible when toggled)
  set(0, "MiniDiffOverAdd", { bg = "#2a3b2a", fg = c.green })
  set(0, "MiniDiffOverChange", { bg = "#2a3b4a", fg = c.blue })
  set(0, "MiniDiffOverDelete", { bg = "#3b2a2a", fg = c.red, strikethrough = true })

  -- Popup / completion menu
  set(0, "Pmenu", {
    fg = c.fg,
    bg = c.bg, -- or c.bg_dark if you have it, or a shade darker than c.bg
  })

  set(0, "PmenuSel", {
    bg = c.gray, -- mid-dark gray for selection
    fg = c.blue or c.fg,
    bold = true,
  })

  set(0, "PmenuSbar", { bg = c.bg })
  set(0, "PmenuThumb", { bg = c.gray })

  set(0, "PmenuMatch", { fg = c.purple })
  set(0, "PmenuMatchSel", { fg = c.yellow, bold = true })

  -- Floating windows (affects :LspInfo, hover, diagnostics float, etc.)
  set(0, "NormalFloat", {
    bg = c.bg, -- match your dark popup/menu bg
    fg = c.fg, -- text color
  })

  set(0, "FloatBorder", {
    fg = c.blue, -- border color (subtle accent)
    bg = "NONE", -- transparent border bg (or match NormalFloat bg)
  })

  -- Optional: if title/footer appear in newer Neovim
  set(0, "FloatTitle", { fg = c.yellow or c.blue, bold = true })
  set(0, "FloatFooter", { fg = c.gray, italic = true })

  -- Search highlights
  local highlight = "#333333"

  set(0, "Search", {
    bg = highlight,
    --fg = c.fg,
  })

  set(0, "IncSearch", {
    bg = highlight,
    --fg = c.bg,
  })

  set(0, "CurSearch", { link = "IncSearch" })

  -- Cursor line
  set(0, "CursorLine", {
    bg = highlight,
    --fg = c.fg,
  })

  set(0, "Visual", { reverse = true })

  --set(0, "Visual", { link = "CursorLine" })  -- reuses your CursorLine bg

  -- Optional: brighter current line number
  set(0, "CursorLineNr", {
    fg = c.fg,
  })

  set(0, "LineNr", {
    fg = c.gray,
  })
end

-- status line
set(0, "StatusLine", { fg = c.gray, italic = true })
set(0, "StatusLineNC", { fg = c.gray, italic = true })


return M
