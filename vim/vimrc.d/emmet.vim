" let g:user_emmet_leader_key='<C-i>'

let g:user_emmet_settings = {
      \'javascript' : {
      \ 'extends' : 'js',
      \},
\}

"Set EJS filetype to html, so that matchit plugin applies to ejs as well
augroup ejs_ft
  au!
  autocmd BufNewFile,BufRead *.ejs set filetype=html
augroup END
