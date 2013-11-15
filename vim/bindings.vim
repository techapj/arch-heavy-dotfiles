" lead with spacebar
let mapleader = " "

" use escape to enter insert mode, allowing us to use it to toggle insert mode
nnoremap <ESC> i

" fast save with return
nnoremap <expr><silent> <CR> empty(expand("%")) ? "<CR>" : ":write<CR>"

" close every inactive buffer
nnoremap <silent> <C-k> :Bfocus<CR>

" close the active buffer
nnoremap <silent> K :Bdelete<CR>

" fast redo - since we use escape to enter insert mode, the key
" next to undo is free

" navigate through paragraphs by visual line instead of literal line
nnoremap j gj
nnoremap k gk

" buffer nav
nnoremap <silent> , :<C-U>execute v:count . "bprevious"<CR>
nnoremap <silent> . :<C-U>execute v:count . "bnext"<CR>

" vis the previously entered text
nnoremap gV `[v`]

" toggle quickfix with support for dispatch
nnoremap <silent> Q :ToggleQuickfix<CR>

" this is my tmux prefix, so unbind it for purity
map <C-a> <nop>

" replace overwritten binds
nnoremap <leader>- <C-x>
nnoremap <leader>= <C-a>

" quickly open tags
nnoremap tt <C-]>

" switch between alternate files and recent buffers
nnoremap zz <C-^>
nnoremap ZZ :A<CR>

" make Y consistent with D and C
noremap Y y$

" quick sort
noremap gs :sort<CR>

" open and close folds
nnoremap ff za

" focus a fold
nnoremap FF mzzMzvzz`z

" quickly open vim config
noremap <silent> <leader>ea :edit $DOTFILES/vim/autocmd.vim<CR>
noremap <silent> <leader>eb :edit $DOTFILES/vim/bindings.vim<CR>
noremap <silent> <leader>ec :edit $DOTFILES/vim/config.vim<CR>
noremap <silent> <leader>ef :edit $DOTFILES/vim/functions.vim<CR>
noremap <silent> <leader>em :edit $DOTFILES/vim/commands.vim<CR>
noremap <silent> <leader>ep :edit $DOTFILES/vim/plugin_config.vim<CR>
noremap <silent> <leader>eu :edit $DOTFILES/vim/neobundle.vim<CR>

" grepping
nnoremap \\ :Ggrep ""<left>
nnoremap \w :execute "Ggrep '" . expand("<cword>") . "'"<CR>
nnoremap \s :execute "Ggrep '" . substitute(getreg('/'), '\(\\<\|\\>\)','\\b','g') . "'"<CR>

" ctrlp
nnoremap <silent> <S-Tab> :CtrlPTag<CR>
nnoremap <silent> <Tab> :CtrlP<CR>

" make shift tab work
map <Esc>[Z <S-Tab>
ounmap <ESC>[Z

" fugitive
nnoremap <silent> <leader>ga :Git add .<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Gcommit -v<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push-all<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>

" gundo
nnoremap <silent> U :GundoToggle<CR>

" splitjoin
nnoremap <silent> gj :SplitjoinJoin<CR>
nnoremap <silent> gk :SplitjoinSplit<CR>

" dispatch
nnoremap <leader>d :Dispatch<space>
nnoremap <leader>D :Dispatch!<space>

" neocomplete
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <silent> <CR> <C-r>=NeoCompleteIt()<CR>
snoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"

" neosnippet
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" :
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" :
      \ "\<TAB>"
