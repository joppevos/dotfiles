local builtin = require('telescope.builtin')
-- keymap with hidden find_files
-- vim.api.nvim_set_keymap('n', '<Leader>ff', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ff', builtin.find_files,   {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})

-- set neovim keymap in lua for undotree
vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>', {})

-- setup hardmode by default
-- let g:hardtime_default_on = 1
-- convert the above line to lua
vim.g.hardtime_default_on = 1



