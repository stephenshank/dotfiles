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
set rtp+=~/.config/nvim/bundle/Vundle.vim
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
Plugin 'w0rp/ale'
Plugin 'tweekmonster/deoplete-clang2'
Plugin 'mhinz/vim-signify'
call vundle#end()
filetype plugin indent on

let g:deoplete#enable_at_startup = 1

"
"https://mstamenk.github.io/2017/08/snakefile-syntax-file-for-vi-vim.html
au BufNewFile,BufRead Snakefile set syntax=snakemake
autocmd BufRead Snakefile set filetype=snakemake
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

colorscheme delek
highlight DiffAdd cterm=bold ctermbg=2 ctermfg=82
highlight DiffDelete cterm=bold ctermbg=9 ctermfg=88
highlight DiffChange cterm=bold ctermbg=232 ctermfg=15

autocmd BufRead *.bf set filetype=hyphy
autocmd BufRead *.wbf set filetype=hyphy
autocmd BufRead *.ibf set filetype=hyphy

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ts set filetype=javascript

let g:python3_host_prog = $HOME . '/dotfiles/pythonenv/bin/python'
let g:deoplete#sources#jedi#python_path = $HOME . '/dotfiles/pythonenv/bin/python'

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

let g:neosnippet#snippets_directory = $HOME . "/.config/nvim/customSnippets"
