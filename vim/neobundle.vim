if !isdirectory($HOME . '/.vim/bundle/neobundle.vim')
  echo "Installing neobundle..."
  call system('mkdir -p ' . $HOME . '/.vim/bundle/neobundle.vim')
  call system('git clone git@github.com:Shougo/neobundle.vim.git ' . $HOME . '/.vim/bundle/neobundle.vim')
endif
