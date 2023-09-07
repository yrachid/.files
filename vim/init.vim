let g:gitgutter_terminal_reports_focus=0

call plug#begin()

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'fcpg/vim-farout'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Yggdroot/indentLine'
  Plug 'navarasu/onedark.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'wincent/terminus'
  Plug 'dcampos/nvim-snippy'

call plug#end()

"set runtimepath+=~/.vim/snippets

source ~/.files/vim/vimrc.d/keymap.vim
source ~/.files/vim/vimrc.d/editor.vim
source ~/.files/vim/vimrc.d/nerdtree.vim
source ~/.files/vim/vimrc.d/coc.vim
source ~/.files/vim/vimrc.d/ctrlp.vim

imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
xmap <Tab> <Plug>(snippy-cut-text)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"imap <expr> <C-]> snippy#can_expand() ? '<Plug>(snippy-expand)' : '<C-]>'
"imap <expr> <C-j> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<C-j>'
"imap <expr> <C-k> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<C-k>'
"smap <expr> <C-j> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<C-j>'
"smap <expr> <C-k> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<C-k>'

colorscheme onedark
