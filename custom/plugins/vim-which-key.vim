" Ideas: https://tinyurl.com/ycxrbuy7

" Time to show menu of commands
let g:which_key_timeout = 500

let g:mapleader = "\<Space>"
"let g:maplocalleader = ','

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Register
call which_key#register('<Space>', "g:which_key_map")

" Style
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

    " Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

    " Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


source $HOME/.config/nvim/custom/plugins/vim-which-key-map.vim
