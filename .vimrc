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
Plugin 'dietsche/vim-lastplace'

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
set tabstop=2     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C program

" Buffer close
" 
" S+K
" C+S
" C+W	
" S+Arrows to switch buffers
" TAB to indent
" C+Arrow work skip
