" used with map <expr>
function! NeoCompleteIt()
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction
