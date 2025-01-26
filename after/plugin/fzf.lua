local fzf = require('fzf-lua');

vim.keymap.set('n', '<leader>ff',
    function ()
        fzf.files()
    end,
    { desc = 'Fzf find files'})

vim.keymap.set('n', '<leader>fg',
    function ()
        fzf.live_grep()
    end,
    { desc = 'Fzf live grep'})
vim.keymap.set('n', '<leader>fb',
    function ()
     fzf.buffers()
    end ,
    { desc = 'Fzf buffers'})
vim.keymap.set('n', '<leader>fh',
    function ()
        fzf.help_tags()
    end,
    { desc = 'Fzf help tags'})
vim.keymap.set('n', '<leader>fq',
    function ()
        fzf.quickfix()
    end,
    { desc = 'Fzf quickfix'})
