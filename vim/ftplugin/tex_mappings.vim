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

" Make status
nnoremap <Leader>s :!make status<CR>

" Make view
nnoremap <Leader>v :silent execute '!make view' \| execute 'redraw!'<CR>

" Redraw window
nnoremap <Leader>r :execute 'redraw!'<CR>

" Line splitting for latex
nnoremap <Leader>l :%s/\. \([A-Z]\)/. \1/<CR>
