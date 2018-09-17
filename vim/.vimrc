set nocompatible             " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'

call vundle#end()

filetype plugin indent on

" Necessary for Lightline
set laststatus=2
set noshowmode
let g:lightline = {
    \ 'colorscheme' : 'one',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }}

" ColorTheme
syntax on
set term=screen-256color
"let g:onedark_terminal_italics = 1
colorscheme onedark

" Python
let g:python_highlight_all = 1

" NerdTree
" autocmd vimenter * NERDTree
nmap <F2> :NERDTreeToggle<CR>

noremap <Up> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Down> <NOP>

" Other
set encoding=utf-8
set number relativenumber

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

autocmd BufNewFile,BufRead *.launch set syntax=xml
