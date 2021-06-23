"-----------------Plugins--------------
"

call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NerdTreeToggle' }

" Vim-airline and themes
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" OneHalf Dark Theme
"Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Nord dark theme
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()

" --------------General-----------------
"
set history=500
set number

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file changed from outside
set autoread
au FocusGained,BufEnter * checktime

" With map leader it's possible to do extra key combinations
" like <leader>w savej the current file
let mapleader = ","

" Fast saving and closing
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

" Window management
map <C-j> <C-w>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Edit curreni .vimrc
map <leader>ve :e $MYVIMRC<cr>

" Reload current .vimrc
nnoremap <leader>vr :so $MYVIMRC<cr>

" User Interface
set so=7

" Always show current location
"set ruler

" Height of command bar
set cmdheight=1

" Ignore case while searching
set ignorecase

" Make search behave like modern browsers
set incsearch

" Remove annoying belj sounds on error
set errorbells
set visualbell
set t_vb=
set tm=500

" Add some extra margin to the left
"set foldcolumn=1

" Colors and Fonts
"
" Enable syntax highlighting and theme
syntax enable
set t_Co=256
colorscheme nord

" Configure airline theme
let g:airline_theme='nord'
set background=dark

" Files, backups and Undo
"
"
" Turn backups off
set nobackup
set nowb
set noswapfile

" Text, Tab and Indents
"
"
"Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab
set shiftwidth=4
set tabstop=4
set textwidth=80

set ai "Auto indent"
set si "Smart indent"
set wrap "Wrap lines"

"
" ---------Moving around, tabs, and buffers-----------
"

" Search shortcuts
map <space> /
map <C-space> ?
