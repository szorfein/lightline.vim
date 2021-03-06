" =============================================================================
" Theme: lightline-anonymous.vim
" Author: szorfein
" License: MIT License
" Last Change: 2019/05/28
" =============================================================================

let s:base3 = '#a0a0a0' "fg <filename>
let s:base2 = '#f0f0f0' 
let s:base1 = '#af9cc7' "fg right
let s:base0 = '#27292f' "bg top left and bottom right
let s:base00 = '#4a7f71'
let s:base01 = '#483970' "bg <filename>
let s:base02 = '#27292f' "fg Normal and bg center
let s:base023 = '#2f8888' "bg top left focus
let s:base03 = '#1d1f21'
let s:red = '#462d40'
let s:orange = '#4a3d4d' "bg REPLACE mode
let s:yellow = '#876f4d' 
let s:green = '#4a645c' "bg INSERT mode
let s:cyan = '#8abeb7'
let s:blue = '#4a7f71' "bg NORMAL mode
let s:magenta = '#777775' "bg VISUAL mode

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base1, s:base02 ], [ s:base1, s:base01 ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base03 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:orange ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.left = [ [ s:base2, s:base01 ] ]
let s:p.tabline.tabsel = [ [ s:base2, s:base023 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base0 ] ]
let s:p.tabline.right = [ [ s:base03, s:cyan ] ] "top right
let s:p.normal.error = [ [ s:red, s:base023 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base02 ] ]

let g:lightline#colorscheme#Anonymous#palette = lightline#colorscheme#fill(s:p)
