NeoBundle "Shougo/neocomplete.vim"
NeoBundle "Shougo/neosnippet"
NeoBundle "bling/vim-airline"
NeoBundle "chriskempson/base16-vim"
NeoBundle "devlinzed/QFixToggle"
NeoBundle "ecomba/vim-ruby-refactoring"
NeoBundle "kana/vim-textobj-indent"
NeoBundle "kana/vim-textobj-lastpat"
NeoBundle "kana/vim-textobj-line"
NeoBundle "kana/vim-textobj-underscore"
NeoBundle "kana/vim-textobj-user"
NeoBundle "kchmck/vim-coffee-script"
NeoBundle "moll/vim-bbye"
NeoBundle "scrooloose/syntastic"
NeoBundle "tpope/vim-bundler"
NeoBundle "tpope/vim-commentary"
NeoBundle "tpope/vim-eunuch"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tpope/vim-haml"
NeoBundle "tpope/vim-markdown"
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
NeoBundle "tpope/vim-repeat"
NeoBundle "tpope/vim-surround"
NeoBundle "ujihisa/neco-look"
NeoBundle "vim-ruby/vim-ruby"
NeoBundle "vim-scripts/matchit.zip"
NeoBundle "vim-scripts/ruby-matchit"

NeoBundleLazy "AndrewRadev/splitjoin.vim", {
      \ "autoload": {
      \     "commands": ["SplitjoinJoin", "SplitjoinSplit"],
      \     }.
      \ }

NeoBundleLazy "kien/ctrlp.vim", {
      \ "autoload": {
      \     "commands": ["CtrlP", "CtrlPTag"],
      \     }
      \ }

NeoBundleLazy "sjl/gundo.vim", {
      \ "autoload": {
      \     "commands": ["GundoToggle"],
      \     },
      \ }

NeoBundleLazy "tjennings/git-grep-vim", {
      \ "autoload": {
      \     "commands": ["GitGrep"],
      \     },
      \ }

NeoBundleCheck
