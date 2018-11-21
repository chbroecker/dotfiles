set nocompatible             " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

call vundle#end()

filetype plugin indent on

" Necessary for Lightline
set laststatus=2
set noshowmode
let g:lightline = {
    \ 'colorscheme' : 'one',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }}

let g:onedark_color_overrides = { 
			\ "black": {"gui": "#000000", "cterm": "0", "cterm16": "0"}}
" ColorTheme
syntax on
set term=screen-256color
"let g:onedark_terminal_italics = 1
colorscheme onedark

" Python
let g:python_highlight_all = 1

" ---------------------------------------------NERDTree------------------------------
" NerdTree
nmap <F2> :NERDTreeToggle<CR>
"let g:NERDTreeFileExtensionHighlightFullName = 0

" Improves performance of the SyntaxHighlighting and removes the lag
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'cpp', 'hpp', 'py', 'md', 'txt', 'java', 'sh', 'vim', 'json']

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" After a re-source fixes the bug with the [] around devicons
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" Needed to remove the '/' from behind the directory names in NerdTree
augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

" Removes the little arrows that indicate whether a folder is open or not
" These are not needed anymore because of the folder icons from devicons
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let NERDTreeNodeDelimiter = "\x07"

"removes the Help message at the top of the NERDTree
let NERDTreeMinimalUI=1
"----------------------------------------------NERDTree------------------------------

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
