return {
	{"folke/which-key.nvim"},
	{"nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = {"nvim-lua/plenary.nvim"}},
	{"nvim-lua/plenary.nvim"},
	{"theprimeagen/harpoon"},
	{"nvim-treesitter/nvim-treesitter", build =  ':TSUpdate'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'folke/tokyonight.nvim', lazy = false, priority = 1000, opts = {}},
	{'eandrju/cellular-automaton.nvim'},
	{'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
    {'numToStr/Comment.nvim', opts = {}, lazy = false},
    {'jinh0/eyeliner.nvim'},
    {'mhartington/formatter.nvim'}
}

