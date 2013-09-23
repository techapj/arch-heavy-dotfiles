augroup dfknz
  autocmd!

  au BufRead /tmp/luakit-* setlocal filetype=markdown syntax=markdown
  au BufRead /tmp/mutt-* setlocal filetype=markdown syntax=markdown textwidth=72
  au BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
  au BufWritePost $MYVIMRC,$DOTFILES/vim/*.vim source %
  au FileType gitcommit setlocal spell textwidth=72
  au FileType markdown nmap <buffer> <leader>1 yypVr=
  au FileType markdown nmap <buffer> <leader>2 yypVr-
  au FileType markdown nmap <buffer> <leader>3 I### <ESC>
  au FileType markdown setlocal spell
  au FileType python setlocal shiftwidth=4 softtabstop=4
  au FileType ruby nnoremap <buffer> <silent> <leader>ril :RIntroduceVariable<CR>
  au FileType ruby nnoremap <buffer> <silent> <leader>rip :RAddParameter<CR>
  au FileType ruby nnoremap <buffer> <silent> <leader>rsa :call RunAllSpecs()<CR>
  au FileType ruby nnoremap <buffer> <silent> <leader>rsc :call RunCurrentSpecFile()<CR>
  au FileType ruby nnoremap <buffer> <silent> <leader>rsn :call RunNearestSpec()<CR>
  au FileType ruby nnoremap <buffer> <silent> <leader>rsp :call RunLastSpec()<CR>
  au FileType ruby vnoremap <buffer> <silent> <leader>rni :RRenameInstanceVariable<CR>
  au FileType ruby vnoremap <buffer> <silent> <leader>rnl :RRenameLocalVariable<CR>
  au FileType ruby vnoremap <buffer> <silent> <leader>rxc :RExtractConstant<CR>
  au FileType ruby vnoremap <buffer> <silent> <leader>rxe :RExtractLet<CR>
  au FileType ruby vnoremap <buffer> <silent> <leader>rxl :RExtractLocalVariable<CR>
  au FileType ruby vnoremap <buffer> <silent> <leader>rxm :RExtractMethod<CR>
  au FileType ruby,haml,eruby nmap <buffer> <leader>ra :Rake<space>
  au FileType ruby,haml,eruby nmap <buffer> <leader>rg :Rgenerate<space>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rc :Rcontroller<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rm :Rmodel<CR>
  au FileType ruby,haml,eruby nmap <buffer> <silent> <leader>rv :Rview<CR>
  au InsertEnter * let old_timeoutlen = &timeoutlen | set timeoutlen=0
  au InsertEnter * set number
  au InsertLeave * let &timeoutlen = old_timeoutlen | unlet old_timeoutlen
  au InsertLeave * set relativenumber
  au VimEnter * call ConfigureAirline()
  au VimEnter * call UpdateAirline() | au BufEnter * call UpdateAirline()
augroup END
