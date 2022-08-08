"Changin Status Bar
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='base16'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

"Config tabs
let g:SuperTabDefaultCompletionType = "<c-n>"

"Remove folding config markdown
let g:vim_markdown_folding_disabled = 1

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>

colorscheme base16-default-dark
" colorscheme gruvbox

"No description bar
set noshowmode

"Setting tabs config navigation
let g:airline#extensions#tabline#buffer_idx_mode = 1
 "%P substituto linha 32
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode','','branch'])
  let g:airline_section_b = '%{strftime("%c")}'
  let g:airline_section_c = airline#section#create(['filetype'])
  let g:airline_section_x = airline#section#create(['%P']) 
  let g:airline_section_y = 'BN: %{bufnr("%")}'
  " let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction

autocmd VimEnter * call AirlineInit()


