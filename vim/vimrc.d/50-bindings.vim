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

" no stretching for brackets and shit
imap <C-h> (
imap <C-j> {
imap <C-k> [
imap <C-l> <
inoremap <C-d> =
inoremap <C-f> _
inoremap <C-g> =>

" quickly open vim config
noremap <silent> <leader>ea :edit $DOTFILES/vim/vimrc.d/50-autocmd.vim<CR>
noremap <silent> <leader>eb :edit $DOTFILES/vim/vimrc.d/50-bindings.vim<CR>
noremap <silent> <leader>ec :edit $DOTFILES/vim/vimrc.d/30-config.vim<CR>
noremap <silent> <leader>ef :edit $DOTFILES/vim/vimrc.d/20-functions.vim<CR>
noremap <silent> <leader>em :edit $DOTFILES/vim/vimrc.d/90-commands.vim<CR>
noremap <silent> <leader>ep :edit $DOTFILES/vim/vimrc.d/35-pluginconfig.vim<CR>
noremap <silent> <leader>eu :edit $DOTFILES/vim/vimrc.d/10-bundle.vim<CR>

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
