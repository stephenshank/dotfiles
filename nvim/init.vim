set nu
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set noswapfile
set hlsearch
syntax enable
colo torte
set ruler
set autoindent
set autoread
set completeopt-=preview

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bioSyntax/bioSyntax-vim'
Plugin 'mxw/vim-jsx'
Plugin 'neomake/neomake'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/deoplete.nvim'
Plugin 'deoplete-plugins/deoplete-jedi'
call vundle#end()
filetype plugin indent on

let g:deoplete#enable_at_startup = 1

set runtimepath+=~/.vim/bundle/vundle/

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

"
"https://mstamenk.github.io/2017/08/snakefile-syntax-file-for-vi-vim.html
au BufNewFile,BufRead Snakefile set syntax=snakemake
autocmd BufRead Snakefile set filetype=snakemake

colorscheme elflord

autocmd BufRead *.bf set filetype=hyphy
autocmd BufRead *.wbf set filetype=hyphy
autocmd BufRead *.ibf set filetype=hyphy

let g:python3_host_prog = $HOME . '/Software/anaconda3/envs/bioinformatics/bin/python'
let g:deoplete#sources#jedi#python_path = $HOME . '/Software/anaconda3/envs/bioinformatics/bin/python'
