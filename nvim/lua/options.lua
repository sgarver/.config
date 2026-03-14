-- ============================================================================
-- LEADER KEY (must be set BEFORE lazy.nvim loads)
-- ============================================================================
vim.g.mapleader = " "

-- ============================================================================
-- ENVIRONMENT / OPAM PATH
-- ============================================================================
-- Make sure Neovim sees your OPAM binaries
local opam_bin = os.getenv("HOME") .. "/.opam/default/bin"
if not string.find(vim.env.PATH, opam_bin, 1, true) then
    vim.env.PATH = opam_bin .. ":" .. vim.env.PATH
end

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
-- COMMANDLINE COMPLETION
-- ============================================================================
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })
vim.opt.wildignorecase = true