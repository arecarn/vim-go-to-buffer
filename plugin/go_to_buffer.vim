""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original Author: Ryan Carney
" License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_go_to_buffers")
    finish
else
    let g:loaded_go_to_buffer = 1
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" GLOBALS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_to_buffer_default_mapping = get(g:, 'go_to_buffer_default_mapping', 1)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" MAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:do_map(mode, lhs, rhs, name, default_option) abort "{{{2
    let plug = '<Plug>('.a:name.')'
    execute a:mode.'noremap <silent> '.plug.' '.a:rhs
    if a:default_option
        execute a:mode.'map <unique> '.a:lhs.' '.plug
    endif
endfunction "}}}2

call s:do_map(
            \ 'n',
            \ 'gb',
            \ ":\<C-U>call go_to_buffer#do('forward',v:count)\<CR>",
            \ 'go-to-buffer-forward',
            \ g:go_to_buffer_default_mapping,
            \ )

call s:do_map(
            \ 'n',
            \ 'gB',
            \ ":\<C-U>call go_to_buffer#do('backward',v:count)\<CR>",
            \ 'go-to-buffer-backwards',
            \ g:go_to_buffer_default_mapping,
            \ )
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
" vim: textwidth=78
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}
