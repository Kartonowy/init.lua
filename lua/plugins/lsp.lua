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
                    filetypes = {'html', 'templ', 'vue'}
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
                    filetypes = {'html', 'typescriptreact', 'typescript', 'javascript', 'javascriptreact', 'vue'},
                    init_options = {
                        plugins = {
                            {
                                name = "@vue/typescript-plugin",
                                location = "/home/hacunae/.nvm/versions/node/v23.7.0/lib/node_modules/@vue/language-server",
                                languages = { "vue" },
                            },
                        }
                    }
                },
                volar = {
                    filetypes = {'vue', 'typescript'}
                },
                pyright = {}
                -- vuels = {
                --     filetypes = {'vue', 'typescript'}
                -- }
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

    },
'github/copilot.vim',
{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}
}
