local c = require("theme.palette").colors
local set = vim.api.nvim_set_hl

local M = {}

function M.setup()

  -- core UI
  set(0, "Normal", { fg = c.fg, bg = c.bg })

  -- fallback syntax groups → Normal
  local fallback = {
    "Constant",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Special",
    "Underlined",
    "Operator",
    "Function",
    "@function",
    "@variable",
    "Delimiter",
  }

  for _, group in ipairs(fallback) do
    set(0, group, { link = "Normal" })
  end

  -- explicit styles
  set(0, "Comment", { fg = c.gray, italic = true })
  set(0, "String",  { fg = c.purple })
  set(0, "Number",  { fg = c.blue })
  set(0, "Directory",  { fg = c.blue })

  -- Treesitter

  -- LSP → Treesitter
  set(0, "@lsp.type.function", { link = "@function" })
  set(0, "@lsp.type.method",   { link = "@function" })
  set(0, "@lsp.type.variable", { link = "@variable" })

end

return M
