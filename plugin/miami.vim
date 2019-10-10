" =============================================================================
" Theme: lightline-miami.vim
" Author: szorfein
" License: MIT License
" Last Change: 2019/10/10
" =============================================================================

let s:base3 = '#a0a0a0' "fg <filename>
let s:base2 = '#f0f0f0' 
let s:base1 = '#af9cc7' "fg right
let s:base0 = '#2e252a' "bg top left
let s:base00 = '#4a7f71' "unocupied
" bottom left
let s:basel1 = '#2e252a'
let s:basel1_fg = '#ffcc80'
" top
let s:base023 = '#c3523f' "bg top left
let s:base01 = '#b24b50' "bg top left unoccupied <filename>
let s:base023_fg = '#fff9c4' "fg top left
let s:base03 = '#ef627c' "bg top right
" bottom right
let s:baser1 = '#a04547' "bg 1
let s:baser1_fg = '#fff59d' "fg 1
let s:baser2 = '#b54d3a' "bg 2
let s:baser2_fg = '#4e342e' "fg 2
"
let s:red = '#462d40'
let s:orange = '#4a3d4d' "bg REPLACE mode
let s:yellow = '#75447a' 
let s:green = '#a7e4cc' "bg INSERT mode
let s:cyan = '#2a2228' "bg top right
let s:blue = '#afaf71' "bg ALE correct (bottom left)
let s:magenta = '#777775' "bg VISUAL mode
let s:bgbase = '#2a2228' "bg middle top and bottom

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:bgbase, s:blue ], [ s:basel1_fg, s:basel1 ] ]
let s:p.normal.right = [ [ s:baser2_fg, s:baser2 ], [ s:baser1_fg, s:baser1 ] ]
let s:p.inactive.right = [ [ s:bgbase, s:base00 ], [ s:base00, s:bgbase ] ]
let s:p.inactive.left =  [ [ s:base0, s:bgbase ], [ s:base00, s:base03 ] ]
let s:p.insert.left = [ [ s:bgbase, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:bgbase, s:orange ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:bgbase, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base1, s:bgbase ] ]
let s:p.inactive.middle = [ [ s:base0, s:bgbase ] ]
let s:p.tabline.left = [ [ s:base2, s:base01 ] ]
let s:p.tabline.tabsel = [ [ s:base023_fg, s:base023 ] ]
let s:p.tabline.middle = [ [ s:base01, s:bgbase ] ]
let s:p.tabline.right = [ [ s:base03, s:cyan ] ] "top right
let s:p.normal.error = [ [ s:red, s:base023 ] ]
let s:p.normal.warning = [ [ s:yellow, s:bgbase ] ]

let g:lightline#colorscheme#Miami#palette = lightline#colorscheme#fill(s:p)
