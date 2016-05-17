function! Tsht(...)
    let tsht_binary="tsht"
    let parent=expand("%:p:h")
    while parent != "/"
        if filereadable(parent . "/tsht")
            let tsht_binary=parent . "/tsht"
            break
        endif
        let parent = fnamemodify(parent, ":h")
    endwhile
    let cmd=tsht_binary
    for s in a:000
        let cmd = cmd . ' ' . s
    endfor
    echo cmd
    exe "!" . cmd
endfun
command! -nargs=* Tsht :call Tsht(<f-args>)
nmap <buffer> \ll :call Tsht(expand("%:p"))<cr>
