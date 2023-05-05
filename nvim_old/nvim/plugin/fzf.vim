" fzf
let g:fzf_layout = { 'window' : { 'width' : 0.8, 'height': 0.8 } }

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

" command! ProjectFiles execute 'Files' s:find_git_root()
nnoremap <leader>p :ProjectFiles<CR>
nnoremap <leader>rf :Buffers<CR>

" Rg command that takes arguments. Used for giving directories as arg
command! -bang -nargs=* DRg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

