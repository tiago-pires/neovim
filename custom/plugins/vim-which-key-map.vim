" Define prefix dictionaryso
let g:which_key_map =  {}

"Single mappings
let g:which_key_map['.'] = [ ':vsp %:h | vertical resize 30',            'siblings']
let g:which_key_map['p'] = [ ':Lexplore | vertical resize 30',               'command history']

" let g:which_key_map['.'] = [ ':Fern . -drawer -toggle',                     'explore']
" let g:which_key_map['e'] = [ ':Fern %:h -drawer -toggle',                     'explore']
let g:which_key_map['/'] = [ ':Commentary',                                  'comment' ]
let g:which_key_map['c'] = [ 'q:',                                           'command history']
let g:which_key_map['o'] = [ ':GFiles --cached --others --exclude-standard', 'project files']
let g:which_key_map['u'] = [ ':UndotreeToggle',                              'undo tree']
let g:which_key_map['y'] = [ ':upd | :so %',                                 'source']
"let g:which_key_map['w'] = [ ':MatchupWhereAmI??',                           'Indent location']
let g:which_key_map['!'] = [ ':bd!',                                         'bd!']
let g:which_key_map['i'] = [ ':BLines',                                      'buffers lines']
"let g:which_key_map['e'] = [ ':CocCommand explorer',                         'explore']

"t for 'go to' find...
let g:which_key_map['e'] = {
      \ 'name' : '+files',
      \ 'r' : [':Fern . -drawer -reveal=% -width=35  -toggle',           'Fern PWD'],
      \ 'a' : [':Files',                                                 'all'],
      \ 'b' : [':Buffers',                                               'buffers'],
      \ 'c' : [':Commands',                                              'commands'],
      \ '.' : [':Fern %:h -drawer -toggle',                              'File Siblings'],
      \ 'h' : [':History',                                               'history'],
      \ 'i' : [':BLines',                                                'lines-in-buffers'],
      \ 'k' : [':e ~/.config/nvim/custom/plugins/vim-which-key-map.vim', 'keys'],
      \ 'l' : [':Lines',                                                 'lines'],
      \ 'm' : [':Marks',                  'mappings'],
      \ 'n' : [':Files ~/Dropbox/Notes',                                 'notes'],
      \ 'o' : [':Color',                                                 'colorschemes'],
      \ 'p' : [':Fern . -drawer -width=35 -toggle',                      'Project'],
      \ 'g' : [':Rg',                                                    'rip-grep'],
      \ 's' : [':Sessions',                                              'save'],
      \ 'v' : [':Files ~/.config/nvim/custom/',                          'nvim configs'],
      \ }

" for 'do',  
let g:which_key_map['d'] = {
      \ 'name' : '+Do',
      \ '.' : ['mxA.<esc>`x', 'add period'],
      \ ',' : ['mxA,<esc>`x', 'add comma'],
      \ ';' : ['mxA;<esc>`x', 'add semicolumns'],
      \ 'p' : [':Prettier',   'prettier'],
      \ 'l' : ['_vg_',        'v line content'],
      \ 'd' : ["y'>p`[v`]",   'duplicat bellow'],
      \ }

"t for 'go to' find...
let g:which_key_map['v'] = {
      \ 'name' : '+vim',
      \ '.' : [':e $MYVIMRC',                                                'init.vim'],
      \ 'c' : [':CocConfig',                                                 'coc config'],
      \ 'f' : [':Files ~/.config/nvim/custom/',                              'nvim configs'],
      \ 'i' : [':up | :so % | :PlugInstall',                                 'install'],
      \ 'k' : [':e ~/.config/nvim/custom/plugins/vim-which-key-map.vim',     'keys'],
      \ 'l' : [':PlugClean',                                                 'clean'],
      \ 'm' : [':e ~/.config/nvim/custom/mappings.vim',                      'mappings'],
      \ 'p' : [':e ~/.config/nvim/custom/plugins.vim',                       'plugins'],
      \ 's' : [':e ~/.config/nvim/custom/settings.vim',                      'settings'],
      \ }
 

"t for 'go to' find...
let g:which_key_map['r'] = {
      \ 'name' : '+run',
      \ 'k' : [':MarkdownRunner',                                            'run block'],
      \ 'i' : [':MarkdownRunnerInsert',                                      'insert block result'],
      \ 'd' : [':Codi',                                                      'codi'],
      \ 'c' : [':RunCode',                                                   'run code'],
      \ 'h' : [':%! pandoc -f markdown -t html | pbcopy <cr><esc>"+p',   'md to html'],
      \ 'm' : [':%! pandoc -f html -t commonmark | pbcopy <cr><esc>"+p', 'html to md'],
      \ }

"t for 'go to' find...
let g:which_key_map['r'] = {
      \ 'name' : '+run',
      \ 'k' : [':MarkdownRunner',                                            'run block'],
      \ 'i' : [':MarkdownRunnerInsert',                                      'insert block result'],
      \ 'd' : [':Codi',                                                      'codi'],
      \ 'c' : [':RunCode',                                                   'run code'],
      \ 'h' : [':%! pandoc -f markdown -t html | pbcopy <cr><esc>"+p',   'md to html'],
      \ 'm' : [':%! pandoc -f html -t commonmark | pbcopy <cr><esc>"+p', 'html to md'],
      \ }


