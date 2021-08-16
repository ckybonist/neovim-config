" Global variables

"{ Custom variables
let g:is_win = (has('win32') || has('win64')) ? v:true : v:false
let g:is_linux = (has('unix') && !has('macunix')) ? v:true : v:false
let g:is_mac = has('macunix') ? v:true : v:false
"}}

" Custom mapping <leader> (see `:h mapleader` for more info)
let mapleader = ','
