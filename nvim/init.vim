call plug#begin('~/.vim/plugged') 

" theme
" Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Focus
Plug 'junegunn/goyo.vim'

" stop bad habbits
Plug 'takac/vim-hardtime'

" Marktdown previewer
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Gotta Go fast
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Treesitter  
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

" Comment in-out
Plug 'tpope/vim-commentary'

" amazing git integrations
Plug 'tpope/vim-fugitive'

call plug#end()

" journaling
autocmd BufNewFile */journal/** 0r ~/.vim/skeleton.diary

let mapleader=" "

nnoremap <leader>u :UndotreeShow<CR>
nnoremap ff :GitFiles<CR>

" Yank to clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

lua require'nvim-treesitter.configs'.setup { indent = { enable = true }, highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

