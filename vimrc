set encoding=utf-8
set nocompatible

" VUNDLE PLUGIN MANAGER SETUP
" =================================================
filetype off            " Required by Vundle 
set hidden

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternativelyh, pass a path where Vundle should install plugins
" call vundle#begin('~;/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" THEME
" =================================================
set background=light
colorscheme PaperColor

" AIRLINE SETTINGS
" =================================================
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='papercolor'
let g:airline_powerline_fonts=1
set laststatus=2
set statusline+=%{fugitive#statusline()}

" NERDTREE
" =================================================
map <C-n> :NERDTreeToggle<cr>

" REGULAR SETTINGS
" =================================================
set modelines=0
set encoding=utf-8
set noerrorbells

set relativenumber
set autoindent
set incsearch

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set smarttab

set ruler
set nowrap
set autochdir
set so=999
set showcmd

set path+=**
set wildmenu
set ttyfast

set cursorline

" LEADER MAPPINGS
" =================================================
let mapleader=" "
nnoremap <leader>w <C-w>v<C-w>l " split window vertically and move to the win
nnoremap <Leader>f :NERDTreeToggle<Enter>

" .VIMRC MODIFICATIONS
" =================================================
nnoremap <leader>vimrc :tabe $MYVIMRC<cr>       " Open local .vimrc
autocmd bufwritepost .vimrc source $MYVIMRC     " Automatically source the changes to your vimrc when you save and close it.

