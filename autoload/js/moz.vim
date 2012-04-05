
" vim: set fdm=marker:
" Vim completion for DOM

if exists('b:loaded_jscomplete_dom')
  finish
endif
let b:loaded_jscomplete_dom = 1

let s:save_cpo = &cpo
set cpo&vim

let s:MOZ = {
  \   'Object':
  \     'prototype': {
  \       'toSource': {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'String'}
  \     }
  \   },
  \   'Function': {
  \     'prototype': {
  \       'isGenerator': {'kind': 'f', 'menu': '[FUnction.prototype]', 'type': 'Boolean'}
  \     }
  \   }
  \   'String': {
  \     'prototype': {
  \       'quote':     {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'trimLeft':  {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'trimRight': {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \     },
  \     'domProp': {
  \       'anchor':    {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'big':       {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'blink':     {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'bold':      {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'fixed':     {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'fontcolor': {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'fontsize':  {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'italics':   {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'link':      {'kind': 'v', 'menu': '[String.prototype]', 'type': 'String'},
  \       'small':     {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'strike':    {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'sub':       {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String'},
  \       'sup':       {'kind': 'v', 'menu': '[String.prototype]', 'type': 'String'},
  \     },
  \   }
  \ }

function! js#moz#Extend (names)
  if !exists('b:GlobalObject')
    return
  endif

  call extend(b:GlobalObject.Object.props.prototype.props, s:MOZ.Object.prototype)
  call extend(b:GlobalObject.Function.props.prototype.props, s:MOZ.Function.prototype)
  call extend(b:GlobalObject.String.props.prototype.props, s:MOZ.String.prototype)
  if index(a:names, 'dom') >= 0
    call extend(b:GlobalObject.String.props.prototype.props, s:MOZ.String.domProp)
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

