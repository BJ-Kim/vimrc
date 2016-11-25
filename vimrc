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

au VimEnter *  NERDTree
nmap <F7> :NERDTree<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim' "required

Plugin 'tpope/vim-fugitive' "required

Plugin 'tpope/vim-sensible'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

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

call vundle#end()

filetype plugin indent on " Put your non-Plugin stuff after this line

let g:jsx_ext_required = 0
