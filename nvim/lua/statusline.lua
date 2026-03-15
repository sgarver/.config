-- Helper for LSP indicator (flask when attached)
function _G.LspIndicator()
  return #vim.lsp.get_clients({ bufnr = 0 }) > 0 and "  " or ""
end

-- Statusline
vim.opt.statusline = table.concat({
  "%<%{expand('%:p:~')}",      -- path
  "%m%r",                      -- flags
  "%=",                        -- right align
  "%{&filetype}",              -- filetype/language
  "%#StatusLineLsp#",          -- switch to green
  "%{v:lua.LspIndicator()}",   -- lsp attached icon
  "%*",                        -- reset highlight
  "  %2l:%-2c  %2p%% ",        -- location
}, "")

