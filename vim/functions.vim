" airline configuration at startup, deleted afterward
function! ConfigureAirline()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = ''
  let g:airline_section_c = ''
  let g:airline_section_x = ''
  let g:airline_section_y = airline#section#create(['filetype'])
  let g:airline_section_z = airline#section#create(['L%lC%c'])
endfunction

" used with map <expr>
function! NeoCompleteIt()
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction
