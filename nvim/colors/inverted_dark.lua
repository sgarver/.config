-- inverted_dark.lua
-- Minimal dark inverted colorscheme

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "inverted_dark"

local colors = {
  bg        = "#0b0c0f",
  fg        = "#d6d6d6",

  black     = "#0b0c0f",
  darkgray  = "#1a1c22",
  gray      = "#2a2d34",
  lightgray = "#6f737a",

  red       = "#c27d7d",
  green     = "#8fa88f",
  yellow    = "#b5a26d",
  blue      = "#7a90b8",
  magenta   = "#a287b8",
  cyan      = "#7da4a4",
  white     = "#ffffff",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-------------------------------------------------
-- UI
-------------------------------------------------

hi("Normal",       { fg = colors.fg, bg = colors.bg })
hi("NormalFloat",  { fg = colors.fg, bg = colors.darkgray })

hi("Cursor",       { fg = colors.bg, bg = colors.fg })
hi("CursorLine",   { bg = colors.darkgray })
hi("CursorColumn", { bg = colors.darkgray })

hi("LineNr",       { fg = colors.lightgray })
hi("CursorLineNr", { fg = colors.white, bold = true })

hi("SignColumn",   { bg = colors.bg })
hi("FoldColumn",   { fg = colors.lightgray })

hi("VertSplit",    { fg = colors.gray })
hi("WinSeparator", { fg = colors.gray })

hi("StatusLine",   { fg = colors.fg, bg = colors.gray })
hi("StatusLineNC", { fg = colors.lightgray, bg = colors.darkgray })

hi("Pmenu",        { fg = colors.fg, bg = colors.gray })
hi("PmenuSel",     { fg = colors.white, bg = colors.blue })
hi("PmenuSbar",    { bg = colors.darkgray })
hi("PmenuThumb",   { bg = colors.lightgray })

-------------------------------------------------
-- Search / Visual
-------------------------------------------------

hi("Visual",       { bg = colors.gray })
hi("Search",       { fg = colors.bg, bg = colors.yellow })
hi("IncSearch",    { fg = colors.bg, bg = colors.red })

hi("MatchParen",   { fg = colors.yellow, bold = true })

-------------------------------------------------
-- Diagnostics (LSP)
-------------------------------------------------

hi("DiagnosticError", { fg = colors.red })
hi("DiagnosticWarn",  { fg = colors.yellow })
hi("DiagnosticInfo",  { fg = colors.blue })
hi("DiagnosticHint",  { fg = colors.cyan })

-------------------------------------------------
-- Syntax
-------------------------------------------------

hi("Comment",      { fg = colors.lightgray, italic = true })

hi("Constant",     { fg = colors.cyan })
hi("String",       { fg = colors.green })
hi("Character",    { fg = colors.green })
hi("Number",       { fg = colors.cyan })
hi("Boolean",      { fg = colors.magenta })
hi("Float",        { fg = colors.cyan })

hi("Identifier",   { fg = colors.fg })
hi("Function",     { fg = colors.blue })

hi("Statement",    { fg = colors.magenta })
hi("Conditional",  { fg = colors.magenta })
hi("Repeat",       { fg = colors.magenta })
hi("Label",        { fg = colors.yellow })
hi("Operator",     { fg = colors.fg })
hi("Keyword",      { fg = colors.magenta })
hi("Exception",    { fg = colors.red })

hi("PreProc",      { fg = colors.yellow })
hi("Include",      { fg = colors.blue })
hi("Define",       { fg = colors.magenta })
hi("Macro",        { fg = colors.yellow })
hi("PreCondit",    { fg = colors.yellow })

hi("Type",         { fg = colors.yellow })
hi("StorageClass", { fg = colors.yellow })
hi("Structure",    { fg = colors.yellow })
hi("Typedef",      { fg = colors.yellow })

hi("Special",      { fg = colors.blue })
hi("SpecialChar",  { fg = colors.red })
hi("Tag",          { fg = colors.cyan })
hi("Delimiter",    { fg = colors.fg })
hi("SpecialComment",{ fg = colors.lightgray })
hi("Debug",        { fg = colors.red })

-------------------------------------------------
-- Treesitter (Optional)
-------------------------------------------------

hi("@variable",    { fg = colors.fg })
hi("@function",    { fg = colors.blue })
hi("@string",      { fg = colors.green })
hi("@comment",     { fg = colors.lightgray, italic = true })
hi("@keyword",     { fg = colors.magenta })
hi("@type",        { fg = colors.yellow })
hi("@constant",    { fg = colors.cyan })

-------------------------------------------------
-- Git
-------------------------------------------------

hi("DiffAdd",    { fg = colors.green })
hi("DiffDelete", { fg = colors.red })
hi("DiffChange", { fg = colors.yellow })
hi("DiffText",   { fg = colors.blue, bold = true })
