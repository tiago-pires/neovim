
let mapleader="\<Space>"

" tab navigation
noremap H gT
noremap L gt

tnoremap <c-s> <c-\><c-n>
tnoremap <LEFT> <c-\><c-n><c-w>h
tnoremap <RIGHT> <c-\><c-n><c-w>l
tnoremap <c-q> <c-\><c-n>:bd!<cr>

noremap <c-q> :bd!<cr>


"run selected code block as
vnoremap <leader>p yy:!php -r '<c-r>"'<cr>

"coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

noremap <leader>gh :diffget //3<cr>
noremap <leader>gu :diffget //2<cr>
noremap <leader>gs :G<cr>
noremap <leader>gc :GCheckout<cr>

"noremap <leader>. :vsp %:h <bar> vertical resize 30<CR>
noremap <leader>y <c-^>
 
"search for the next occurrence of the selected text. Then press n to search for the next occurrence.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" select line content
"leader key with both hands, cannot escap <leader> events
"noremap <esc> <leader> 
"tmap <c-n> <c-\><c-n>

" Usingt vim matchup to navigate html tags
noremap <leader>k [%[%
noremap <leader>j z%z%
" select inside tag
noremap <leader>vit vitkojV

noremap <leader>q :q<cr> 

"fix spelling behind, just use first option (feeling lucky)
"noremap <leader>z mz[s2z=`z 

noremap <c-j> <c-d>zz
noremap <c-k> <c-u>zz

noremap <tab> <c-w>

tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w>p <C-\><C-n><c-^>

" switch
" nnoremap ,t <c-^>
" nnoremap ,n :bn<cr>
" nnoremap ,p :bp<cr>
" 
" nnoremap ,g :GFiles<CR>
" nnoremap ,b :Buffers<CR> 
" nnoremap ,f :Files<CR>
" 
" "to file, to do (ignore node modules)
" nnoremap ,f :Files<CR>
" nnoremap ,r :Rg<CR>
" nnoremap ,m :Files ~/Dropbox/Notes<CR>
" nnoremap ,e :CocCommand explorer<cr>
" nnoremap ,' :Files ~/.config/nvim/custom/<cr>
" 
" noremap ,d :bd<cr>
" noremap ,D :bd!<cr>
" 
" tmap ,d <c-\><c-n>:bd!<cr>
" 
 " quick temp shell
"tmap  <leader><esc> <c-\><c-n>


"delete surounding function based on vim surround
"noremap <silent> dsf ds)db
""add semicolumns
"noremap <leader>th :%! pandoc -f markdown -t html <bar> pbcopy <cr><esc>"+p
"noremap <leader>tm :%! pandoc -f html -t commonmark <bar> pbcopy <cr><esc>"+p
"
"autocmd FileType markdown nnoremap <buffer> <Leader>r :MarkdownRunner<CR>
"autocmd FileType markdown nnoremap <buffer> <Leader>R :MarkdownRunnerInsert<CR>


" Use s + hjkl to resize windows.

 nnoremap <c-w><up>    :resize -15<CR>
 nnoremap <c-w><down>    :resize +15<CR>
 nnoremap <c-w><left>    :vertical resize -15<CR>
 nnoremap <c-w><right>    :vertical resize +15<CR>
 
 nnoremap <down>  <c-w>j
 nnoremap <up>    <c-w>k 
 nnoremap <left>  <c-w>h 
 nnoremap <right> <c-w>l


"Better tabbing indent;
"
vnoremap < <gv
vnoremap > >gv

" Move Visual blocks with J an K
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv

