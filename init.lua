-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.modifiable = true -- allow to modify the buffer
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 4 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time

-- Clipboard & Mouse
vim.opt.clipboard:append("unnamedplus") -- allows neovim to access the system clipboard

-- Maouse
vim.opt.mouse = "a" -- allow the mouse to be used in neovim

-- Search
vim.opt.hlsearch = false -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns

-- Backups
vim.opt.backup = false -- don't create backup file in the dir

-- Layout
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.wo.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
-- vim.opt.showtabline = 0 -- Save spaces and don't show tabs
vim.opt.smartcase = true -- smart case
vim.opt.autoindent = true -- so smart indent works
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.timeoutlen = 500 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = false -- convert tabs to spaces
vim.opt.shiftwidth = 0 -- use 0 to be same as tabstop, the number of spaces inserted for each indentation
vim.opt.tabstop = 3 -- insert 2 spaces for a tab
vim.opt.cursorline = false -- highlight the current line
vim.opt.wrap = false -- display lines as one long line
vim.opt.scrolloff = 4 -- is one of my fav
vim.opt.sidescrolloff = 8

-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd "set formatoptions-=cro" -- when comenting code, new lines won't be commented automatically (annoying)
-- vim.cmd [[set iskeyword+=-]]

-- vim markdown not to start with folds
-- vim.cmd([[let g:vim_markdown_folding_disabled = 1]])
-- conceil links and others not under cursor
vim.cmd([[set conceallevel=0]])
-- search ignore
vim.cmd([[set wildignore+=*/node_modules/*,*/.git/*,*/build/*]])


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

-- 2 load lazy. "pugins" tell lazy to load files in "lua/plugins/*"
require("lazy").setup("plugins", {
	performance = {
		rtp = {
			disabled_plugins = {
				-- 'harpoon2'
			}
		}
	}
})

-- keymaps

vim.keymap.set("n", "<leader>.", "<cmd>vsplit tree | wincmd H | :vert resize 40 |  read !tree -I node_modules<cr>", {})



    vim.keymap.set("n", "<c-s>", ":up<cr>", {})

-- # Tabs (workspaces)

    vim.keymap.set("n", "<tab>", "gt", {})
    vim.keymap.set("n", "<s-tab>", "gT", {})

    vim.keymap.set("n", "<c-h>", "1gt", {})
    vim.keymap.set("n", "<c-t>", "2gt", {})
    vim.keymap.set("n", "<c-n>", "3gt", {})

	

-- ### Buffers
vim.keymap.set("n", "<right>", "<c-w>l")
vim.keymap.set("n", "<left>", "<c-w>h")
vim.keymap.set("n", "<up>", "<c-w>k")
vim.keymap.set("n", "<down>", "<c-w>j")

-- ## Indent selection
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- ## scrolling
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")

-- ### keep search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ## search for selection under cursor
vim.keymap.set("n", "<leader>d", "vawy:%s/<c-r>0") -- like multiple cursors for a word
vim.keymap.set("v", "<leader>d", "y:%s/<c-r>0")    -- like multiple cursors for a word

--- ### replace current word
vim.keymap.set("n", "<leader>r", ":%s/<c-r><c-w>//g<left><left>")

-- ## Fugitive
-- ### Open in full screen and go to actionable files
vim.keymap.set("n", "gs", ":0G<CR>")
vim.keymap.set("n", "g<cr>", ":x<CR><cr>")

-- ## Create notes
vim.keymap.set("n", "<leader>an", ":e ~/Documents/Code/")

-- ## wrap
vim.keymap.set("n", "<leader><cr>", "<cmd>setlocal wrap linebreak<cr>")
vim.keymap.set("n", "<leader>n<cr>", "<cmd>setlocal wrap!<cr>")

-- ## create snippets

vim.keymap.set("n", "<leader>nsp", ":e ~/.config/nvim/snippets/php.lua<cr>")
vim.keymap.set("n", "<leader>nsj", ":e ~/.config/nvim/snippets/javascript.lua<cr>")
vim.keymap.set("n", "<leader>nsh", ":e ~/.config/nvim/snippets/html.lua<cr>")
vim.keymap.set("n", "<leader>nsc", ":e ~/.config/nvim/snippets/css.lua<cr>")
