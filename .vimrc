syntax on
filetype off 

set rnu
set nu
set incsearch
set nocompatible
set backspace=2


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

let g:airline_theme="minimalist"

