" BEGIN COMMENT OUT
" LOGICAL LINE NAV AND VIM MODE IS BUGGY IN CM6
"" Have j and k navigate visual lines rather than logical ones, normal mode
noremap j gj
noremap k gk
noremap gj j
noremap gk k

"" use logical line navigation in visual mode
vnoremap j gj
vnoremap k gk
vnoremap gj j
vnoremap gk k
" END COMMENT OUT

" clear highlights
nmap <F5> :nohl

" leader space
let mapleader = " "
unmap <Space>

" search words
exmap findWord obcommand global-search:open
nmap <Space>fw :findWord

" search files
exmap findFile obcommand switcher:open
nmap <Space>ff :findFile

exmap wq obcommand workspace:close
exmap q obcommand workspace:close
exmap x obcommand workspace:close

exmap foldToggle obcommand editor:toggle-fold
exmap foldAll obcommand editor:fold-all
exmap foldUnfoldAll obcommand editor:unfold-all
nmap zo :foldToggle
nmap zc :foldToggle
nmap zM :foldAll
nmap zR :foldUnfoldAll

exmap focusRight obcommand editor:focus-right
nmap <C-w>l :focusRight

exmap focusLeft obcommand editor:focus-left
nmap <C-w>h :focusLeft

exmap focusTop obcommand editor:focus-top
nmap <C-w>k :focusTop

exmap focusBottom obcommand editor:focus-bottom
nmap <C-w>j :focusBottom

exmap splitVertical obcommand workspace:split-vertical
nmap <C-w>v :splitVertical

exmap splitHorizontal obcommand workspace:split-horizontal
nmap <C-w>s :splitHorizontal

" Yank to system clipboard
set clipboard=unnamed
set tabstop=4

" follow link with GD like vim
exmap openLink obcommand editor:follow-link
nmap gd :openLink


" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Cycle Through Panes Plugins https://obsidian.md/plugins?id=cycle-through-panes
exmap tabnext obcommand workspace:next-tab
nmap gt :tabnext
exmap tabprev obcommand workspace:previous-tab
nmap gT :tabprev



" close all but this
noremap <leader>gx :action CloseAllEditorsButActive<CR>
