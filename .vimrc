" Pathogen
execute pathogen#infect()

" global settings
syntax on
filetype plugin on
filetype indent on

set nu
set sw=4 "shiftwidth, 每层缩进的空格数
set ts=4 "tabstop, 每个TAB占4个空格

" for Python; 
" et, expandtab, 自动将输入的TAB扩展成空格
" sts=x, softtabstop, 开启了et后使用backspace每次后退x个空格
" sta, smarttab, 开启后，在行首按TAB将加入sw个空格，否则加入ts个空格
autocmd Filetype python setlocal et sta sw=4 sts=4 textwidth=79

" for HTML
autocmd Filetype html set sw=2 ts=2

" indentLine plugin
let g:indentLine_char = "┆"
let g:indentLine_color_term = 0
let g:indentLine_showFirstIndentLevel = 1

" NERDTree
"
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

