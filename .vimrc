"Gui
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

if has("gui_running")
	set lines=999 columns=999
	if has("win32")
		set guifont=Consolas:h11:cANSI
	endif
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
set nowrap

"Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
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
Plugin 'mattn/emmet-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'wting/rust.vim'

call vundle#end()
filetype plugin indent on

"Color
syntax on
colorscheme molokai
let g:molokai_original = 1

"Status bar
set laststatus=2

"Shortcuts
nmap <S-t> :tabnew <CR>
nmap <S-Left> :tabprev <CR>
nmap <S-Right> :tabnext <CR>

nmap <silent> <C-S-Left> :bprevious<CR>
nmap <silent> <C-S-Right> :bnext<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"C/C++ compiling
if has("win32")
	set makeprg=mingw32-make
else
	set makeprg=make
endif

au FileType cpp nmap <C-b> :make -j5 <CR>

"CtrlP
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/build,*/bin

"Go
au FileType go nmap <C-i> <Plug>(go-install)
au FileType go nmap <C-r> <Plug>(go-run)
au FileType go nmap <C-b> <Plug>(go-build)
au FileType go nmap <C-t> <Plug>(go-test)
au FileType go nmap <C-c> <Plug>(go-coverage)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
