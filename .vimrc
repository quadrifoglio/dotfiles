syntax enable
colorscheme default

filetype plugin on

set number
set laststatus=2

set path=**
set wildmenu
set wildignore=**/target/**,**/node_modules/**

set autoindent
set expandtab smarttab
set tabstop=4 shiftwidth=4

vnoremap > ><CR>gv
vnoremap < <<CR>gv 

set autoread

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'elmcast/elm-vim'
Plug 'mzlogin/vim-smali'

call plug#end()

" Rust
let g:rustfmt_autosave = 1
