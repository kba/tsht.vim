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

runtime! syntax/sh.vim
runtime! syntax/sh/*.vim

syn keyword tshtFunction
    \ plan
    \ equals not_equals
    \ exec_ok exec_fail
    \ pass fail
    \ file_exists file_not_empty
    \ match not_match
    \ ok not_ok

hi! link tshtFunction Type

let b:current_syntax = "tsht"
if main_syntax == 'tsht'
  unlet main_syntax
endif
