"Seting relative number
" set relativenumber

"Set autosave
let g:auto_save = 1
let g:auto_save_silent = 1

"Emmet config
let g:user_emmet_leader_key='<c-y>'
let g:user_emmet_install_global = 0

"Changin Status Bar
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='deus'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Config Theme
let g:gruvbox_bold=1
let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_improved_strings=1
let g:gruvbox_improved_warnings=1

"Config tabs
let g:SuperTabDefaultCompletionType = "<c-n>"

"Remove folding config markdown
let g:vim_markdown_folding_disabled = 1

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

"Set ColorScheme
colorscheme gruvbox
"Set Background
set bg=dark

"No description bar
set noshowmode


"if !has('gui_running')
"  set t_Co=256
"endif
"
"Setting tabs config navigation
let g:airline#extensions#tabline#buffer_idx_mode = 1
 
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode',' ','branch'])
  let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
  let g:airline_section_c = airline#section#create(['filetype'])
  let g:airline_section_x = airline#section#create(['%P'])
  let g:airline_section_y = airline#section#create(['%B'])
  let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction

autocmd VimEnter * call AirlineInit()





