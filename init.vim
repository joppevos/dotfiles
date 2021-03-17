call plug#begin('~/.vim/plugged') 

Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" need to stay fast
Plug 'takac/vim-hardtime'

call plug#end()

" journaling
autocmd BufNewFile */journal/** 0r ~/.vim/skeleton.diary

let mapleader=" "

nnoremap <leader>u :UndotreeShow<CR>
