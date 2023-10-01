vim.g.mapleader = " "
vim.keymap.set("n", "<c-b>", ":NvimTreeFindFileToggle<cr>")


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', function()
    builtin.grep_string({ search = vim.fn.input("Search: ") });
end)
