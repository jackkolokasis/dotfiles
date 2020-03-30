" ToDo List Plugin
let g:VimTodoListsCustomKeyMapper = 'VimTodoListsCustomMappings'

function! VimTodoListsCustomMappings()
    nnoremap <buffer> s :VimTodoListsToggleItem<CR>
    nnoremap <buffer> <Space> :VimTodoListsToggleItem<CR>
    noremap <buffer> <leader>e :silent call VimTodoListsSetItemMode()<CR>
    " Incretement space
    nnoremap <Leader>i :VimTodoListsIncreaseIndent<CR>
    nnoremap <Leader>d :VimTodoListsDecreaseIndent<CR>
endfunction

