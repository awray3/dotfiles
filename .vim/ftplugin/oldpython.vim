 "Stuff for Python
"setlocal shiftwidth=4 softtabstop=4 expandtab tabstop=8

"setlocal completeopt-=preview

 "yapf settings (Code Formatter)
"nnoremap <LocalLeader>= :0,$!yapf<CR>

"imap <leader>p <Esc>:w<CR>:!clear;python %<CR>
"nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>"
 "Quick run via <F5>
"nnoremap <Leader>p :call <SID>compile_and_run()<CR>

"function! s:compile_and_run()
    "exec 'w'
    "if &filetype == 'c'
	"exec "AsyncRun! gcc % -o %<; time ./%<"
    "elseif &filetype == 'cpp'
       "exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    "elseif &filetype == 'java'
       "exec "AsyncRun! javac %; time java %<"
    "elseif &filetype == 'sh'
       "exec "AsyncRun! time bash %"
    "elseif &filetype == 'python'
       "exec "AsyncRun! time python3 %"
    "endif
"endfunction

 "Deprecated:
 "augroup SPACEVIM_ASYNCRUN
     "autocmd!
    "" Automatically open the quickfix window
     "autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
 "augroup END

 "asyncrun now has an option for opening quickfix automatically
"let g:asyncrun_open = 15

