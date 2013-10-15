" lead with spacebar
let mapleader = " "

" does this work
nnoremap <ESC> i

" fast save and exit
nnoremap <expr><silent> <CR> empty(expand("%")) ? "<CR>" : ":write<CR>"
nnoremap <silent> <C-w> :q<CR>
nnoremap <silent> <leader><C-x> :q!<CR>
nnoremap <silent> <leader>k :DeleteAllOtherBuffers<CR>
nnoremap <silent> K :Bdelete!<CR>

" fast redo
nnoremap U <C-r>

" navigate through paragraphs intelligently
nnoremap j gj
nnoremap k gk

" vis the previously entered text
nnoremap gV `[v`]

" splits
nnoremap <silent> <C-t> :vsplit<CR>
nnoremap <silent> <C-g> :split<CR>

" this is my tmux prefix, so unbind it for purity
map <C-a> <nop>

" replace overwritten binds
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <leader>w <C-w>
nnoremap <leader>l <C-l>

" quickly open tags
nnoremap tt <C-]>

" switch between alternate files
nnoremap zz :A<CR>

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
noremap <silent> <leader>eu :edit $DOTFILES/vim/bundle.vim<CR>

" grepping
nnoremap \\ :FuckinGrep<space>
nnoremap \w :GrepFromWord<CR>
nnoremap \s :GrepFromSearch<CR>

" ctrlp
nnoremap <silent> <S-Tab> :CtrlPTag<CR>
nnoremap <silent> <Tab> :CtrlP<CR>

" fugitive
nnoremap <silent> <leader>ga :Git add .<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Gcommit -v<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push-all<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>

" gundo
nnoremap <silent> <C-u> :GundoToggle<CR>

" splitjoin
nnoremap <silent> gj :SplitjoinJoin<CR>
nnoremap <silent> gk :SplitjoinSplit<CR>

" neocomplete
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<TAB>"
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
snoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<TAB>"
snoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<TAB>"

function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction
