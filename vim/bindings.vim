" lead with spacebar
let mapleader = " "

" use escape to enter insert mode, allowing us to use it to toggle insert mode
nnoremap <ESC> i

" fast save with return
nnoremap <expr><silent> <CR> empty(expand("%")) ? "<CR>" : ":write<CR>"

" close a window with C-w
nnoremap <silent> <C-w> :q<CR>

" force quit with leader
nnoremap <silent> <leader><C-w> :q!<CR> 

" close every inactive buffer
nnoremap <silent> <leader>k :DeleteAllOtherBuffers<CR>

" close the active buffer
nnoremap <silent> K :Bdelete<CR>

" fast redo - since we use escape to enter insert mode, the key
" next to undo is free
nnoremap i <C-r>

" navigate through paragraphs by visual line instead of literal line
nnoremap j gj
nnoremap k gk

" vis the previously entered text
nnoremap gV `[v`]

" open splits with C-t and C-g
nnoremap <silent> <C-t> :vsplit<CR>
nnoremap <silent> <C-g> :split<CR>

" toggle quickfix with support for dispatch
nnoremap <silent> Q :ToggleQuickfix<CR>

" this is my tmux prefix, so unbind it for purity
map <C-a> <nop>

" replace overwritten binds
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <leader>w <C-w>
nnoremap <leader>l <C-l>

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
nnoremap \w :GrepFromWord<CR>
nnoremap \s :GrepFromSearch<CR>

" ctrlp
nnoremap <silent> <S-Tab> :CtrlPTag<CR>
nnoremap <silent> <Tab> :CtrlP<CR>

" make shift tab work
map <Esc>[Z <S-Tab>
ounmap <ESC>[Z

" indent text object
onoremap <silent>ai :<C-U>cal IndentTextObj(0)<CR>
onoremap <silent>ii :<C-U>cal IndentTextObj(1)<CR>
vnoremap <silent>ai :<C-U>cal IndentTextObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>cal IndentTextObj(1)<CR><Esc>gv

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
