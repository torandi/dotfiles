set encoding=utf-8

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-vividchalk'
" Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-speeddating'
" Bundle 'tpope/vim-repeat'
" Bundle 'tpope/vim-pastie'
" Bundle 'tpope/vim-fugitive'
" Bundle 'sickill/vim-pasta'
" Bundle 'vim-scripts/ScrollColors'
" Plugin 'jistr/vim-nerdtree-tabs'

" Workflow
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'bronson/vim-trailing-whitespace'

" Code navigation and completion
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'universal-ctags/ctags'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'

" Syntax highlighting
Plugin 'sheerun/vim-polyglot'
Plugin 'beyondmarc/glsl.vim'
Plugin 'beyondmarc/opengl.vim'
Plugin 'beyondmarc/hlsl.vim'
Plugin 'pangloss/vim-javascript'

" Vundle end
call vundle#end()
filetype plugin indent on

" change leader to space
map <space> <leader>

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
set shiftwidth=4 " Spaces for each step of (auto)indent
set tabstop=4 " Spaces that a <Tab> in the file counts for
set softtabstop=4 " Spaces that a <Tab> counts for when editing
set mouse=a
" set showmatch
set smarttab
set cindent
set smartindent

set notimeout
set ttimeout
set ttimeoutlen=100

set backupdir=~/.vim/tmp,.,/tmp
set directory=~/.vim/tmp,.,/tmp

let g:xml_syntax_folding=1

set foldmethod=syntax
set foldlevelstart=20

colorscheme linduxed

au!

au BufNewFile,BufRead *.glsl,*.vert,*.frag,*.geom,*.hlsl set noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufNewFile,BufRead *.rl set syntax=ragel cindent noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufNewFile,BufRead *.cl set syntax=opencl noexpandtab tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile *.rb,*.rhtml,*.haml,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.slim,*.yml set expandtab tabstop=2 shiftwidth=2 softtabstop=2 syntax=ruby
au BufRead,BufNewFile *.py set expandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufRead,BufNewFile *.haml         setfiletype haml
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile {*.json} set ft=javascript expandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufRead,BufNewFile *.js set noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufRead,BufNewFile *.ffs set syntax=cpp
au BufRead,BufNewFile *.c,*.cpp,*.h,*.hpp,*.ffs set cindent noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufRead,BufNewFile *.php set ft=php noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
au BufRead,BufNewFile *.yaml,*.yml,*.anim,*.preset,*.conf set expandtab shiftwidth=2 softtabstop=2 tabstop=2 syntax=yaml

" Bindings
"
"
" Don't remove visual block when indenting.
"vmap < <gv
"vmap > >gv

set pastetoggle=<F2>

" Handle splits

set splitbelow
set splitright

" Bindings

" Copy paste with leader
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Move around splits
noremap <leader><left> <C-W><left>
noremap <leader><right> <C-W><right>
noremap <leader><down> <C-W><down>
noremap <leader><up> <C-W><up>

" remap ctrl-p

" YouCompleteMe config

let g:ycm_key_detailed_diagnostics = '<leader>s'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" let g:ycm_goto_buffer_command = 'new-tab'
" let g:ycm_goto_buffer_command = 'vertical-split'

" home row utils:
" oeu id htn
let g:ctrlp_map = '<leader>o'
map <silent> <leader>e :NERDTreeToggle<CR>
map <silent> <leader>u :CtrlPTag<CR>

nnoremap <leader>i :YcmCompleter GoToInclude<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>

nnoremap <leader>h :YcmCompleter GoToDefinition<CR>
nmap <silent> <leader>t :TagbarToggle<CR>

nnoremap <leader>g :YcmCompleter GoTo<CR>

" remap go to previous tag (ctags)
nnoremap <C-d> <C-t>
nnoremap <silent> <C-t> :YcmCompleter GetType<CR>

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction



" map <leader>d :tabnew<CR>

" nmap <silent> <leader>c :wincmd k<CR>
" nmap <silent> <leader>g :wincmd j<CR>
" nmap <silent> <leader>f :wincmd h<CR>
" nmap <silent> <leader>r :wincmd l<CR>

"Map <tab> to enter in completion menu (more in line with how I use visual studio)
" inoremap <expr> <silent> <Tab> pumvisible() ? "\<CR>" : "\<Tab>"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

syntax on
