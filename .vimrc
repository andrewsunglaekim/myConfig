execute pathogen#infect()
syntax on
set number
set hlsearch
set showcmd
set ignorecase
set smartcase
set splitright
set tabstop=2
set shiftwidth=2
set iskeyword-=_
set autoindent
set smartindent
set scrolloff=999
set syntax=markdown
set expandtab
set pastetoggle=<F2>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-t> gt

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
