return {
    -- {
    --     "catppuccin/nvim",
    --     lazy = false,
    --     priority = 1000,
    --     name = "catppuccin",
    --     config = function()
    --         vim.cmd([[colorscheme catppuccin-mocha]])
    --     end,
    -- }
    {
        "neanias/everforest-nvim",
        lazy = false,
        priority = 1000,
        name = "everforest",
        config = function()
            local everforest = require("everforest")
            everforest.setup({
                background = "hard",
                italics = true
            })

            everforest.load()
        end,
    }
}


