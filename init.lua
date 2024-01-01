vim.cmd([[
  set rnu      
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
]])


-- Set leader
vim.g.mapleader = ' '

-- 1 Lazy install check
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2 load lazy

local plugins = { 
  { "catppuccin/nvim", name = "catppuccin", opts = {}, priority = 1000 },
  { "tpope/vim-fugitive" },
  {   
    "stevearc/oil.nvim",
    opts = {
      columns = {
        "icon",
        -- "size",
        -- "permissions",
        -- "mtime",
      },
      win_options = {
        signcolumn = "yes",
      },
      delete_to_trash = true,
    },
    keys = {
       { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    },
  },
  { 
     "nvim-telescope/telescope.nvim", branch = '0.1.x', dependencies = {'nvim-lua/plenary.nvim'}, opts = {}, 
     keys = {
       { "<c-p>", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files" },
     },
  },
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      -- TODO: use vim.defer_fn to improve startup time (see kickstarter)
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { 'lua', 'python', 'tsx', 'php', 'markdown', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash' },
        highlight = { enable = true },
        indent = {enable = true},
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<M-space>',
          },
        },
    }) end,
    opts = {},
    build = ':TSUpdate',
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

vim.cmd.colorscheme "catppuccin"


