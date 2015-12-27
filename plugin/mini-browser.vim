if get(g:, 'loaded_nyaovim_mini_browser', 0) || get(g:, 'nyaovim_version', '') ==# ''
    finish
endif

function! OpenMiniBrowser(...) abort
    if a:0 > 0
        call rpcnotify(0, 'mini-browser:open', a:1)
    else
        call rpcnotify(0, 'mini-browser:open')
    endif
endfunction

function! CloseMiniBrowser() abort
    call rpcnotify(0, 'mini-browser:close')
endfunction

command! -nargs=* MiniBrowser call OpenMiniBrowser(<f-args>)
command! -nargs=0 MiniBrowserClose call CloseMiniBrowser()

let g:loaded_nyaovim_mini_browser = 1

