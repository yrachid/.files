"==================================================================================================
" Ale
"==================================================================================================

let g:ale_fixers = {
\  '*': ['remove_trailing_spaces', 'trim_whitespace'],
\  'javascript': ['prettier'],
\  'typescript': ['prettier']
\}

let g:ale_linters = {
\  'python': ['flake8'],
\  'javascript': ['eslint'],
\  'typescript': ['eslint']
\}

let g:ale_linters_explicit = 1
let g:ale_completion_enabled = 1
let g:ale_javascript_prettier_use_local_config = 1

silent! nmap <C-L> :ALEFix
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
