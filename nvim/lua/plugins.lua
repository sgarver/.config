return {
  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    config = function()
      require('nvim-treesitter.config').setup({
        ensure_installed = { 'lua', 'vim', 'vimdoc', 'bash', 'ocaml' },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Telescope and dependencies
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.1',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      -- Setup telescope
      local telescope = require("telescope")
      telescope.setup{}
    end,
  },

  -- File explorer
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup()
    end
  },

  -- Mini diff
  {
    'echasnovski/mini.diff',
    version = false,
    lazy = false,
    opts = {
      view = { style = "sign", signs = { add = "+", change = "~", delete = "-" } },
    },
  },

  -- Which-key
  {
    'folke/which-key.nvim',
    lazy = false,
    opts = {},
  },

  -- LSP Configuration
  {
    'neovim/nvim-lspconfig',
    lazy = false,
  },
}