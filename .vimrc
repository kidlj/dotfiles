" global settings
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
"let g:indentLine_char = "┆"
let g:indentLine_color_term = 0
let g:indentLine_showFirstIndentLevel = 1
