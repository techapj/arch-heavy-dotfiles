" airline
let g:airline#extensions#branch#empty_message = "✗"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"
let g:airline_detect_modified = 0
let g:airline_detect_paste = 1
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1
let g:airline_section_c = ""
let g:airline_theme = "powerlineish"

" ruby
let g:ruby_complete_classes_in_global = 1
let g:ruby_fold = 1
let g:ruby_no_expensive = 0
let g:ruby_operators = 1

" rspec
let g:rspec_command = "Dispatch rspec {spec}"

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
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#syntax#min_keyword_length = 1

" neosnippet
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = "~/.vim/bundle/vim-snippets/snippets"

" syntastic
let g:syntastic_coffee_checkers = ["coffee", "coffeelint"]
let g:syntastic_error_symbol='✗'
let g:syntastic_ruby_checkers = ["mri", "rubocop"]
let g:syntastic_ruby_rubocop_args = "--rails"
let g:syntastic_style_error_symbol='✗'
let g:syntastic_style_warning_symbol='⚠'
let g:syntastic_warning_symbol='⚠'
