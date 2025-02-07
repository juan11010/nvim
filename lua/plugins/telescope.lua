return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      pickers = {
        find_files = {
          theme = "ivy",
        },
        git_files = {
          theme = "ivy",
        },
      },
      extensions = {
        fzf = {},
      },
    })

    require("telescope").load_extension("fzf")

    vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope find git files" })
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
