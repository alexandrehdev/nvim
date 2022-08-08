lua require('plugins')
"PLUGINS CONFIG START AT LINE 43 || 43 || 43

"Set mapping                        
map q :q<CR>
map <C-q> quit!<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

map , :bprevious<CR>
map . :bnext<CR>
nmap <C-x> :bd<CR>

syntax on
		
 set tabstop=4
 set shiftwidth=4
 set softtabstop=4
 set expandtab

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

"Multiple Cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"AutoSave
Plug 'thaerkh/vim-workspace'

"Theme Gruvbox
Plug 'morhetz/gruvbox'

"Theme Base16
Plug 'chriskempson/base16-vim'

"Auto close
Plug 'jiangmiao/auto-pairs'

"PHP
Plug 'stanangeloff/php.vim'

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

let g:workspace_autosave_always = 1
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_untrailtabs = 0
