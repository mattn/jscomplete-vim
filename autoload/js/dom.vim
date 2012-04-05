" vim: set fdm=marker:
" Vim completion for DOM

if exists('b:loaded_jscomplete_dom')
  finish
endif
let b:loaded_jscomplete_dom = 1

let s:save_cpo = &cpo
set cpo&vim

let s:domObject = {}

" DOM Events Level 2 {{{1
" http://www.w3.org/TR/DOM-Level-2-Events/events.html
" http://www.w3.org/TR/DOM-Level-3-Events/
" EventTarget {{{2
let s:domObject.EventTarget = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'addEventListener':    {'kind': 'f', 'menu': '[EventTarget]'},
  \         'removeEventListener': {'kind': 'f', 'menu': '[EventTarget]'},
  \         'dipatchEvent':        {'kind': 'f', 'menu': '[EventTarget]', 'type': 'Boolean'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Event {{{2
let s:domObject.Event = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'CAPTURING_PHASE':          {'kind': 'v', 'menu': '[Event] 1', 'type': 'Number'},
  \         'AT_TARGET':                {'kind': 'v', 'menu': '[Event] 2', 'type': 'Number'},
  \         'BUBBLING_PHASE':           {'kind': 'v', 'menu': '[Event] 3', 'type': 'Number'},
  \         'type':                     {'kind': 'v', 'menu': '[Event]',   'type': 'String'},
  \         'target':                   {'kind': 'v', 'menu': '[Event]',   'type': 'EventTarget'},
  \         'currentTarget':            {'kind': 'v', 'menu': '[Event]',   'type': 'EventTarget'},
  \         'eventPhase':               {'kind': 'v', 'menu': '[Event]',   'type': 'Number'},
  \         'bubbles':                  {'kind': 'v', 'menu': '[Event]',   'type': 'Boolean'},
  \         'cancelable':               {'kind': 'v', 'menu': '[Event]',   'type': 'Boolean'},
  \         'timeStamp':                {'kind': 'v', 'menu': '[Event]',   'type': 'Number'},
  \         'stopPropagation':          {'kind': 'f', 'menu': '[Event]'},
  \         'preventDefault':           {'kind': 'f', 'menu': '[Event]'},
  \         'initEvent':                {'kind': 'f', 'menu': '[Event]'},
  \         'stopImmediatePropagation': {'kind': 'f', 'menu': '[Event] level 3'},
  \         'defaultPrevented':         {'kind': 'f', 'menu': '[Event] level 3', 'type': 'Boolean'},
  \         'isTrusted':                {'kind': 'f', 'menu': '[Event] level 3', 'type': 'Boolean'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" UIEvent {{{2
let s:domObject.UIEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Event', 'props': {
  \         'view':        {'kind': 'v', 'menu': '[UIEvent]', 'type': 'Window'},
  \         'detail':      {'kind': 'v', 'menu': '[UIEvent]', 'type': 'Number'},
  \         'initUIEvent': {'kind': 'f', 'menu': '[UIEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" FocusEvent {{{2
let s:domObject.FocusEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'UIEvent', 'props': {
  \         'relatedTarget':  {'kind': 'v', 'menu': '[FocusEvent]', 'type': 'Window'},
  \         'initFocusEvent': {'kind': 'f', 'menu': '[FocusEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" MouseEvent {{{2
let s:domObject.MouseEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'UIEvent', 'props': {
  \         'screenX':          {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Number'},
  \         'screenY':          {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Number'},
  \         'clientX':          {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Number'},
  \         'clicentY':         {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Number'},
  \         'ctrlKey':          {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Boolean'},
  \         'shiftKey':         {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Boolean'},
  \         'altKey':           {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Boolean'},
  \         'metaKey':          {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Boolean'},
  \         'button':           {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'Number'},
  \         'relatedTarget':    {'kind': 'v', 'menu': '[MouseEvent]', 'type': 'EventTarget'},
  \         'initMouseEvent':   {'kind': 'f', 'menu': '[MouseEvent]'},
  \         'getModifierState': {'kind': 'f', 'menu': '[MouseEvent] level 3', 'type': 'Boolean'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" WheelEvent {{{2
let s:domObject.WheelEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'MouseEvent', 'props': {
  \         'DOM_DELTA_PIXEL': {'kind': 'v', 'menu': '[WheelEvent] 0x00', 'type': 'Number'},
  \         'DOM_DELTA_LINE':  {'kind': 'v', 'menu': '[WheelEvent] 0x00', 'type': 'Number'},
  \         'DOM_DELTA_PAGE':  {'kind': 'v', 'menu': '[WheelEvent] 0x00', 'type': 'Number'},
  \         'deltaX':          {'kind': 'v', 'menu': '[WheelEvent]',      'type': 'Number'},
  \         'deltaY':          {'kind': 'v', 'menu': '[WheelEvent]',      'type': 'Number'},
  \         'deltaZ':          {'kind': 'v', 'menu': '[WheelEvent]',      'type': 'Number'},
  \         'deltaMode':       {'kind': 'v', 'menu': '[WheelEvent]',      'type': 'Number'},
  \         'initWheelEvent':  {'kind': 'f', 'menu': '[WheelEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" TextEvent {{{2
let s:domObject.TextEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'UIEvent', 'props': {
  \         'DOM_INPUT_METHOD_UNKOWN':      {'kind': 'v', 'menu': '[TextEvent] 0x00', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_KEYBOARD':    {'kind': 'v', 'menu': '[TextEvent] 0x01', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_PASTE':       {'kind': 'v', 'menu': '[TextEvent] 0x02', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_DROP':        {'kind': 'v', 'menu': '[TextEvent] 0x03', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_IME':         {'kind': 'v', 'menu': '[TextEvent] 0x04', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_OPTION':      {'kind': 'v', 'menu': '[TextEvent] 0x05', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_HANDWRITING': {'kind': 'v', 'menu': '[TextEvent] 0x06', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_VOICE':       {'kind': 'v', 'menu': '[TextEvent] 0x06', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_MULTIMODAL':  {'kind': 'v', 'menu': '[TextEvent] 0x06', 'type': 'Number'},
  \         'DOM_INPUT_METHOD_SCRIPT':      {'kind': 'v', 'menu': '[TextEvent] 0x06', 'type': 'Number'},
  \         'deta':                         {'kind': 'v', 'menu': '[TextEvent]', 'type': 'String'},
  \         'inputMethod':                  {'kind': 'v', 'menu': '[TextEvent]', 'type': 'Number'},
  \         'locale':                       {'kind': 'v', 'menu': '[TextEvent]', 'type': 'String'},
  \         'initTextEvent':                {'kind': 'f', 'menu': '[TextEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" KeyboardEvent {{{
let s:domObject.KeyboardEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'UIEvent', 'props': {
  \         'DOM_KEY_LOCATION_STANDARD': {'kind': 'v', 'menu': '[KeyboardEvent] 0x00', 'type': 'Number'},
  \         'DOM_KEY_LOCATION_LEFT':     {'kind': 'v', 'menu': '[KeyboardEvent] 0x01', 'type': 'Number'},
  \         'DOM_KEY_LOCATION_RIGHT':    {'kind': 'v', 'menu': '[KeyboardEvent] 0x02', 'type': 'Number'},
  \         'DOM_KEY_LOCATION_NUMPAD':   {'kind': 'v', 'menu': '[KeyboardEvent] 0x03', 'type': 'Number'},
  \         'DOM_KEY_LOCATION_MOBILE':   {'kind': 'v', 'menu': '[KeyboardEvent] 0x04', 'type': 'Number'},
  \         'DOM_KEY_LOCATION_JOYSTICK': {'kind': 'v', 'menu': '[KeyboardEvent] 0x05', 'type': 'Number'},
  \         'char':                      {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'String'},
  \         'key':                       {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'String'},
  \         'location':                  {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'Number'},
  \         'ctrlKey':                   {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'Boolean'},
  \         'shiftKey':                  {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'Boolean'},
  \         'altKey':                    {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'Boolean'},
  \         'metaKey':                   {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'Boolean'},
  \         'repeat':                    {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'Boolean'},
  \         'locale':                    {'kind': 'v', 'menu': '[KeyboardEvent]', 'type': 'String'},
  \         'getModifierState':          {'kind': 'f', 'menu': '[KeyboardEvent]', 'type': 'Boolean'},
  \         'initKeyboardEvent':         {'kind': 'f', 'menu': '[KeyboardEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" CompositionEvent {{{2
let s:domObject.CompositionEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'UIEvent', 'props': {
  \         'data':                 {'kind': 'v', 'menu': '[CompositionEvent]', 'type': 'String'},
  \         'locale':               {'kind': 'v', 'menu': '[CompositionEvent]', 'type': 'String'},
  \         'initCompositionEvent': {'kind': 'f', 'menu': '[CompositionEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" MutationEvent {{{2
let s:domObject.MutationEvent = {
  \   'kind': 'v', 'type': 'Object', 'prototype': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Event', 'props': {
  \         'MODIFICATION':      {'kind': 'v', 'menu': '[MutationEvent] 1', 'type': 'Number'},
  \         'ADDTION':           {'kind': 'v', 'menu': '[MutationEvent] 2', 'type': 'Number'},
  \         'REMOVAL':           {'kind': 'v', 'menu': '[MutationEvent] 3', 'type': 'Number'},
  \         'relatedNode':       {'kind': 'v', 'menu': '[MutationEvent]', 'type': 'Node'},
  \         'prevValue':         {'kind': 'v', 'menu': '[MutationEvent]', 'type': 'String'},
  \         'newValue':          {'kind': 'v', 'menu': '[MutationEvent]', 'type': 'String'},
  \         'attrName':          {'kind': 'v', 'menu': '[MutationEvent]', 'type': 'String'},
  \         'attrChange':        {'kind': 'v', 'menu': '[MutationEvent]', 'type': 'Number'},
  \         'initMutationEvent': {'kind': 'f', 'menu': '[MutationEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" MutationNameEvent {{{2
let s:domObject.MutationNameEvent = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'MutationEvent', 'props': {
  \         'prevNamespaceURI':      {'kind': 'v', 'menu': '[MutationNameEvent]', 'type': 'String'},
  \         'prevNodeName':          {'kind': 'v', 'menu': '[MutationNameEvent]', 'type': 'String'},
  \         'initMutationNameEvent': {'kind': 'f', 'menu': '[MutationNameEvent]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" 1}}}

" DOM Core Level 4 {{{1
" based: http://dvcs.w3.org/hg/domcore/raw-file/tip/Overview.html
" and http://www.w3.org/TR/DOM-Level-3-Core/idl-definitions.html
" Node {{{2
let s:domObject.Node = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'ELEMENT_NODE':                {'kind': 'v', 'menu': '[Node] 1',  'type': 'Number' },
  \     'ATTRIBUTE_NODE':              {'kind': 'v', 'menu': '[Node] 2',  'type': 'Number' },
  \     'TEXT_NODE':                   {'kind': 'v', 'menu': '[Node] 3',  'type': 'Number' },
  \     'CDATA_SECTION_NODE':          {'kind': 'v', 'menu': '[Node] 4',  'type': 'Number' },
  \     'ENTITY_REFERENCE_NODE':       {'kind': 'v', 'menu': '[Node] 5',  'type': 'Number' },
  \     'ENTITY_NODE':                 {'kind': 'v', 'menu': '[Node] 6',  'type': 'Number' },
  \     'PROCESSING_INSTRUCTION_NODE': {'kind': 'v', 'menu': '[Node] 7',  'type': 'Number' },
  \     'COMMENT_NODE':                {'kind': 'v', 'menu': '[Node] 8',  'type': 'Number' },
  \     'DOCUMENT_NODE':               {'kind': 'v', 'menu': '[Node] 9',  'type': 'Number' },
  \     'DOCUMENT_TYPE_NODE':          {'kind': 'v', 'menu': '[Node] 10', 'type': 'Number' },
  \     'DOCUMENT_FRAGMENT_NODE':      {'kind': 'v', 'menu': '[Node] 11', 'type': 'Number' },
  \     'NOTATION_NODE':               {'kind': 'v', 'menu': '[Node] 12', 'type': 'Number' },
  \     'DOCUMENT_POSITION_DICONNECTED':             {'kind': 'v', 'menu': '[Node] 0x01', 'type': 'Number' },
  \     'DOCUMENT_POSITION_PRECEDING':               {'kind': 'v', 'menu': '[Node] 0x02', 'type': 'Number' },
  \     'DOCUMENT_POSITION_FOLLOWING':               {'kind': 'v', 'menu': '[Node] 0x04', 'type': 'Number' },
  \     'DOCUMENT_POSITION_CONTAINS':                {'kind': 'v', 'menu': '[Node] 0x08', 'type': 'Number' },
  \     'DOCUMENT_POSITION_CONTAINED_BY':            {'kind': 'v', 'menu': '[Node] 0x10', 'type': 'Number' },
  \     'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC': {'kind': 'v', 'menu': '[Node] 0x20', 'type': 'Number' },
  \     'prototype': {
  \       'kind': 'v', 'type': 'EventTarget', 'props': {
  \         'ELEMENT_NODE':                {'kind': 'v', 'menu': '[Node] 1',  'type': 'Number' },
  \         'ATTRIBUTE_NODE':              {'kind': 'v', 'menu': '[Node] 2',  'type': 'Number' },
  \         'TEXT_NODE':                   {'kind': 'v', 'menu': '[Node] 3',  'type': 'Number' },
  \         'CDATA_SECTION_NODE':          {'kind': 'v', 'menu': '[Node] 4',  'type': 'Number' },
  \         'ENTITY_REFERENCE_NODE':       {'kind': 'v', 'menu': '[Node] 5',  'type': 'Number' },
  \         'ENTITY_NODE':                 {'kind': 'v', 'menu': '[Node] 6',  'type': 'Number' },
  \         'PROCESSING_INSTRUCTION_NODE': {'kind': 'v', 'menu': '[Node] 7',  'type': 'Number' },
  \         'COMMENT_NODE':                {'kind': 'v', 'menu': '[Node] 8',  'type': 'Number' },
  \         'DOCUMENT_NODE':               {'kind': 'v', 'menu': '[Node] 9',  'type': 'Number' },
  \         'DOCUMENT_TYPE_NODE':          {'kind': 'v', 'menu': '[Node] 10', 'type': 'Number' },
  \         'DOCUMENT_FRAGMENT_NODE':      {'kind': 'v', 'menu': '[Node] 11', 'type': 'Number' },
  \         'NOTATION_NODE':               {'kind': 'v', 'menu': '[Node] 12', 'type': 'Number' },
  \         'nodeType':                    {'kind': 'v', 'menu': '[Node]', 'type': 'Number' },
  \         'nodeName':                    {'kind': 'v', 'menu': '[Node]', 'type': 'String' },
  \         'baseURI':                     {'kind': 'v', 'menu': '[Node]', 'type': 'String' },
  \         'ownerDocument':               {'kind': 'v', 'menu': '[Node]', 'type': 'Document' },
  \         'parentNode':                  {'kind': 'v', 'menu': '[Node]', 'type': 'Node' },
  \         'parentElement':               {'kind': 'v', 'menu': '[Node]', 'type': 'Element' },
  \         'hasChildNodes':               {'kind': 'f', 'menu': '[Node]', 'type': 'Boolean' },
  \         'childNodes':                  {'kind': 'v', 'menu': '[Node]', 'type': 'NodeList' },
  \         'firstChild':                  {'kind': 'v', 'menu': '[Node]', 'type': 'Node' },
  \         'lastChild':                   {'kind': 'v', 'menu': '[Node]', 'type': 'Node' },
  \         'previousSibling':             {'kind': 'v', 'menu': '[Node]', 'type': 'Node' },
  \         'nextSibling':                 {'kind': 'v', 'menu': '[Node]', 'type': 'Node' },
  \         'DOCUMENT_POSITION_DICONNECTED':             {'kind': 'v', 'menu': '[Node] 0x01', 'type': 'Number' },
  \         'DOCUMENT_POSITION_PRECEDING':               {'kind': 'v', 'menu': '[Node] 0x02', 'type': 'Number' },
  \         'DOCUMENT_POSITION_FOLLOWING':               {'kind': 'v', 'menu': '[Node] 0x04', 'type': 'Number' },
  \         'DOCUMENT_POSITION_CONTAINS':                {'kind': 'v', 'menu': '[Node] 0x08', 'type': 'Number' },
  \         'DOCUMENT_POSITION_CONTAINED_BY':            {'kind': 'v', 'menu': '[Node] 0x10', 'type': 'Number' },
  \         'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC': {'kind': 'v', 'menu': '[Node] 0x20', 'type': 'Number' },
  \         'compareDocumentPosition': {'kind': 'f', 'menu': '[Node]', 'type': 'Number' },
  \         'contains':                {'kind': 'f', 'menu': '[Node]', 'type': 'Boolean' },
  \         'nodeValue':               {'kind': 'v', 'menu': '[Node]', 'type': 'String' },
  \         'textContent':             {'kind': 'v', 'menu': '[Node]', 'type': 'String' },
  \         'insertBefore':            {'kind': 'f', 'menu': '[Node]', 'type': 'Node' },
  \         'appendChild':             {'kind': 'f', 'menu': '[Node]', 'type': 'Node' },
  \         'replaceChild':            {'kind': 'f', 'menu': '[Node]', 'type': 'Node' },
  \         'removeChild':             {'kind': 'f', 'menu': '[Node]', 'type': 'Node' },
  \         'nomarize':                {'kind': 'f', 'menu': '[Node]' },
  \         'cloneNode':               {'kind': 'f', 'menu': '[Node]', 'type': 'Node' },
  \         'isEqualNode':             {'kind': 'f', 'menu': '[Node]', 'type': 'Boolean' },
  \         'lookupPrefix':            {'kind': 'f', 'menu': '[Node]', 'type': 'String' },
  \         'lookupNamespaceURI':      {'kind': 'f', 'menu': '[Node]', 'type': 'String' },
  \         'isDefaultNamespace':      {'kind': 'f', 'menu': '[Node]', 'type': 'Boolean' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Document {{{2
let s:domObject.Document = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Node', 'props': {
  \         'implementation':  {'kind': 'v', 'menu': '[Document]', 'type': 'DOMImplementation' },
  \         'URL':             {'kind': 'v', 'menu': '[Document]', 'type': 'String' },
  \         'documentURI':     {'kind': 'v', 'menu': '[Document]', 'type': 'String' },
  \         'compatMode':      {'kind': 'v', 'menu': '[Document]', 'type': 'String' },
  \         'characterSet':    {'kind': 'v', 'menu': '[Document]', 'type': 'String' },
  \         'contentType':     {'kind': 'v', 'menu': '[Document]', 'type': 'String' },
  \         'doctype':         {'kind': 'v', 'menu': '[Document]', 'type': 'DocumentType' },
  \         'documentElement': {'kind': 'v', 'menu': '[Document]', 'type': 'Element' },
  \         'getElementsByTagName':   {'kind': 'f', 'menu': '[Document]', 'type': 'HTMLCollection' },
  \         'getElementsByTagNameNS': {'kind': 'f', 'menu': '[Document]', 'type': 'HTMLCollection' },
  \         'getElementsByClassName': {'kind': 'f', 'menu': '[Document]', 'type': 'HTMLCollection' },
  \         'getElementById':         {'kind': 'f', 'menu': '[Document]', 'type': 'Element' },
  \         'createElement':          {'kind': 'f', 'menu': '[Document]', 'type': 'Element' },
  \         'createElementNS':        {'kind': 'f', 'menu': '[Document]', 'type': 'Element' },
  \         'createDocumentFragment': {'kind': 'f', 'menu': '[Document]', 'type': 'DocumentFragment' },
  \         'createTextNode':         {'kind': 'f', 'menu': '[Document]', 'type': 'Text' },
  \         'createComment':          {'kind': 'f', 'menu': '[Document]', 'type': 'Comment' },
  \         'createProcessingInstruction': {'kind': 'f', 'menu': '[Document]', 'type': 'ProcessingInstruction' },
  \         'importNode':             {'kind': 'f', 'menu': '[Document]', 'type': 'Node' },
  \         'adoptNode':              {'kind': 'f', 'menu': '[Document]', 'type': 'Node' },
  \         'createEvent':            {'kind': 'f', 'menu': '[Document]', 'type': 'Event' },
  \         'createRange':            {'kind': 'f', 'menu': '[Document]', 'type': 'Range' },
  \         'createNodeIterator':     {'kind': 'f', 'menu': '[Document]', 'type': 'NodeIterator' },
  \         'createTreeWalker':       {'kind': 'f', 'menu': '[Document]', 'type': 'TreeWalker' },
  \         'prepend':                {'kind': 'f', 'menu': '[Document] DOM level 4' },
  \         'append':                 {'kind': 'f', 'menu': '[Document] DOM level 4' },
  \       },
  \     }
  \   }
  \ }
" 2}}}
" DOMImplementation {{{2
let s:domObject.DOMImplementation = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'createDocumentType': {'kind': 'f', 'menu': '[DOMImplementation]', 'type': 'DocumentType' },
  \         'createDocument':     {'kind': 'f', 'menu': '[DOMImplementation]', 'type': 'Document' },
  \         'createHTMLDocument': {'kind': 'f', 'menu': '[DOMImplementation]', 'type': 'Document' },
  \         'hasFeature':         {'kind': 'f', 'menu': '[DOMImplementation]', 'type': 'Boolean' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" DocumentFragment {{{2
let s:domObject.DocumentFragment = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Node', 'props': {
  \         'prepend': {'kind': 'f', 'menu': '[DocumentFragment] DOM level 4' },
  \         'append':  {'kind': 'f', 'menu': '[DocumentFragment] DOM level 4' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" DocumentType {{{2
let s:domObject.DocumentType = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Node', 'props': {
  \         'name':     {'kind': 'v', 'menu': '[DocumentType]', 'type': 'String' },
  \         'publicId': {'kind': 'v', 'menu': '[DocumentType]', 'type': 'String' },
  \         'systemId': {'kind': 'v', 'menu': '[DocumentType]', 'type': 'String' },
  \         'before':   {'kind': 'f', 'menu': '[DocumentType] DOM level 4' },
  \         'after':    {'kind': 'f', 'menu': '[DocumentType] DOM level 4' },
  \         'replace':  {'kind': 'f', 'menu': '[DocumentType] DOM level 4' },
  \         'remove':   {'kind': 'f', 'menu': '[DocumentType] DOM level 4' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Element {{{2
let s:domObject.Element = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Node', 'props': {
  \         'namespaceURI':           {'kind': 'v', 'menu': '[Element]', 'type': 'String' },
  \         'prefix':                 {'kind': 'v', 'menu': '[Element]', 'type': 'String' },
  \         'localName':              {'kind': 'v', 'menu': '[Element]', 'type': 'String' },
  \         'tagName':                {'kind': 'v', 'menu': '[Element]', 'type': 'String' },
  \         'id':                     {'kind': 'v', 'menu': '[Element]', 'type': 'String' },
  \         'className':              {'kind': 'v', 'menu': '[Element]', 'type': 'String' },
  \         'classList':              {'kind': 'v', 'menu': '[Element]', 'type': 'DOMTokenList' },
  \         'attributes':             {'kind': 'v', 'menu': '[Element]', 'type': 'NamedNodeMap' },
  \         'getAttribute':           {'kind': 'f', 'menu': '[Element]', 'type': 'String' },
  \         'getAttributeNS':         {'kind': 'f', 'menu': '[Element]', 'type': 'String' },
  \         'setAttribute':           {'kind': 'f', 'menu': '[Element]' },
  \         'setAttributeNS':         {'kind': 'f', 'menu': '[Element]' },
  \         'removeAttribute':        {'kind': 'f', 'menu': '[Element]' },
  \         'removeAttributeNS':      {'kind': 'f', 'menu': '[Element]' },
  \         'hasAttribute':           {'kind': 'f', 'menu': '[Element]', 'type': 'Boolean' },
  \         'hasAttributeNS':         {'kind': 'f', 'menu': '[Element]', 'type': 'Boolean' },
  \         'getElementsByTagName':   {'kind': 'f', 'menu': '[Element]', 'type': 'HTMLCollection' },
  \         'getElementsByTagNameNS': {'kind': 'f', 'menu': '[Element]', 'type': 'HTMLCollection' },
  \         'getElementsByClassName': {'kind': 'f', 'menu': '[Element]', 'type': 'HTMLCollection' },
  \         'children':               {'kind': 'v', 'menu': '[Element]', 'type': 'HTMLCollection' },
  \         'firstElementChild':      {'kind': 'v', 'menu': '[Element]', 'type': 'Element' },
  \         'lastElementChild':       {'kind': 'v', 'menu': '[Element]', 'type': 'Element' },
  \         'previousElementSibling': {'kind': 'v', 'menu': '[Element]', 'type': 'Element' },
  \         'nextElementSibling':     {'kind': 'v', 'menu': '[Element]', 'type': 'Element' },
  \         'childElementCount':      {'kind': 'v', 'menu': '[Element]', 'type': 'Number' },
  \         'prepend':                {'kind': 'f', 'menu': '[Element] DOM level 4' },
  \         'append':                 {'kind': 'f', 'menu': '[Element] DOM level 4' },
  \         'before':                 {'kind': 'f', 'menu': '[Element] DOM level 4' },
  \         'after':                  {'kind': 'f', 'menu': '[Element] DOM level 4' },
  \         'replace':                {'kind': 'f', 'menu': '[Element] DOM level 4' },
  \         'remove':                 {'kind': 'f', 'menu': '[Element] DOM level 4' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Attr {{{2
let s:domObject.Attr = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'name':         {'kind': 'v', 'menu': '[Attr]', 'type': 'String' },
  \         'value':        {'kind': 'v', 'menu': '[Attr]', 'type': 'String' },
  \         'namespaceURI': {'kind': 'v', 'menu': '[Attr]', 'type': 'String' },
  \         'prefix':       {'kind': 'v', 'menu': '[Attr]', 'type': 'String' },
  \         'localName':    {'kind': 'v', 'menu': '[Attr]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" CharacterData {{{2
let s:domObject.CharacterData = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Node', 'props': {
  \         'data': {'kind': 'v', 'menu': '[CharacterData]', 'type': 'String' },
  \         'length': {'kind': 'v', 'menu': '[CharacterData]', 'type': 'Number' },
  \         'substringData': {'kind': 'f', 'menu': '[CharacterData]', 'type': 'String' },
  \         'appendData':  {'kind': 'f', 'menu': '[CharacterData]' },
  \         'insertData':  {'kind': 'f', 'menu': '[CharacterData]' },
  \         'deleteData':  {'kind': 'f', 'menu': '[CharacterData]' },
  \         'replaceData': {'kind': 'f', 'menu': '[CharacterData]' },
  \         'before':      {'kind': 'f', 'menu': '[CharacterData] DOM level 4' },
  \         'after':       {'kind': 'f', 'menu': '[CharacterData] DOM level 4' },
  \         'replace':     {'kind': 'f', 'menu': '[CharacterData] DOM level 4' },
  \         'remove':      {'kind': 'f', 'menu': '[CharacterData] DOM level 4' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Text {{{2
let s:domObject.Text = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'CharacterData', 'props': {
  \         'splitText': {'kind': 'f', 'menu': '[Text]', 'type': 'Text' },
  \         'wholeText': {'kind': 'v', 'menu': '[Text]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" ProcessingInstruction {{{2
let s:domObject.ProcessingInstruction = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'CharacterData', 'props': {
  \         'target': {'kind': 'v', 'menu': '[ProcessingInstruction]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Comment {{{2
let s:domObject.Comment = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'CharacterData', 'props': {}
  \     }
  \   }
  \ }
" 2}}}
" Range {{{2
let s:domObject.Range = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'startContainer':          {'kind': 'v', 'menu': '[Range]', 'type': 'Node' },
  \         'startOffset':             {'kind': 'v', 'menu': '[Range]', 'type': 'Number' },
  \         'endContainer':            {'kind': 'v', 'menu': '[Range]', 'type': 'Node' },
  \         'endOffset':               {'kind': 'v', 'menu': '[Range]', 'type': 'Number' },
  \         'collapsed':               {'kind': 'v', 'menu': '[Range]', 'type': 'Boolean' },
  \         'commonAncestorContainer': {'kind': 'v', 'menu': '[Range]', 'type': 'Node' },
  \         'setStart':                {'kind': 'f', 'menu': '[Range]' },
  \         'setEnd':                  {'kind': 'f', 'menu': '[Range]' },
  \         'setStartBefore':          {'kind': 'f', 'menu': '[Range]' },
  \         'setStartAfter':           {'kind': 'f', 'menu': '[Range]' },
  \         'setEndBefore':            {'kind': 'f', 'menu': '[Range]' },
  \         'setEndAfter':             {'kind': 'f', 'menu': '[Range]' },
  \         'collapse':                {'kind': 'f', 'menu': '[Range]' },
  \         'selectNode':              {'kind': 'f', 'menu': '[Range]' },
  \         'selectNodeContents':      {'kind': 'f', 'menu': '[Range]' },
  \         'START_TO_START':          {'kind': 'v', 'menu': '[Range] 0', 'type': 'Number' },
  \         'START_TO_END':            {'kind': 'v', 'menu': '[Range] 1', 'type': 'Number' },
  \         'END_TO_END':              {'kind': 'v', 'menu': '[Range] 2', 'type': 'Number' },
  \         'END_TO_START':            {'kind': 'v', 'menu': '[Range] 3', 'type': 'Number' },
  \         'compareBoundaryPoints':   {'kind': 'f', 'menu': '[Range]', 'type': 'Number' },
  \         'deleteContents':          {'kind': 'f', 'menu': '[Range]' },
  \         'extractContents':         {'kind': 'f', 'menu': '[Range]', 'type': 'DocumentFragment' },
  \         'cloneContents':           {'kind': 'f', 'menu': '[Range]', 'type': 'DocumentFragment' },
  \         'insertNode':              {'kind': 'f', 'menu': '[Range]' },
  \         'surroundContents':        {'kind': 'f', 'menu': '[Range]' },
  \         'cloneRange':              {'kind': 'f', 'menu': '[Range]', 'type': 'Range' },
  \         'detach':                  {'kind': 'f', 'menu': '[Range]' },
  \         'isPointInRange':          {'kind': 'f', 'menu': '[Range]', 'type': 'Boolean' },
  \         'comparePoint':            {'kind': 'f', 'menu': '[Range]', 'type': 'Number' },
  \         'intersectsNode':          {'kind': 'f', 'menu': '[Range]', 'type': 'Number' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" NodeIterator {{{2
let s:domObject.NodeIterator = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'root':                       {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'referenceNode':              {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'pointerBeforeReferenceNode': {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Boolean' },
  \         'whatToShow':                 {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Number' },
  \         'filter':                     {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'NodeFilter' },
  \         'nextNode':                   {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'previousNode':               {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'detach':                     {'kind': 'f', 'menu': '[NodeIterator]' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" TreeWalker {{{2
let s:domObject.TreeWalker = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'root':            {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'whatToShow':      {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Number' },
  \         'filter':          {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'NodeFilter' },
  \         'currentNode':     {'kind': 'v', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'parentNode':      {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'firstChild':      {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'lastChild':       {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'previousSibling': {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'nextSibling':     {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'previousNode':    {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \         'nextNode':        {'kind': 'f', 'menu': '[NodeIterator]', 'type': 'Node' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" NodeFilter {{{2
let s:domObject.NodeFilter = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'FILTER_ACCEPT':               {'kind': 'v', 'menu': '[NodeFilter] 1',          'type': 'Number' },
  \     'FILTER_REJECT':               {'kind': 'v', 'menu': '[NodeFilter] 2',          'type': 'Number' },
  \     'FILTER_SKIP':                 {'kind': 'v', 'menu': '[NodeFilter] 3',          'type': 'Number' },
  \     'SHOW_ALL':                    {'kind': 'v', 'menu': '[NodeFilter] 0xFFFFFFFF', 'type': 'Number' },
  \     'SHOW_ELEMENT':                {'kind': 'v', 'menu': '[NodeFilter] 0x1',        'type': 'Number' },
  \     'SHOW_ATTRIBUTE':              {'kind': 'v', 'menu': '[NodeFilter] 0x2',        'type': 'Number' },
  \     'SHOW_TEXT':                   {'kind': 'v', 'menu': '[NodeFilter] 0x4',        'type': 'Number' },
  \     'SHOW_CDATA_SECTION':          {'kind': 'v', 'menu': '[NodeFilter] 0x8',        'type': 'Number' },
  \     'SHOW_ENTITY_REFERENCE':       {'kind': 'v', 'menu': '[NodeFilter] 0x10',       'type': 'Number' },
  \     'SHOW_ENTITY':                 {'kind': 'v', 'menu': '[NodeFilter] 0x20',       'type': 'Number' },
  \     'SHOW_PROCESSING_INSTRUCTION': {'kind': 'v', 'menu': '[NodeFilter] 0x40',       'type': 'Number' },
  \     'SHOW_COMMENT':                {'kind': 'v', 'menu': '[NodeFilter] 0x80',       'type': 'Number' },
  \     'SHOW_DOCUMENT':               {'kind': 'v', 'menu': '[NodeFilter] 0x100',      'type': 'Number' },
  \     'SHOW_DOCUMENT_TYPE':          {'kind': 'v', 'menu': '[NodeFilter] 0x200',      'type': 'Number' },
  \     'SHOW_DOCUMENT_FRAGMENT':      {'kind': 'v', 'menu': '[NodeFilter] 0x400',      'type': 'Number' },
  \     'SHOW_NOTATION':               {'kind': 'v', 'menu': '[NodeFilter] 0x400',      'type': 'Number' },
  \     'acceptNode':                  {'kind': 'f', 'menu': '[NodeFilter]',            'type': 'Number' },
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'acceptNode': {'kind': 'f', 'menu': '[NodeFilter]', 'type': 'Number' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" NodeList {{{2
let s:domObject.NodeList = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'item':   {'kind': 'f', 'menu': '[NodeList]', 'type': 'Node' },
  \         'length': {'kind': 'v', 'menu': '[NodeList]', 'type': 'Number' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" HTMLCollection {{{2
let s:domObject.HTMLCollection = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'length':    {'kind': 'v', 'menu': '[HTMLCollection]', 'type': 'Number' },
  \         'item':      {'kind': 'f', 'menu': '[HTMLCollection]', 'type': 'Element' },
  \         'namedItem': {'kind': 'f', 'menu': '[HTMLCollection]', 'type': 'Element' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" DOMTokenList {{{2
let s:domObject.DOMTokenList = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'length':      {'kind': 'v', 'menu': '[DOMTokenList]', 'type': 'Number' },
  \         'item':        {'kind': 'f', 'menu': '[DOMTokenList]', 'type': 'String' },
  \         'contains':    {'kind': 'f', 'menu': '[DOMTokenList]', 'type': 'Boolean' },
  \         'add':         {'kind': 'f', 'menu': '[DOMTokenList]' },
  \         'remove':      {'kind': 'f', 'menu': '[DOMTokenList]' },
  \         'toggle':      {'kind': 'f', 'menu': '[DOMTokenList]', 'type': 'Boolean' },
  \         'stringifier': {'kind': 'f', 'menu': '[DOMTokenList]', 'type': 'String' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" NamedNodeMap {{{2
let s:domObject.NamedNodeMap = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'getNamedItem':      {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \         'setNamedItem':      {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \         'removeNamedItem':   {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \         'item':              {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \         'length':            {'kind': 'v', 'menu': '[NamedNodeMap]', 'type': 'Number' },
  \         'getNamedItemNS':    {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \         'setNamedItemNS':    {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \         'removeNamedItemNS': {'kind': 'f', 'menu': '[NamedNodeMap]', 'type': 'Attr' },
  \       }
  \     }
  \   }
  \ }
" 2}}}
" 1}}}

" HTML5 {{{1
let s:html5 = {}
" Window {{{2
let s:html5.Window = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'EventTarget', 'props': {
  \         'window':            {'kind': 'v', 'menu': '[Window]', 'type': 'Window' },
  \         'self':              {'kind': 'v', 'menu': '[Window]', 'type': 'Window' },
  \         'document':          {'kind': 'v', 'menu': '[Window]', 'type': 'Document' },
  \         'name':              {'kind': 'v', 'menu': '[Window]', 'type': 'String' },
  \         'location':          {'kind': 'v', 'menu': '[Window]', 'type': 'Location' },
  \         'history':           {'kind': 'v', 'menu': '[Window]', 'type': 'History' },
  \         'getSelection':      {'kind': 'f', 'menu': '[Window]', 'type': 'Selection' },
  \         'close':             {'kind': 'f', 'menu': '[Window]' },
  \         'focus':             {'kind': 'f', 'menu': '[Window]' },
  \         'blur':              {'kind': 'f', 'menu': '[Window]' },
  \         'frames':            {'kind': 'v', 'menu': '[Window]', 'type': 'Window' },
  \         'length':            {'kind': 'v', 'menu': '[Window]', 'type': 'Number' },
  \         'top':               {'kind': 'v', 'menu': '[Window]', 'type': 'Window' },
  \         'opener':            {'kind': 'v', 'menu': '[Window]', 'type': 'Window' },
  \         'parent':            {'kind': 'v', 'menu': '[Window]', 'type': 'Window' },
  \         'frameElement':      {'kind': 'v', 'menu': '[Window]', 'type': 'Element' },
  \         'open':              {'kind': 'f', 'menu': '[Window]', 'type': 'Window' },
  \         'navigator':         {'kind': 'v', 'menu': '[Window]', 'type': 'Navigator' },
  \         'external':          {'kind': 'v', 'menu': '[Window]', 'type': 'External' },
  \         'applicationCache':  {'kind': 'v', 'menu': '[Window]', 'type': 'ApplicationCache' },
  \         'alert':             {'kind': 'f', 'menu': '[Window]' },
  \         'confirm':           {'kind': 'f', 'menu': '[Window]', 'type': 'Boolean' },
  \         'prompt':            {'kind': 'f', 'menu': '[Window]', 'type': 'String' },
  \         'print':             {'kind': 'f', 'menu': '[Window]' },
  \         'showModalDialog':   {'kind': 'f', 'menu': '[Window]', 'type': '' },
  \         'postMessage':       {'kind': 'f', 'menu': '[Window]' },
  \         'onabort':           {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'onafterprint':      {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'onbeforeprint':     {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'onbeforeunload':    {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'onblur':            {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'oncanplay':         {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'oncanplaythrough':  {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'onchange':          {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'onclick':           {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'oncontextmenu':     {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'oncuechange':       {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'ondblclick':        {'kind': 'v', 'menu': '[Window]', 'type': 'Function'},
  \         'ondrag':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragend':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragenter':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragleave':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragover':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragstart':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondrop':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondurationchange':  {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onemptied':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onended':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onerror':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onfocus':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onhashchange':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oninput':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oninvalid':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onkeydown':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onkeypress':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onkeyup':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onload':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onloadeddata':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onloadedmetadata':  {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onloadstart':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmessage':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmousedown':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmousemove':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmouseout':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmouseover':       {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmouseup':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmousewheel':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onoffline':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ononline':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onpause':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onplay':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onplaying':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onpagehide':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onpageshow':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onpopstate':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onprogress':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onratechange':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onreset':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onresize':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onscroll':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onseeked':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onseeking':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onselect':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onshow':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onstalled':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onstorage':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onsubmit':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onsuspend':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ontimeupdate':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onunload':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onvolumechange':    {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onwaiting':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Document {{{2
let s:html5.Document = {
  \   'kind': 'v', 'type': 'Document', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Node', 'props': {
  \         'location':              {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Location'},
  \         'URL':                   {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'domain':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'referrer':              {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'cookie':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'lastModified':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'readyState':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'title':                 {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'dir':                   {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'body':                  {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Element'},
  \         'head':                  {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Element'},
  \         'images':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'embeds':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'plugins':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'links':                 {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'forms':                 {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'scripts':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'open':                  {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Window'},
  \         'close':                 {'kind': 'f', 'menu': '[HTML5 Document]'},
  \         'write':                 {'kind': 'f', 'menu': '[HTML5 Document]'},
  \         'writeln':               {'kind': 'f', 'menu': '[HTML5 Document]'},
  \         'defaultView':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Window'},
  \         'activeElement':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Element'},
  \         'hasFocus':              {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Boolean'},
  \         'designMode':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'execCommand':           {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Boolean'},
  \         'queryCommandEnabled':   {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Boolean'},
  \         'queryCommandIndeterm':  {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Boolean'},
  \         'queryCommandState':     {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Boolean'},
  \         'queryCommandSupported': {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'Boolean'},
  \         'queryCommandValue':     {'kind': 'f', 'menu': '[HTML5 Document]', 'type': 'String'},
  \         'commands':              {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'HTMLCollection'},
  \         'onabort':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onblur':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oncanplay':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oncanplaythrough':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onchange':              {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onclick':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oncontextmenu':         {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oncuechange':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondblclick':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondrag':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragend':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragenter':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragleave':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragover':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondragstart':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondrop':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ondurationchange':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onemptied':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onended':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onerror':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onfocus':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oninput':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'oninvalid':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onkeydown':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onkeypress':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onkeyup':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onload':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onloadeddata':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onloadedmetadata':      {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onloadstart':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmousedown':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmousemove':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmouseout':            {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmouseover':           {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmouseup':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onmousewheel':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onpause':               {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onplay':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onplaying':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onselect':              {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onshow':                {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onstalled':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onsubmit':              {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onsuspend':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'ontimeupdate':          {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onvolumechange':        {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \         'onwaiting':             {'kind': 'v', 'menu': '[HTML5 Document]', 'type': 'Function'},
  \       }
  \     }
  \   }
  \ }
call extend(s:html5.Document.props.prototype.props, s:domObject.Document.props.prototype.props)
" 2}}}
" History {{{2
let s:html5.History = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'length':       {'kind': 'v', 'menu': '[History]', 'type': 'Number'},
  \         'state':        {'kind': 'v', 'menu': '[History]', 'type': 'Object'},
  \         'go':           {'kind': 'f', 'menu': '[History]'},
  \         'back':         {'kind': 'f', 'menu': '[History]'},
  \         'forward':      {'kind': 'f', 'menu': '[History]'},
  \         'pushState':    {'kind': 'f', 'menu': '[History]'},
  \         'replaceState': {'kind': 'f', 'menu': '[History]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Location {{{2
let s:html5.Location = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'href':     {'kind': 'v', 'menu': '[Location]', 'type': 'String'},
  \         'assign':   {'kind': 'f', 'menu': '[Location]'},
  \         'replace':  {'kind': 'f', 'menu': '[Location]'},
  \         'reload':   {'kind': 'f', 'menu': '[Location]'},
  \         'protocol': {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \         'host':     {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \         'hostname': {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \         'port':     {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \         'pathname': {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \         'search':   {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \         'hash':     {'kind': 'f', 'menu': '[Location]', 'type': 'String'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Navigator {{{2
let s:html5.Navigator = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'appName':    {'kind': 'v', 'menu': '[NavigatorID]', 'type': 'String'},
  \         'appVersion': {'kind': 'v', 'menu': '[NavigatorID]', 'type': 'String'},
  \         'platform':   {'kind': 'v', 'menu': '[NavigatorID]', 'type': 'String'},
  \         'userAgent':  {'kind': 'v', 'menu': '[NavigatorID]', 'type': 'String'},
  \         'registerProtocolHandler':     {'kind': 'f', 'menu': '[NavigatorContentUtils]'},
  \         'registerContentHandler':      {'kind': 'f', 'menu': '[NavigatorContentUtils]'},
  \         'isProtocolHandlerRegistered': {'kind': 'f', 'menu': '[NavigatorContentUtils]', 'type': 'String'},
  \         'isContentHandlerRegistered':  {'kind': 'f', 'menu': '[NavigatorContentUtils]', 'type': 'String'},
  \         'unregisterProtocolHandler':   {'kind': 'f', 'menu': '[NavigatorContentUtils]'},
  \         'unregisterContentHandler':    {'kind': 'f', 'menu': '[NavigatorContentUtils]'},
  \         'yieldForStorageUpdates':      {'kind': 'f', 'menu': '[NavigatorStorageUtils]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" External {{{2
let s:html5.External = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'AddSearchProvider':         {'kind': 'f', 'menu': '[External]'},
  \         'IsSearchProviderInstalled': {'kind': 'f', 'menu': '[External]', 'type': 'Number'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" ApplicationCache {{{2
let s:html5.ApplicationCache = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'UNCACHED':      {'kind': 'v', 'menu': '[ApplicationCache] 0', 'type': 'Number'},
  \         'IDLE':          {'kind': 'v', 'menu': '[ApplicationCache] 1', 'type': 'Number'},
  \         'CHECKING':      {'kind': 'v', 'menu': '[ApplicationCache] 2', 'type': 'Number'},
  \         'DOWNLOADING':   {'kind': 'v', 'menu': '[ApplicationCache] 3', 'type': 'Number'},
  \         'UPDATEREADY':   {'kind': 'v', 'menu': '[ApplicationCache] 4', 'type': 'Number'},
  \         'OBSOLETE':      {'kind': 'v', 'menu': '[ApplicationCache] 5', 'type': 'Number'},
  \         'state':         {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Number'},
  \         'update':        {'kind': 'f', 'menu': '[ApplicationCache]'},
  \         'abort':         {'kind': 'f', 'menu': '[ApplicationCache]'},
  \         'swapCache':     {'kind': 'f', 'menu': '[ApplicationCache]'},
  \         'onchecking':    {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'onerror':       {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'onnoupdate':    {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'ondownloading': {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'onprogress':    {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'onupdateready': {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'oncached':      {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \         'onobsolete':    {'kind': 'v', 'menu': '[ApplicationCache]', 'type': 'Function'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Selection {{{2
let s:html5.Selection = {
  \   'kind': 'v', 'type': 'Object', 'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'props': {
  \         'anchorNode':         {'kind': 'v', 'menu': '[Selection]', 'type': 'Node'},
  \         'anchorOffset':       {'kind': 'v', 'menu': '[Selection]', 'type': 'Number'},
  \         'focusNode':          {'kind': 'v', 'menu': '[Selection]', 'type': 'Node'},
  \         'focusOffset':        {'kind': 'v', 'menu': '[Selection]', 'type': 'Number'},
  \         'isCollapsed':        {'kind': 'v', 'menu': '[Selection]', 'type': 'Boolean'},
  \         'collapse':           {'kind': 'f', 'menu': '[Selection]'},
  \         'collapseToStart':    {'kind': 'f', 'menu': '[Selection]'},
  \         'collapseToEnd':      {'kind': 'f', 'menu': '[Selection]'},
  \         'selectAllChildren':  {'kind': 'f', 'menu': '[Selection]'},
  \         'deleteFromDocument': {'kind': 'f', 'menu': '[Selection]'},
  \         'rangeCount':         {'kind': 'v', 'menu': '[Selection]', 'type': 'Number'},
  \         'getRangeAt':         {'kind': 'f', 'menu': '[Selection]', 'type': 'Range'},
  \         'addRange':           {'kind': 'f', 'menu': '[Selection]'},
  \         'removeRange':        {'kind': 'f', 'menu': '[Selection]'},
  \         'removeAllRanges':    {'kind': 'f', 'menu': '[Selection]'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" 1}}}

function! js#dom#Extend (names)
  if !exists('b:GlobalObject')
    return
  endif

  call extend(b:GlobalObject, s:domObject)
  call extend(b:GlobalObject, s:html5)
  call extend(b:GlobalObject, s:html5.Window.props.prototype.props)
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

