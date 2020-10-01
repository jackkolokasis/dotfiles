function! myspacevim#before() abort                                                            
                                                                                               
let g:mapleader = ';'
let g:spacevim_enable_guicolors = 0                                                            
let g:spacevim_lint_on_save = 0                                                                
let g:spacevim_enable_statusline_bfpath = 1                                                    
let g:vim_json_syntax_conceal = 0
let g:indentLine_conceallevel = 0
let g:indentLine_concealcursor = 'nc'
let g:indentLine_setConceal = 0
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
let g:spacevim_project_rooter_automatically = 0

set path+=**                  " Enable recursive search for :find                                          
set textwidth=70              " Text width                                                                 
set ignorecase                " Make search case-insensitive                                   
set incsearch                 " Start searching before pressing Enter
set splitright                " Open new vertical split to the right
set splitbelow                " Open new horizontal split below
set tabstop=4


" Easier split resizing 
map <C-n> <c-w><
map <C-m> <c-w>>

" Tab navigation commands
nnoremap >  :tabnext<CR>
nnoremap <  :tabprev<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabfind<Space>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnew<Space>

" Split pane
nnoremap s  :split<Space>
nnoremap sf :sfind<Space>
nnoremap vs :vsplit<Space>
nnoremap vf :vsplit \| :find<Space>

" Resize pane
nnoremap <Leader>< :vertical resize -5<CR>
nnoremap <Leader>> :vertical resize +5<CR>

" Run make in the background
nnoremap <Leader>m :silent execute 'make!' \| execute 'redraw!'<CR>

" Make commit
nnoremap <Leader>c :!make commit m=""<left>

" Make update
nnoremap <Leader>u :!make up<CR>

" Make lastdiff 
nnoremap <Leader>d :!make lastdiff<CR>

" Make lastdiff2
nnoremap <Leader>dd :!make lastdiff2<CR>

" Update origin repository 
nnoremap <Leader>o :!make uporigin<CR>

" Make status
nnoremap <Leader>s :!make status<CR>

" Make view
nnoremap <Leader>v :silent execute '!make view' \| execute 'redraw!'<CR>

" Redraw window
nnoremap <Leader>r :execute 'redraw!'<CR>

" Line splitting for latex
nnoremap <Leader>l :%s/\. \([A-Z]\)/. \1/<CR>

" Starts auto-correction
map <F6> :setlocal spell! spelllang=en<CR>
map <F7> :setlocal spell! spelllang=el<CR>

" Auto-correct last misspelled word.
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-l> i<c-g>u<Esc>[s1z=`]a<c-g>u<Esc>

endfunction
