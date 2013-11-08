if !isdirectory($HOME . '/.vim/bundle/neobundle.vim')
  silent! !mkdir -p $HOME/.vim/bundle/neobundle.vim
  silent! !git clone git@github.com:Shougo/neobundle.vim.git $HOME/.vim/bundle/neobundle.vim
endif

set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'devlinzed/vim-repeat'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'moll/vim-bbye'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-ruby/vim-ruby'

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

NeoBundleLazy 'sjl/gundo.vim', {
      \ 'autoload': {
      \   'commands': ['GundoToggle'],
      \   },
      \ }

NeoBundleCheck
