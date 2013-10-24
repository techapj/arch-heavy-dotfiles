function! ConfigureAirline()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = ''
  let g:airline_section_c = ''
  let g:airline_section_x = ''
  let g:airline_section_y = airline#section#create(['filetype'])
  let g:airline_section_z = airline#section#create(['%lL%cC'])
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
