let g:python3_host_prog = $HOME . '/dotfiles/pythonenv/bin/python'

set nu
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set noswapfile
set hlsearch
syntax enable
set ruler
set autoindent
set autoread
set ignorecase
set smartcase
set completeopt-=preview
set foldmethod=indent

set nofoldenable

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' } " Vim-Plug
Plug 'bioSyntax/bioSyntax-vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'w0rp/ale'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mhinz/vim-signify'
call plug#end()
filetype plugin indent on

colorscheme nightfox

"
"https://mstamenk.github.io/2017/08/snakefile-syntax-file-for-vi-vim.html
au BufNewFile,BufRead Snakefile set syntax=snakemake
autocmd BufRead Snakefile set filetype=snakemake
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

highlight DiffAdd cterm=bold ctermbg=2 ctermfg=82
highlight DiffDelete cterm=bold ctermbg=9 ctermfg=88
highlight DiffChange cterm=bold ctermbg=232 ctermfg=15

autocmd BufRead *.bf set filetype=hyphy
autocmd BufRead *.wbf set filetype=hyphy
autocmd BufRead *.ibf set filetype=hyphy

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ts set filetype=javascript
