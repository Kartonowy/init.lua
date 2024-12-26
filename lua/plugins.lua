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
	{'catppuccin/nvim', name="catppuccin", lazy = false, priority = 1000, opts = {}},
	{'eandrju/cellular-automaton.nvim'},
	{'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
    {'numToStr/Comment.nvim', opts = {}, lazy = false},
    {'jinh0/eyeliner.nvim'},
    {'mhartington/formatter.nvim'},
    {'github/copilot.vim'},
    {
    "scalameta/nvim-metals",
    name = "metals",
    ft = { "scala", "sbt", "java" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- stylua: ignore
    --[[ keys = {
      { "<leader>cW", function () require('metals').hover_worksheet() end, desc = "Metals Worksheet" },
      { "<leader>cM", function () require('telescope').extensions.metals.commands() end, desc = "Telescope Metals Commands" },
    }, ]]
    config = function()
      local metals_config = require("metals").bare_config()

      metals_config.settings = {
        showImplicitArguments = true,
        showImplicitConversionsAndClasses = true,
        showInferredType = true,
        superMethodLensesEnabled = true,
      }
      metals_config.init_options.statusBarProvider = "on"
      metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "scala", "sbt", "java" },
        callback = function()
          require("metals").initialize_or_attach(metals_config)
      end,
      group = nvim_metals_group,
  })
    end,
},
{
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"
    end
},
{
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    }
}
}

