return {
  "nvim-telescope/telescope.nvim",
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    { "<leader>s.", "<cmd>Telescope find_files<cr>",                                                     desc = "Fuzzy find files" },
    { "<leader>sg", "<cmd>Telescope git_files<cr>",                                                      desc = "Fuzzy find git files" },
    { "<leader>sn", "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/Documents/Code'}<cr>",  desc = "Fuzzy find git files" },
    { "<leader>sv", "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/.config/nvim'}<cr>",    desc = "Fuzzy find git files" },
    { "<leader>sb", "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/.config/nvim.bk'}<cr>", desc = "Fuzzy find git files" },
  }
}


-- vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
-- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
-- vim.keymap.set('n', '<leader>s.', require('telescope.builtin').find_files, { desc = '[S]earch Nvim Configs' })
-- vim.keymap.set('n', '<leader>sp', require('telescope.builtin').oldfiles, { desc = '[S]earch [P]previous' })
-- vim.keymap.set('n', '<leader>sn', "<cmd> lua require('telescope.builtin').find_files { cwd = '~/Documents/Code' }<cr>",
--   { desc = '[S]earch [N]oqes' })
-- vim.keymap.set('n', '<leader>sv', "<cmd> lua require('telescope.builtin').find_files { cwd = '~/.config/nvim' }<cr>",
--   { desc = '[S]earch [N]oqes' })
-- vim.keymap.set('n', '<leader>sr', "<cmd> lua require('telescope.builtin').grep_string { cwd = '~/Documents/Code' }<cr>",
--   { desc = '[S]earch [N]oqes' })
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
