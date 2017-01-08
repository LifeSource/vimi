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
set listchars=eol:⏎,space:¬
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

" Saving and exiting
map zz :w<CR>
map zx :wq!<CR>
map qq :qa!<CR>
map <c-l> <ESC>:set list!<CR>       " toggle invisible characters         
map <c-h> <ESC>:%s/;//gc<CR>

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
"  Tagbar settings
" --------------------------------------------------------------
nmap <C-b> :TagbarToggle<CR>

" --------------------------------------------------------------
" Snipmate and Snippets
" --------------------------------------------------------------
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['typescript'] = 'ruby,javascript'
imap jj <Plug>snipMateNextOrTrigger
imap <tab> <Plug>snipMateNextOrTrigger

" --------------------------------------------------------------
" Color Picker
" --------------------------------------------------------------
let g:vcoolor_map = 'ç'
let g:vcoolor_lowercase = 1

" --------------------------------------------------------------
" Emmet settings
" --------------------------------------------------------------
let g:user_emmet_install_global = 1
"autocmd FileType html,pug,jade,css,scss,js,jsx,ts,tsx  EmmetInstall
vmap hh <C-y>,
imap hh <C-y>,

" --------------------------------------------------------------
"  Autoformat settings
" --------------------------------------------------------------
noremap <C-f> :Autoformat<CR>

" Disable the autoident, retab and remove trailing space
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
"
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
let NERDTreeShowHidden = 1
let g:NERDTREEWinPos="left"
" close vim if there is only nerdtree left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NerdTree key bindings
map <C-n> :NERDTreeToggle<CR>
"map <leader>r :NERDTreeFind<cr>
map <leader>f  :NERDTreeFind<CR>

" --------------------------------------------------------------
"  Syntastic
" --------------------------------------------------------------
"let g:statline_syntastic = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Typescript
"let g:typescript_compiler_binary = 'tsc'
"let g:syntastic_typescript_tsc_fname=''
let g:syntastic_javascript_eslint_exec = "/usr/local/bin/eslint"
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_scss_checkers = ["scss_lint"]

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

" ------------------------------------------------------------------------
"  Tsuquyomi settings
" ------------------------------------------------------------------------
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_completion_detail = 1               " show method signature
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:tsuquyomi_use_dev_node_module=2
let g:tsuquyomi_tsserver_path='/usr/local/bin/tsserver'
" ------------------------------------------------------------------------

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
set wildignore+=*/node_modules/*,/*bower_components/*,/*jspm_packages/*,/*platforms/*,*/vendor/*,*/dist/*,*.so,*.swp,*.zip,*~


" ------------------------------------------------------------------------
"  Autoformat settings
" ------------------------------------------------------------------------
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" ------------------------------------------------------------------------
"  You Complete Me
" ------------------------------------------------------------------------
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
let g:nodejs_complete_config = { 'max_node_compl_len': 5 }

"let g:ycm_min_num_of_chars_for_completion=5
let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" ------------------------------------------------------------------------
" TernJS mappings 
" ------------------------------------------------------------------------
imap <C-r> :TernRefs<CR>
nmap <C-r> :TernRefs<CR>
