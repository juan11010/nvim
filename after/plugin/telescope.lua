local telescope = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', telescope.find_files, {})
vim.keymap.set('n', '<leader>f', telescope.live_grep, {})
