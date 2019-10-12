inoremap jj <ESC>
let mapleader = " "

let g:emmet_syntaxProfiles={"javascript":"html"}
  "emmet.syntaxProfiles": {"javascript":"html","javascript":"jsx"}
set laststatus=2
set number relativenumber
set cursorline

" set list
" set listchars=eol:,tab:>-

set autowrite

" Tab Settings
set shiftwidth=2
set tabstop=2
" set softtabstop=2
set expandtab
" set smarttab

" Search Settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Undo Settings
set undofile
set undodir=/tmp
set backupdir=/tmp

" Column Width Settings
set colorcolumn=80
set textwidth=80
set formatoptions=clqn1j

" Set the split directions more natually
set splitbelow
set splitright

" Set the file tab completion in command line
set wildmenu
set wildmode=list:longest,full

""#######################
"#   Vim Plug Config   #
"#######################
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

"######################
"#     Ale Config     #
"######################
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_linters = {'javascript':['eslint']}
let g:ale_linters_explicit = 1
let g:ale_fixers = { 'javascript':['eslint'],'html':['prettier'],'json':['prettier'],'python':['autopep8'] }
let g:ale_fix_on_save = 1
let g:ale_javascript_eslint_executable='npx eslint'
highlight ALEError ctermbg=none cterm=underline ctermfg=red

"######################
"#     fzf Config     #
"######################
nnoremap <Leader>s :Files<CR>

"######################
"#     coc Config     #
"######################

inoremap <silent><expr> <TAB>
   \ pumvisible() ? "\<C-n>" :
   \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()

 function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

let g:coc_snippet_next = '<tab>'

inoremap <expr><cr> pumvisible() ? "\<C-y>": "\<C-g>u\<CR>"

"######################
"#   Molokai Config   #
"######################
let g:molokai_original = 1
colorscheme molokai

"######################
"#   AutoPair Config  #
"######################
let g:AutoPairsMapSpace = 1

"######################
"#    NerdCommenter   #
"######################
let g:NERDSpaceDelims=1

"######################
"#  VimAirline Config #
"######################
let g:airline_powerline_fonts = 1

"######################
"#  VimFugitive Config #
"######################
nnoremap <leader>g :Gstatus<cr>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gc :Gcommit<cr>

"######################
"#     Keybindings    #
"######################
cmap Wq wq
nnoremap j gj
nnoremap k gk

"######################
"#   Leader bindings  #
"######################
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>f :NERDTreeToggle<cr>
" Bindings for switching vim panes
nnoremap <leader>l <C-W><C-l>
nnoremap <leader>h <C-W><C-h>
nnoremap <leader>j <C-W><C-j>
nnoremap <leader>k <C-W><C-k>

