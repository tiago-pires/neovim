let g:coc_global_extensions = [
            \'coc-explorer',
            \'coc-css',
            \'coc-json', 
            \'coc-tsserver', 
            \'coc-vimlsp', 
            \'coc-snippets', 
            \'coc-phpls',
            \'coc-prettier',
            \'https://github.com/rodrigore/coc-tailwind-intellisense',
            \]

" GoTo code navigation.

"coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"nmap <leader>p :Prettier<cr>
"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
