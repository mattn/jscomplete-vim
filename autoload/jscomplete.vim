" Vim completion script
" Language:     JavaScript
" Maintainer:   teramako

let s:save_cpo = &cpo
set cpo&vim

" s:GlobalObject {{{1
let s:GlobalObject = {}
" Object {{{2
let s:GlobalObject.Object = {
  \   'kind': 'f', 'type': 'Object',
  \   'props': {
  \     'create':                   {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'defineProperties':         {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'defineProperty':           {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'freeze':                   {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'getOwnPropertyDescriptor': {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'getOwnPropertyNames':      {'kind': 'f', 'menu': '[Object]', 'type': 'Array' },
  \     'getPrototypeOf':           {'kind': 'f', 'menu': '[Object]', 'type': 'Boolean' },
  \     'isExtensible':             {'kind': 'f', 'menu': '[Object]', 'type': 'Boolean' },
  \     'isForzen':                 {'kind': 'f', 'menu': '[Object]', 'type': 'Boolean' },
  \     'isSealed':                 {'kind': 'f', 'menu': '[Object]', 'type': 'Boolean' },
  \     'keys':                     {'kind': 'f', 'menu': '[Object]', 'type': 'Array' },
  \     'preventExtensions':        {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'seal':                     {'kind': 'f', 'menu': '[Object]', 'type': 'Object' },
  \     'prototype': {
  \       'kind': 'v', 'menu': '[Object]',
  \       'props': {
  \         'constructor':          {'kind': 'v', 'menu': 'ObjectConstructor',  'type': 'Function' },
  \         'hasOwnProperty':       {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'Boolean' },
  \         'isPrototypeOf':        {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'Boolean' },
  \         'propertyIsEnumerable': {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'Boolean' },
  \         'toLocaleString':       {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'String' },
  \         'toString':             {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'String' },
  \         'unwatch':              {'kind': 'f', 'menu': '[Object.prototype]', 'type': '' },
  \         'valueof':              {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'Object' },
  \         'watch':                {'kind': 'f', 'menu': '[Object.prototype]', 'type': '' },
  \         '__defineGetter__':     {'kind': 'f', 'menu': '[Object.prototype]', 'type': '' },
  \         '__defineSetter__':     {'kind': 'f', 'menu': '[Object.prototype]', 'type': '' },
  \         '__lookupGetter__':     {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'Function' },
  \         '__lookupSetter__':     {'kind': 'f', 'menu': '[Object.prototype]', 'type': 'Function' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Function {{{2
let s:GlobalObject.Function = {
  \   'kind': 'f', 'type': 'Function',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Function]',
  \       'props': {
  \         'apply':       {'kind': 'f', 'menu': '[Function.prototype]', },
  \         'arguments':   {'kind': 'v', 'menu': '[Function.prototype]', 'type': 'arguments' },
  \         'bind':        {'kind': 'f', 'menu': '[Function.prototype]', 'type': 'Function' },
  \         'call':        {'kind': 'f', 'menu': '[Function.prototype]', },
  \         'caller':      {'kind': 'v', 'menu': '[Function.prototype]', 'type': 'Function' },
  \         'constructor': {'kind': 'v', 'menu': 'FunctionConstructor',  'type': 'Function' },
  \         'length':      {'kind': 'v', 'menu': '[Function.prototype]', 'type': 'Number' },
  \         'name':        {'kind': 'v', 'menu': '[Function.prototype]', 'type': 'String' },
  \         'prototype':   {'kind': 'v', 'menu': '[Function.prototype]', 'type': 'Object' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Array {{{2
let s:GlobalObject.Array = {
  \   'kind': 'f', 'type': 'Array',
  \   'props': {
  \     'concat':      {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'every':       {'kind': 'f', 'menu': '[Array]', 'type': 'Boolean' },
  \     'filter':      {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'forEach':     {'kind': 'f', 'menu': '[Array]', 'type': '' },
  \     'indexOf':     {'kind': 'f', 'menu': '[Array]', 'type': 'Number' },
  \     'isArray':     {'kind': 'f', 'menu': '[Array]', 'type': 'Boolean' },
  \     'join':        {'kind': 'f', 'menu': '[Array]', 'type': 'String' },
  \     'lastIndexOf': {'kind': 'f', 'menu': '[Array]', 'type': 'Number' },
  \     'map':         {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'pop':         {'kind': 'f', 'menu': '[Array]', 'type': 'Object' },
  \     'push':        {'kind': 'f', 'menu': '[Array]', 'type': 'Number' },
  \     'reduce':      {'kind': 'f', 'menu': '[Array]', },
  \     'reduceRight': {'kind': 'f', 'menu': '[Array]', },
  \     'reverse':     {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'shift':       {'kind': 'f', 'menu': '[Array]', },
  \     'slice':       {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'some':        {'kind': 'f', 'menu': '[Array]', 'type': 'Boolean' },
  \     'sort':        {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'splice':      {'kind': 'f', 'menu': '[Array]', 'type': 'Array' },
  \     'unshift':     {'kind': 'f', 'menu': '[Array]', 'type': 'Number'},
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Array]',
  \       'props': {
  \         'concat':      {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'every':       {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Boolean' },
  \         'filter':      {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'forEach':     {'kind': 'f', 'menu': '[Array.prototype]', 'type': '' },
  \         'indexOf':     {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Number' },
  \         'isArray':     {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Boolean' },
  \         'join':        {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'String' },
  \         'lastIndexOf': {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Number' },
  \         'length':      {'kind': 'v', 'menu': '[Array.prototype]', 'type': 'Number' },
  \         'map':         {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'pop':         {'kind': 'f', 'menu': '[Array.prototype]', },
  \         'push':        {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Number' },
  \         'recude':      {'kind': 'f', 'menu': '[Array.prototype]', },
  \         'recudeRight': {'kind': 'f', 'menu': '[Array.prototype]', },
  \         'reverse':     {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'shift':       {'kind': 'f', 'menu': '[Array.prototype]', },
  \         'slice':       {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'some':        {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Boolean' },
  \         'sort':        {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'splice':      {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Array' },
  \         'unshift':     {'kind': 'f', 'menu': '[Array.prototype]', 'type': 'Number' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" String {{{2
let s:GlobalObject.String = {
  \   'kind': 'f', 'type': 'String',
  \   'props': {
  \     'charAt':            {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'charCodeAt':        {'kind': 'f', 'menu': '[String]', 'type': 'Number' },
  \     'concat':            {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'fromCharCode':      {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'indexOf':           {'kind': 'f', 'menu': '[String]', 'type': 'Number' },
  \     'lastIndexOf':       {'kind': 'f', 'menu': '[String]', 'type': 'Number' },
  \     'localeCompare':     {'kind': 'f', 'menu': '[String]', 'type': 'Number' },
  \     'match':             {'kind': 'f', 'menu': '[String]', 'type': 'Array' },
  \     'quote':             {'kind': 'f', 'menu': '[String]', 'type': 'Array'},
  \     'replace':           {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'search':            {'kind': 'f', 'menu': '[String]', 'type': 'Number' },
  \     'slice':             {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'split':             {'kind': 'f', 'menu': '[String]', 'type': 'Array' },
  \     'substr':            {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'substring':         {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'toLocaleLowerCase': {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'toLocaleUpperCase': {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'toLowerCase':       {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'toUpperCase':       {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'trim':              {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'trimLeft':          {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'trimRight':         {'kind': 'f', 'menu': '[String]', 'type': 'String' },
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[String]',
  \       'props': {
  \         'charAt':            {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'charCodeAt':        {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Number' },
  \         'concat':            {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'indexOf':           {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Number' },
  \         'lastIndexOf':       {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Number' },
  \         'length':            {'kind': 'v', 'menu': '[String.prototype]', 'type': 'Number' },
  \         'localeCompare':     {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Number' },
  \         'match':             {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Array' },
  \         'replace':           {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'search':            {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Number' },
  \         'slice':             {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'split':             {'kind': 'f', 'menu': '[String.prototype]', 'type': 'Array' },
  \         'substr':            {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'substring':         {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'toLocaleLowerCase': {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'toLocaleUpperCase': {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'toLowerCase':       {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'toString':          {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'toUpperCase':       {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \         'trim':              {'kind': 'f', 'menu': '[String.prototype]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Number {{{2
let s:GlobalObject.Number = {
  \   'kind': 'f', 'type': 'Number',
  \   'props': {
  \     'NaN':               {'kind': 'v', 'type': 'Number' },
  \     'POSITIVE_INFINITY': {'kind': 'v', 'type': 'Number' },
  \     'NEGATIVE_INFINITY': {'kind': 'v', 'type': 'Number' },
  \     'MAX_VALUE':         {'kind': 'v', 'type': 'NUmber' },
  \     'MIN_VALUE':         {'kind': 'v', 'type': 'Number' },
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Number]',
  \       'props': {
  \         'toExponential': {'kind': 'f', 'menu': '[Number.prototype]', 'type': 'String' },
  \         'toFixed':       {'kind': 'f', 'menu': '[Number.prototype]', 'type': 'String' },
  \         'toPrecision':   {'kind': 'f', 'menu': '[Number.prototype]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Date {{{2
let s:GlobalObject.Date = {
  \   'kind': 'f', 'type': 'Date',
  \   'props': {
  \     'now':   {'kind': 'f', 'menu': '[Date]', 'type': 'Number' },
  \     'parse': {'kind': 'f', 'menu': '[Date]', 'type': 'Number' },
  \     'UTC':   {'kind': 'f', 'menu': '[Date]', 'type': 'Number' },
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Date]',
  \       'props': {
  \         'getDate':            {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getDay':             {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getFullYear':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getHours':           {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getMilliseconds':    {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getMinutes':         {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getMonth':           {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getSeconds':         {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getTime':            {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getTimezoneOffset':  {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCDate':         {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCDay':          {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCFullYear':     {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCHours':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCMilliseconds': {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCMinutes':      {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCMonth':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getUTCSeconds':      {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'getYear':            {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setDate':            {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setFullYear':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setHours':           {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setMilliseconds':    {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setMinutes':         {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setMonth':           {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setSeconds':         {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setTime':            {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCDate':         {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCFullYear':     {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCHours':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCMilliseconds': {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCMinutes':      {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCMonth':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setUTCSeconds':      {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'setYear':            {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'Number' },
  \         'toDateString':       {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toGMTString':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toISOString':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toJSON':             {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toLocaleDateString': {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toLocaleFormat':     {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toLocaleString':     {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toLocaleTimeString': {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toSource':           {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toString':           {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toTimeString':       {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \         'toUTCString':        {'kind': 'f', 'menu': '[Date.prototype]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Math {{{2
let s:GlobalObject.Math = {
  \   'kind': 'v', 'type': 'Object',
  \   'props': {
  \     'abs':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'acos':    {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'asin':    {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'atan':    {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'atan2':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'ceil':    {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'cos':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'exp':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'floor':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'log':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'max':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'min':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'pow':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'random':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'round':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'sin':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'sqrt':    {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'tan':     {'kind': 'f', 'menu': '[Math]', 'type': 'Number' },
  \     'E':       {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'LOG2E':   {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'LOG10E':  {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'LN2':     {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'LN10':    {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'PI':      {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'SQRT2':   {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \     'SQRT1_2': {'kind': 'v', 'menu': '[Math]', 'type': 'Number' },
  \   }
  \ }
" 2}}}
" RegExp {{{2
let s:GlobalObject.RegExp = {
  \   'kind': 'f', 'type': 'RegExp',
  \   'props': {
  \     '$_':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$1':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$2':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$3':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$4':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$5':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$6':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$7':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$8':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     '$9':           {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     'input':        {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     'lastMatch':    {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     'lastParen':    {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     'leftContext':  {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     'multiline':    {'kind': 'v', 'menu': '[RegExp]', 'type': 'Boolean' },
  \     'rightContext': {'kind': 'v', 'menu': '[RegExp]', 'type': 'String' },
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[RegExp]',
  \       'props': {
  \         'compile':    {'kind': 'f', 'menu': '[RegExp.prototype]', 'type': 'RegExp' },
  \         'exec':       {'kind': 'f', 'menu': '[RegExp.prototype]', 'type': 'Array' },
  \         'test':       {'kind': 'f', 'menu': '[RegExp.prototype]', 'type': 'Boolean' },
  \         'global':     {'kind': 'v', 'menu': '[RegExp.prototype]', 'type': 'Boolean' },
  \         'ignoreCase': {'kind': 'v', 'menu': '[RegExp.prototype]', 'type': 'Boolean' },
  \         'multiline':  {'kind': 'v', 'menu': '[RegExp.prototype]', 'type': 'Boolean' },
  \         'lastIndex':  {'kind': 'v', 'menu': '[RegExp.prototype]', 'type': 'Number' },
  \         'source':     {'kind': 'v', 'menu': '[RegExp.prototype]', 'type': 'String' },
  \         'sticky':     {'kind': 'v', 'menu': '[RegExp.prototype]', 'type': 'Boolean' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Boolean {{{2
let s:GlobalObject.Boolean = {
  \   'kind': 'f', 'type': 'Boolean',
  \   'props': {
  \     'prototype': {'kind': 'v', 'type': 'Object', 'menu': '[Boolean]', 'props': {}}
  \   }
  \ }
" 2}}}
" Error {{{2
let s:GlobalObject.Error = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]',
  \       'props': {
  \         'fileName':   {'kind': 'v', 'menu': '[Error.prototype]', 'type': 'String' },
  \         'lineNumber': {'kind': 'v', 'menu': '[Error.prototype]', 'type': 'Number' },
  \         'message':    {'kind': 'v', 'menu': '[Error.prototype]', 'type': 'String' },
  \         'name':       {'kind': 'v', 'menu': '[Error.prototype]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" EvalError {{{2
let s:GlobalObject.EvalError = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" RangeError {{{2
let s:GlobalObject.RangeError = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" ReferenceError {{{2
let s:GlobalObject.ReferenceError = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" SyntaxError {{{2
let s:GlobalObject.SyntaxError = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" TypeError {{{2
let s:GlobalObject.TypeError = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" URIError {{{2
let s:GlobalObject.URIError = {
  \   'kind': 'f', 'type': 'Error',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Error]', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" JSON {{{2
let s:GlobalObject.JSON = {
  \   'kind': 'v', 'type': 'Object',
  \   'props': {
  \     'stringify': {'kind': 'f', 'menu': '[JSON]', 'type': 'String' },
  \     'parse':     {'kind': 'f', 'menu': '[JSON]', 'type': 'Object' },
  \   }
  \ }
" 2}}}
" arguments {{{2
let s:GlobalObject.arguments = {
  \   'kind': 'v', 'type': 'Object',
  \   'props': {
  \     'length': {'kind': 'v', 'menu': '[arguments]', 'type': 'Number' },
  \     'callee': {'kind': 'v', 'menu': '[arguments]', 'type': 'Function' },
  \     'caller': {'kind': 'v', 'menu': '[arguments]', 'type': 'Function' },
  \   }
  \ }
" 2}}}
" undefined {{{2
let s:GlobalObject.undefined = {
  \   'kind': 'v', 'props': {}
  \ }
" 2}}}
" 1}}}
" s:Keywords {{{1
let s:Keywords = [
  \ 'break', 'do', 'instanceof', 'typeof', 'case', 'else', 'new', 'var', 'catch',
  \ 'finally', 'return', 'void', 'continue', 'for', 'switch', 'while', 'debugger',
  \ 'function', 'this', 'with', 'default', 'if', 'throw', 'delete', 'in', 'try',
  \ 'class', 'enum', 'extends', 'super', 'const', 'export', 'import',
  \ 'implements', 'let', 'private', 'public', 'yeild', 'interface', 'package',
  \ 'protected', 'static'
  \ ]
let s:StatementKeywords = [
  \ 'break', 'do', 'case', 'else', 'var', 'catch', 'finally', 'return', 'continue', 'for',
  \ 'switch', 'while', 'debugger', 'with', 'default', 'if', 'throw', 'try', 'class', 'const'
  \ ]
" 1}}}
" s:ExpressionPriority {{{1
let s:ExpressionPriority = {
  \ 'Comma': 1,
  \ 'Assignment': 2,
  \ 'Conditional': 3,
  \ 'BinaryLoginal': 4,
  \ 'BinaryBitwise': 5,
  \ 'Equality': 6,
  \ 'Relational': 7,
  \ 'BitwiseShift': 8,
  \ 'Addtive': 9,
  \ 'Mutiplicative': 10,
  \ 'Unary': 11,
  \ 'Postfix': 12,
  \ 'LeftHandSide': 13,
  \ 'Primary': 14,
  \ }
" 1}}}

let s:IdentifierReg = '[$a-zA-Z_][$a-zA-Z0-9_]*'

" jscomplete#CompleteJS (Number::findstart, String::base) {{{1
function! jscomplete#CompleteJS(findstart, base)
  " 最初は a:findstart: 1, base: '' で来る
  " 補完対象テキストを見つけ出すために使われる
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    let curline = line('.')
    let compl_begin = col('.') - 2
    " Bit risky but JS is rather limited language and local chars shouldn't
    " fint way into names
    if synIDattr(synID(curline, start, ''), 'name') == 'javaScriptStringD'
      while start >= 0 && synIDattr(synID(curline, start, ''), 'name') == 'javaScriptStringD'
        let start -= 1
      endwhile
    else
      while start >= 0 && line[start - 1] =~ '[$a-zA-Z0-9_]'
        let start -= 1
      endwhile
    endif
    let b:compl_context = getline('.')[0:compl_begin]
    call s:SetGlobalObject()
    return start
  endif

  let context = b:compl_context
  let shortcontext = substitute(context, '\s*'.a:base.'$', '', '')
  unlet! b:compl_context

  let currentLine = line('.')
  if empty(shortcontext)
    let currentLine = prevnonblank(line('.') - 1)
    let shortcontext = getline(currentLine)
  endif

  " コメント行なら即終了
  if synIDattr(synID(line('.'), len(context) - 1, 0), 'name') == 'javaScriptComment'
    return []
  endif

  let col = len(shortcontext)
  let prefix = ''
  let postfix = ''
  if shortcontext =~ '\.$'
    let target = s:ParseCurrentExpression(shortcontext[: col -2], currentLine)
  elseif shortcontext =~ '\[$' && a:base =~ '^\s*["'']\?'
    let quote = '"'
    if a:base =~ '^\s*'''
      let quote = ''''
    endif
    let prefix = quote
    let postfix = quote .']'
    let target = s:ParseCurrentExpression(shortcontext[: col -2], currentLine)
  endif
  if exists('target') && !empty(target)
    call s:AddCompleteWords(s:GetProperties(target), a:base, prefix, postfix)
  endif
endfunction
" 1}}}

" void s:SetGlobalObject () {{{1
function s:SetGlobalObject ()
  if !exists('b:GlobalObject')
    let b:GlobalObject = deepcopy(s:GlobalObject)
    if exists('g:jscomplete_use')
      call s:LoadScripts(g:jscomplete_use)
    endif
    if exists('b:jscomplete_use')
      call s:LoadScripts(b:jscomplete_use)
    endif
  endif
  return b:GlobalObject
endfunction
" 1}}}
" void s:LoadScripts (List::names) {{{1
function s:LoadScripts (names)
  if type(a:names) == 3
    for name in a:names
      exec 'call js#'.name.'#Extend(a:names)'
    endfor
  endif
endfunction
" 1}}}

" Dict s:ParseCurrentExpression (String::shortcontext, Number::currentLine) {{{1
function s:ParseCurrentExpression (shortcontext, currentLine)
  let tokens = s:GetCurrentLHSTokens(a:shortcontext, a:currentLine, [])
  let [i, results] = s:ParseExpression2(tokens, s:ExpressionPriority.Comma)
  return get(results, -1, {})
endfunction
" 1}}}

" Dict s:GetPropertyType (Dict::parent, Dict::token) {{{1
function s:GetPropertyType (parent, token)
  let result = {}
  let type = get(a:token, 'type', '')
  let name = ''

  if type == 'Property' " ['hoge'] などの場合
    let res = s:ParseExpression(a:token.pos, 0)
    if has_key(res, 'value')
      let name = res.value
    endif
  elseif type == 'Identifier'
    let name = get(a:token, 'name', '')
  endif

  if !empty(name)
    let properties = s:GetProperties(a:parent)
    if has_key(properties, name)
      let prop = properties[name]
      if prop.kind == 'f'
        call extend(result, prop)
      elseif has_key(prop, 'type') && has_key(b:GlobalObject, prop.type)
        call extend(result, deepcopy(b:GlobalObject[prop.type].props.prototype))
      endif
      call extend(get(result, 'props', {}), get(prop, 'props', {}))
    endif
  endif

  return result
endfunction
" 1}}}

" List s:GetProperties (Dict::target) {{{1
function s:GetProperties (target)
  let props = {}
  let proto = {}
  call extend(props, get(a:target, 'props', {}))

  if has_key(a:target, 'kind')
    let object = ''
    if a:target.kind == 'f'
      let object = 'Function'
    elseif has_key(a:target, 'type')
      let object = a:target.type
    endif
    if !empty(object) && has_key(b:GlobalObject[object], 'props') && has_key(b:GlobalObject[object].props, 'prototype')
      call extend(proto, s:GetProperties(b:GlobalObject[object].props.prototype))
    endif
  endif
  return extend(proto, props)
endfunction
" 1}}}

" List s:GetCurrentLHSTokens (String::line, Number::lineNum, List::tokens) {{{1
" line から逆方向へパースして LeftHandSideExpression のトークンリストを得る
function s:GetCurrentLHSTokens (line, lineNum, tokens)
  let tokens = a:tokens
  let prevToken = get(tokens, 0, {'type': ''})
  let line = substitute(a:line, '\s*$', '', '')
  if empty(line)
    let l = prevnonblank(a:lineNum - 1)
    return l > 0 ? s:GetCurrentLHSTokens(getline(l), l, tokens) : tokens
  endif
  let token = {'pri': s:ExpressionPriority.LeftHandSide}
  if prevToken.type == 'Group'
    let args = [prevToken.pos] + (has_key(prevToken, 'callArgs') ? prevToken.callArgs : [])
    call extend(token, {'callArgs': args})
    unlet tokens[0]
  endif

  let lastChar = line[len(line) -1]
  if prevToken.type != 'GroupAndBlock'
    if lastChar =~ '[)}\]]'
      let e = lastChar
      if e == ')'
        if prevToken.type == 'ObjectLiteral'
          unlet tokens[0]
          call extend(token, {'type': 'GroupAndBlock', 'block': prevToken.pos, 'pri': s:ExpressionPriority.Primary})
        else
          call extend(token, {'type': 'Group', 'pri': s:ExpressionPriority.Primary})
        endif
        let s = '('
      elseif e == '}'
        if prevToken.type != '' && prevToken.type != 'op' && prevToken.type != 'Property'
          return tokens
        endif
        call extend(token, {'type': 'ObjectLiteral', 'pri': s:ExpressionPriority.Primary})
        let s = '{'
      else
        call extend(token, {'type': 'Property'})
        let s = '\['
        let e = '\]'
      endif
      call cursor(a:lineNum, len(line))
      let startPos = searchpairpos(s, '', e, 'Wbn')
      let token.pos = {'start': startPos, 'end': [a:lineNum, len(line)]}
      call insert(tokens, token)
      let line = startPos[1] > 1 ? getline(startPos[0])[: startPos[1]-2] : ''
      return s:GetCurrentLHSTokens(line, startPos[0], tokens)
    elseif lastChar =~ '["'']'
      let m = matchstr(line, '\(["'']\).\{-}\%(\\\)\@<!\1$')
      let string = eval('"'. m[1: m-2] .'"')
      call extend(token, {'type': 'literal', 'name': 'String', 'value': string, 'pri': s:ExpressionPriority.Primary})
      return insert(tokens, token)
    elseif line =~ '/.\{1,\}/[gmiy]*$'
      let m = match(line, '/.\{1,\}/[gmiy]*\s*$')
      call extend(token, {'type': 'literal', 'name': 'RegExp', 'value': m, 'pri': s:ExpressionPriority.Primary})
      return insert(tokens, token)
    elseif lastChar == '.'
      if prevToken.type != 'Identifier'
        return [] " SyntaxError
      endif
      call insert(tokens, extend(token, {'type': 'op', 'name': '.'}))
      return s:GetCurrentLHSTokens(line[: -2], a:lineNum, tokens)
    endif
  endif

  if line =~ s:IdentifierReg.'$'
    let identifier = matchstr(line, s:IdentifierReg.'$')

    if identifier == 'new'
      if prevToken.type == 'Group'
        call insert(tokens, prevToken)
      endif
      return insert(tokens, {'type': 'keyword', 'name': 'new', 'pri': s:ExpressionPriority.LeftHandSide})
    elseif identifier == 'function'
      if prevToken.type != 'GroupAndBlock'
        return [] " SyntaxError
      endif
      call extend(prevToken, {'type': 'FunctionLiteral', 'funcArgs': prevToken.pos, 'pri': s:ExpressionPriority.Primary})
      unlet prevToken.pos
    elseif prevToken.type == 'GroupAndBlock'
      if !has_key(prevToken, 'name')
        let prevToken.name = identifier
      else
        return [] " SyntaxError
      endif
    elseif prevToken.type == 'Identifier' || prevToken.type == 'ObjectLiteral'
      return tokens
    elseif index(s:Keywords, identifier) >= 0
      if prevToken.type == 'Group'
        call insert(tokens, prevToken)
      endif
      return tokens
    else
      call extend(token, {'type': 'Identifier', 'name': identifier})
      call insert(tokens, token)
    endif
    let line = substitute(line, identifier.'$', '', '')
    return s:GetCurrentLHSTokens(line, a:lineNum, tokens)
  endif
  
  if prevToken.type == 'Group'
    call insert(tokens, prevToken)
  elseif prevToken.type == 'Property'
    let prevToken.type = 'ArrayLiteral'
  endif
  return tokens
endfunction
" 1}}}

" Dict s:GetDeclaration (String::name) {{{1
function s:GetDeclaration (name)
  let pos = searchpos('\<'. a:name .'\s*=\s*', 'Wbne')
  let fPos = searchpos('\<function\s\+'. a:name .'\>', 'Wbn')
  if pos[0] < fPos[0]
    let pos = fPos
    let pos[1] -= 1
  elseif pos[0] == fPos[0] && pos[1] < fPos[1]
    let pos = fPos
    let pos[1] -= 1
  endif
  if pos[0] == 0
    return {}
  endif
  return s:ParseExpression({'start': pos, 'end': []}, 1)
endfunction
" 1}}}

" Dict s:EvalExpression (List::tokens) {{{1
function s:EvalExpression (tokens)
  let result = {}
  let isNewExpression = 0

  for token in a:tokens
    let type = token.type
    if empty(result)
      if type == 'keyword' && token.name == 'new'
        let isNewExpression += 1
      elseif type == 'ArrayLiteral'
        " TODO: parse ArrayLiteral
        let result = b:GlobalObject.Array.props.prototype
      elseif type == 'ObjectLiteral'
        " TODO: parse ObjectLiteral
        let result = b:GlobalObject.Object.props.prototype
      elseif type == 'FunctionLiteral'
        let result = {'kind': 'f'}
        if has_key(token, 'name')
          let result.name = token.name
        endif
      elseif type == 'literal'
        let result = has_key(b:GlobalObject, token.name) ? copy(b:GlobalObject[token.name].props.prototype) : {}
        let result.value = token.value
      elseif type == 'Identifier'
        if has_key(b:GlobalObject, token.name)
          let result = b:GlobalObject[token.name]
        else
          let result = s:GetDeclaration(token.name)
        endif
      elseif type == 'Group'
        let result = s:ParseExpression(token.pos, 0)
      endif
    else
      let result = s:GetPropertyType(result, token)
    endif

    if has_key(token, 'callArgs')
      for arguments in token.callArgs
        let result = s:EvalCall(result, isNewExpression)
        let isNewExpression -= 1
      endfor
    endif
  endfor

  if isNewExpression > 0
    let result = s:EvalCall(result, 1)
  endif

  return result
endfunction
" 1}}}

" Dict s:EvalCall (Dict::target, Number::isNewExpression) {{{1
function s:EvalCall (target, isNewExpression)
  if get(a:target, 'kind', '') == 'f'
    if a:isNewExpression > 0
      if has_key(a:target, 'newType') && has_key(b:GlobalObject, a:target.newType)
        let constructor = b:GlobalObject[target.newType]
      elseif has_key(a:target, 'type') && has_key(b:GlobalObject, a:target.type)
        let constructor = b:GlobalObject[a:target.type]
      else
        let constructor = b:GlobalObject.Object
      endif
      if has_key(constructor, 'props')
        return get(constructor.props, 'prototype', {})
      endif
    elseif has_key(a:target, 'type')
      if has_key(b:GlobalObject, a:target.type) && has_key(b:GlobalObject[a:target.type], 'props')
        return get(b:GlobalObject[a:target.type].props, 'prototype')
      else " type='' の場合は、undefined
        return b:GlobalObject.undefined
      endif
    else " XXX: 'type'がないので不定、とりあえずObject.prototypeを返す
      return b:GlobalObject.Object.props.prototype
    endif
  endif
  return {}
endfunction
" 1}}}

" Dict s:ParseExpression (Dict::position) {{{1
function s:ParseExpression (position, pri)
  let tokens = s:ParseTokens(a:position.start, a:position.end, a:pri)
  let [i, results] = s:ParseExpression2(tokens, 0)
  return get(results, -1, {})
endfunction
" 1}}}

" List s:ParseExpression2 (List::tokens, Number::pri) {{{1
function s:ParseExpression2 (tokens, pri)
  let results = []
  let result = {}
  let bufTokens = []
  let tokenLength = len(a:tokens)
  let index = 0
  while index < tokenLength
    let token = a:tokens[index]
    if token.pri >= s:ExpressionPriority.LeftHandSide
      if token.type != 'op'
        call add(bufTokens, token)
      endif
      let index += 1
      continue
    endif

    if len(bufTokens)
      let result = s:EvalExpression(bufTokens)
      let bufTokens = []
    endif

    if token.pri < a:pri
      break
    endif

    if token.type == 'keyword'
      if token.name == 'typeof'
        let [i, res] = s:ParseExpression2(a:tokens[index+1 :], s:ExpressionPriority.Unary)
        let result = b:GlobalObject.String.props.prototype
        let index += i
      elseif token.name == 'delete'
        let [i, res] = s:ParseExpression2(a:tokens[index+1 :], s:ExpressionPriority.Unary)
        let result = b:GlobalObject.Boolean.props.prototype
        let index += i
      elseif token.name == 'void'
        let [i, res] = s:ParseExpression2(a:tokens[index+1 :], s:ExpressionPriority.Unary)
        let result = {}
        let index += i
      elseif token.name == 'instanceof' || token.name == 'in'
        let [i, res] = s:ParseExpression2(a:tokens[index+1 :], s:ExpressionPriority.BitwiseShift)
        let result = b:GlobalObject.Boolean.props.prototype
        let index += i
      endif
    elseif token.type == 'op'
      if token.pri == s:ExpressionPriority.Comma
        call add(results, result)
      elseif token.pri == s:ExpressionPriority.Assignment
        " TODO:
      endif
    endif

    let index += 1
  endwhile

  if len(bufTokens)
    let result = s:EvalExpression(bufTokens)
  endif

  call add(results, result)
  return [index, results]
endfunction
" 1}}}

" List s:ParseTokens(List::start, List::end) {{{1
function s:ParseTokens(start, end, pri)
  let tokens = []
  let isFunction = 0
  let jumpCol = 0
  let isNewLine = 1
  let [startLine, startCol] = a:start
  if len(a:end) == 2
    let [endLine, endCol] = a:end
  else
    let endLine = line('$')
    let endCol = len(getline(endLine))
  endif
  let currentLine = startLine
  let currentCol = startCol
  while currentLine <= endLine
    let line = getline(currentLine)
    if currentLine == endLine
      let line = endCol < 2 ? '' : line[: endCol -2]
    endif
    if currentLine == startLine
      let line = line[startCol :]
    elseif jumpCol
      let line = line[currentCol :]
      let jumpCol = 0
    endif
    let line = substitute(line, '//.*$', '', '')

    let length = len(line)

    while length > 0
      let line = substitute(line, '^\s*', '', '')
      let token = get(tokens, -1, { 'type': '' })
      let currentCol += length - len(line)
      let length = len(line)

      if line[0] =~ '[)}\];]' " 閉じ括弧や ; があったら終了
        return tokens
      elseif line[0] == ',' " CommaOperator
        if a:pri < s:ExpressionPriority.Comma
          call add(tokens, { 'type': 'op', 'name': ',' })
        else
          return tokens
        endif
        let line = line[1:]
      elseif line =~ '^'.s:IdentifierReg " 変数やキーワード
        let m = matchstr(line, '^'.s:IdentifierReg)
        if index(s:StatementKeywords, m) >= 0
          return tokens
        endif
        let line = substitute(line, m, '', '')
        if token.type == 'FunctionLiteral'
          if has_key(token, 'name')
            return [] " Syntax Error
          endif
          let token.name = m
        elseif m == 'true' || m == 'false'
          call add(tokens, {'type': 'literal', 'name': 'Boolean', 'value': m == 'true', 'pri': s:ExpressionPriority.Primary})
        elseif m == 'null' || m == 'undefined'
          call add(tokens, {'type': 'literal', 'name': '', 'value': '', 'pri': s:ExpressionPriority.Primary})
        elseif index(s:Keywords, m) >= 0
          let t = {'type': 'keyword', 'name': m}
          if m == 'function'
            if len(tokens) > 0 && token.type != 'op'
              return isNewLine ? tokens : []
            endif
            let t = {'type': 'FunctionLiteral', 'pri': s:ExpressionPriority.Primary}
            let isFunction = 1
          elseif m =~ 'delete\|void\|typeof'
            if len(tokens) > 0 && token.type != 'op'
              return isNewLine ? tokens : []
            endif
            let t.pri = s:ExpressionPriority.Unary
          elseif m == 'new'
            if len(tokens) > 0 && token.type != 'op' && token.type != 'keyword'
              return isNewLine ? tokens : []
            endif
            let t.pri = s:ExpressionPriority.LeftHandSide
          elseif m == 'instanceof' || m == 'in'
            if !empty(token.type)
              return [] " Syntax Error
            endif
            let t.pri = s:ExpressionPriority.Relational
          endif
          call add(tokens, t)
        elseif !isNewLine && m == 'is' || m == 'isnt'
          call add(tokens, {'type': 'keyword', 'name': m, 'pri': s:ExpressionPriority.Equality})
        elseif token.type == 'op'
          if token.pri < s:ExpressionPriority.LeftHandSide
            call add(tokens, {'type': 'Identifier', 'name': m, 'pri': s:ExpressionPriority.Primary})
          else
            call add(tokens, {'type': 'Identifier', 'name': m, 'pri': s:ExpressionPriority.LeftHandSide})
          endif
        elseif token.type == '' || token.type == 'keyword'
          call add(tokens, {'type': 'Identifier', 'name': m, 'pri': s:ExpressionPriority.Primary})
        elseif isNewLine && token.type == 'Identifier'
          return tokens
        else
          return [] " SyntaxError
        endif
      elseif line[0] =~ '[\[({]'
        let s = line[0]
        if s == '{'
          let e = '}'
          if isFunction
            if isFunction == 2
              let isFunction = 3
            else
              return [] " SyntaxError
            endif
          elseif isNewLine && token.type != 'op' && len(tokens)
            return tokens
          elseif empty(token.type)
            let type = 'ObjectLiteral'
          else
            return [] " SyntaxError
          endif
        elseif s == '('
          let e = ')'
          let type = 'Group'
          if !empty(token.type)
            if isFunction == 1
              let isFunction = 2
            elseif token.type != 'keyword' && token.pri >= s:ExpressionPriority.LeftHandSide
              let isFunction = 4
            endif
          endif
        else
          let s = '\['
          let e = '\]'
          let type = 'Property'
          if empty(token.type) || token.type == 'keyword'
            let type = 'ArrayLiteral'
          elseif token.type == 'op'
            if token.name == '.'
              return [] " syntaxError hoge.[...]
            else
              let type = 'ArrayLiteral'
            endif
          endif
        endif
        call cursor(currentLine, currentCol + 1)
        let endPos = searchpairpos(s, '', e, 'Wn')
        let pos = { 'start': [currentLine, currentCol], 'end': endPos }
        if isFunction == 2 " function ()
          let token.funcArgs = pos
        elseif isFunction == 3 " function () {}
          let token.block = pos
          let isFunction = 0
        elseif isFunction == 4 " Identifier()
          if !has_key(token, 'callArgs')
            let token.callArgs = []
          endif
          call insert(token.callArgs, pos)
          let isFunction = 0
        else
          call add(tokens, {'type': type, 'pri': s:ExpressionPriority.Primary, 'pos': pos})
        endif
        if currentLine == endPos[0]
          let line = line[endPos[1] - currentCol :]
        else
          let line = ''
          let jumpCol = 1
          let currentLine = endPos[0] - 1
          let currentCol = endPos[1]
        endif
      elseif line[0:1] == '/*' " コメントは無視
        call cursor(currentLine, currentCol + 1)
        let endPos = searchpairpos('/\*', '', '\*/', 'Wn')
        if currentLine == endPos[0]
          let line = line[endPos[1] + 1 - currentCol :]
        else
          let line = ''
          let jumpCol = 1
          let currentLine = endPos[0] - 1
          let currentCol = endPos[1] + 1
        endif
      elseif line[0] == '.'
        if !empty(token.type)
          call add(tokens, { 'type': 'op', 'name': '.', 'pri': s:ExpressionPriority.LeftHandSide })
          let line = line[1:]
        else
          return [] " SyntaxError
        endif
      elseif line =~ '^\d\+\(\.\d\+\)\?' " Number Literal
        let m = matchstr(line, '^\d\+\(\.\d\+\)\?')
        call add(tokens, {'type': 'literal', 'name': 'Number', 'value': m, 'pri': s:ExpressionPriority.Primary})
        let line = line[len(m):]
      elseif line[0] == '"' || line[0] == "'" " String Literal
        if isNewLine && token.type != 'op' && len(tokens) != 0
          return tokens
        endif
        let m = matchstr(line, '^\(["'']\).\{-}\%(\\\)\@<!\1')
        let buf_len = len(m)
        let line = line[buf_len :]
        let string = eval('"'. m[1: m-2] .'"')
        call add(tokens, {'type': 'literal', 'name': 'String', 'value': string, 'pri': s:ExpressionPriority.Primary})
      elseif line =~ '^/.\{1,\}/[gmyi]*/' " RegExp Literal
        let m = matchstr(line, '^/.\{1,\}/[gmyi]*/')
        call add(tokens, {'type': 'literal', 'name': 'RegExp', 'value': m, 'pri': s:ExpressionPriority.Primary})
        let line = line[len(m):]
      elseif line[0:1] =~ '++\|--' " Postfix or Unary Operators
        let t = {'type': 'op', 'name': line[0:1]}
        if isNewLine
          let t.pri = s:ExpressionPriority.Unary
        elseif len(tokens) > 0
          let t.pri = s:ExpressionPriority.Postfix
        else
          let t.pri = s:ExpressionPriority.Unary
        endif
        call add(tokens, t)
        let line = line[2:]
      elseif line[0] =~ '[+\-~!]' " Additive or Unary operators
        if line[0] =~ '[+\-]' && len(tokens) > 0
          call add(tokens, {'type': 'op', 'name': line[0], 'pri': s:ExpressionPriority.Addtive})
        else
          call add(tokens, {'type': 'op', 'name': line[0], 'pri': s:ExpressionPriority.Unary})
        endif
        let line = line[1:]
      elseif line[0] =~ '[*/%]' " Mutiplicative Operators
        call add(tokens, { 'type': 'op', 'name': line[0], 'pri': s:ExpressionPriority.Mutiplicative })
        let line = line[1:]
      elseif line =~ '^\(<<\|>>\|>>>\)' " Bitwise Shift Operators
        let m = matchstr(line, '^\(<<\|>>\|>>>\)')
        call add(tokens, {'type': 'op', 'name': m, 'pri': s:ExpressionPriority.BitwiseShift})
        let line = line[len(m):]
      elseif line =~ '[<>]=\?' " Relational Operators
        let m = matchstr(line, '[<>]=\?')
        call add(tokens, {'type': 'op', 'name': m, 'pri': s:ExpressionPriority.Relational})
        let line = line[len(m):]
      elseif line =~ '^\(===\|!==\|==\|!=\)' " Equality Operators
        let m = matchstr(line, '^\(===\|!==\|==\|!=\)')
        call add(tokens, {'type': 'op', 'name': m, 'pri': s:ExpressionPriority.Equality})
        let line = line[len(m):]
      elseif line[0:1] =~ '&&\|||' " Binary Logical Operators
        call add(tokens, {'type': 'op', 'name': line[0:1], 'pri': s:ExpressionPriority.BinaryLoginal})
        let line = line[2:]
      elseif line[0] =~ '[&^|]' " Binary Bitwise Operators
        call add(tokens, {'type': 'op', 'name': line[0], 'pri': s:ExpressionPriority.BinaryBitwise})
        let line = line[1:]
      elseif line[0] =~ '[?:]' " Conditional Operators
        call add(tokens, {'type': 'op', 'name': line[0], 'pri': s:ExpressionPriority.Conditional})
        let line = line[1:]
      elseif line[0] == '=' " Assignment Operators
        call add(tokens, { 'type': 'op', 'name': line[0], 'pri': s:ExpressionPriority.Assignment })
        let line = line[1:]
      elseif line =~ '^\([\*/%+\-&^!]\|<<\|>>\|>>>\)=' " Assignment Operators
        let m = matchstr(line, '^\([\*/%+\-&^!]\|<<\|>>\|>>>\)=')
        call add(tokens, { 'type': 'op', 'name': line[0:1], 'pri': s:ExpressionPriority.Assignment })
        let line = line[len(m):]
      else
        return [] " SyntaxError
      endif

      let currentCol += length - len(line)
      let length = len(line)
      let isNewLine = 0
    endwhile

    if !jumpCol
      let currentCol = 1
    endif
    let currentLine += 1
    let isNewLine = 1
  endwhile

  return tokens
endfunction
" 1}}}

" s:AddCompleteWords (Dict::props, String::filter, String::prefix, String::postfix) {{{1
function s:AddCompleteWords (props, filter, prefix, postfix)
  for key in sort(keys(a:props))
    if empty(a:prefix) && key !~ '^'.s:IdentifierReg.'$'
      continue
    endif
    let prop = a:props[key]
    let word = a:prefix . key . a:postfix
    if word =~ '^'.a:filter
      let kind = prop.kind
      let menu = get(prop, 'menu', '')
      if kind == 'f'
        let word .= '('
      endif
      call complete_add({'word': word, 'kind': kind, 'menu': menu})
    endif
  endfor
endfunction
" 1}}}

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set foldmethod=marker:
