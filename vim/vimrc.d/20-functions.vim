function! ConfigureAirline()
  " c is set by Updateairline
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_x = airline#section#create(['filetype'])
  let g:airline_section_y = airline#section#create(['%l', '/', '%c'])
  let g:airline_section_z = ''
endfunction

function! UpdateAirline()
  let g:airline_section_c = GitSince()

  call airline#update_statusline()
endfunction

function! GitSince()
  let l:time = system("cd " . expand("%:p:h") . " && git since")

  if l:time > 86400
    return l:time / 86400 . "d" .
         \ l:time % 86400 / 3600 . "h"
  elseif l:time > 3600
    return l:time / 3600 . "h" .
         \ l:time % 3600 / 60 . "m"
  elseif l:time > 60
    return l:time / 60 . "m"
  elseif l:time > 1
    return "<1m"
  endif
endfunction

" wraps it in quotes and assumes case insensitivity
function! FuckinGrep(args)
  execute "Ggrep --ignore-case '" . a:args . "'"
endfunction

function! GrepFromWord()
  call FuckinGrep(expand("<cword>"))
endfunction

function! GrepFromSearch()
  call FuckinGrep(substitute(getreg('/'), '\(\\<\|\\>\)','\\b','g'))
endfunction

function! DeleteAllOtherBuffers()
  let l:this_buffer = expand("%")
  for bufno in range(0, bufnr("$"))
    let l:name = bufname(bufno)
    if l:name != "" && l:name != l:this_buffer
      silent! execute "Bdelete! " . l:bufno
    endif
  endfor
endfunction

function! RunAllSpecs()
  execute "Dispatch rspec"
endfunction

function! RunCurrentSpecFile()
  let s:last_spec = expand("%")
  execute "Dispatch rspec %"
endfunction

function! RunLastSpec()
  if exists('s:last_spec')
    execute "Dispatch rspec " . s:last_spec
  else
    echo "No last spec"
  endif
endfunction
