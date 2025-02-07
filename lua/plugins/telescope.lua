return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "echasnovski/mini.icons", opts = {} },
  },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    vim.keymap.set("n", "<leader>en", function()
      builtin.find_files({
        cwd = vim.fn.stdpath("config"),
      })
    end)
  end,
}
