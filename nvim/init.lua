-- most of these settings initially taken from this tutorial
-- You Don't Need Plugins: A NeoVim Config for Minimalists
-- https://youtu.be/skW3clVG5Fo?si=v-8ITX_of5UykRH5

vim.pack.add({
    { src = "https://github.com/koron/vim-monochromenote" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-mini/mini.pick" },
    { src = "https://github.com/nvim-mini/mini.diff" },
    { src = "https://github.com/NStefan002/screenkey.nvim" },
    { src = "https://github.com/folke/which-key.nvim" },
})

-- Neovim 0.11+ LSP config (no lspconfig.setup)
vim.lsp.config("ocamllsp", {
  cmd = { "ocamllsp" },
  filetypes = { "ocaml", "ocamlinterface" },
})

vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
})

vim.lsp.enable({ "lua_ls", "ocamllsp" })

--vim.lsp.semantic_tokens.start = function() end


-- theme & transparency
vim.cmd.colorscheme("theme") -- also good: sorbet, habermax, unokai
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })

-- Basic settings
vim.opt.number = true         -- Line numbers
vim.opt.relativenumber = false -- Relative line numbers
vim.opt.cursorline = true     -- Highlight current line
vim.opt.wrap = false          -- Don't wrap lines
vim.opt.scrolloff = 10        -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8     -- Keep 8 columns left/right of cursor
vim.o.winborder = "single"

-- Indentation
vim.opt.tabstop = 4        -- Tab width
vim.opt.shiftwidth = 4     -- Indent width
vim.opt.softtabstop = 4    -- Soft tab stop
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart auto-indenting
vim.opt.autoindent = true  -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true  -- Case sensitive if uppercase in search
vim.opt.hlsearch = true   -- Don't highlight search results
vim.opt.incsearch = true  -- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true                      -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                        -- Always show sign column
--vim.opt.colorcolumn = "100"                       -- Show column at 100 characters
vim.opt.showmatch = true                          -- Highlight matching brackets
vim.opt.matchtime = 2                             -- How long to show matching bracket
vim.opt.cmdheight = 1                             -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion options
vim.opt.showmode = false                          -- Don't show mode in command line
vim.opt.pumheight = 10                            -- Popup menu height
vim.opt.pumblend = 10                             -- Popup menu transparency
vim.opt.winblend = 0                              -- Floating window transparency
vim.opt.conceallevel = 0                          -- Don't hide markup
vim.opt.concealcursor = ""                        -- Don't hide cursor line markup
vim.opt.lazyredraw = true                         -- Don't redraw during macros
--vim.opt.synmaxcol = 300                           -- Syntax highlighting limit
vim.opt.fillchars = { eob = " " }                 -- Hide ~ on empty lines

-- hide command section (toggle screenkey instead)
vim.o.showcmd = false
vim.o.showmode = false
vim.o.showcmdloc = "last"
vim.o.cmdheight = 0

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

-- File handling
vim.opt.backup = false                            -- Don't create backup files
vim.opt.writebackup = false                       -- Don't create backup before writing
vim.opt.swapfile = false                          -- Don't create swap files
vim.opt.undofile = true                           -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.opt.updatetime = 300                          -- Faster completion
vim.opt.timeoutlen = 500                          -- Key timeout duration
vim.opt.ttimeoutlen = 0                           -- Key code timeout
vim.opt.autoread = true                           -- Auto reload files changed outside vim
vim.opt.autowrite = false                         -- Don't auto save

-- Behavior settings
vim.opt.hidden = true                   -- Allow hidden buffers
vim.opt.errorbells = false              -- No error bells
vim.opt.backspace = "indent,eol,start"  -- Better backspace behavior
vim.opt.autochdir = false               -- Don't auto change directory
vim.opt.iskeyword:append("-")           -- Treat dash as part of word
vim.opt.path:append("**")               -- include subdirectories in search
vim.opt.selection = "exclusive"         -- Selection behavior
vim.opt.mouse = "a"                     -- Enable mouse support
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
vim.opt.modifiable = true               -- Allow buffer modifications
vim.opt.encoding = "UTF-8"              -- Set encoding


vim.opt.statusline = "%<%{expand('%:p:~')}%m%r%=%l:%c %p%%"


-- keybinds
vim.g.mapleader = " "

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

require "mini.pick".setup()
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>b', ':Pick buffers<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')

require "oil".setup()
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

-- Quick config editing
vim.keymap.set("n", "<leader>c", ":e $MYVIMRC<CR>", { desc = "Edit config" })
vim.keymap.set("n", "<leader>o", ":so $MYVIMRC<CR>", { desc = "Reload config" })

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quite<CR>')
vim.keymap.set('n', '<leader>s', ':Screenkey<CR>')

vim.lsp.enable({ "lua_ls", "ocamllsp" })

-- Git integration
require("mini.diff").setup({
    view = {
        style = "sign",
        signs = { add = "+", change = "~", delete = "-" },
    },
    -- Reduce background work / refresh frequency
    delay = {
        text_change = 1000, -- was small by default; bump it up
    },
})

-- Which-key configuration
require("which-key").setup({
    preset = "helix",
    win = {
        border = "single",
        padding = { 1, 2 },
        no_overlap = true,
        row = math.huge,
        col = math.huge,
    },
    layout = {
        width = { min = 20, max = 32 },
        spacing = 2,
        align = "right",
    },
})

-- ============================================================================
-- USEFUL FUNCTIONS
-- ============================================================================

-- Copy Full File-Path
vim.keymap.set("n", "<leader>pa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("file:", path)
end, { desc = "Copy full path" })

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup,
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
    group = augroup,
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        local line = mark[1]
        local ft = vim.bo.filetype
        if line > 0 and line <= lcount
            and vim.fn.index({ "commit", "gitrebase", "xxd" }, ft) == -1
            and not vim.o.diff then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Set filetype-specific settings
vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = { "lua", "python" },
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
    end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "ocaml" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})


vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = { "*.ml", "*.mli" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})


-- Auto-close terminal when process exits
vim.api.nvim_create_autocmd("TermClose", {
    group = augroup,
    callback = function()
        if vim.v.event.status == 0 then
            vim.api.nvim_buf_delete(0, {})
        end
    end,
})

-- Disable line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
    group = augroup,
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.signcolumn = "no"
    end,
})

-- Auto-resize splits when window is resized
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup,
    callback = function()
        vim.cmd("tabdo wincmd =")
    end,
})

-- Create directories when saving files
vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup,
    callback = function()
        local dir = vim.fn.expand('<afile>:p:h')
        if vim.fn.isdirectory(dir) == 0 then
            vim.fn.mkdir(dir, 'p')
        end
    end,
})

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })
vim.opt.wildignorecase = true

-- Performance improvements
--vim.opt.redrawtime = 10000
--vim.opt.maxmempattern = 20000


-- ============================================================================
-- LSP CONFIGURATION
-- ============================================================================

-- LSP settings
local function setup_lsp()
    -- Show diagnostic signs in the gutter
    local signs = {
        Error = "\u{f06a} ", -- nf-fa-exclamation_circle
        Warn = "\u{f071} ",  -- nf-fa-exclamation_triangle
        Hint = "\u{f0eb} ",  -- nf-fa-lightbulb_o
        Info = "\u{f05a} "   -- nf-fa-info_circle
    }

    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    -- Diagnostic configuration
    vim.diagnostic.config({
        virtual_text = {
            prefix = '●',
            spacing = 4,
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
            border = 'single',
            source = 'always',
            header = '',
            prefix = '',
        },
    })

    -- LSP keymaps (set when LSP attaches)
    local function map(mode, lhs, rhs, desc, bufnr)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
    end

    vim.api.nvim_create_autocmd('LspAttach', {
        group = augroup,
        callback = function(ev)
            local b = ev.buf

            map('n', 'gD', vim.lsp.buf.declaration, "LSP: Declaration", b)
            map('n', 'gd', vim.lsp.buf.definition, "LSP: Definition", b)
            map('n', 'K', vim.lsp.buf.hover, "LSP: Hover", b)
            map('n', 'gi', vim.lsp.buf.implementation, "LSP: Implementation", b)
            map('n', '<C-k>', vim.lsp.buf.signature_help, "LSP: Signature help", b)
            map('n', '<leader>D', vim.lsp.buf.type_definition, "LSP: Type definition", b)
            map('n', '<leader>rn', vim.lsp.buf.rename, "LSP: Rename", b)
            map('n', '<leader>ca', vim.lsp.buf.code_action, "LSP: Code action", b)
            map('n', 'gr', vim.lsp.buf.references, "LSP: References", b)
            map('n', '<leader>fo', function()
                vim.lsp.buf.format { async = true }
            end, "LSP: Format", b)
        end,
    })

    -- Floating window borders
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or 'single'
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end
end

-- LSP diagnostic keymaps (always available)
vim.keymap.set('n', '<leader>pd', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', '<leader>nd', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic list' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })

setup_lsp()



