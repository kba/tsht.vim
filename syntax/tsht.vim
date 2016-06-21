" Vim syntax file
" Language:    tsht (tiny shell testing framework)
" Author:      Konstantin Baierer (unixprog@gmail.com)
" URL:         https://github.com/kba/tsht.vim
" Last Change: 2016-05-17

if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'tsht'
endif

let b:is_bash=1
runtime! syntax/sh.vim
runtime! syntax/sh/*.vim

syn keyword tshtFunction
    \ plan use
    \ equals not_equals
    \ exec_ok exec_fail
    \ pass fail
    \ file_exists not_file_exists
    \ file_empty not_file_empty
    \ equals_file
    \ equals_file_file
    \ match not_match
    \ ok not_ok
    \ jq_ok jq_equals

syn keyword tshtExtension
    \ jq
    \ colordiff
    \ diff
    \ shxml

syn match tshtUseStmt /^use.*/ contains=tshtExtension,tshtFunction

hi! link tshtFunction Type
hi! link tshtUseStmt PreProc
hi! link tshtExtension Function

let b:current_syntax = "tsht"
if main_syntax == 'tsht'
  unlet main_syntax
endif
