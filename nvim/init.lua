-- ============================================================================
-- ENVIRONMENT / OPAM PATH
-- ============================================================================
-- Make sure Neovim sees your OPAM binaries
local opam_bin = os.getenv("HOME") .. "/.opam/default/bin"
if not string.find(vim.env.PATH, opam_bin, 1, true) then
  vim.env.PATH = opam_bin .. ":" .. vim.env.PATH
end

-- ============================================================================
-- PLUGINS
-- ============================================================================
vim.pack.add({
  { src = "https://github.com/koron/vim-monochromenote" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/nvim-mini/mini.pick" },
  { src = "https://github.com/nvim-mini/mini.diff" },
  { src = "https://github.com/NStefan002/screenkey.nvim" },
  { src = "https://github.com/folke/which-key.nvim" },
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    lazy = false,        -- or true if you prefer lazy-loading
    build = ":TSUpdate", -- auto-updates parsers on install/update
  },
})

-- ============================================================================
-- LSP CONFIG (Neovim 0.11+ native)
-- ============================================================================
-- Lua LSP
vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        checkThirdParty = false,
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
})

vim.lsp.enable({ "lua_ls" })

-- ocaml
vim.lsp.config("ocamllsp", {
  cmd = { "ocamllsp" },
  filetypes = { "ocaml", "dune" },
  root_markers = { "dune-project" }, -- Neovim handles upward search automatically
})

vim.lsp.enable({ "ocamllsp" })

-- Put this in your config after lsp is set up (e.g. after vim.lsp.enable or lspconfig setup)
local lsp = vim.lsp
local buf = vim.lsp.buf
local diagnostic = vim.diagnostic

-- Helper to make mappings only in buffers where LSP is attached
local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { buffer = true, desc = "LSP: " .. desc })
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local bufnr = ev.buf

    map("n", "<leader>df", vim.diagnostic.open_float, "Show diagnostic float (current line)")

    -- ──────────────────────────────────────────────────────────────
    --  Navigation / Jump
    -- ──────────────────────────────────────────────────────────────
    map("n", "<leader>gd", lsp.buf.definition, "Goto Definition")
    map("n", "<leader>gD", lsp.buf.declaration, "Goto Declaration")
    map("n", "<leader>gi", lsp.buf.implementation, "Goto Implementation")
    map("n", "<leader>gr", lsp.buf.references, "Goto References")
    map("n", "<leader>gt", lsp.buf.type_definition, "Goto Type Definition")

    -- ──────────────────────────────────────────────────────────────
    --  Information / Hover / Signature
    -- ──────────────────────────────────────────────────────────────
    map("n", "K", lsp.buf.hover, "Hover Documentation")
    map("n", "<leader>k", lsp.buf.signature_help, "Signature Help")
    map("i", "<C-k>", lsp.buf.signature_help, "Signature Help (insert)")

    -- ──────────────────────────────────────────────────────────────
    --  Workspace / Diagnostics
    -- ──────────────────────────────────────────────────────────────
    map("n", "<leader>sl", diagnostic.setloclist, "Diagnostics → Location List")
    map("n", "<leader>sq", diagnostic.setqflist, "Diagnostics → Quickfix")
    map("n", "<leader>sn", function() diagnostic.jump({ count = 1, float = true }) end, "Next Diagnostic")
    map("n", "<leader>sp", function() diagnostic.jump({ count = -1, float = true }) end, "Prev Diagnostic")

    -- ──────────────────────────────────────────────────────────────
    --  Code Actions & Refactor
    -- ──────────────────────────────────────────────────────────────
    map({ "n", "v" }, "<leader>ca", buf.code_action, "Code Action")
    map("n", "<leader>cr", buf.rename, "Rename Symbol")
    map("n", "<leader>cf", function() buf.format({ async = true }) end, "Format Buffer")

    -- ──────────────────────────────────────────────────────────────
    --  Symbols / Outline / Call Hierarchy (if supported)
    -- ──────────────────────────────────────────────────────────────
    map("n", "<leader>ss", lsp.buf.document_symbol, "Document Symbols")
    map("n", "<leader>sw", lsp.buf.workspace_symbol, "Workspace Symbols")

    -- Optional: more advanced / less frequently used
    -- map("n", "<leader>ci", lsp.buf.incoming_calls,    "Incoming Calls")
    -- map("n", "<leader>co", lsp.buf.outgoing_calls,    "Outgoing Calls")
    -- map("n", "<leader>ch", lsp.buf.call_hierarchy,    "Call Hierarchy")
  end,
})

-- ============================================================================
-- THEME
-- ============================================================================
vim.cmd.colorscheme("theme")
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

-- ============================================================================
-- BASIC SETTINGS
-- ============================================================================
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.o.winborder = "single"

-- ============================================================================
-- INDENTATION
-- ============================================================================
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- ============================================================================
-- SEARCH
-- ============================================================================
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- ============================================================================
-- VISUAL
-- ============================================================================
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 0
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.lazyredraw = true
vim.opt.fillchars = { eob = " " }

-- ============================================================================
-- COMMANDLINE
-- ============================================================================
vim.o.showcmd = false
vim.o.showmode = false
vim.o.showcmdloc = "last"
vim.o.cmdheight = 0

-- ============================================================================
-- FILE HANDLING
-- ============================================================================
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then vim.fn.mkdir(undodir, "p") end
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = undodir
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0
vim.opt.autoread = true
vim.opt.autowrite = false

-- ============================================================================
-- BEHAVIOR
-- ============================================================================
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backspace = "indent,eol,start"
vim.opt.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.opt.selection = "exclusive"
vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"

-- ============================================================================
-- STATUSLINE
-- ============================================================================

--vim.opt.statusline = "%<%{expand('%:p:~')}%m%r%=%l:%c %p%%"

-- Helper for LSP indicator (flask when attached)
function _G.LspIndicator()
  return #vim.lsp.get_clients({ bufnr = 0 }) > 0 and " " or ""
end

-- Statusline
vim.opt.statusline = table.concat({
  "%<%{expand('%:p:~')}",    -- path
  "%m%r",                    -- flags
  "%=",                      -- right align
  "%{&filetype}",            -- filetype/language
  "%{v:lua.LspIndicator()}", -- lsp attached icon
  "  %2l:%-2c  %2p%% ",      -- location
}, "")


-- ============================================================================
-- KEYBINDS
-- ============================================================================
vim.g.mapleader = " "
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- ============================================================================
-- PICKER
-- ============================================================================
require("mini.pick").setup()
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")
vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")

-- ============================================================================
-- FILE EXPLORER
-- ============================================================================
require("oil").setup()
vim.keymap.set("n", "<leader>e", ":Oil<CR>")

-- ============================================================================
-- CONFIG SHORTCUTS
-- ============================================================================
vim.keymap.set("n", "<leader>c", ":e $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>o", ":so $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>s", ":Screenkey<CR>")

-- ============================================================================
-- GIT DIFF
-- ============================================================================
require("mini.diff").setup({
  view = { style = "sign", signs = { add = "+", change = "~", delete = "-" } },
  delay = { text_change = 1000 },
})

-- ============================================================================
-- WHICH KEY
-- ============================================================================
require("which-key").setup({ preset = "helix" })

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
  pattern = { "ocaml", "lua", },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Format on save for OCaml
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = { "*.ml", "*.mli", "*.lua" },
  callback = function() vim.lsp.buf.format({ async = false }) end,
})

-- ============================================================================
-- COMMANDLINE COMPLETION
-- ============================================================================
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })
vim.opt.wildignorecase = true
