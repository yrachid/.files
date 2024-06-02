let g:gitgutter_terminal_reports_focus=0

call plug#begin()

  Plug 'Olical/conjure'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
  Plug 'aserebryakov/vim-todo-lists'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'dcampos/nvim-snippy'
  Plug 'fcpg/vim-farout'
  Plug 'github/copilot.vim'
  Plug 'lervag/wiki.vim'
  Plug 'navarasu/onedark.nvim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'wincent/terminus'

call plug#end()

source ~/.files/vim/vimrc.d/coc.vim
source ~/.files/vim/vimrc.d/ctrlp.vim
source ~/.files/vim/vimrc.d/editor.vim
source ~/.files/vim/vimrc.d/keymap.vim
source ~/.files/vim/vimrc.d/nerdtree.vim
source ~/.files/vim/vimrc.d/nvim-tree-sitter.vim
source ~/.files/vim/vimrc.d/snippy.vim

colorscheme default

