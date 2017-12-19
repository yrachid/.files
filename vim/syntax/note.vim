if exists("b:current_syntax")
  finish
endif

syn match noteTitle '^\([A-Za-z0-9]\+\s\=\)\+$'

syn match noteSeparator '=.*$'

syn match noteClarification '\([A-Za-z0-9]\+\s\=\)\+:\n'

syn match noteArrow '=>.*$'

syn match noteAffirmation '=!.*$'

syn match noteQuestion '.*\.?'

let b:current_syntax = "note"

syntax case match

hi def link noteTitle Todo
hi def link noteArrow Number
hi def link noteAffirmation Type
hi def link noteClarification Statement
hi def link noteSeparator Underlined
hi def link noteQuestion Tag
