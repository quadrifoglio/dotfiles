syntax enable
colorscheme default

filetype plugin on

set number
set laststatus=2
set nowrap

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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'lervag/vimtex'

call plug#end()

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_options = '--edition 2018'

" waf build system
autocmd BufRead,BufNewFile wscript set filetype=python

" leader bindings
let mapleader = "m"

map <Leader>e :e **/*

au BufRead,BufNewFile *.rs map <Leader>c :Cargo c<CR>
au BufRead,BufNewFile *.rs map <Leader>t :Cargo t<CR>
au BufRead,BufNewFile *.rs map <Leader>r :Cargo r<CR>

au BufRead,BufNewFile *.go map <Leader>c :GoBuild<CR>
au BufRead,BufNewFile *.go map <Leader>r :GoRun<CR>

" LaTeX
let g:vimtex_compiler_method = 'tectonic'

au BufRead,BufNewFile *.tex map <Leader>c <plug>(vimtex-compile)
