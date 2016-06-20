" :PlugInstall
call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim' " :help ctrlp-commands and :help ctrlp-extensions
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

nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L> " clear search highlighting

let mapleader = "\<Space>"

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
