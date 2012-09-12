set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" change leader to ,'
let mapleader = ","

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails'
Bundle 'taq/vim-rspec'
Bundle 'tpope/vim-endwise'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-pastie'
Bundle 'sickill/vim-pasta'
Bundle 'vim-scripts/ScrollColors'
Bundle 'scrooloose/nerdcommenter'
" Bundle 'vim-ruby/vim-ruby'

" Vim-scripts 
Bundle 'glsl.vim'
Bundle 'opencl.vim--Wierzowiecki'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
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

" Tell vim to remember certain things when we exit
" '10 : marks will be remembered for up to 10 previously edited files
" "100 : will save up to 100 lines for each register
" :20 : up to 20 lines of command-line history will be remembered
" % : saves and restores the buffer list
" n... : where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.vim/viminfo

set nostartofline " Keep cursor in the same column if possible.
"set whichwrap=b,s,[,],<,>,h,l " Allow cursor to wrap between lines.
set lazyredraw " Don't redraw screen while executing macros/mappings.
set scrolloff=1 " Minimal number of screen lines to keep above and below the cursor.
set incsearch " Enable incremental search.
set backspace=indent,eol,start " Allow backspacing over everything in insert mode.
set winaltkeys=no " Allow mapping of alt (meta) key shortcuts.
set ruler " Show the cursor position all the time.
set showcmd " Display incomplete commands.
set ignorecase " Ignore case.
set smartcase " Ignore case when the pattern contains lowercase letters only.
set showtabline=1 " Show tab page labels if there is more than one tab.
set number " Display line numbers.
set shiftwidth=3 " Spaces for each step of (auto)indent
set tabstop=3 " Spaces that a <Tab> in the file counts for
set softtabstop=3 " Spaces that a <Tab> counts for when editing
set cursorline " Shows what line the cursor is on
set cursorcolumn " Shows what column the cursor is on
set incsearch
"set mouse=n " Allow the mouse in normal mode and visual mode.
" set showmatch
set smarttab
set autoindent
set smartindent

au!

colorscheme linduxed

au BufNewFile,BufRead *.glsl,*.vert,*.frag,*.geom set syntax=glsl
au BufNewFile,BufRead *.cl set syntax=opencl
au BufRead,BufNewFile *.rb,*.rhtml,*.haml,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru set shiftwidth=2 softtabstop=2 syntax=ruby
au BufRead,BufNewFile *.py set softtabstop=4 shiftwidth=4 
au BufRead,BufNewFile *.haml         setfiletype haml 
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile {*.json} set ft=javascript
au BufRead,BufNewFile *.c,*.cpp set cindent
au BufRead,BufNewFile *.php set ft=phtml

" Bindings
"
"
" Don't remove visual block when indenting.
"vmap < <gv
"vmap > >gv

set pastetoggle=<F2>

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction

syntax on
