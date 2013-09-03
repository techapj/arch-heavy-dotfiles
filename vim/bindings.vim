" lead with spacebar
let mapleader = " "

" toggle insert mode with ✓ or F8, which is what i've rebound
" caps lock to on my two computers
inoremap ✓ <ESC>
noremap ✓ <ESC>
nnoremap ✓ i
inoremap <F8> <ESC>
noremap <F8> <ESC>
nnoremap <F8> i

" fast save and exit
map <silent> <CR> :write<CR>
map <silent> vv :Bdelete<CR>
nnoremap cc <C-w>q

" fast redo
nnoremap i <C-r>

" navigate through paragraphs intelligently
nnoremap j gj
nnoremap k gk

" shift navigates between buffers
nmap <silent> <C-j> :<C-U>execute v:count . "bnext"<CR>
nmap <silent> <C-k> :<C-U>execute v:count . "bprevious"<CR>

" quickly open tags -- combine with zz to go back
nnoremap tt <C-]>

" switch between alternate files
nnoremap zz <C-^>

" make Y consistent with D and C
noremap Y y$

" quick sort
map <silent> gs :sort<CR>

" open and close folds
nnoremap ff za

" this bind is way too good to use on something so lousy
nnoremap K <C-w>

" quickly open vim config
noremap <silent> <leader>ea :edit $DOTFILES/vim/autocmd.vim<CR>
noremap <silent> <leader>eb :edit $DOTFILES/vim/bindings.vim<CR>
noremap <silent> <leader>ec :edit $DOTFILES/vim/config.vim<CR>
noremap <silent> <leader>ee :edit $DOTFILES/vim<CR>
noremap <silent> <leader>ef :edit $DOTFILES/vim/functions.vim<CR>
noremap <silent> <leader>el :edit $HOME/.vimrc.local<CR>
noremap <silent> <leader>em :edit $DOTFILES/vim/commands.vim<CR>
noremap <silent> <leader>ep :edit $DOTFILES/vim/plugin_config.vim<CR>
noremap <silent> <leader>eu :edit $DOTFILES/vim/bundle.vim<CR>

" ctrlp
nnoremap <silent> <Tab> :CtrlP<CR>
nnoremap <silent> <S-Tab> :CtrlPTag<CR>

" fugitive
nmap <silent> <leader>ga :Git add .<CR>
nmap <silent> <leader>gb :Gblame<CR>
nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gd :Gdiff<CR>
nmap <silent> <leader>gp :Git push-all<CR>
nmap <silent> <leader>gs :Gstatus<CR>
nmap <silent> <leader>gu :Git pull<CR>

" git-grep.vim
noremap gr :GitGrep |" this comment is just to get rid of the trailing warning

" splitjoin
nnoremap <silent> <leader>sj :SplitjoinJoin<CR>
nnoremap <silent> <leader>ss :SplitjoinSplit<CR>

" gundo
nnoremap <silent> UU :GundoToggle<CR>

" neocomplete
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<TAB>"

function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"
