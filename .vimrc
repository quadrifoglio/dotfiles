set nocompatible
filetype off
syntax on
set tabstop=4
set nowrap

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'AlessandroYorba/Despacio'
Plugin 'rust-lang/rust.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ElmCast/elm-vim'

call vundle#end()
filetype plugin indent on

" Color theme
let g:despacio_Midnight = 1
colorscheme despacio 

" Reset rust docblock background color
autocmd BufRead,BufNewFile *.rs highlight SpecialComment cterm=NONE

" Fix wrong background color when scrolling
if &term =~ '256color'
	set t_ut=
	endif

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Keep selection during indentation
" with the > and < keys
vnoremap > ><CR>gv
vnoremap < <<CR>gv 

" Elm
au BufRead,BufNewFile *.elm set filetype=elm
au BufRead,BufNewFile *.elm set noai nosi nocin inde=
au BufRead,BufNewFile *.elm nnoremap <C-b> :ElmMake<CR>

let g:elm_format_autosave = 1
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "webroot/app.js"
