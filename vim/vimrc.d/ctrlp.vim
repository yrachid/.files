" Enable ctrlp to find hidden files and folders
let g:ctrlp_show_hidden = 1

" Allow ctrlp to be invoked with CTRL + P
let g:ctrlp_map = '<c-p>'

" Set ctrlp to ignore some undesired files and folders
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/.venv/*
