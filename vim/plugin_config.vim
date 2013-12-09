" airline
" also configured in functions.vim by an autocmd
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"
let g:airline_detect_modified = 0
let g:airline_detect_paste = 0
let g:airline_enable_branch = 0
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''

let g:airline_symbols = {
      \ 'branch': '',
      \ 'linenr': '',
      \ 'readonly': '',
      \ 'space': ' ',
      \ }

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

" ctrlp
let g:ctrlp_map = ""
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_user_command = {
      \ 'types': {
      \     1: ['.git', 'cd %s && git ls-files'],
      \     },
      \ 'fallback': 'find %s -type f'
      \ }

" splitjoin
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

" surround
let g:surround_35  = "#{\r}"   " wrap in #{} with ysiw#

" neocomplete
let g:neocomplete#enable_at_startup = 1 " why is this necessary?
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#syntax#min_keyword_length = 1

" ycm
let g:ycm_complete_in_comments = 1
let g:ycm_min_number_of_chars_for_completion = 1

" repeat
let g:repeat_map = {
      \ '<C-r>': 'i',
      \ 'U': 0,
      \ 'u': 'u',
      \ }

" grep_operator
let g:grep_operator_map = "<leader>"

" autobundle
let g:autobundle_on = "VimEnter"
