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
  root_markers = { "dune-project" },   -- Neovim handles upward search automatically
})

vim.lsp.enable({ "ocamllsp" })

vim.lsp.enable 'bashls'

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

