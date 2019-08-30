set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

"Vundle Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'syntastic'
call vundle#end()

filetype plugin indent on


autocmd FileType python
	\ setl shiftwidth=4
	\ tabstop=4
	\ softtabstop=4
	\ textwidth=79
	\ expandtab

set encoding=utf-8
