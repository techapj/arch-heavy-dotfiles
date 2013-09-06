augroup dfknz
  autocmd!

  autocmd BufRead /tmp/luakit-* setlocal filetype=markdown syntax=markdown
  autocmd BufRead /tmp/mutt-* setlocal filetype=markdown syntax=markdown textwidth=72
  autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
  autocmd BufWritePost $MYVIMRC,$DOTFILES/vim/*.vim source %
  autocmd FileType gitcommit setlocal spell textwidth=72
  autocmd FileType markdown nmap <buffer> <leader>1 yypVr=
  autocmd FileType markdown nmap <buffer> <leader>2 yypVr-
  autocmd FileType markdown nmap <buffer> <leader>3 I### <ESC>
  autocmd FileType markdown setlocal spell
  autocmd FileType python setlocal shiftwidth=4 softtabstop=4
  autocmd FileType ruby,haml,eruby nmap <buffer> <leader>bo :Bopen |"
  autocmd FileType ruby,haml,eruby nmap <buffer> <leader>ra :Rake |"
  autocmd FileType ruby,haml,eruby nmap <buffer> <leader>rg :Rgenerate |"
  autocmd FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rc :Rcontroller<CR>
  autocmd FileType ruby,haml,eruby nmap <buffer> <silent> <leader>red :edit db/schema.rb<CR>
  autocmd FileType ruby,haml,eruby nmap <buffer> <silent> <leader>reg :edit Gemfile<CR>
  autocmd FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rm :Rmodel<CR>
  autocmd FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rr :edit config/routes.rb<CR>
  autocmd FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rv :Rview<CR>
  autocmd InsertEnter * let old_timeoutlen = &timeoutlen | set timeoutlen=0
  autocmd InsertEnter * set number
  autocmd InsertLeave * let &timeoutlen = old_timeoutlen | unlet old_timeoutlen
  autocmd InsertLeave * set relativenumber
augroup END
