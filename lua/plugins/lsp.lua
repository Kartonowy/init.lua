return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'saghen/blink.cmp',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },

        -- example using `opts` for defining servers
        opts = {
            servers = {
                lua_ls = {},
                rust_analyzer = {},
                gopls = {},
                templ = {},
                cssls = {},
                html = {
                    filetypes = {'html', 'templ'}
                },
                htmx = {
                    filetypes = {'html', 'templ'}
                },
                emmet_ls = {
                    filetypes = {'html', 'templ'}
                },
                tailwindcss = {},
                clangd = {},
                ts_ls = {
                    filetypes = {'html', 'typescriptreact', 'typescript', 'javascript', 'javascriptreact'}
                }
            }
        },
        config = function(_, opts)
            local lspconfig = require('lspconfig')
            for server, config in pairs(opts.servers) do
                -- passing config.capabilities to blink.cmp merges with the capabilities in your
                -- `opts[server].capabilities, if you've defined it
                config.on_attach = on_attach
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                config.diagnostics = { enable = false }
                lspconfig[server].setup(config)
            end
            require("mason").setup()
            require("mason-lspconfig").setup()
        end

    }
}
