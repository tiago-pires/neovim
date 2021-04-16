call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'https://github.com/vim-scripts/UltiSnips'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'https://github.com/pseewald/vim-anyfold'
Plug 'https://github.com/gcmt/taboo.vim' " Rename tabs
"Plug 'blueyed/vim-diminactive/'
Plug 'vim-airline/vim-airline' 	"info bar
Plug 'vim-airline/vim-airline-themes'
"Plug 'Lokaltog/vim-monotone'
" Plug 'dbmrq/vim-chalk' "folding code
Plug 'dominickng/fzf-session.vim'
Plug 'brooth/far.vim'
Plug 'justinmk/vim-sneak'
Plug 'arcticicestudio/nord-vim'
Plug 'fxn/vim-monochrome'
Plug 'aditya-azad/candle-grey'
Plug 'lambdalisue/fern.vim'
" Plug 'lambdalisue/fern-git-status.vim'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/vim-jsx-improve'
Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-signify' " show git gutter signs
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'
Plug 'metakirby5/codi.vim'
Plug '0x84/vim-coderunner'
Plug 'https://github.com/xianzhon/vim-code-runner'
Plug 'tpope/vim-surround'
Plug 'dbridges/vim-markdown-runner'
Plug 'mbbill/undotree'
Plug 'mattn/emmet-vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " mustple cursor
Plug 'plasticboy/vim-markdown'
"Plug 'goldfeld/vim-seek'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'dbeniamine/cheat.sh-vim'
call plug#end()
