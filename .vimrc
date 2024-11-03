set encoding=utf-8
set nocompatible     "always vim mode
filetype off
set hlsearch         "search highlighting
set nosi             "Disable smart indenting
set ignorecase       "ignore case when searching
set background=dark  "fix for colors in tmux.  don't know why this worked but it does.
set number
set t_Co=256
set relativenumber
syntax on


if has('termguicolors')
	set termguicolors
endif

set guifont=FiraCode\ Nerd\ Font:h12

if has('gui_running')
	colorscheme evening 
	set guifont=Monospace\ 16
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
call plug#end()

colorscheme iceberg 

set rtp+=~/.vim/bundle/Vundle.vim

"Vundle Plugins"
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
Plugin 'https://github.com/vim-scripts/syntastic.git'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
call vundle#end()

filetype plugin indent on

"for switching between python syntax versions


function Py3()
	    let g:syntastic_python_python_exec = '/usr/bin/python3.12'
endfunction
function Py2()
	  let g:syntastic_python_python_exec = '/usr/bin/python2.7'
endfunction
call Py3()   " default to Py3 because I try to use it when possible



autocmd FileType python
	\ setl shiftwidth=4
	\ tabstop=4
	\ softtabstop=4
	\ expandtab

"Open where last edited
autocmd BufReadPost *
	\ if ! exists("g:leave_my_cursor_position_alone") |
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\ exe "normal g'\"" |
	\ endif | endif
