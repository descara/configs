scriptencoding utf-8
"{ Plugin installation
"{{ Vim-plug related settings.
" The root directory to install all plugins.
let g:plugin_home=expand(stdpath('data') . '/plugged')


call plug#begin(g:plugin_home)

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins'}
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'preservim/nerdtree'

"Git plugins
Plug 'tpope/vim-fugitive'

"Colorschemes
Plug 'phanviet/vim-monokai-pro'


call plug#end()
let g:deoplete#enable_at_startup = 1

"set termguicolors
colorscheme monokai_pro


" General Settings
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                   " set an 80 column border for good coding style
"filetype plugin indent on   " allows auto-indenting depending on file type
"syntax on                   " syntax highlighting
