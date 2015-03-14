"Gui
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

if has("gui_running")
	set lines=999 columns=999
	set guifont=Consolas:h11:cANSI
endif

"Basic settings
set backspace=2
set nocompatible
set pastetoggle=<F2>
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set encoding=utf-8
set fileformat=unix
set fileformats=unix,dos
filetype off

"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOROOT/misc/vim
let path='~/.vim/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on
syntax on

"Color
colorscheme molokai
let g:molokai_original = 1

"Status bar
set laststatus=2

"CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/build,*/bin

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

"Go
au FileType go nmap <C-g>r <Plug>(go-run)
au FileType go nmap <C-g>b <Plug>(go-build)
au FileType go nmap <C-g>t <Plug>(go-test)
au FileType go nmap <C-g>c <Plug>(go-coverage)

