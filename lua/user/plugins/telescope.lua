return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                path_display = { "truncate" },
            },
        })

        -- set keymaps
        local keymap = vim.keymap.set -- for conciseness
        keymap("n", "<C-p>", builtin.git_files, {})
        keymap("n", "<leader>pf", builtin.find_files, {})
        keymap("n", "<leader>ps", builtin.live_grep, {})
        keymap("n", "<leader>fh", builtin.help_tags, {})
    end,
}
