return { 
   "nvim-telescope/telescope.nvim", branch = '0.1.x', dependencies = {'nvim-lua/plenary.nvim'}, opts = {}, 
   keys = {
     { "<c-p>", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files" },
   },
}
