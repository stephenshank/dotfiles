set nu
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noswapfile
set hlsearch
syntax on
colo torte
set ruler
set autoindent

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_max_num_candidates = 5

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_python_interpreter_path = '/home/sshank/Software/anaconda3/envs/bioinformatics/bin/python'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/dotfiles/global_extra_conf.py'

let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plugin 'Valloric/YouCompleteMe'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'bioSyntax/bioSyntax-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

let g:ale_linters = {'javascript': ['eslint'], 'jsx': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}

"
"https://mstamenk.github.io/2017/08/snakefile-syntax-file-for-vi-vim.html
au BufNewFile,BufRead Snakefile set syntax=snakemake

colorscheme elflord

autocmd BufRead *.bf set filetype=hyphy
autocmd BufRead *.wbf set filetype=hyphy
autocmd BufRead *.ibf set filetype=hyphy
