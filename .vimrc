set encoding=utf-8
set nocompatible     "always vim mode
filetype off
set hlsearch         "search highlighting
set nosi             "Disable smart indenting
set ignorecase       "ignore case when searching

set rtp+=~/.vim/bundle/Vundle.vim

"Vundle Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'syntastic'
call vundle#end()

filetype plugin indent on

"for switching between python syntax versions


function Py3()
	    let g:syntastic_python_python_exec = '/usr/bin/python3.6'
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
