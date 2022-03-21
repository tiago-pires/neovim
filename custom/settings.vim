colorscheme nord
set noundofile
syntax on
set number            " Turn on line numbers
set termguicolors     " enable true colors support
set relativenumber    " Turn on relative numbers
set hidden            " Swich buffers without saving
set mouse=a           " Turn on mouse interaction
set clipboard=unnamed " Sync clipboard with unnamed register
set inccommand=split  " Incremental substitution
set tabstop=3 softtabstop=0 shiftwidth=3 smarttab expandtab
set smartindent       " Follow indentation on returns
set autoindent
set ignorecase        " Ignore case when searching
set smartcase         " But search case sensitive if uppercase is present
set nowrap            " Start with no linewrapping
set incsearch         " Highlite search as you type
set nohlsearch        " Remove highlite after search entered
set noswapfile        " Stop creating swap files (.swap store changes made to the buffer)
set noshowmatch
set noerrorbells
set undodir=~/.config/nvim/undodir
set spellsuggest+=10  " show only 10 spell suggestions
set undofile
set sessionoptions+=tabpages,globals
set wildignore+=*/node_modules/**,*/dist/**
set path+=**
set nofoldenable      " open files with no folds

" DO wrap on markdown files
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap linebreak

"set hidden chars symbols
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶

" stop delay when changing to normal mode. See https://tinyurl.com/yxg949es
set timeoutlen=1000
set ttimeoutlen=0

"Reducing ESC delay can make fzf unable to read keys with ALT modifier on some terminals. Since you use Neovim, consider setting up a terminal mapping for fzf buffer.
"https://tinyurl.com/y3jrsn5f
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>


" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
