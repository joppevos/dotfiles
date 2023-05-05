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

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'simrat39/symbols-outline.nvim'

" Shiny status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mbbill/undotree'

" Terraform
Plug 'hashivim/vim-terraform'


Plug 'vimwiki/vimwiki'

call plug#end()

let mapleader=" "

" Fzf 
nnoremap <leader>u :UndotreeShow<CR>
nnoremap ff :GitFiles<CR>
nnoremap <Leader>f :Rg<CR>


" yank like delete 
noremap Y y$

" Yank to clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Golang
nnoremap <leader>tf :GoTestFunc<CR>
nnoremap <leader>gr :GoRun<CR>

lua require("lsp")
lua require'nvim-treesitter.configs'.setup { indent = { enable = true }, highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" autocomplete prompt on dot 
au filetype go inoremap <buffer> . .<C-x><C-o>

"let g:hardtime_default_on = 1
set t_ZH=^[[3m
set t_ZR=^[[23m



