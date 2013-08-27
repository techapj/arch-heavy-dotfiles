augroup dfknz
  autocmd!

  autocmd BufRead /tmp/luakit-* setlocal filetype=markdown syntax=markdown
  autocmd BufRead /tmp/mutt-* setlocal filetype=markdown syntax=markdown textwidth=72
  autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
  autocmd BufWritePost $MYVIMRC,$DOTFILES/vim/*.vim source %
  autocmd FileType python setlocal shiftwidth=4 softtabstop=4
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType gitcommit setlocal spell textwidth=72
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType markdown nmap <buffer> <leader>1 yypVr=
  autocmd FileType markdown nmap <buffer> <leader>2 yypVr-
  autocmd FileType markdown nmap <buffer> <leader>3 I### <ESC>
  autocmd FileType markdown setlocal spell
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType ruby nmap <buffer> <leader>bo :Bopen 
  autocmd FileType ruby nmap <buffer> <leader>ra :Rake 
  autocmd FileType ruby nmap <buffer> <leader>rg :Rgenerate 
  autocmd FileType ruby nmap <buffer> <silent> <leader>rc :Rcontroller<CR>
  autocmd FileType ruby nmap <buffer> <silent> <leader>rm :Rmodel<CR>
  autocmd FileType ruby nmap <buffer> <silent> <leader>rv :Rview<CR>
  autocmd FileType ruby nmap <buffer> <silent> <leader>rs :edit db/schema.rb<CR>
  autocmd FileType ruby nmap <buffer> <silent> <leader>re :edit Gemfile<CR>
  autocmd FileType ruby,haml,eruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd InsertEnter * set number
  autocmd InsertEnter * let old_timeoutlen = &timeoutlen | set timeoutlen=0
  autocmd InsertLeave * set relativenumber
  autocmd InsertLeave * let &timeoutlen = old_timeoutlen | unlet old_timeoutlen
augroup END
