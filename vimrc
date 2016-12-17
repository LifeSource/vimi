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
map <c-l> <ESC>:set list!<CR>       " toggle invisible characters         
" Vim buffer management
nnoremap ,q :bd<CR>
nnoremap ,w <C-w>v
nnoremap ,v <C-w>s
nnoremap ,, <C-w><C-w>
" Buffer movement (NOTE: the characters map below are ALT + <key> combination)
" ‘ => ALT + ] and “ => ALT + [
map ‘ :bnext<CR>
map “ :bprevious<CR>
map ∑ :bd<CR>

" Line movement
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" --------------------------------------------------------------
" Snipmate and Snippets
" --------------------------------------------------------------
imap jj <Plug>snipMateNextOrTrigger
imap <tab> <Plug>snipMateNextOrTrigger

" --------------------------------------------------------------
" Color Picker
" --------------------------------------------------------------
let g:vcoolor_map = 'ç'
let g:vcoolor_lowercase = 1

" --------------------------------------------------------------
" Emmet
" --------------------------------------------------------------
vmap hh <C-y>,
imap hh <C-y>,

" --------------------------------------------------------------
" Vim-Surround mapping
" --------------------------------------------------------------
map ," ysiw"
map ,' ysiw'
map ,) ysiw)
map ,] ysiw]
map ,> ysiw>
map ,'' yss"
map ,]] yss]
map ,>> yss>
map , yss
map ,d ds
map ,d" ds"
map ,d( ds(
map ,d' ds'
map ,d[ ds[


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

" Typescript
let g:typescript_compiler_binary = 'tsc'
let g:syntastic_typescript_tsc_fname=''

let g:syntastic_always_poulate_loc_list = 1
let g_syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exec = ""
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_scss_checkers = ["scss_lint"]
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

function! ToggleErrors()
  let old_last_winnr = winnr('$')
  lclose
  if old_last_winnr == winnr('$')
    " Nothing was closed, open syntastic error location panel
    Errors
  endif
endfunction

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
nnoremap <silent> <C-g> :lnext<CR>

"ActivateAddons vim-snippets snipmate
let g:vim_json_syntax_conceal = 0

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

" ------------------------------------------------------------------------
" Control-P settings
" ------------------------------------------------------------------------
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_show_hidden = 1
set runtimepath^=~/vim/bundle/ctrlp.vim
" ignore the directories and files with the following extensions
set wildignore+=*/node_modules/*,/*bower_components/*,/*jspm_packages/*,/*platforms/*,*/vendor/*,*.so,*.swp,*.zip,*~


" ------------------------------------------------------------------------
"  Autoformat settings
" ------------------------------------------------------------------------
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
