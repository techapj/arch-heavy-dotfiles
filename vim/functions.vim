function! ConfigureAirline()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = ''
  let g:airline_section_c = ''
  let g:airline_section_x = ''
  let g:airline_section_y = airline#section#create(['filetype'])
  let g:airline_section_z = airline#section#create(['L%lC%c'])
endfunction

function! GrepFromWord()
  execute "Ggrep '" . expand("<cword>") . "'"
endfunction

function! GrepFromSearch()
  execute "Ggrep '" . substitute(getreg('/'), '\(\\<\|\\>\)','\\b','g') . "'"
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
  let s:last_spec = "<all>"
  execute "Dispatch rspec"
endfunction

function! RunCurrentSpecFile()
  let s:last_spec = expand("%")
  execute "Dispatch rspec %"
endfunction

function! RunLastSpec()
  if exists('s:last_spec')
    if s:last_spec == "all"
      execute "Dispatch rspec"
    else
      execute "Dispatch rspec " . s:last_spec
    endif
  else
    echo "No last spec"
  endif
endfunction

function! IndentTextObj(inner)
  let curline = line(".")
  let lastline = line("$")
  let i = indent(line(".")) - &shiftwidth * (v:count1 - 1)
  let i = i < 0 ? 0 : i
  if getline(".") !~ "^\\s*$"
    let p = line(".") - 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p > 0 && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      -
      let p = line(".") - 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! 0V
    call cursor(curline, 0)
    let p = line(".") + 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p <= lastline && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      +
      let p = line(".") + 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! $
  endif
endfunction
