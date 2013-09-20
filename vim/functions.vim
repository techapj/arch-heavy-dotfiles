function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

function! ConfigureAirline()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_c = GitSince()
  let g:airline_section_x = airline#section#create(['filetype'])
  let g:airline_section_y = airline#section#create(['%l', '/', '%c'])
  let g:airline_section_z = airline#section#create(['%p%%'])
endfunction

function! UpdateAirline()
  let g:airline_section_c = GitSince()

  call airline#update_statusline()
endfunction

function! GitSince()
  let l:time = system("cd " . expand("%:p:h") . " && git since")

  if l:time > 3600
    return l:time / 3600 . "h" . l:time % 3600 / 60 . "m"
  elseif l:time > 60
    return l:time / 60 . "m"
  elseif l:time > 1
    return "<1m"
  endif
endfunction
