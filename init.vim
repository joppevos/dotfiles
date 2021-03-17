call plug#begin('~/.vim/plugged')

" black for python
Plug 'ambv/black'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

" for writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'takac/vim-hardtime'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" journaling
autocmd BufNewFile */journal/** 0r ~/.vim/skeleton.diary

let mapleader=" "

nnoremap <leader>u :UndotreeShow<CR>
