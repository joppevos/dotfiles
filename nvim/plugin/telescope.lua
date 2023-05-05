-- require filebrowser loadaed 
local builtin = require('telescope').load_extension('file_browser')
vim.keymap.set('n', '<leader>fp', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {noremap = true})
