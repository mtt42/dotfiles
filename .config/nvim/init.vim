" SETTINGS
" =============================================================================
let g:mapleader = "\Space" " Global leader key
set encoding=utf-8         " Set encoding to UTF-8
set nocompatible           " Not compatible mode with regular vi 
set termguicolors          " Use correct colors
set number                 " Show line numbers
set relativenumber         " Show relative line numbers
set ruler                  " Show cursor position all the time     
set tabstop=2              " Insert 2 spaces for tabs 
set shiftwidth=2           " Insert 2 spaces for indentation
set expandtab              " Replace tabs by spaces    
set autoindent             " Copy indentation from previous lne      
set showtabline=2          " Show tabs if there are at least 2 tab pages             
set splitbelow             " Horizontal splits always below
set splitright             " Vertical splits always to the right
set nobackup               " No backup files
set nowritebackup          " No backup files furing file write
set laststatus=0           " Always show status line
set noshowmode             " Mode not required because status is always on
set noswapfile             " No swap files             " No swap files
set formatoptions-=cro     " Stop newline continuition of comment line
set cursorline             " Highlight current cursor line
set colorcolumn=80         " Highlight max column
set ttyfast                " Fast scrolling
set background=dark        " Some themes require it
set wildmenu               " Better command line completion
set autowrite              " Automatically write files on change when working with multiple files
syntax enable              " Some plugins require it
filetype plugin on         " Allow guessing the filetype


" KEYMAPPINGS
" =============================================================================
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
" Correct RGB escape codes for vim inside tmux
if !has('nvim') && $TERM == 'screen-256color'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" PLUGINS
" =============================================================================
call plug#begin()
Plug 'arcticicestudio/nord-vim'     
Plug 'cocopon/iceberg.vim'              
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim' 
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'tpope/vim-fugitive'
call plug#end()

colo iceberg





