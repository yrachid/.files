" Goto definitions and references
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-type-references)

" Navigate between errors
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" rename identifier
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Apply autofix to current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Accept autocomplete suggestion when pressing CR
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Always enable Typescript and Prettier
let g:coc_global_extensions = ['coc-tsserver', 'coc-prettier']
