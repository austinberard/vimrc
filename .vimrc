"Vundle plugin manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'kien/ctrlp.vim' "fuzzy file find
Plugin 'scrooloose/nerdtree' "file navigator
Plugin 'sjl/gundo.vim' "Better undo history
Plugin 'godlygeek/tabular' "Works with markdown to create tables
Plugin 'plasticboy/vim-markdown' "Adds markdown support
Plugin 'altercation/vim-colors-solarized' "Theme
Plugin 'xolox/vim-misc' "Prerequsite for notes
Plugin 'xolox/vim-notes' "Easy note taking platform
Plugin 'nlknguyen/papercolor-theme' "Theme
Plugin 'scrooloose/syntastic' "Syntax fixer
Plugin 'bling/vim-airline' "Adds added info at bottom and top of screen
Plugin 'valloric/YouCompleteMe' "Code completion
Plugin 'raimondi/delimitmate' "Auto completion for brackets, paraenthesis, quotes, etc
Plugin 'terryma/vim-expand-region' "Better visual mode
Plugin 'gioele/vim-autoswap' "Handles swap files
Plugin 'vim-pandoc/vim-pandoc' "Pandoc support for converting files
Plugin 'vim-pandoc/vim-pandoc-syntax' "Syntax highlighting
Plugin 'lervag/vimtex' "adds latex support
call vundle#end()
"Vundle end

"Personal tab style
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"Map Leader to space
let mapleader = "\<space>"

"Re-maps
nnoremap <Leader>t :NERDTree<cr>
nnoremap <Leader>g :GundoToggle<cr>
nnoremap <Leader>o :CtrlP<cr>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
vmap v <plug>(expand_region_expand)
vmap <c-v> <plug>(expand_region_shrink)

"Adds a blue highlight when going past 81 charecters
highlight colorcolumn ctermbg=blue
call matchadd('colorcolumn','\%81v', 100)

"Search Settings
set hlsearch
set incsearch
set ignorecase
set smartcase

"Gundo settings
set undodir=~/.vim/tmp/undo//
set undofile
set history=700
set undolevels=700

"Syntastic settings
set number
set laststatus=2
set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Airline settings
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

"Theme
set t_Co=256
colorscheme PaperColor
