call plug#begin('~/.vim/plugged') 

Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Focus
Plug 'junegunn/goyo.vim'

" stop bad habbits
Plug 'takac/vim-hardtime'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Gotta Go fast
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" journaling
autocmd BufNewFile */journal/** 0r ~/.vim/skeleton.diary

let mapleader=" "

nnoremap <leader>u :UndotreeShow<CR>
