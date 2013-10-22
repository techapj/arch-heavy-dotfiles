" airline
" also configured in functions.vim by an autocmd
let g:airline#extensions#branch#empty_message = "✗"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"
let g:airline_detect_modified = 0
let g:airline_detect_paste = 0
let g:airline_enable_branch = 1
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = { 'branch': '', 'linenr': '', 'readonly': '' }
let g:airline_mode_map = {
    \ 'n'  : 'normal',
    \ 'i'  : 'insert',
    \ 'R'  : 'replace',
    \ 'c'  : 'command',
    \ 'v'  : 'visual',
    \ 'V'  : 'v-line',
    \ '' : 'v-block',
    \ 's'  : 'select',
    \ 'S'  : 's-line',
    \ '' : 's-block',
    \ }

" ruby
let g:ruby_complete_classes_in_global = 1
let g:ruby_fold = 1
let g:ruby_operators = 1

" ruby refactoring
let g:ruby_refactoring_map_keys = 0

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
let g:neocomplete#force_omni_input_patterns = {}
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#omni#input_patterns = {}
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::' 
let g:neocomplete#syntax#min_keyword_length = 1

" splitjoin
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

" surround
let g:surround_35  = "#{\r}"   " wrap in #{} with ysiw#

" gundo
let g:gundo_right = 1
