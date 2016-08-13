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

if !has("nvim")
	set nocompatible
endif

"Basic settings
set t_Co=256
set backspace=2
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
Plugin 'sickill/vim-monokai'
Plugin 'kien/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

"Color
syntax on
colorscheme monokai
let g:airline_theme='molokai'
hi NonText ctermbg=none

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
set makeprg=ninja
au FileType cpp nmap <C-b> :make<CR>
au FileType c nmap <C-b> :make<CR>

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
