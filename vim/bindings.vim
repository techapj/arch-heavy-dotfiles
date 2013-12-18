" lead with spacebar
let mapleader = " "

" use escape to enter insert mode, allowing us to use it to toggle insert mode
nnoremap <ESC> i

" fast save with return
nnoremap <expr><silent> <CR> empty(expand("%")) ? "<CR>" : ":write<CR>"

" close every inactive buffer
nnoremap <silent> <C-k> :Bfocus<CR>

" close the active buffer
nnoremap <silent> K :bdelete<CR>

" navigate through paragraphs by visual line instead of literal line
nnoremap j gj
nnoremap k gk

" buffer nav
nnoremap <silent> ( :<C-U>execute v:count . "bprevious"<CR>
nnoremap <silent> ) :<C-U>execute v:count . "bnext"<CR>

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
nnoremap <C-t> <C-]>

" switch between alternate files and recent buffers
nnoremap zz <C-^>
nnoremap ZZ :A<CR>

" make Y consistent with D and C
noremap Y y$

" quick sort
noremap gs :sort<CR>

" open and close folds
nnoremap <leader><leader> za

" bracket binds inspired by unimpaired
nnoremap <silent> [<space> O<ESC>
nnoremap <silent> [q :cprev<CR>
nnoremap <silent> ]<space> o<ESC>
nnoremap <silent> ]q :cnext<CR>

" quickly open vim config
noremap <silent> <leader>ea :edit $DOTFILES/vim/autocmd.vim<CR>
noremap <silent> <leader>eb :edit $DOTFILES/vim/bindings.vim<CR>
noremap <silent> <leader>ec :edit $DOTFILES/vim/config.vim<CR>
noremap <silent> <leader>ef :edit $DOTFILES/vim/functions.vim<CR>
noremap <silent> <leader>en :edit $DOTFILES/vim/neobundle.vim<CR>
noremap <silent> <leader>eo :edit $DOTFILES/vim/colours.vim<CR>
noremap <silent> <leader>ep :edit $DOTFILES/vim/plugin_config.vim<CR>
noremap <silent> <leader>es :edit $DOTFILES/vim/statusline.vim<CR>

" grepping
nnoremap <Tab><Tab> :Ggrep -- ""<left>
nnoremap <Tab>/ :execute "Ggrep '" . substitute(getreg('/'), '\(\\<\|\\>\)','\\b','g') . "'"<CR>

" dmenu
nnoremap <silent> S :Dmenu<CR>

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
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent> <CR> <C-r>=NeoCompleteIt()<CR>
snoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
