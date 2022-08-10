call plug#begin()

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'fcpg/vim-farout'
  Plug 'vim-airline/vim-airline'
  Plug 'Yggdroot/indentLine'
  Plug 'navarasu/onedark.nvim'

call plug#end()

source ~/.files/vim/vimrc.d/keymap.vim
source ~/.files/vim/vimrc.d/editor.vim
source ~/.files/vim/vimrc.d/nerdtree.vim
source ~/.files/vim/vimrc.d/coc.vim
source ~/.files/vim/vimrc.d/ctrlp.vim

colorscheme onedark
