execute pathogen#infect()
filetype plugin indent on
syntax on

" Vim Airline
set laststatus=2
set ttimeoutlen=50
set t_Co=256
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
set encoding=utf-8

" Vim Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['blue', 'yellow', 'cyan', 'magenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" Accept additional vimrc files
set exrc

" Swap files are largely unnecessary
set noswapfile

" Display settings
set number
set nowrap
set relativenumber
set hlsearch
set showcmd
set title
set cursorline

" Useful mappings
" Map Y to act like D and C, yank to EOL
map Y y$

" Mouse control if necessary!
set mouse=a

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
set autoindent
set smartindent

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=6

" Maps ;; in insert mode to <Esc>
inoremap ;; <Esc>

" Autocomplete options
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Map <F2> and <F3> to enable/disable mouse mode
noremap <F2>  :set number<CR>:set relativenumber<CR>:set mouse+=a<CR>
noremap <F3>  :set number!<CR>:set relativenumber!<CR>:set mouse-=a<CR>

" Map // in visual mode to start a search for the current selected text
vnoremap // y/<C-R>"<CR>

" Remap arrow key combinations for useful INSERT mode operations
nnoremap <C-Left> 0
nnoremap <C-Right> $
nnoremap <C-Up> {
nnoremap <C-Down> }
inoremap <C-Left> <Esc>I
inoremap <C-Right> <Esc>A
inoremap <C-Down> <Esc>}A
inoremap <C-Up> <Esc>{I

" Allow CTRL+SHIFT+[j|k] to move the current line up or down
nnoremap <C-S-k> <Esc>Vdkkp
inoremap <C-S-k> <Esc>Vdkkpi
nnoremap <C-S-j> <Esc>Vdp
inoremap <C-S-j> <Esc>Vdpi

" Vim autocloses enclosing characters - Plugins will do this too!!!
""inoremap { {}<Left>
""inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
""inoremap [ []<Left>
""inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
""inoremap ( ()<Left>
""inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
""inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
""inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" So that we auto-handle alignment of curly brackets
inoremap <expr> <CR> strpart(getline('.'), col('.')-1, 1) == "}" ? "\<CR>\<Esc>V=<Esc>O" : "\<CR>"

"" remap so that selections can be auto-quoted when pressing " in visual mode
vnoremap " y<Esc>gv:s/<C-R>"/"<C-R>""/gc<CR>
vnoremap ' y<Esc>gv:s/<C-R>"/'<C-R>"'/gc<CR>

"" Additional maps for those annoying shift types
:command WQ wq
:command Wq wq
:command W w
:command Q q

