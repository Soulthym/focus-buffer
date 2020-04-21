function! MaximizeBuffer()
    if !exists('t:maxtab')
        0tab split
        redraw
        let t:maxtab=1
        redraw
        echo "Maximised " . @%
    else
        tabc
        redraw
        echo "Minimized " . @%
    endif
    "nnoremap <c-w><c-m> :1tabc<CR>
    "au WinEnter * ++once nnoremap <c-w><c-m> :call MaximizeBuffer()<CR>
endfunction

" Make full screen, exit by closing the tab, or leaving it open for later use
nnoremap <c-w><c-m> :call MaximizeBuffer()<cr>
nmap <c-w>m <c-w><c-m> 
" DONT REMAP <c-m> ! it is the char sequence used by your terminal for <CR> (the Enter key)
