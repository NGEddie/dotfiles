"#######################
"#   Vim Plug Config   #
"#######################
call plug#begin('~/.config/nvim/plugged')

Plug 'dikiaap/minimalist'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'
Plug 'https://github.com/xabikos/vscode-javascript'

call plug#end()

inoremap jj <ESC>
let mapleader = " "

set laststatus=2
set number relativenumber
set cursorline
set t_Co=256
syntax on
 colorscheme minimalist

set hidden
set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Tab Settings
set shiftwidth=2
set tabstop=2
set expandtab

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

"######################
"#     coc Config     #
"######################
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <cr>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-python', 'coc-snippets', 'coc-lists', 'coc-highlight', 'coc-prettier', 'coc-eslint', 'coc-pairs']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-type-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >=0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)
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
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

"######################
"#  VimFugitive Config #
"######################
" nnoremap <leader>g :Gstatus<cr>
" nnoremap <leader>ga :Gwrite<cr>
" nnoremap <leader>gr :Gread<cr>
" nnoremap <leader>gc :Gcommit<cr>

"######################
"#     Keybindings    #
"######################
cmap Q<cr> q<cr>
cmap Wq<cr> wq<cr>
cmap W<cr> w<cr>
nnoremap j gj
nnoremap k gk

"#######################
"#   Buffer Bindings   #
"#######################
nnoremap <leader>b :ls<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>

"######################
"#   Leader bindings  #
"######################
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>f :NERDTreeToggle<cr>

"######################################
"#   Bindings for switching vim pane  #
"######################################
nnoremap <leader>l <C-W><C-l>
nnoremap <leader>h <C-W><C-h>
nnoremap <leader>j <C-W><C-j>
nnoremap <leader>k <C-W><C-k>

"####################
"#   FZF bindings   #
"####################
nnoremap <leader>sf :Files<cr>
nnoremap <leader>sg :GFiles<cr>
nnoremap <leader>sl :Locate
nnoremap <leader>sh :History<cr>

"######################
"#   Coding bindings  #
"######################
nnoremap <leader>ee :lope<cr>
nnoremap <leader>e<cr> :lope<cr>

"#######################
"#  Terminal bindings  #
"#######################
nnoremap <leader>t :botright 10sp<cr>:term<cr>i
nnoremap <leader>tv :botright 50vsp<cr>:term<cr>i
nnoremap <leader>tb :rightbelow sp<cr>:term<cr>i
nnoremap <leader>tr :vert sp<cr>:term<cr>i

tnoremap jj <C-\><C-n>
" autocmd FileType js UltiSnipsAddFiletypes javascript-es6
