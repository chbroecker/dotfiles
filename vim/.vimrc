set nocompatible             " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" Necessary for Lightline
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme' : 'one'}

"The colorscheme for lightline.vim.
"                Currently, wombat, solarized, powerline, jellybeans, Tomorrow,
"                Tomorrow_Night, Tomorrow_Night_Blue, Tomorrow_Night_Eighties,
"                PaperColor, seoul256, landscape, one, darcula, molokai, materia,
"                material, OldHope, nord, 16color and deus are available.
