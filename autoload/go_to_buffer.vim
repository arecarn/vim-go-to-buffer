""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original Author: Ryan Carney
" License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" BOILER PLATE {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:save_cpo = &cpo
set cpo&vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" PUBLIC FUNCTIONS {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
function! go_to_buffer#do(direction, count) abort
    if a:count == 0
        if a:direction == 'forward'
            execute "normal! :bn\<CR>"
        elseif a:direction == 'backward'
            execute "normal! :bp\<CR>"
        endif
    else
        execute 'normal! :' . a:count . "b\<CR>"
    endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}


" BOILER PLATE {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &cpo = s:save_cpo
unlet s:save_cpo
" vim: textwidth=78
" vim:foldmethod=marker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
