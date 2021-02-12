""""""""
" fzf settings
""""""""

" fzf command I found on the internet somewhere
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
set grepprg=rg\ --vimgrep

" fzf under current word
nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>

" fzf command
nnoremap gf :Find<CR>
