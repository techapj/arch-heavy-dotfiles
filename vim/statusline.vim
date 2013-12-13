" reset the value and automatically sync
set statusline=
set statusline+=%#StatusLineNC#
set statusline+=%{g:bfln_before}
set statusline+=%#StatusLine#
set statusline+=%{g:bfln_active}
set statusline+=%#StatusLineNC#
set statusline+=%{g:bfln_after}
