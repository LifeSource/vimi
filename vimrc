execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" General settings
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme lifesource

" --------------------------------------------------------------
" Plugin specific settings
" --------------------------------------------------------------
" NerdTree settings
let NERDTReeShowHidden = 1
let g:NERDTREEWinPos="left"
" NerdTree key bindings
map <C-n> :NERDTreeToggle<CR>

" --------------------------------------------------------------
