function! MaximizeBuffer()
    if !exists('s:maxtab')
        0tab split
    endif
    redraw
    echo "Maximised " . @%
    nnoremap <c-w><c-m> :1tabc<CR>
    au WinEnter * ++once nnoremap <c-w><c-m> :call MaximizeBuffer()<CR>
endfunction

" Make full screen, exit by closing the tab, or leaving it open for later use
nnoremap <c-w><c-m> :call MaximizeBuffer()<CR>
nmap <c-w>m <c-w><c-m> 
nmap <F2> :map < c-w>< c-m><CR>
" DONT REMAP <c-m> ! it is the char sequence used by your terminal for <CR> (the Enter key)
