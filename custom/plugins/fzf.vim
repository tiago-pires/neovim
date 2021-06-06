"Windew design
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 1, 'height': 1,'yoffset':0,'xoffset': 0, 'highlight': 'Todo', 'border': 'none' } }
let g:fzf_layout = { 'down': '~70%' }
let $FZF_DEFAULT_OPTS = "--layout=reverse --inline-info --preview 'bat --color=always'"

let g:fzf_color = "bw"


"source config files
autocmd BufWritePost % so %


