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
noremap <expr><silent> <CR> empty(expand("%")) ? "<CR>" : ":write<CR>"
nnoremap <silent> VV :Bdelete!<CR>
nnoremap <silent> vv :Bdelete<CR>
nnoremap cc <C-w>q

" fast redo
nnoremap U <C-r>

" navigate through paragraphs intelligently
nnoremap j gj
nnoremap k gk

" tab navigates between buffers
nnoremap <silent> <Tab> :<C-U>execute v:count . "bnext"<CR>
nnoremap <silent> <S-Tab> :<C-U>execute v:count . "bprevious"<CR>

" ctrl between splits
nnoremap <C-j> <C-w>w
nnoremap <C-k> <C-w>W

" vis the previously entered text
nnoremap gV `[v`]

" quickly open tags
nnoremap tt <C-]>

" switch between alternate files
nmap zz :A<CR>

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
noremap <silent> <leader>ee :edit $DOTFILES/vim<CR>
noremap <silent> <leader>ef :edit $DOTFILES/vim/functions.vim<CR>
noremap <silent> <leader>el :edit $HOME/.vimrc.local<CR>
noremap <silent> <leader>em :edit $DOTFILES/vim/commands.vim<CR>
noremap <silent> <leader>ep :edit $DOTFILES/vim/plugin_config.vim<CR>
noremap <silent> <leader>eu :edit $DOTFILES/vim/bundle.vim<CR>

" quickfix
nnoremap <silent> Q :QFix<CR>

" ctrlp
nnoremap <silent> <leader><leader> :CtrlP<CR>

" fugitive
nnoremap <silent> <leader>ga :Git add .<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push-all<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gu :Git reup<CR>

" git-grep.vim
noremap <leader>gg :GitGrep<space>

" splitjoin
nnoremap <silent> <leader>sj :SplitjoinJoin<CR>
nnoremap <silent> <leader>ss :SplitjoinSplit<CR>

" gundo
nnoremap <silent> <C-u> :GundoToggle<CR>

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
