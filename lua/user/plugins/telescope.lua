return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                path_display = { "truncate " },
            },
        })

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<C-p>", "<cmd>Telescope git_files<cr>")
        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
    end,
}
