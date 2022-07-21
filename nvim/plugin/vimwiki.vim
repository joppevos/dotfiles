" Setup for vimwiki
"
" This file should be sourced from your .vimrc
"
"
" Set or override all/any options for personal wiki.
let wiki = {
\           'path': '~/vimwiki/',
\           'path_html': '~/vimwiki/HTML/',
\           'auto_diary_index': 1,
\           'auto_export': 0,
\           'index': 'home',
\           'syntax': 'markdown',
\           'ext': '.md',
\           'auto_toc': 1,
\           'maxhi': 1,
\           'nested_syntaxes': {'python': 'python', 'js': 'javascript', 'c++': 'cpp'},
\           'list_margin': -1
\           }

" Make wiki the default vimwiki setup
let g:vimwiki_list = [wiki]
" When opening a directory containing a file with this name and default wiki
" extention, assume it is a vimwiki
let g:vimwiki_dir_link = ''

" Only treat .md files under a path in vimwiki_list as wiki files
let g:vimwiki_global_ext = 0

set nocompatible
filetype plugin on
syntax on

nnoremap <leader>dn :VimwikiDiaryNextDay<CR>
nnoremap <leader>dp :VimwikiDiaryPrevDay<CR>

nnoremap <leader>dd :VimwikiMakeDiaryNote<CR>
nnoremap <buffer> <Leader>tk :VimwikiToggleListItem<CR>

" inoremap <buffer> <leader>xo <C-o>"cciW[](<C-r>c)<left><c-x><c-o>
" inoremap <buffer> <c-y><c-y> <c-y><esc><esc>T(vt)y<esc>F[pf)a <left
