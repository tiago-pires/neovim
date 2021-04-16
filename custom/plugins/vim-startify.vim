let g:startify_session_dir = '~/.config/nvim/startify'

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

"root into git repo
let g:startify_change_to_vcs_root = 1

"no empty buffer please
let g:startify_enable_special = 0

"save session automatically
let g:startify_session_persistence = 1

let g:startify_custom_header = [
        \'     /\__\          ___        /\__\',
        \'    /:/  /         /\  \      /::|  |',
        \'   /:/  /          \:\  \    /:|:|  |',
        \'  /:/__/  ___      /::\__\  /:/|:|__|__',
        \'  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\',
        \'  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /',
        \'  |:|__/:/  /  \::/__/           /:/  /',
        \'   \::::/__/    \:\__\          /:/  /',
        \'    ~~~~         \/__/         /:/  /',
        \'                               \/__/',
        \]
