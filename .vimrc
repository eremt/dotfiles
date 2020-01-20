" Line numbers
set nu rnu

" Indentation
set autoindent
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

""" Plugins
""" CtrlP
" Ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
