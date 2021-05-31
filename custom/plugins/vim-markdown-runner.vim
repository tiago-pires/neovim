" Specify an alternate shell command for a certain language
let g:markdown_runners['python'] = 'python3'

" Specify your own Vim script function for further customization.
" The function should receive a list of strings, representing the contents of
" the code block, and return a single string with the results.
function! MyHtmlRunner(src)
  return "php -r " . src
endfunction

let g:markdown_runners['php'] = function('MyHtmlRunner')
