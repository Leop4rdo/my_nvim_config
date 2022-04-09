" Plugins """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Coc.nvim (auto-completing) ->
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" DevIcons ->
Plug 'ryanoasis/vim-devicons'

" vim airline ->
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NerdTree ->
Plug 'preservim/nerdtree'

" CSS color preview ->
Plug 'https://github.com/ap/vim-css-color'

" Vim DevIcons ->
Plug 'https://github.com/ryanoasis/vim-devicons' 

" Multiple cursurs (for multiple line/word editing) ->
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Theme -> 
Plug 'arcticicestudio/nord-vim' " nord
call plug#end()

" Global Settings """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number		    " display the line number
syntax on 		    " syntax highlight
set tabstop=4		" tab width 4
set softtabstop=4	" tab width 4
set shiftwidth=4	" tab width 4
set expandtab		" tab width 4
set smarttab		" auto tab
set smartindent		" auto tab
set hidden		    " hides the current buffer when a new file is openned
set incsearch 		" Incremental search
set ignorecase		" ignore case search
set smartcase		" consider case if theres an upper case character
set scrolloff=8		" cursor lines margin at top and bottom
set colorcolumn=100	" draws a line ruler
set signcolumn=yes	" add a column on the left
set cmdheight=2		" adds more space for displaying messages
set updatetime=100	
set encoding=utf-8
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread
set mouse=a
set cursorline
set nowrap
filetype on
filetype plugin on
filetype indent on
highlight LineNr ctermfg=grey   " highlight the current number

" COC.NVIM """"""""""""""""""""""""""""""""
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json',
  \ '@yaegassy/coc-intelephense',
  \ ]

" NerdTree """"""""""""""""""""""""""""""""
nmap <C-a> :NERDTreeToggle<CR>

" Themes """"""""""""""""""""""""""""""""""
colorscheme nord 

" Airline """""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'nord'

" Remaps """"""""""""""""""""""""""""""""""
" Shortcuts for saving
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcuts for tab navigation:
map <C-Right> gt
map <C-Left> gT
