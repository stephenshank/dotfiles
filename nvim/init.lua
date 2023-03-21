local o = vim.opt

o.number = true
o.list = false
o.listchars = ""
vim.cmd('colorscheme elflord')

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

local Plug = vim.fn['plug#']
vim.fn['plug#begin']()
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'github/copilot.vim'
Plug 'mhinz/vim-signify'
vim.fn['plug#end']()

local python_path = os.getenv('HOME') .. '/software/neovim/bin/python3'
vim.g.python3_host_prog = python_path
local lspconfig = require('lspconfig')
lspconfig.pyright.setup{
  settings = {
    python = {
      pythonPath = python_path
    }
  }
}
lspconfig.tsserver.setup{}
require('compe').setup {
  enabled = true;
  autocomplete = true;
  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
  };
}
vim.cmd('autocmd VimEnter * NERDTree')
vim.cmd('autocmd VimEnter * wincmd p')
