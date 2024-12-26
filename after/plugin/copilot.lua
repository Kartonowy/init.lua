-- used solely for writing boilerplate code
-- all other code is written without copilot

vim.g.copilot_filetypes = {
    ["*"] = false
}

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-CR>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

