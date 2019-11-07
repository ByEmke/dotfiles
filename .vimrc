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
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch
set cursorline
set hidden
let python_hightlight_all = 1
