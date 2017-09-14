set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rbgrouleff/bclose.vim'

call vundle#end()
filetype plugin indent on

" Enable Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
set ttimeoutlen=50
		
" Get rid of the default mode indicater
set noshowmode

" Enable syntax highliting
syntax on

" Start in insert mode
startinsert

" Enable line numbers
" NERDTree on 

" Enable mouse
set mouse=a

" Line numbers
set number

" Trim trailing whitespace
" Indenting
" Buffer close
" 
" S+K
" C+S
" C+W	
" S+Arrows to switch buffers
" TAB to indent
" C+Arrow work skip
