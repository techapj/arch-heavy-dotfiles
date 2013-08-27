" airline
let g:airline_detect_modified = 0
let g:airline_detect_paste = 1
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "powerlineish"

" bufferline
let g:bufferline_echo = 0
let g:bufferline_rotate = 1
let g:bufferline_show_bufnr = 0
let g:bufferline_solo_highlight = 1

" ruby
let g:ruby_fold = 1
let g:ruby_operators = 1
let g:rubycomplete_classes_in_global = 1

" ctrlp
let g:ctrlp_map = ""
let g:ctrlp_working_path_mode = "ra"

let g:ctrlp_user_command = {
      \ 'types': {
      \     1: ['.git', 'cd %s && git ls-files'],
      \     },
      \ 'fallback': 'find %s -type f'
      \ }

" neocomplete
let g:neocomplete#enable_at_startup = 1 " why is this necessary?
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#syntax#min_keyword_length = 1
