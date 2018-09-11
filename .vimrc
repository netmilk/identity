" To install Vundle and install all the plugins in this config:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" $ vim +PluginInstall +qall

"set encoding=utset nocompatible              " be iMproved, required
set background=dark
"set t_Co=256
"set confirm  " Must ask before leaving unsaved buffer

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'dietsche/vim-lastplace'
Plugin 'posva/vim-vue'

call vundle#end()
filetype plugin indent on



" Enable Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='dark'

set ttimeoutlen=50

" Get rid of the default mode indicator
set noshowmode

" Enable syntax highliting
syntax on

" Start in insert mode
startinsert

" === NERDTree === 

" Try to switch to already opend files
let g:ctrlp_switch_buffer = 'Et'

" ignore gitignore
let g:ctrlp_user_command =  ['.git', 'cd %s && git ls-files -co --exclude-standard']


" Toggle with CTRL+Space
" In insert mode, I found this here: https://stackoverflow.com/questions/7722177/how-do-i-map-ctrl-x-ctrl-o-to-ctrl-space-in-terminal-vim
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-o>:CtrlP<CR>
" In normal node I found this here:
" https://stackoverflow.com/questions/23189568/control-space-vim-key-binding-in-normal-mode-does-not-work
nnoremap <NUL> :CtrlP<CR>

" Switch buffer with S-Arrow 
inoremap <silent> <S-Left> <C-o>:bp<CR>
inoremap <silent> <S-Right> <C-o>:bn<CR>
nnoremap <S-Left> :bp<CR>
nnoremap <S-Right> :bn<CR>



" Open automatically in no files opened
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open automatically if dir specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Quit if only NERDTree is open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open a tab instead of buffer
"let NERDTreeMapOpenInTab='\r'

" Enable mouse
set mouse=a

" Line numbers
set number

" Do not auto comment on <Enter>
autocmd BufNewFile,BufRead * setlocal formatoptions-=r
  
" Trim trailing whitespace

" Indenting
set tabstop=2     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 2 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C program

" (De)Indenting with <(S-)TAB>
" for command mode reverse tab

" Interactive Mode
imap <S-Tab> <C-o><<
" Visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" Yank to the system keyboard
set clipboard=unnamed

" Buffer close
" 
" S+K
" C+S
" C+W
" S+Arrows to switch buffers
" TAB to indent
" C+Arrow work skip
