" Define prefix dictionaryso
let g:which_key_map =  {}

"Single mappings
let g:which_key_map['-'] = [ ':vsp %:h | vertical resize 30',            'siblings']

" let g:which_key_map['.'] = [ ':Fern . -drawer -toggle',                     'explore']
" let g:which_key_map['e'] = [ ':Fern %:h -drawer -toggle',                     'explore']
let g:which_key_map['/'] = [ ':Commentary',                                  'comment' ]
"
let g:which_key_map['U'] = [ ':UndotreeToggle',                              'undo tree']
let g:which_key_map['u'] = [ ':MundoToggle',                              'undo tree']
"let g:which_key_map['w'] = [ ':MatchupWhereAmI??',                           'Indent location']
"let g:which_key_map['i'] = [ ':BLines',                                      'buffers lines']
"let g:which_key_map['e'] = [ ':CocCommand explorer',                         'explore']

"e for 'explore'
let g:which_key_map['e'] = {
      \ 'name' : '+files',
      \ 'b' : [':Buffers',                                               'buffers'],
      \ '.' : [':e $MYVIMRC',                                                'init.vim'],
      \ 'c' : [':Commands',                                              'commands'],
      \ 'g' : [':GFiles --cached --others --exclude-standard',           'all git files'],
      \ 'h' : [':History',                                               'history'],
      \ 'i' : [':BLines',                                                'lines-in-buffers'],
      \ 'l' : [':Lines',                                                 'lines'],
      \ 'm' : [':Marks',                                                 'mappings'],
      \ 'n' : [':Files ~/Dropbox/Notes',                                 'notes'],
      \ 'k' : [':Color',                                                 'colorschemes'],
      \ 'r' : [':Rg',                                                    'rip-grep'],
      \ 's' : [':Sessions',                                              'save'],
      \ 't' : [':Lexplore | vertical resize 30',                              'file tree'],
      \ 'v' : [':Files ~/.config/nvim/custom/',                          'nvim configs'],
      \ 'x' : [':call CleanNoNameEmptyBuffers()',                          'delete unnamed'],
      \ }


"a"for 'anki',  
let g:which_key_map['a'] = {
      \ 'name' : '+Do',
      \ 'a' : ['0jmxkdd}P`x', 'excelent'],
      \ 'b' : ['0jmxkdd}20kP`x', 'excelent'],
      \ 'c' : ['0jmxkdd20kP`x', 'excelent'],
      \ 'd' : ['0jmxkdd10kP`x', 'excelent'],
      \ 'm' : ['0jmxkdd/\# Maintenance\<cr>\<esc>zzjP`x', 'maintenance'],
      \ }

"i"for 'insert/edit stay in normal',  
let g:which_key_map['i'] = {
      \ 'name' : '+Do',
      \ '.' : ['mxA.<esc>`x', 'add period'],
      \ ',' : ['mxA,<esc>`x', 'add comma'],
      \ ';' : ['mxA;<esc>`x', 'add semicolumns'],
      \ 'p' : [':Prettier',   'prettier'],
      \ 'l' : ['_vg_',        'v line content'],
      \ 't' : [':tabnew',      'tab new'],
      \ 'd' : ["y'>p`[v`]",   'duplicat bellow'],
      \ 'f' : [":upd",   'insert file'],
      \ 'c' : ["q:",   'command'],
      \ }

"t for 'go to' find...
let g:which_key_map['.'] = {
      \ 'name' : '+vim',
      \ }
 

"p for 'program'
let g:which_key_map['p'] = {
      \ 'name' : '+run',
      \ 'k' : [':MarkdownRunner',                                            'run block'],
      \ 'i' : [':MarkdownRunnerInsert',                                      'insert block result'],
      \ 'd' : [':Codi',                                                      'codi'],
      \ 'c' : [':RunCode',                                                   'run code'],
      \ 'h' : [':%! pandoc -f markdown -t html | pbcopy <cr><esc>"+p',   'md to html'],
      \ 'm' : [':%! pandoc -f html -t commonmark | pbcopy <cr><esc>"+p', 'html to md'],
      \ 'p' : [':up | :so % | :PlugInstall',                                 'install'],
      \ }



