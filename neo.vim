" neo.vim
"           ________
" |   /|   / ___    \    |~~~~~|  |~~~~~|
" |  / |  / /   \    \   |        |
" | /  |  \ \    \   /   |        |
" |/   |   \/     |||    |        |
"
" NULL LEECH
"
" VERSION 1.3


" BASIC START
set nocp
set history=500
set gcr=a:blinkon0 " No Blink
" BASIC END


" ENCODING START
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
scriptencoding utf-8
" ENCODING STOP


" BUILT BY ME START
source ~/.config/nvim/source/personal.vim
source ~/.config/nvim/source/plugin.vim
" BUILT BY ME END


" PLUGIN START
filetype plugin on
execute Plugins()
" PLUGIN END


" COLOR START
syntax enable
syntax on
colo delek "koehler
" COLOR END


" BACKUP START
set backup
set backupdir=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.nvim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" BACKUP END


" MISC START
set wildmode=longest,list
set backspace=indent,eol,start
set hidden
set number
set ruler
set nowrap
set linebreak
set autoread
set list
set confirm
set novisualbell noerrorbells
set ttyfast
set lazyredraw
" MISC END


" MAP START
nnoremap r R
nnoremap Q <nop>
nnoremap q: <nop>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap :Q :q
nnoremap :Qa :qa
nnoremap :Q! :q!
nnoremap :Qa! :qa!
nnoremap Q @q

" see https://stackoverflow.com/a/16136133/6064933
"nnoremap <expr> oo 'm`' . v:count1 . 'o<Esc>``'
"nnoremap <expr> OO 'm`' . v:count1 . 'O<Esc>``'

nnoremap <silent> <expr> <Down> (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> <Up> (v:count == 0 ? 'gk' : 'k')

nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

" emacs
noremap <C-x><C-s> <Esc>:wa!<CR>
" MAP END


" TAB START
filetype indent on
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nofoldenable
" TAB END


" LEADER START
let mapleader=","
nnoremap <leader>t :split<CR>:terminal<CR>

nnoremap <leader>s :Buffers<CR>
nnoremap <leader>e :Files<CR>
nnoremap <leader>c :Colors<CR>

nnoremap <leader>f :NERDTreeToggle<CR>

nnoremap <leader>T :TagbarToggle<CR>
" LEADER END


" NERDTREE START
let g:NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeStatusline = ''
let g:NERDTreeIgnore = ['\.pyc$', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
" NERDTREE STOP


" SEARCH START
set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch
" SEARCH END


" SHOW START
set showcmd
set showmode
" SHOW END


" OPENAS START
set splitbelow
set splitright
" OPENAS END


" HARD START
set modelines=0
set nomodeline
" HARD END
