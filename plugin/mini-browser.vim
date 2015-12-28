if get(g:, 'loaded_nyaovim_mini_browser', 0) || get(g:, 'nyaovim_version', '') ==# ''
    finish
endif

function! OpenMiniBrowser(bang, ...) abort
    let args = [0, 'mini-browser:open']
    if a:0 > 0
        let args += [a:1]
    endif
    if a:bang
        let args += [0]
    endif
    call call('rpcnotify', args)
endfunction

function! CloseMiniBrowser() abort
    call rpcnotify(0, 'mini-browser:close')
endfunction

command! -nargs=* -bang MiniBrowser call OpenMiniBrowser(<bang>0, <f-args>)
command! -nargs=0 MiniBrowserClose call CloseMiniBrowser()

let g:loaded_nyaovim_mini_browser = 1

