vim.g.mapleader = " "
vim.keymap.set("n", "<C-b>", ":NvimTreeFindFileToggle<cr>")
vim.keymap.set("n", "<leader>b", ":NvimTreeFocus<cr>")

-- Navigate Buffers
vim.keymap.set("n", "<C-]>", ":bnext<cr>")
vim.keymap.set("n", "<C-[>", ":bprevious<cr>")



-- Tabs --
vim.keymap.set("n", "<C-w>", ":bd<cr> :bnext<cr>")

-- Resize tabs
vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<S-Right>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<S-Left>", ":vertical resize +2<CR>", opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files)
vim.keymap.set('n', '<c-p>', builtin.git_files)
vim.keymap.set('n', '<leader>s', function()
    builtin.grep_string({ search = vim.fn.input("Search: ") });
end)

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
