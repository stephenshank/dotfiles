local o = vim.opt

o.number = true
o.list = false
o.listchars = ""
o.tabstop = 2
o.shiftwidth = 2
o.smarttab = true
o.expandtab = true
o.swapfile = false
o.hlsearch = true
o.ruler = true
o.autoindent = true
o.autoread = true
o.ignorecase = true
o.smartcase = true
o.foldmethod = "indent"
o.foldenable = false
vim.cmd("colorscheme elflord")

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

local Plug = vim.fn["plug#"]
vim.fn["plug#begin"]()
Plug("preservim/nerdtree")
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-cmdline")
Plug("hrsh7th/nvim-cmp")
Plug("L3MON4D3/LuaSnip")
Plug("saadparwaiz1/cmp_luasnip")
Plug("rafamadriz/friendly-snippets")
Plug("github/copilot.vim")
Plug("mhinz/vim-signify")
vim.fn["plug#end"]()

local python_path = os.getenv("HOME") .. "/software/neovim/bin/python3"
vim.g.python3_host_prog = python_path
local cmp = require("cmp")

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }, -- For luasnip users.
	}, {
		{ name = "buffer" },
	}),
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = "buffer" },
	}),
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({
	settings = {
		python = {
			pythonPath = python_path,
		},
	},
})
lspconfig.tsserver.setup({})

require("luasnip.loaders.from_vscode").lazy_load()
vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>luasnip-expand-or-jump", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<C-j>", "<Plug>luasnip-expand-or-jump", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Plug>luasnip-jump-prev", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<C-k>", "<Plug>luasnip-jump-prev", { noremap = true, silent = true })
vim.cmd("au BufNewFile,BufRead Snakefile set syntax=snakemake")
vim.cmd("autocmd BufRead Snakefile set filetype=snakemake")

vim.cmd("autocmd VimEnter * NERDTree")
vim.cmd("autocmd VimEnter * wincmd p")

vim.cmd("syntax on")
