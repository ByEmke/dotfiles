set encoding=utf-8
set nocompatible
packadd! matchit

let mapleader = ","
noremap \ ,
noremap <Leader>n nzz
noremap <Leader>N Nzz

" Download vim-plug if doesn't exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dir  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-apathy'
Plug 'majutsushi/tagbar'
Plug 'isRuslan/vim-es6'
Plug 'tmhedberg/SimpylFold'
Plug 'airblade/vim-gitgutter'
Plug 'hashivim/vim-terraform'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
call plug#end()

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

let g:terraform_align=1
let g:ycm_confirm_extra_conf=0

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map gn :bn<cr>
map gp :bp<cr>
set hlsearch " highlight search
set incsearch " search on type
set number
set autoindent
set expandtab
set showmatch
set cursorline
set hidden
let python_hightlight_all = 1

set mouse=a
set tabstop=4
set shiftwidth=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2                                                   
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
