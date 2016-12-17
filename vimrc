execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme lifesource

" --------------------------------------------------------------
" General settings
" --------------------------------------------------------------
set number 			" shows line numbers
set showcmd
set showmatch
set noswapfile			" don't create ~.swp file

" --------------------------------------------------------------
"  Code editing
" --------------------------------------------------------------
set softtabstop=2 tabstop=2 shiftwidth=2 
set expandtab
set foldmethod=syntax
set foldcolumn=3
set foldlevelstart=20
set nrformats= " ensures number formats are decimal regardless
set modeline
set nohidden
set ignorecase
set incsearch       " incremental search
set laststatus=2

" --------------------------------------------------------------
"  Clipboard and mouse
" --------------------------------------------------------------
set mouse=a
vmap <C-d> :put +<CR>
imap <C-d> :put +<CR>
nmap <C-d> :put +<CR>

" --------------------------------------------------------------
" File management
" --------------------------------------------------------------
map zz :w<CR>
map zx :wq!<CR>
" Line movement
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" --------------------------------------------------------------
" Plugin specific settings
" --------------------------------------------------------------

" --------------------------------------------------------------
" NerdTree settings
" --------------------------------------------------------------
let NERDTReeShowHidden = 1
let g:NERDTREEWinPos="left"
" NerdTree key bindings
map <C-n> :NERDTreeToggle<CR>

" --------------------------------------------------------------
"  Syntastic
" --------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" ------------------------------------------------------------------------
" Airline Configuration
" ------------------------------------------------------------------------
set encoding=utf8
let g:airline_theme="dark"
let g:airline_detect_modified=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbol
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
