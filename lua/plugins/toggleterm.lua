return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require('toggleterm').setup {
      size = 80,
      open_mapping = [[<c-space>]],
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      direction = 'float',  -- 'float' | 'horizontal' | 'vertical' | 'window' | 'term' | 'cursor'
      close_on_exit = true, -- close the terminal window when the process exits
      float_opts = {
        border = 'single',
        width = math.floor(vim.o.columns * 0.8),
        height = math.floor(vim.o.lines * 0.8),
        winblend = 3,
        highlights = {
          border = "Normal",
          background = "Normal",
        }
      }
    }
  end
}
