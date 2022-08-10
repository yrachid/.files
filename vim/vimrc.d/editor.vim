
" Enable external vimrc configuraton
set exrc

" Disable -C flag and reset system wide configuration. Better safe than sorry.
set nocompatible

set splitright

set nowrap

" Show line numbers
set number

" Enable syntax highlighting
syntax on

" Let Vim guess file types, adjust auto-indenting accordingly and enable plugins that are file-type specific.
filetype indent plugin on

" Add matchit plugin
packadd! matchit

set background=dark
set t_Co=256

" Configure Invisible tabs and spaces
set listchars=tab:>-,trail:-,precedes:·
set list

" Configure tab size
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set backspace=indent,eol,start

" Enable ruler
set ruler

" Format ruler to show current date and time
set rulerformat=%55(%{strftime('%d-%m-%Y\ %H:%M:%S\ %p')}\ %5l,%-6(%c%V%)\ %P%)

set textwidth=140

" Column limit to 140
set cc=140

"Higlights pieces of line that match overlength regex
highlight OverLength ctermbg=cyan ctermfg=black guibg=#C92D2D

" Create regex pattern for column overlength when line reachs column 101
match OverLength /\%141v.\+/

