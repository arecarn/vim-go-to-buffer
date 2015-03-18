""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original Author: Ryan Carney
" License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" BOILER PLATE {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_go_to_buffers")
    finish
else
    let g:loaded_go_to_buffer = 1
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" MAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Plug>(go-to-buffer-forward)
            \ :<C-U>call go_to_buffer#do('forward',v:count)<CR>
if !hasmapto('<Plug>(go-to-buffer-forward)')
    nmap gb <Plug>(go-to-buffer-forward)
endif

nnoremap <Plug>(go-to-buffer-backwards)
           \ :<C-U>call go_to_buffer#do('backward',v:count)<CR>
if !hasmapto('<Plug>(go-to-buffer-backwards)')
    nmap gB <Plug>(go-to-buffer-backwards)
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" BOILER PLATE {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

