
""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable           " Set syntax highlighting
set nu                  " Set line numbers

set encoding=UTF-8      " Set encoding
let $LANG='en'
set langmenu=en


set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

set scrolloff=8         " Scroll offset

set nowrap              " Do not wrap lines
set noswapfile          " Do not store swap files
set nobackup            " Do not keep backup 
set nowritebackup       " Do not keep writebackup

set incsearch           " Set incremental search

" Set amount of history to be remembered
set history=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

set ruler               " Always show current position
set cmdheight=1         " Height of the command bar

set hlsearch            " Highlight search results
set lazyredraw          " When executing macros, stop redrawing
set showmatch           " Show matching brackets

" Stop annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set foldcolumn=1 " Add one extra margin to the left

if $COLORTERM == 'gnome-terminal'
set t_Co=256
endif

try
colorscheme desert
catch
endtry

set background=dark

" Use Unix standard file type 
set ffs=unix,dos,mac

map <up> <nop>			" disable arrow keys
map <down> <nop> 		" disable arrow keys
map <left> <nop> 		" disable arrow keys
map <right> <nop> 		" disable arrow keys
