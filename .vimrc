" Display

syntax on
set laststatus=2

" Indentation

set expandtab
set autoindent
set shiftwidth=4
set softtabstop=4

" Keyboard shortcuts

let mapleader = "m"
map <Leader>e :e **/*

" Golang

au BufRead,BufNewFile *.go set autoread
au BufWritePost *.go silent! !gofmt -w %
au BufWritePost *.go redraw!

au BufRead,BufNewFile *.go map <Leader>c :!clear && go build<CR>
au BufRead,BufNewFile *.go map <Leader>r :!clear && go run %<CR>
au BufRead,BufNewFile *.go map <Leader>t :!clear && go test<CR>
