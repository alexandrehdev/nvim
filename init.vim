lua require('plugins')
lua require('neoscroll').setup()

map q :q<CR>
map <C-q> quit!<CR>

autocmd VimEnter * AirlineToggleWhitespace
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map , :bprevious<CR>
map . :bnext<CR>
nmap <C-x> :bd<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone

syntax on
 set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
 set tabstop=4
 set shiftwidth=4
 set softtabstop=4
 set expandtab
 set updatetime=300

 set termguicolors

 "Friendly message
 set confirm

 "Search menu response
 set wildmenu
 
 "Free Cursor
 set virtualedit=all

 "Set Compatibility to Vim Only
 set nocompatible

"Automatically wrap text that extends beyond the screen lenght
 set wrap

"Encoding
 set encoding=utf-8

"Show Line Numbers
 set number

"Status Bar
 set laststatus=2

"Plugins
call plug#begin()

"Laravel Settings
 " Plug 'jwalton512/vim-blade'
 Plug 'tpope/vim-dispatch'
 Plug 'tpope/vim-projectionist'
 Plug 'noahfrederick/vim-composer'
 Plug 'noahfrederick/vim-laravel'


Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

"Docblock
Plug 'vim-scripts/PDV--phpDocumentor-for-Vim'

 
"PHP
Plug 'stanangeloff/php.vim'

"Javascript enhanced syntax
Plug 'jelera/vim-javascript-syntax'

"Javascript Syntax
Plug 'pangloss/vim-javascript'

"Vim fugitive
Plug 'tpope/vim-fugitive'

"Multiple Cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"AutoSave
Plug 'thaerkh/vim-workspace'

" ------------------------------ THEMES --------------------------------
"Theme Gruvbox
Plug 'morhetz/gruvbox'

"Theme Base16
Plug 'chriskempson/base16-vim'

"Theme everforest
Plug 'sainnhe/vim-color-forest-night'

" ------------------------------ THEMES --------------------------------

"Theme srcery
Plug 'srcery-colors/srcery-vim'

"Auto close
Plug 'jiangmiao/auto-pairs'

" ----------------------------------------------------------------------
"PHP
"PHPactor PHP plugins
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
" ----------------------------------------------------------------------

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Status Bar
Plug 'vim-airline/vim-airline'

"Status Bar Theme
Plug 'vim-airline/vim-airline-themes'	

"Folder Tree
Plug 'preservim/NERDTree'

"Commentary
Plug 'tpope/vim-commentary'

"Css package
Plug 'ap/vim-css-color'

"Markdown syntax
Plug 'plasticboy/vim-markdown' 

"Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

"Load config file	
source $HOME/.config/nvim/config-vim/config.vim
source $HOME/.config/nvim/config-vim/php-doc.vim

let g:workspace_autocreate = 1
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
let g:workspace_autosave_always = 1
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_untrailtabs = 0
