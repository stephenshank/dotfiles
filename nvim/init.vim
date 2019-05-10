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
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'carlitux/deoplete-ternjs'
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

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:deoplete#sources#ternjs#timeout = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#guess = 0
let g:deoplete#sources#ternjs#sort = 0
let g:deoplete#sources#ternjs#expand_word_forward = 0
let g:deoplete#sources#ternjs#omit_object_prototype = 0
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#in_literal = 0
