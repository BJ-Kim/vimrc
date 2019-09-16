set ts=4
set shiftwidth=2
set showmatch
set smartcase
set smarttab
set smartindent
set expandtab
set autoindent
set cindent
set nu
set hlsearch
set nocompatible
set encoding=utf-8
set mouse=a

" https://www.vim.org/scripts/script.php?script_id=790  
" download python.vim
" add python.vim file to ~/.vim/syntax
syntax on

" au VimEnter *  NERDTree
nmap <F7> :NERDTree<CR>
nmap <F8> :TagbarToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
vnoremap <C-c> :w !pbcopy<CR><CR> 
filetype off
noremap <C-w>e :SyntasticCheck<CR>
noremap <C-w>f :SyntasticToggleMode<CR>

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim' "required

Plugin 'tpope/vim-fugitive' "required

Plugin 'tpope/vim-sensible'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'mattn/emmet-vim'

Plugin 'Shougo/neocomplcache.vim'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Python-Syntax'

Plugin 'indentpython.vim'

Plugin 'snipMate'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'indentpython'

Plugin 'leafgarland/typescript-vim'

Plugin 'junegunn/vim-easy-align'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'rudes/vim-java'

Plugin 'mikelue/vim-maven-plugin'

Plugin 'posva/vim-vue'

Bundle 'Valloric/YouCompleteMe'

Plugin 'fatih/vim-go'

Plugin 'majutsushi/tagbar'

Plugin 'vim-airline/vim-airline'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/syntastic'

Plugin 'tomasr/molokai'

call vundle#end()

filetype plugin indent on " Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 1

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = [ 'pep8' ]

let g:jsx_ext_required = 0
let NERDTreeIgnore = ['\.pyc$']
let g:python_version_3 = 1
let g:python_highlight_all = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

colorscheme molokai
