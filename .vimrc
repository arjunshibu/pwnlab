" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'

call plug#end()

colorscheme darkblue

syntax on

set encoding=utf-8
set history=50
set visualbell
set t_vb=

" Display
set ls=2
set nu
set showmode
set showcmd
set modeline
set title

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab
