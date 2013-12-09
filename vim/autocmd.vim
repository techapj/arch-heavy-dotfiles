" create our own augroup so that, when this file is reloaded, autocmd!
" empties it out and remakes the hooks, rather than duplicating them
augroup dfknz " guess what this means
  autocmd!

  " use markdown with 72-columns for email
  au BufRead /tmp/mutt-* setlocal filetype=markdown syntax=markdown textwidth=72

  " css { } as folds
  au BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}

  " spelling correction & 72-column git commits
  au FileType gitcommit setlocal spell textwidth=72

  " quick markdown headers & spell check
  au FileType markdown nmap <buffer> <leader>1 yypVr=
  au FileType markdown nmap <buffer> <leader>2 yypVr-
  au FileType markdown setlocal spell

  " vim-rails binds
  au FileType ruby,haml,eruby nmap <buffer> <leader>ra :Rake<space>
  au FileType ruby,haml,eruby nmap <buffer> <leader>rg :Rgenerate<space>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rc :Rcontroller<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>re :Rails server<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rh :Ehelper<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rm :Rmodel<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>ro :Rails console<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rv :Rview<CR>

  " run specs with vim-dispatch-rspec
  au FileType ruby,haml,eruby nnoremap <buffer> <silent> <Tab><Tab> :RunPreviousSpec<CR>
  au FileType ruby,haml,eruby nnoremap <buffer> <silent> <Tab>a :RunAllSpecs<CR>
  au FileType ruby,haml,eruby nnoremap <buffer> <silent> <Tab>c :RunCurrentSpec<CR>
  au FileType ruby,haml,eruby nnoremap <buffer> <silent> <Tab>f :RunFocusedSpec<CR>

  " more abolish-like coercions: string to symbol/vice versa
  " use nmap so surround can be used
  au FileType ruby,haml,eruby nmap <buffer> <silent> css EBxysiw'
  au FileType ruby,haml,eruby nmap <buffer> <silent> csy ds'ds"<ESC>:<ESC>``

  " fixes a bug with airline
  au InsertEnter * let old_timeoutlen = &timeoutlen | set timeoutlen=0
  au InsertLeave * let &timeoutlen = old_timeoutlen | unlet old_timeoutlen

  " configure airline after vimrc is loaded
  au VimEnter * call ConfigureAirline() | delfunction ConfigureAirline
augroup END
