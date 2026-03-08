-- my_treesitter_theme.lua
local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- === Base color palette ===
local c = {
    bg     = "#181818",
    fg     = "#d8d8d8",
    red    = "#ab4642",
    yellow = "#f7ca88",
    green  = "#a1b56c",
    blue   = "#7cafc2",
    purple = "#ba8baf",
    gray   = "#585858",
}

-- === Core highlights using color names ===
set("Normal",   { fg = c.fg, bg = c.bg })
set("Comment",  { fg = c.gray, italic = true })
set("Keyword",  { fg = c.purple, bold = true })
set("Function", { fg = c.blue })
set("Type",     { fg = c.purple })
set("String",   { fg = c.green })

-- === Treesitter highlights ===
-- Numbers: single source of truth
set("@number",           { fg = c.yellow })
set("@float",            { link = "@number" })
set("@constant.numeric", { link = "@number" })
set("@lsp.type.number",  { link = "@number" })

set("@function",         { fg = c.blue })
set("@variable",         { fg = c.fg })
set("@keyword",          { fg = c.purple })
set("@type",             { fg = c.purple })
set("@string",           { fg = c.green })
set("@comment",          { fg = c.gray, italic = true })

-- === LSP semantic highlights ===
set("@lsp.type.function", { link = "@function" })
set("@lsp.type.variable", { link = "@variable" })
set("@lsp.type.keyword",  { link = "@keyword" })
set("@lsp.type.type",     { link = "@type" })

-- Set Neovim background
vim.o.background = "dark"
