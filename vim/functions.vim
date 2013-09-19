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
  let g:airline_section_c = "" " TODO put something here - time since commit?
  let g:airline_section_x = airline#section#create(['filetype'])
  let g:airline_section_y = airline#section#create_right(['%l', '%c'])
  let g:airline_section_z = airline#section#create(['%p%%'])
endfunction
