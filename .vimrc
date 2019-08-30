set nocompatible
filetype off

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
	\ textwidth=79
	\ expandtab

set encoding=utf-8
