call plug#begin()

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'fcpg/vim-farout'
  Plug 'vim-airline/vim-airline'

call plug#end()

source ~/.files/vim/vimrc.d/editor.vim
source ~/.files/vim/vimrc.d/nerdtree.vim
source ~/.files/vim/vimrc.d/coc.vim

let g:coc_global_extensions = ['coc-tsserver', 'coc-prettier']

"Enable ctrlp to find hidden files and folders
let g:ctrlp_show_hidden = 1

"Set ctrlp to ignore some undesired files and folders
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/.venv/*
