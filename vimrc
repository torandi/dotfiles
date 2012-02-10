set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-pastie'
Bundle 'vim-scripts/ScrollColors'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


set tabstop=3
set shiftwidth=3
syntax on
set ignorecase
set number
set autoindent
set smartindent
set showmatch
set incsearch

set smarttab

au BufNewFile,BufRead *.glsl,*.vert,*.frag,*.geom set syntax=glsl
au BufRead,BufNewFile *.rb,*.rhtml,*.haml set shiftwidth=2 softtabstop=2 expandtab
au BufRead,BufNewFile *.py set softtabstop=4 shiftwidth=4 expandtab 

set pastetoggle=<F2>
