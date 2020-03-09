" Line numbers
set nu rnu

" Indentation
set autoindent
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Close quotes, parentheses and brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Wrap visual selection with quotes, parentheses and brackets
vnoremap " c""<esc>P
vnoremap ' c''<esc>P
vnoremap ` c``<esc>P
vnoremap ( c()<esc>P
vnoremap [ c[]<esc>P
vnoremap { c{}<esc>P

" Move current line down/up
nnoremap <C-j> dd<esc>p
nnoremap <C-k> dd<esc><up>P

""" Plugins
""" ctrlp.vim
" Ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

""" emmet-vim
let g:user_emmet_expandabbr_key='<Tab>'
""" vim-vue
" Disable all pre-processors and only highlight html/js/css
let g:vue_pre_processors = []
