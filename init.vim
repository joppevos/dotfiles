call plug#begin('~/.vim/plugged')

" black for python
Plug 'ambv/black'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'takac/vim-hardtime'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" diary
autocmd BufNewFile */journal/** 0r ~/.vim/skeleton.diary

let mapleader=" "

nnoremap <leader>u :UndotreeShow<CR>
