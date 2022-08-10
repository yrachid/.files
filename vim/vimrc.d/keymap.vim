" Remap leader key
let mapleader = ","

" Add shortcut for vnew and new
silent! nmap <F7> :vnew<CR>
silent! nmap <F8> :new<CR>

" Replace selected text on visual mode on C-r
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

