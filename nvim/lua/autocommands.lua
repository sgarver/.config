-- ============================================================================
-- AUTOCOMMANDS
-- ============================================================================
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function() vim.highlight.on_yank() end,
})

-- Return to last edit position
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Filetype-specific tab settings
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "python" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "ocaml", "lua" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = { "*.ml", "*.mli", "*.lua" },
  callback = function() vim.lsp.buf.format({ async = false }) end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = { "*" },
  callback = function()
    local save_view = vim.fn.winsaveview()
    vim.cmd([[silent! %s/\v(^\s*\n){3,}/\r\r/ge]])
    vim.fn.winrestview(save_view)
  end,
})
