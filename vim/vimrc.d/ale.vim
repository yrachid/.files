"==================================================================================================
" Ale
"==================================================================================================

let g:ale_fixers = {
\  '*': ['remove_trailing_spaces', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}

let g:ale_completion_enabled = 1

silent! nmap <C-L> :ALEFix
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
