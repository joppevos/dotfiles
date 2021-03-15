
call plug#begin('~/.vim/plugged')

" black for python
Plug 'ambv/black'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

Plug 'drewtempelmeyer/palenight.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'takac/vim-hardtime'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" diary
autocmd BufNewFile */journal/** 0r ~/.vim/skeleton.diary

let mapleader=" "
