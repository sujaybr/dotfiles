" General settings
syntax enable                               " syntax highlight

set shell=/bin/bash                         "This is to make vim function correctly in fish shell
set t_Co=256                                " set 256 colors

set number                                  " show line numbers
set ruler
set wildmenu
"set leader key to ,
let mapleader = ","
set tabstop=2                               " 4 whitespaces for tabs visual presentation
set shiftwidth=2                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set showmatch                               " shows matching part of bracket pairs (), [], {}
set cursorline                              " To highlight the current line
set enc=utf-8	                            " utf-8 by default
set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set scrolloff=5                            " let 5 lines before/after cursor during scroll
set clipboard=unnamed                       " use system clipboard
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure
set nocompatible              " be improved, required
filetype off                  " required
set number
set relativenumber
set noshowmode                              " make vim not show modes

" CUSTOM MAPPINGS____________________________________________________________________
"
" jj to escape 
imap jj <Esc>:w<CR>

" map :paste 
set pastetoggle=<F2>
"swap between the buffers
map <leader><Tab> :bnext<cr>
map <leader><S-Tab> :bprevious<cr>

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
noremap <C-J> 7j 
noremap <C-K> 7k

" map space to :w jj 
noremap <Space> :w<CR>

nnoremap <F5> "=strftime("%c")<CR>P


" This is to add new lines in normal using ff and FF
nmap ff o<Esc>
nmap FF O<Esc>

" This is for inserting semicolon
noremap <leader>; A;<Esc>
inoremap <leader>; <C-o>A; 

" This is for easy buffer switching
:nnoremap <F5> :buffers<CR>:buffer<Space>

" CUSTOM MAPPINGS END_______________________________________________________________

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
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'morhetz/gruvbox'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'posva/vim-vue'
Plugin 'ervandew/supertab'
Plugin 'alvan/vim-closetag'
Plugin 'NLKNguyen/papercolor-theme'

"END OF PLUGINS_______________________________________________________________________
call vundle#end()            " required
filetype plugin indent on    " required

" Ctrlp Settings
" ignore the nltk-data documents
" This saves a lot of time using ctrlp
" Do not take this off
let g:ctrlp_custom_ignore = 'nltk_data' 

"nerd tree toggle with "
nmap " :NERDTreeToggle /home/sujay/dev<CR>

""" AirLine settings

"let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:airline_section_y = '%{strftime("%a %d-%m %I:%M %p")}'

"shortcut for toggling the tagbar as ,'
nmap <leader>' :TagbarToggle<CR>

" YCM configs
" this makes the preview window auto dissappear
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt-=preview

" Gruvbox
" set background=dark    
" colorscheme gruvbox                    " set color scheme

" Paper color theme
set background=light
colorscheme PaperColor

let g:airline_theme='papercolor'

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories = ['/home/sujay/UltiSnips', 'UltiSnips']

" Syntatic
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Vim-JS Plugin
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Vim-React Plugin
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

