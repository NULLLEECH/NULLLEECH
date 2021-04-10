" personal.vim
"          ________
"|   /|   / ___    \    |~~~~~|  |~~~~~|
"|  / |  / /   \    \   |        |
"| /  |  \ \    \   /   |        |
"|/   |   \/     |||    |        |
"
" NULL LEECH
"
" VERSION 0.2

" Trim Whitespaces
function! TrimBlank()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction


