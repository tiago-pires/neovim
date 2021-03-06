call plug#begin('~/.config/nvim/autoload/plugged')

" Search and Replace
Plug 'markonm/traces.vim'

"shame
Plug 'https://github.com/dbeniamine/cheat.sh-vim'
Plug 'https://github.com/oprogramador/vim-ftp'
Plug 'tobyS/pdv' "depends on vmustache
Plug 'https://github.com/tobyS/vmustache'

"netrw
"Plug 'https://github.com/tpope/vim-vinegar'
"Plug 'blueyed/vim-diminactive/'

"folding code
Plug 'dbmrq/vim-chalk'
Plug 'https://github.com/pseewald/vim-anyfold'

"format
Plug 'https://github.com/sheerun/vim-polyglot' "syntax colors and folding
Plug 'https://github.com/AndrewRadev/tagalong.vim' "sync tag pair when changing
Plug 'tpope/vim-surround'
Plug 'https://github.com/AndrewRadev/dsf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/prettier/vim-prettier'
Plug 'w0rp/ale'
Plug 'https://github.com/stephpy/vim-php-cs-fixer' "php

"sessions
Plug 'dominickng/fzf-session.vim'
Plug 'mhinz/vim-startify'


"colors
Plug 'arcticicestudio/nord-vim'
Plug 'fxn/vim-monochrome'
Plug 'Lokaltog/vim-monotone'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'vim-airline/vim-airline' 	"info bar
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'

"mappings
Plug 'liuchengxu/vim-which-key'

"files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/stsewd/fzf-checkout.vim'
Plug 'https://github.com/gcmt/taboo.vim'

"autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/vim-jsx-improve'

"snips
Plug 'https://github.com/vim-scripts/UltiSnips'
Plug 'honza/vim-snippets'

"git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify' " show git gutter signs

"code runners
Plug 'metakirby5/codi.vim'
Plug '0x84/vim-coderunner'
Plug 'https://github.com/xianzhon/vim-code-runner'
Plug 'dbridges/vim-markdown-runner'

"misc
Plug 'mbbill/undotree'
Plug 'https://github.com/simnalamburt/vim-mundo'
Plug 'plasticboy/vim-markdown'
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()
