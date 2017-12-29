"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
colorscheme wombat256mod                    " set color scheme

set number                                  " show line numbers
set ruler
set wildmenu
"set leader key to ,
let mapleader = ","

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

"set nobackup 	                            " no backup files
"set nowritebackup                           " only in case you don't want a backup file while editing
"set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure     



set nocompatible              " be iMproved, required
filetype off                  " required
set number
set relativenumber
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"PLUGINS_____________________________________________________________________________

Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'

"END OF PLUGINS_______________________________________________________________________
call vundle#end()            " required
filetype plugin indent on    " required

"COMPLEX UPGRADES_____________________________________________________________________
"ignore the nltk-data documents
let g:ctrlp_custom_ignore = 'nltk_data'

"nerd tree toggle with "
nmap " :NERDTreeToggle /home/sujay/dev<CR>

"=====================================================
""" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"shortcut for toggling the tagbar as ,'
nmap <leader>' :TagbarToggle<CR>

"swap between the buffers
map <leader><Tab> :bnext<cr>

" These are the mappings to move to end and the begening of the line i for
" insert mode and n for normal mode mapped to same keys.
nnoremap <C-H> <Home>
nnoremap <C-L> <End>

" These perform navigation when in Insert Mode
inoremap <C-H> <Left>
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-L> <Right>

" Quicker scrolling 
noremap <C-J> 10j
noremap <C-K> 10k

