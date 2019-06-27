" =============================================================================
" Theme: lightline-battleship.vim
" Author: szorfein
" License: MIT License
" Last Change: 2019/06/19
" =============================================================================

let s:base3 = '#a0a0a0' "fg <filename>
let s:base2 = '#f0f0f0' 
let s:base1 = '#af9cc7' "fg right
let s:base0 = '#27292f' "bg top left
let s:base00 = '#666666'
let s:base01 = '#4b4f7a' "bg <filename>
let s:basel1 = '#38384e' "bg bottom left 1
let s:base023 = '#2c4748' "bg top left
let s:base03 = '#8a9a9a' "bg top right
let s:baser1 = '#223939' "bg bottom right 1
let s:baser2 = '#343b4e' "bg bottom right 2
let s:red = '#462d40'
let s:orange = '#4a3d4d' "bg REPLACE mode
let s:yellow = '#876f4d' 
let s:green = '#4a645c' "bg INSERT mode
let s:cyan = '#2c4750' "bg top right
let s:blue = '#4a7f71' "bg NORMAL mode
let s:magenta = '#777775' "bg VISUAL mode
let s:bgbase = '#1a252b' "bg middle top and bottom

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:bgbase, s:blue ], [ s:base3, s:basel1 ] ]
let s:p.normal.right = [ [ s:base1, s:baser2 ], [ s:base1, s:baser1 ] ]
let s:p.inactive.right = [ [ s:bgbase, s:base00 ], [ s:base00, s:bgbase ] ]
let s:p.inactive.left =  [ [ s:base0, s:bgbase ], [ s:base00, s:base03 ] ]
let s:p.insert.left = [ [ s:bgbase, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:bgbase, s:orange ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:bgbase, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base1, s:bgbase ] ]
let s:p.inactive.middle = [ [ s:base0, s:bgbase ] ]
let s:p.tabline.left = [ [ s:base2, s:base01 ] ]
let s:p.tabline.tabsel = [ [ s:base2, s:base023 ] ]
let s:p.tabline.middle = [ [ s:base01, s:bgbase ] ]
let s:p.tabline.right = [ [ s:base03, s:cyan ] ] "top right
let s:p.normal.error = [ [ s:red, s:base023 ] ]
let s:p.normal.warning = [ [ s:yellow, s:bgbase ] ]

let g:lightline#colorscheme#Battleship#palette = lightline#colorscheme#fill(s:p)
