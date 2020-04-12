let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <BS> coc#_insert_key('request', '7fcafb3b-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', 'insert')
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <silent> <expr> <C-Space> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
xmap <silent>  s :StripWhitespace
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
nmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
nnoremap  tr :vert sp:termi
nnoremap  tb :rightbelow sp:termi
nnoremap  tv :botright 50vsp:termi
nnoremap  t :botright 10sp:termi
nnoremap  e :lope
nnoremap  ee :lope
nnoremap  sh :History
nnoremap  sl :Locate
nnoremap  sg :GFiles
nnoremap  sf :Files
nnoremap  k 
nnoremap  j <NL>
nnoremap  h 
nnoremap  l 
nnoremap  f :NERDTreeToggle
nnoremap    :nohlsearch
nnoremap  bd :bd
nnoremap  bp :bp
nnoremap  bn :bn
nnoremap  b :ls
nmap  rn <Plug>(coc-rename)
xmap S <Plug>VSurround
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap <silent> gr <Plug>(coc-type-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
tnoremap jj 
nnoremap j gj
nnoremap k gk
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <Plug>(-fzf-:) :
nnoremap <Plug>(-fzf-/) /
nnoremap <Plug>(-fzf-vim-do) :execute g:__fzf_command
vnoremap <silent> <Plug>(coc-explorer-action-v->>) :call coc#rpc#request('doKeymap', ['explorer-action-v->>'])
nnoremap <silent> <Plug>(coc-explorer-action-n->>) :call coc#rpc#request('doKeymap', ['explorer-action-n->>'])
vnoremap <silent> <Plug>(coc-explorer-action-v-<<) :call coc#rpc#request('doKeymap', ['explorer-action-v-<<'])
nnoremap <silent> <Plug>(coc-explorer-action-n-<<) :call coc#rpc#request('doKeymap', ['explorer-action-n-<<'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]c) :call coc#rpc#request('doKeymap', ['explorer-action-v-]c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]c) :call coc#rpc#request('doKeymap', ['explorer-action-n-]c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[c) :call coc#rpc#request('doKeymap', ['explorer-action-v-[c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[c) :call coc#rpc#request('doKeymap', ['explorer-action-n-[c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]d) :call coc#rpc#request('doKeymap', ['explorer-action-v-]d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]d) :call coc#rpc#request('doKeymap', ['explorer-action-n-]d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[d) :call coc#rpc#request('doKeymap', ['explorer-action-v-[d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[d) :call coc#rpc#request('doKeymap', ['explorer-action-n-[d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]]) :call coc#rpc#request('doKeymap', ['explorer-action-v-]]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]]) :call coc#rpc#request('doKeymap', ['explorer-action-n-]]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[[) :call coc#rpc#request('doKeymap', ['explorer-action-v-[['])
nnoremap <silent> <Plug>(coc-explorer-action-n-[[) :call coc#rpc#request('doKeymap', ['explorer-action-n-[['])
vnoremap <silent> <Plug>(coc-explorer-action-v-gb) :call coc#rpc#request('doKeymap', ['explorer-action-v-gb'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gb) :call coc#rpc#request('doKeymap', ['explorer-action-n-gb'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gf) :call coc#rpc#request('doKeymap', ['explorer-action-v-gf'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gf) :call coc#rpc#request('doKeymap', ['explorer-action-n-gf'])
vnoremap <silent> <Plug>(coc-explorer-action-v-F) :call coc#rpc#request('doKeymap', ['explorer-action-v-F'])
nnoremap <silent> <Plug>(coc-explorer-action-n-F) :call coc#rpc#request('doKeymap', ['explorer-action-n-F'])
vnoremap <silent> <Plug>(coc-explorer-action-v-f) :call coc#rpc#request('doKeymap', ['explorer-action-v-f'])
nnoremap <silent> <Plug>(coc-explorer-action-n-f) :call coc#rpc#request('doKeymap', ['explorer-action-n-f'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gd) :call coc#rpc#request('doKeymap', ['explorer-action-v-gd'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gd) :call coc#rpc#request('doKeymap', ['explorer-action-n-gd'])
vnoremap <silent> <Plug>(coc-explorer-action-v-X) :call coc#rpc#request('doKeymap', ['explorer-action-v-X'])
nnoremap <silent> <Plug>(coc-explorer-action-n-X) :call coc#rpc#request('doKeymap', ['explorer-action-n-X'])
vnoremap <silent> <Plug>(coc-explorer-action-v-q) :call coc#rpc#request('doKeymap', ['explorer-action-v-q'])
nnoremap <silent> <Plug>(coc-explorer-action-n-q) :call coc#rpc#request('doKeymap', ['explorer-action-n-q'])
vnoremap <silent> <Plug>(coc-explorer-action-v-?) :call coc#rpc#request('doKeymap', ['explorer-action-v-?'])
nnoremap <silent> <Plug>(coc-explorer-action-n-?) :call coc#rpc#request('doKeymap', ['explorer-action-n-?'])
vnoremap <silent> <Plug>(coc-explorer-action-v-R) :call coc#rpc#request('doKeymap', ['explorer-action-v-R'])
nnoremap <silent> <Plug>(coc-explorer-action-n-R) :call coc#rpc#request('doKeymap', ['explorer-action-n-R'])
vnoremap <silent> <Plug>(coc-explorer-action-v-.) :call coc#rpc#request('doKeymap', ['explorer-action-v-.'])
nnoremap <silent> <Plug>(coc-explorer-action-n-.) :call coc#rpc#request('doKeymap', ['explorer-action-n-.'])
vnoremap <silent> <Plug>(coc-explorer-action-v-r) :call coc#rpc#request('doKeymap', ['explorer-action-v-r'])
nnoremap <silent> <Plug>(coc-explorer-action-n-r) :call coc#rpc#request('doKeymap', ['explorer-action-n-r'])
vnoremap <silent> <Plug>(coc-explorer-action-v-A) :call coc#rpc#request('doKeymap', ['explorer-action-v-A'])
nnoremap <silent> <Plug>(coc-explorer-action-n-A) :call coc#rpc#request('doKeymap', ['explorer-action-n-A'])
vnoremap <silent> <Plug>(coc-explorer-action-v-a) :call coc#rpc#request('doKeymap', ['explorer-action-v-a'])
nnoremap <silent> <Plug>(coc-explorer-action-n-a) :call coc#rpc#request('doKeymap', ['explorer-action-n-a'])
vnoremap <silent> <Plug>(coc-explorer-action-v-D) :call coc#rpc#request('doKeymap', ['explorer-action-v-D'])
nnoremap <silent> <Plug>(coc-explorer-action-n-D) :call coc#rpc#request('doKeymap', ['explorer-action-n-D'])
vnoremap <silent> <Plug>(coc-explorer-action-v-d) :call coc#rpc#request('doKeymap', ['explorer-action-v-d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-d) :call coc#rpc#request('doKeymap', ['explorer-action-n-d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-p) :call coc#rpc#request('doKeymap', ['explorer-action-v-p'])
nnoremap <silent> <Plug>(coc-explorer-action-n-p) :call coc#rpc#request('doKeymap', ['explorer-action-n-p'])
vnoremap <silent> <Plug>(coc-explorer-action-v-x) :call coc#rpc#request('doKeymap', ['explorer-action-v-x'])
nnoremap <silent> <Plug>(coc-explorer-action-n-x) :call coc#rpc#request('doKeymap', ['explorer-action-n-x'])
vnoremap <silent> <Plug>(coc-explorer-action-v-c) :call coc#rpc#request('doKeymap', ['explorer-action-v-c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-c) :call coc#rpc#request('doKeymap', ['explorer-action-n-c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-Y) :call coc#rpc#request('doKeymap', ['explorer-action-v-Y'])
nnoremap <silent> <Plug>(coc-explorer-action-n-Y) :call coc#rpc#request('doKeymap', ['explorer-action-n-Y'])
vnoremap <silent> <Plug>(coc-explorer-action-v-y) :call coc#rpc#request('doKeymap', ['explorer-action-v-y'])
nnoremap <silent> <Plug>(coc-explorer-action-n-y) :call coc#rpc#request('doKeymap', ['explorer-action-n-y'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gp) :call coc#rpc#request('doKeymap', ['explorer-action-v-gp'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gp) :call coc#rpc#request('doKeymap', ['explorer-action-n-gp'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[bs]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[bs]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[bs]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[bs]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-t) :call coc#rpc#request('doKeymap', ['explorer-action-v-t'])
nnoremap <silent> <Plug>(coc-explorer-action-n-t) :call coc#rpc#request('doKeymap', ['explorer-action-n-t'])
vnoremap <silent> <Plug>(coc-explorer-action-v-E) :call coc#rpc#request('doKeymap', ['explorer-action-v-E'])
nnoremap <silent> <Plug>(coc-explorer-action-n-E) :call coc#rpc#request('doKeymap', ['explorer-action-n-E'])
vnoremap <silent> <Plug>(coc-explorer-action-v-s) :call coc#rpc#request('doKeymap', ['explorer-action-v-s'])
nnoremap <silent> <Plug>(coc-explorer-action-n-s) :call coc#rpc#request('doKeymap', ['explorer-action-n-s'])
vnoremap <silent> <Plug>(coc-explorer-action-v-e) :call coc#rpc#request('doKeymap', ['explorer-action-v-e'])
nnoremap <silent> <Plug>(coc-explorer-action-n-e) :call coc#rpc#request('doKeymap', ['explorer-action-n-e'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[cr]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[cr]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-o) :call coc#rpc#request('doKeymap', ['explorer-action-n-o'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[2-LeftMouse]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[2-LeftMouse]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gh) :call coc#rpc#request('doKeymap', ['explorer-action-v-gh'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gh) :call coc#rpc#request('doKeymap', ['explorer-action-n-gh'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gl) :call coc#rpc#request('doKeymap', ['explorer-action-v-gl'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gl) :call coc#rpc#request('doKeymap', ['explorer-action-n-gl'])
vnoremap <silent> <Plug>(coc-explorer-action-v-K) :call coc#rpc#request('doKeymap', ['explorer-action-v-K'])
nnoremap <silent> <Plug>(coc-explorer-action-n-K) :call coc#rpc#request('doKeymap', ['explorer-action-n-K'])
vnoremap <silent> <Plug>(coc-explorer-action-v-J) :call coc#rpc#request('doKeymap', ['explorer-action-v-J'])
nnoremap <silent> <Plug>(coc-explorer-action-n-J) :call coc#rpc#request('doKeymap', ['explorer-action-n-J'])
vnoremap <silent> <Plug>(coc-explorer-action-v-l) :call coc#rpc#request('doKeymap', ['explorer-action-v-l'])
nnoremap <silent> <Plug>(coc-explorer-action-n-l) :call coc#rpc#request('doKeymap', ['explorer-action-n-l'])
vnoremap <silent> <Plug>(coc-explorer-action-v-h) :call coc#rpc#request('doKeymap', ['explorer-action-v-h'])
nnoremap <silent> <Plug>(coc-explorer-action-n-h) :call coc#rpc#request('doKeymap', ['explorer-action-n-h'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gj) :call coc#rpc#request('doKeymap', ['explorer-action-v-gj'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gj) :call coc#rpc#request('doKeymap', ['explorer-action-n-gj'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gk) :call coc#rpc#request('doKeymap', ['explorer-action-v-gk'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gk) :call coc#rpc#request('doKeymap', ['explorer-action-n-gk'])
nnoremap <silent> <Plug>(coc-explorer-action-n-j) :call coc#rpc#request('doKeymap', ['explorer-action-n-j'])
nnoremap <silent> <Plug>(coc-explorer-action-n-k) :call coc#rpc#request('doKeymap', ['explorer-action-n-k'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[tab]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[tab]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[tab]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[tab]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-*) :call coc#rpc#request('doKeymap', ['explorer-action-v-*'])
nnoremap <silent> <Plug>(coc-explorer-action-n-*) :call coc#rpc#request('doKeymap', ['explorer-action-n-*'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
nnoremap <SNR>92_: :=v:count ? v:count : ''
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, ''])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, ''])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, visualmode()])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, visualmode()])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocAction('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocAction('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocAction('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocAction('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocAction('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backward) :call       CocAction('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     visualmode(), v:true)
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  complete_info()["selected"] != "-1" ? "\" : "\u\"
imap  <Plug>Isurround
inoremap <silent> <expr> " coc#_insert_key('request', '7fcafb39-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> ' coc#_insert_key('request', '7fcafb38-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> ( coc#_insert_key('request', '7fcafb30-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> ) coc#_insert_key('request', '7fcafb31-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> < coc#_insert_key('request', '7fcafb36-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> > coc#_insert_key('request', '7fcafb37-7d0c-11ea-8bf0-09462891f3c6')
cmap Q q
cmap W w
cmap Wq wq
inoremap <silent> <expr> [ coc#_insert_key('request', '7fcafb32-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> ] coc#_insert_key('request', '7fcafb33-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> ` coc#_insert_key('request', '7fcafb3a-7d0c-11ea-8bf0-09462891f3c6')
inoremap jj 
inoremap <silent> <expr> { coc#_insert_key('request', '7fcafb34-7d0c-11ea-8bf0-09462891f3c6')
inoremap <silent> <expr> } coc#_insert_key('request', '7fcafb35-7d0c-11ea-8bf0-09462891f3c6')
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backupdir=/tmp
set cmdheight=2
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=clqn1j
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set pyxversion=3
set ruler
set runtimepath=~/.config/coc/extensions/node_modules/coc-explorer,~/.vim,~/.config/nvim/plugged/minimalist,~/.config/nvim/plugged/gruvbox,~/.config/nvim/plugged/molokai,~/.config/nvim/plugged/coc.nvim,~/fzf,~/.config/nvim/plugged/fzf.vim,~/.config/nvim/plugged/nerdtree,~/.config/nvim/plugged/nerdcommenter,~/.config/nvim/plugged/vim-fugitive,~/.config/nvim/plugged/vim-surround,~/.config/nvim/plugged/vim-airline,~/.config/nvim/plugged/vim-airline-themes,~/.config/nvim/plugged/vim-snippets,~/.config/nvim/plugged/vim-highlightedyank,~/.config/nvim/plugged/vim-better-whitespace,~/.config/nvim/plugged/vscode-javascript,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/after,~/.config/coc/extensions/node_modules/coc-snippets
set shiftwidth=2
set shortmess=filnxtToOSc
set showtabline=2
set smartcase
set splitbelow
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set textwidth=80
set undodir=/tmp
set undofile
set updatetime=300
set wildmenu
set wildmode=list:longest,full
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/repos/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=clqn1j
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
