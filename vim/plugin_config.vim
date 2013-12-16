" ruby
let g:ruby_complete_classes_in_global = 1
let g:ruby_fold = 1
let g:ruby_operators = 1

" splitjoin
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

" surround
let g:surround_35  = "#{\r}"   " wrap in #{} with ysiw#

" neocomplete
if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif

if !exists('g:neocomplete#sources')
  let g:neocomplete#sources = {}
endif

let g:neocomplete#sources._ = [
      \ 'buffer',
      \ 'file',
      \ 'file_include',
      \ 'include',
      \ 'member',
      \ 'omni',
      \ 'tag',
      \ ]

let s:text_mode = [
      \ 'look',
      \ ]

let g:neocomplete#sources.gitcommit = s:text_mode
let g:neocomplete#sources.markdown = s:text_mode

let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default': '/usr/share/dict/cracklib-small',
      \ }

let g:neocomplete#enable_at_startup = 1 " why is this necessary?
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplete#syntax#min_keyword_length = 1

" repeat
let g:repeat_map = {
      \ '<C-r>': 'i',
      \ 'U': 0,
      \ 'u': 'u',
      \ }

" grep_operator
let g:grep_operator_map = "<Tab>"
