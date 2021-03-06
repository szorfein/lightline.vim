" =============================================================================
" Theme: lightline-morpho.vim
" Author: szorfein
" License: MIT License
" Last Change: 2019/11/10
" =============================================================================

let s:background = '#1a1729'
let s:background_light = '#221f3a'
let s:primary = '#4c2777'
let s:primary_light = '#5c308a'
let s:primary_fg = '#9791b0'
let s:primary_light_fg = '#b7b0d1'
let s:secondary = '#463c8f'
let s:secondary_light = '#504397'
let s:secondary_fg = '#a5a6d2'
let s:secondary_light_fg = '#c8c9e4'
let s:alert = '#796ac2'
let s:alert_fg = '#e9eaf4'

let s:base3 = s:primary_fg "fg <filename>
let s:base2 = s:primary_light_fg "fg top left
let s:base1 = s:secondary_fg "fg right
let s:base0 = s:background "bg top left
let s:base00 = s:secondary "unocupied

" bottom left
let s:basel1 = s:background
let s:basel1_fg = s:primary_light_fg "fg name github repo

" top
let s:base023 = s:primary_light "bg top left
let s:base01 = s:primary "bg top left unoccupied <filename>
let s:base023_fg = s:primary_light_fg "fg top left
let s:base03 = s:alert "fg top right

" bottom right
let s:baser1 = s:secondary "bg 1
let s:baser1_fg = s:secondary_fg "fg 1
let s:baser2 = s:secondary_light "bg 2
let s:baser2_fg = s:secondary_light_fg "fg 2
"
let s:red = s:alert
let s:orange = s:secondary_light "bg REPLACE mode
let s:yellow = s:alert
let s:green = s:secondary "bg INSERT mode
let s:cyan = s:background "bg top right
let s:blue = s:primary "bg ALE correct (bottom left)
let s:magenta = s:primary_fg "bg VISUAL mode
let s:bgbase = s:background "bg middle top and bottom

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:background_light, s:blue ], [ s:basel1_fg, s:basel1 ] ]
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

let g:lightline#colorscheme#Morpho#palette = lightline#colorscheme#fill(s:p)
