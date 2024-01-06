return {
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
          init_selection = '<leader>i',
          node_incremental = '<leader>i',
          scope_incremental = '<leader>s',
          node_decremental = '<leader>d',
        },
      },
  }) end,
  opts = {},
  build = ':TSUpdate',
}
