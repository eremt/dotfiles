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

""" Themes
" Dracula
syntax enable
packadd! dracula
colorscheme dracula

""" Plugins
" ctrlp.vim
let g:ctrlp_working_path_mode = 0 " No working dir
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " Ignore folders
let g:ctrlp_show_hidden = 1 " Show hidden files
set wildignore+=*.swp,*.zip " Hide files

" emmet-vim
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_mode = 'n' " Only enable in Normal mode
" Only enable in html, css, vue and jsx
let g:uer_emmet_install_global = 0
autocmd FileType html,css,vue,jsx EmmetInstall

" vim-vue
let g:vue_pre_processors = [] " Disable all pre-processors and only highlight html/js/css
