set runtimepath+=~/.dotfiles/vim/plugins/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))

runtime macros/matchit.vim

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'PeterRincker/vim-argumentative'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'austintaylor/vim-indentobject'
NeoBundle 'bling/vim-airline'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'ecomba/vim-ruby-refactoring'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'moll/vim-bbye'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'svermeulen/vim-extended-ft'
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
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'ujihisa/neco-look'
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
