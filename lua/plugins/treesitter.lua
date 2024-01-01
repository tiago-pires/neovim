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
