function! MaximizeBuffer()
    if !exists('w:maxtab')
        0tab split
        let w:maxtab=1
        redraw
        echo "Maximised " . @%
    else
        quit
        redraw
        echo "Minimized " . @%
    endif
endfunction

" Make full screen, exit by closing the tab, or leaving it open for later use
nnoremap <c-w><c-m> :call MaximizeBuffer()<cr>
nmap <c-w>m <c-w><c-m> 
" DONT REMAP <c-m> ! it is the char sequence used by your terminal for <CR> (the Enter key)
