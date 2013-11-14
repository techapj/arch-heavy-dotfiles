" airline configuration at startup, deleted afterward
function! ConfigureAirline()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = ''
  let g:airline_section_c = ''
  let g:airline_section_x = ''
  let g:airline_section_y = airline#section#create(['filetype'])
  let g:airline_section_z = airline#section#create(['L%lC%c'])
endfunction

" focus a buffer
function! DeleteAllOtherBuffers()
  let l:this_buffer = expand("%")
  for bufno in range(0, bufnr("$"))
    let l:name = bufname(bufno)
    if l:name != "" && l:name != l:this_buffer
      silent! execute "Bdelete! " . l:bufno
    endif
  endfor
endfunction
