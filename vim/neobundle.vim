if !isdirectory($HOME . '/.vim/bundle/neobundle.vim')
  silent! !mkdir -p $HOME/.vim/bundle/neobundle.vim
  silent! !git clone https://github.com/Shougo/neobundle.vim.git $HOME/.vim/bundle/neobundle.vim
endif

set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'devlinzed/automkdir'
NeoBundle 'devlinzed/bfln'
NeoBundle 'devlinzed/grep_operator'
NeoBundle 'devlinzed/vim-dispatch-rspec'
NeoBundle 'devlinzed/vim-dmenu'
NeoBundle 'devlinzed/vim-repeat'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-surround'
NeoBundle 'ujihisa/neco-look'
NeoBundle 'vim-ruby/vim-ruby'

NeoBundle 'Shougo/vimproc', {
      \ 'build': {
      \     'cygwin': 'make -f make_cygwin.mak',
      \     'mac': 'make -f make_mac.mak',
      \     'unix': 'make -f make_unix.mak',
      \     'windows': 'make -f make_mingw32.mak',
      \    },
      \ }

NeoBundleLazy 'AndrewRadev/splitjoin.vim', {
      \ 'autoload': {
      \   'commands': ['SplitjoinSplit', 'SplitjoinJoin'],
      \   },
      \ }

NeoBundleLazy 'devlinzed/toggle_quickfix', {
      \ 'autoload': {
      \   'commands': ['ToggleQuickfix'],
      \   },
      \ }

NeoBundleLazy 'devlinzed/vim-focus', {
      \ 'autoload': {
      \   'commands': ['Bfocus', 'Bf'],
      \   },
      \ }

NeoBundleLazy 'sjl/gundo.vim', {
      \ 'autoload': {
      \   'commands': ['GundoToggle'],
      \   },
      \ }

NeoBundleLazy 'tpope/vim-dispatch', {
      \ 'autoload': {
      \   'commands': ['Dispatch'],
      \   },
      \ }

if filereadable($HOME . '/.vimrc.local')
  source $HOME/.vimrc.local
endif

NeoBundleCheck
