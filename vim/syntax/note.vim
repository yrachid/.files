if exists("b:current_syntax")
  finish
endif

syn match noteTitle '^[A-Z].*$'
syn match noteSeparator '=.*$'
syn match noteClarification '.*:\s.*$'
syn match noteClarification2 '.*:\n'
syn match noteArrow '=>.*$'
syn match noteAffirmation '=!.*$'
syn match noteQuestion '.*\.?'

let b:current_syntax = "note"

syntax case match

hi def link noteTitle Todo
hi def link noteArrow Identifier
hi def link noteAffirmation Type
hi def link noteClarification Type
hi def link noteClarification2 Type
hi def link noteSeparator Underlined
hi def link noteObject Statement
hi def link noteQuestion Tag
