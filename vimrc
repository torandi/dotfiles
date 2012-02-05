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
