" lead with spacebar
let mapleader = " "

" does this work
nnoremap <ESC> i

" fast save and exit
nnoremap <expr><silent> <CR> empty(expand("%")) ? "<CR>" : ":write<CR>"
nnoremap <silent> <C-x> :q<CR>
nnoremap <silent> <leader><C-x> :q!<CR>
nnoremap <silent> <leader>K :DeleteAllOtherBuffers<CR>
nnoremap <silent> K :Bdelete!<CR>

" fast redo
nnoremap U <C-r>

" navigate through paragraphs intelligently
nnoremap j gj
nnoremap k gk

" vis the previously entered text
nnoremap gV `[v`]

" splits
nnoremap <C-n> <C-w><C-v>
nnoremap <C-b> <C-w><C-s>

" this is my tmux prefix, so unbind it for purity
map <C-a> <nop>

" replace those ops
nnoremap + <C-a>
nnoremap - <C-x>

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
noremap <silent> <leader>ea :edit $HOME/.vim/config/autocmd.vim<CR>
noremap <silent> <leader>eb :edit $HOME/.vim/config/bindings.vim<CR>
noremap <silent> <leader>ec :edit $HOME/.vim/config/config.vim<CR>
noremap <silent> <leader>ef :edit $HOME/.vim/config/functions.vim<CR>
noremap <silent> <leader>em :edit $HOME/.vim/config/commands.vim<CR>
noremap <silent> <leader>ep :edit $HOME/.vim/config/plugin_config.vim<CR>
noremap <silent> <leader>eu :edit $HOME/.vim/config/bundle.vim<CR>

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
