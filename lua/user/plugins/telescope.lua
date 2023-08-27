return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    local telescope = require('telescope.builtin')
    local keymap = vim.keymap.set

    keymap('n', '<leader>ff', telescope.find_files, {})
    keymap('n', '<C-p>', telescope.git_files, {})
    keymap('n', '<leader>f', telescope.live_grep, {})

  end,
}
