" Install Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" :PlugInstall
call plug#begin()
Plug 'altercation/vim-colors-solarized' " :help vim-colors-solarized
call plug#end()

syntax on
colorscheme solarized

set background=dark
set hlsearch
set incsearch
set laststatus=1
set noruler
set number
set shiftwidth=4
set t_Co=16
set tabstop=4

let mapleader = "\<Space>"

nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L> " clear search highlighting
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>w :w<CR>
