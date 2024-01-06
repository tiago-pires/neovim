vim.opt.modifiable = true -- allow to modify the buffer
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 4 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time

-- Clipboard & Mouse
-- vim.opt.clipboard:append("unnamedplus") -- allows neovim to access the system clipboard

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
vim.opt.showtabline = 0 -- Save spaces and don't show tabs
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


