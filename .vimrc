"Set mapping
map q :q<CR>
map <C-q> quit!<CR>

map , :bprevious<CR>
map . :bnext<CR>

"Bind navigation folder
nmap f :Ex<CR>

nmap <C-w> :bd<CR>

syntax on
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

"Package Installer
call plug#begin()
	"Status Bar
	Plug 'vim-airline/vim-airline'

	"Status Bar Theme
  Plug 'vim-airline/vim-airline-themes'	

	"DevIcons
	Plug 'ryanoasis/vim-devicons'

	"Sparkup complete HTML
	Plug 'rstacruz/sparkup'

	"Folder Tree
	Plug 'preservim/NERDTree'

	"Discord Rich Presence Plug 'vimsence/vimsence'
	Plug 'vimsence/vimsence'

	"Color Scheme
	Plug 'morhetz/gruvbox'
	
	"Add autosave
	Plug 'https://github.com/907th/vim-auto-save'
	
	"Add programming languages
	Plug 'sheerun/vim-polyglot'

	"Autoclose characters
	Plug 'jiangmiao/auto-pairs'
  
	"Autocomplete tabs
	Plug 'ervandew/supertab'

	"Commentary
	Plug 'tpope/vim-commentary'

	"Emmet
	 Plug 'mattn/emmet-vim'

	"Html package
	Plug 'othree/html5.vim'

	"Css package
	Plug 'ap/vim-css-color'

	"Javascript package 1 
	Plug 'pangloss/vim-javascript'

	"Javascript package 2
	Plug 'jelera/vim-javascript-syntax'

	"PHP package
	Plug 'shawncplus/phpcomplete.vim'

	"PHP correct indenting package
	Plug '2072/php-indenting-for-vim'
	
	"HTML Autoclose TAG
	Plug 'alvan/vim-closetag'
	
	"Markdown syntax
	Plug 'plasticboy/vim-markdown' 

	call plug#end()

"Load config file	
source $HOME/.vim/config-vim/config.vim

"Build an HTML structure
autocmd BufNewFile *.html 0r $HOME/.vim/templates/html.skel
autocmd FileType html,css EmmetInstall
