"----------------------------------------------------------
" Tab size settings
"----------------------------------------------------------
set tabstop=4           
set shiftwidth=4        
set expandtab           

"----------------------------------------------------------
" Indent settings
"----------------------------------------------------------
set smartindent         
set autoindent
set smarttab

"----------------------------------------------------------
" Back up settings - mostly disable them
"----------------------------------------------------------
set noswapfile          
set nobackup           
set nowritebackup      

"----------------------------------------------------------
" Search and history settings
"----------------------------------------------------------
set incsearch          
set history=1000
set hlsearch            " Highlight search results
set lazyredraw          " When executing macros, stop redrawing
set showmatch           " Show matching brackets

"----------------------------------------------------------
" Enable filetype plugins
"----------------------------------------------------------
filetype plugin on
filetype indent on

"----------------------------------------------------------
" UI
"----------------------------------------------------------

set nu                  " Set line number
set scrolloff=8         " Vertical scroll offset
set ruler               " Always show current position
set foldcolumn=1        " Add one extra margin to the left

set noerrorbells        " Turn off sound on errors
set novisualbell        
set t_vb=               
set tm=500              

set encoding=UTF-8      " Set encoding
let $LANG='en'          " Set language
set langmenu=en         " Set menu language

set nowrap              " Do not wrap lines
set lbr                 " Line break at 500
set tw=500              " Text wrap at 500

"----------------------------------------------------------
" Syntax
"----------------------------------------------------------
syntax enable           " Set syntax highlighting

set ffs=unix,dos,mac    " Use Unix standard file type 

"----------------------------------------------------------
" FileType specific settings
"----------------------------------------------------------
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType dart setlocal shiftwidth=2 tabstop=2

"----------------------------------------------------------
" Colorscheme 
"----------------------------------------------------------

" Set 256 colors if possible
if $COLORTERM == 'gnome-terminal'
set t_Co=256
endif

" Try to find favourite colorscheme with elflord as fallback
colorscheme elflord
try
colorscheme termschool
catch
endtry

set background=dark     " dark background

"----------------------------------------------------------
" General key mapping 
"----------------------------------------------------------

map <up> <nop>			" Disable arrow keys
map <down> <nop> 		" Disable arrow keys
map <left> <nop> 		" Disable arrow keys
map <right> <nop> 		" Disable arrow keys

set pastetoggle=<F2>    " F2 = Paste mode

"----------------------------------------------------------
" Plugins (General)
"----------------------------------------------------------

" setup plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | source $MYVIMRC | endif

"----------------------------------------------------------
" Nerdtree Config 
"----------------------------------------------------------

" Auto load Nerd tree, move cursor back to active file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" key remap
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"----------------------------------------------------------
" Airline Config 
"----------------------------------------------------------
let g:airline_theme='onedark'
set noshowmode          " we don't need default mode bar
set noshowcmd           " we don't need to show last command
let cmdheight=0
